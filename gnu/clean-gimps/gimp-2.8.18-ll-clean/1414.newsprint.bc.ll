; ModuleID = './plug-ins/common/newsprint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.NewsprintValues = type { i32, i32, i32, double, i32, double, i32, double, i32, double, i32, i32 }
%struct.NewsprintUIValues = type { double, double, i32 }
%struct.chan_tmpl = type { i8*, double*, i32*, double*, i32* }
%struct.spot_info_t = type { i8*, double (double, double)*, i8*, [3 x double], i8*, i32 }
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
%struct.NewsprintDialog_st = type { %struct._GtkWidget*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkWidget*, [4 x %struct._GtkWidget*], [4 x [4 x %struct._channel_st*]] }
%struct._channel_st = type { %struct._GtkWidget*, i32*, [3 x %struct.preview_st], %struct._GtkObject*, %struct._GtkWidget*, [6 x %struct._GtkWidget*], %struct._GtkWidget*, i32, %struct._channel_st* }
%struct.preview_st = type { %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct.order_t = type { i32, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [15 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"cell-width\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Screen cell width in pixels\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"colorspace\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"Separate to { GRAYSCALE (0), RGB (1), CMYK (2), LUMINANCE (3) }\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"k-pullout\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Percentage of black to pullout (CMYK only)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"gry-ang\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Grey/black screen angle (degrees)\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"gry-spotfn\00", align 1
@.str.15 = private unnamed_addr constant [99 x i8] c"Grey/black spot function { DOTS (0), LINES (1), DIAMONDS (2), EUCLIDIAN-DOT (3), PS-DIAMONDS (4) }\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"red-ang\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Red/cyan screen angle (degrees)\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"red-spotfn\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Red/cyan spot function (values as gry-spotfn)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"grn-ang\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Green/magenta screen angle (degrees)\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"grn-spotfn\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"Green/magenta spot function (values as gry-spotfn)\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"blu-ang\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"Blue/yellow screen angle (degrees)\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"blu-spotfn\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"Blue/yellow spot function (values as gry-spotfn)\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"oversample\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"how many times to oversample spot fn\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"plug-in-newsprint\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"Halftone the image to give newspaper-like effect\00", align 1
@.str.32 = private unnamed_addr constant [218 x i8] c"Halftone the image, trading off resolution to represent colors or grey levels using the process described both in the PostScript language definition, and also by Robert Ulichney, \22Digital halftoning\22, MIT Press, 1987.\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Austin Donnelly\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"1998 (v0.60)\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Newsprin_t...\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.NewsprintValues zeroinitializer, align 8
@factory_defaults = internal constant %struct.NewsprintValues { i32 10, i32 1, i32 100, double 4.500000e+01, i32 0, double 1.500000e+01, i32 0, double 7.500000e+01, i32 0, double 0.000000e+00, i32 0, i32 1 }, align 8
@pvals_ui = internal global %struct.NewsprintUIValues zeroinitializer, align 8
@factory_defaults_ui = internal constant %struct.NewsprintUIValues { double 7.200000e+01, double 7.200000e+00, i32 0 }, align 8
@.str.40 = private unnamed_addr constant [21 x i8] c"plug-in-newsprint-ui\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Newsprint\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"newsprint\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"gimp-newsprint\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"_Input SPI:\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"O_utput LPI:\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"C_ell size:\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"B_lack pullout (%):\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Separate to:\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"_RGB\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"C_MYK\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"I_ntensity\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"_Lock channels\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"_Factory Defaults\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"Antialiasing\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"O_versample:\00", align 1
@.str.66 = private unnamed_addr constant [51 x i8] c"newsprint: cspace_update: no state, can't happen!\0A\00", align 1
@cspace_chan_tmpl = internal global [4 x %struct.chan_tmpl*] [%struct.chan_tmpl* getelementptr inbounds ([2 x %struct.chan_tmpl], [2 x %struct.chan_tmpl]* @grey_tmpl, i32 0, i32 0), %struct.chan_tmpl* getelementptr inbounds ([4 x %struct.chan_tmpl], [4 x %struct.chan_tmpl]* @rgb_tmpl, i32 0, i32 0), %struct.chan_tmpl* getelementptr inbounds ([5 x %struct.chan_tmpl], [5 x %struct.chan_tmpl]* @cmyk_tmpl, i32 0, i32 0), %struct.chan_tmpl* getelementptr inbounds ([2 x %struct.chan_tmpl], [2 x %struct.chan_tmpl]* @luminance_tmpl, i32 0, i32 0)], align 16
@grey_tmpl = internal constant [2 x %struct.chan_tmpl] [%struct.chan_tmpl { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 16) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 24) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 16) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 24) to i32*) }, %struct.chan_tmpl zeroinitializer], align 16
@rgb_tmpl = internal constant [4 x %struct.chan_tmpl] [%struct.chan_tmpl { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 32) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 40) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 32) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 40) to i32*) }, %struct.chan_tmpl { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 48) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 56) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 48) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 56) to i32*) }, %struct.chan_tmpl { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 64) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 72) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 64) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 72) to i32*) }, %struct.chan_tmpl zeroinitializer], align 16
@cmyk_tmpl = internal constant [5 x %struct.chan_tmpl] [%struct.chan_tmpl { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 32) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 40) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 32) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 40) to i32*) }, %struct.chan_tmpl { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 48) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 56) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 48) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 56) to i32*) }, %struct.chan_tmpl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 64) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 72) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 64) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 72) to i32*) }, %struct.chan_tmpl { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 16) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 24) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 16) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 24) to i32*) }, %struct.chan_tmpl zeroinitializer], align 16
@luminance_tmpl = internal constant [2 x %struct.chan_tmpl] [%struct.chan_tmpl { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 16) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i64 24) to i32*), double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 16) to double*), i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 24) to i32*) }, %struct.chan_tmpl zeroinitializer], align 16
@.str.67 = private unnamed_addr constant [6 x i8] c"_Grey\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"R_ed\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"_Green\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"_Blue\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"C_yan\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"Magen_ta\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"_Yellow\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"_Black\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"Luminance\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"_Angle:\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"_Spot function:\00", align 1
@spotfn_list = internal global [6 x %struct.spot_info_t] [%struct.spot_info_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), double (double, double)* @spot_round, i8* null, [3 x double] [double 2.200000e-01, double 5.000000e-01, double 9.000000e-01], i8* null, i32 0 }, %struct.spot_info_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), double (double, double)* @spot_line, i8* null, [3 x double] [double 1.500000e-01, double 5.000000e-01, double 8.000000e-01], i8* null, i32 0 }, %struct.spot_info_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), double (double, double)* @spot_diamond, i8* null, [3 x double] [double 1.500000e-01, double 5.000000e-01, double 8.000000e-01], i8* null, i32 1 }, %struct.spot_info_t { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i32 0, i32 0), double (double, double)* @spot_PSsquare, i8* null, [3 x double] [double 1.500000e-01, double 5.000000e-01, double 9.000000e-01], i8* null, i32 0 }, %struct.spot_info_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), double (double, double)* @spot_PSdiamond, i8* null, [3 x double] [double 1.500000e-01, double 5.000000e-01, double 9.000000e-01], i8* null, i32 0 }, %struct.spot_info_t zeroinitializer], align 16
@.str.80 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@angle_callback.in_progress = internal global i32 0, align 4
@.str.83 = private unnamed_addr constant [6 x i8] c"Round\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"PS Square (Euclidean Dot)\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"PS Diamond\00", align 1
@newsprint_menu_callback.in_progress = internal global i32 0, align 4
@.str.88 = private unnamed_addr constant [61 x i8] c"newsprint_menu_callback: unexpected recursion: can't happen\0A\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"%2d%%\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"newsprint: %d is not a valid spot type\0A\00", align 1
@cspace_nchans = internal constant [4 x i32] [i32 1, i32 3, i32 4, i32 1], align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([218 x i8], [218 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 15, i32 0, %struct._GimpParamDef* getelementptr inbounds ([15 x %struct._GimpParamDef], [15 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i8* bitcast (%struct.NewsprintValues* @factory_defaults to i8*), i64 80, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.NewsprintUIValues* @pvals_ui to i8*), i8* bitcast (%struct.NewsprintUIValues* @factory_defaults_ui to i8*), i64 24, i32 8, i1 false)
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
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.NewsprintValues* @pvals to i8*))
  %call8 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* bitcast (%struct.NewsprintUIValues* @pvals_ui to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @newsprint_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %9)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end
  %10 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %10, 15
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb.10
  store i32 1, i32* %status, align 4
  br label %sw.epilog

if.end.12:                                        ; preds = %sw.bb.10
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_int3215 = bitcast %union._GimpParamData* %data14 to i32*
  %12 = load i32, i32* %d_int3215, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 0), align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 4
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %14 = load i32, i32* %d_int3218, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 5
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %16 = load i32, i32* %d_int3221, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 2), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 6
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data23 to double*
  %18 = load double, double* %d_float, align 8
  store double %18, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 3), align 8
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 7
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_int3226 = bitcast %union._GimpParamData* %data25 to i32*
  %20 = load i32, i32* %d_int3226, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 4), align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 8
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_float29 = bitcast %union._GimpParamData* %data28 to double*
  %22 = load double, double* %d_float29, align 8
  store double %22, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 5), align 8
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 9
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %24 = load i32, i32* %d_int3232, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 6), align 4
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 10
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_float35 = bitcast %union._GimpParamData* %data34 to double*
  %26 = load double, double* %d_float35, align 8
  store double %26, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 7), align 8
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 11
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_int3238 = bitcast %union._GimpParamData* %data37 to i32*
  %28 = load i32, i32* %d_int3238, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 8), align 4
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 12
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_float41 = bitcast %union._GimpParamData* %data40 to double*
  %30 = load double, double* %d_float41, align 8
  store double %30, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 9), align 8
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 13
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_int3244 = bitcast %union._GimpParamData* %data43 to i32*
  %32 = load i32, i32* %d_int3244, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 10), align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 14
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_int3247 = bitcast %union._GimpParamData* %data46 to i32*
  %34 = load i32, i32* %d_int3247, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 11), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 4), align 4
  %cmp48 = icmp sge i32 %35, 0
  br i1 %cmp48, label %land.lhs.true, label %if.then.83

land.lhs.true:                                    ; preds = %if.end.12
  %36 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 4), align 4
  %conv = sext i32 %36 to i64
  %cmp49 = icmp ult i64 %conv, 6
  br i1 %cmp49, label %lor.lhs.false, label %if.then.83

lor.lhs.false:                                    ; preds = %land.lhs.true
  %37 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 6), align 4
  %cmp51 = icmp sge i32 %37, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.then.83

land.lhs.true.53:                                 ; preds = %lor.lhs.false
  %38 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 6), align 4
  %conv54 = sext i32 %38 to i64
  %cmp55 = icmp ult i64 %conv54, 6
  br i1 %cmp55, label %lor.lhs.false.57, label %if.then.83

lor.lhs.false.57:                                 ; preds = %land.lhs.true.53
  %39 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 8), align 4
  %cmp58 = icmp sge i32 %39, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.then.83

land.lhs.true.60:                                 ; preds = %lor.lhs.false.57
  %40 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 8), align 4
  %conv61 = sext i32 %40 to i64
  %cmp62 = icmp ult i64 %conv61, 6
  br i1 %cmp62, label %lor.lhs.false.64, label %if.then.83

lor.lhs.false.64:                                 ; preds = %land.lhs.true.60
  %41 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 10), align 4
  %cmp65 = icmp sge i32 %41, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.then.83

land.lhs.true.67:                                 ; preds = %lor.lhs.false.64
  %42 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 10), align 4
  %conv68 = sext i32 %42 to i64
  %cmp69 = icmp ult i64 %conv68, 6
  br i1 %cmp69, label %lor.lhs.false.71, label %if.then.83

lor.lhs.false.71:                                 ; preds = %land.lhs.true.67
  %43 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %cmp72 = icmp sge i32 %43, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.then.83

land.lhs.true.74:                                 ; preds = %lor.lhs.false.71
  %44 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %cmp75 = icmp sle i32 %44, 3
  br i1 %cmp75, label %lor.lhs.false.77, label %if.then.83

lor.lhs.false.77:                                 ; preds = %land.lhs.true.74
  %45 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 2), align 4
  %cmp78 = icmp slt i32 %45, 0
  br i1 %cmp78, label %if.then.83, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.77
  %46 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 2), align 4
  %cmp81 = icmp sgt i32 %46, 100
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false.77, %land.lhs.true.74, %lor.lhs.false.71, %land.lhs.true.67, %lor.lhs.false.64, %land.lhs.true.60, %lor.lhs.false.57, %land.lhs.true.53, %lor.lhs.false, %land.lhs.true, %if.end.12
  store i32 1, i32* %status, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %lor.lhs.false.80
  br label %sw.epilog

sw.bb.85:                                         ; preds = %do.end
  %call86 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.NewsprintValues* @pvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.85, %if.end.84, %if.then.11, %if.end
  %47 = load i32, i32* %status, align 4
  %cmp87 = icmp eq i32 %47, 3
  br i1 %cmp87, label %if.then.89, label %if.end.111

if.then.89:                                       ; preds = %sw.epilog
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 0
  %49 = load i32, i32* %drawable_id, align 4
  %call90 = call i32 @gimp_drawable_is_rgb(i32 %49)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.96, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.then.89
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id93 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 0
  %51 = load i32, i32* %drawable_id93, align 4
  %call94 = call i32 @gimp_drawable_is_gray(i32 %51)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.else

if.then.96:                                       ; preds = %lor.lhs.false.92, %if.then.89
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0)) #4
  %call98 = call i32 @gimp_progress_init(i8* %call97)
  call void @gimp_tile_cache_ntiles(i64 16)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @newsprint(%struct._GimpDrawable* %52, %struct._GimpPreview* null)
  %53 = load i32, i32* %run_mode, align 4
  %cmp99 = icmp ne i32 %53, 1
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.then.96
  %call102 = call i32 @gimp_displays_flush()
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.then.96
  %54 = load i32, i32* %run_mode, align 4
  %cmp104 = icmp eq i32 %54, 0
  br i1 %cmp104, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.end.103
  %call107 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.NewsprintValues* @pvals to i8*), i32 80)
  %call108 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* bitcast (%struct.NewsprintUIValues* @pvals_ui to i8*), i32 24)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %if.end.103
  br label %if.end.110

if.else:                                          ; preds = %lor.lhs.false.92
  store i32 0, i32* %status, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else, %if.end.109
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %sw.epilog
  %55 = load i32, i32* %status, align 4
  store i32 %55, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %56)
  br label %return

return:                                           ; preds = %if.end.111, %if.then
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @newsprint_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %st = alloca %struct.NewsprintDialog_st, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %paned = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %group = alloca %struct._GSList*, align 8
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  %hbox97 = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %chst = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x [4 x %struct._channel_st*]], [4 x [4 x %struct._channel_st*]]* %chst, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [4 x %struct._channel_st*], [4 x %struct._channel_st*]* %arrayidx, i32 0, i64 0
  store %struct._channel_st* null, %struct._channel_st** %arrayidx1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_bpp(i32 %4)
  store i32 %call, i32* %bpp, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id2, align 4
  %call3 = call i32 @gimp_drawable_has_alpha(i32 %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %7 = load i32, i32* %bpp, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %bpp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %8 = load i32, i32* %bpp, align 4
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  store i32 1, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.5
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0)) #4
  %call11 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %dialog, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call12)
  %12 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %12, i32 -5, i32 -6, i32 -1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %15)
  %call16 = call %struct._GtkWidget* @gtk_paned_new(i32 0)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %paned, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %18, i32 12)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_dialog_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkDialog*
  %call21 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %21)
  %22 = bitcast %struct._GtkWidget* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call24 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %hbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_paned_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call25)
  %28 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkPaned*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %28, %struct._GtkWidget* %29, i32 1, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %vbox, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_container_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call28)
  %33 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %33, i32 6)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call30)
  %36 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call32 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %39, i32* null)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %preview, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call33)
  %42 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 1, i32 1, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = bitcast %struct._GimpDrawable* %47 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @newsprint to void ()*), i8* %48, void (i8*, %struct._GClosure*)* null, i32 2)
  %call36 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %hbox, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_paned_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call37)
  %51 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkPaned*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %51, %struct._GtkWidget* %52, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %call39 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %vbox, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_container_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call40)
  %56 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %56, i32 6)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call42)
  %59 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 0, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call44 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %vbox, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call45)
  %64 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 1, i32 1, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #4
  %call48 = call %struct._GtkWidget* @gimp_frame_new(i8* %call47)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %frame, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call49)
  %69 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call51 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %table, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call52)
  %74 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %74, i32 6)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call54)
  %77 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %77, i32 6)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_container_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call56)
  %80 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkContainer*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %80, %struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id58 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %83, i32 0, i32 0
  %84 = load i32, i32* %drawable_id58, align 4
  %call59 = call i32 @gimp_item_get_image(i32 %84)
  %call60 = call i32 @gimp_image_get_resolution(i32 %call59, double* %xres, double* %yres)
  %85 = load double, double* %xres, align 8
  store double %85, double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 0), align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call61)
  %88 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0)) #4
  %89 = load double, double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 0), align 8
  %call64 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %88, i32 0, i32 0, i8* %call63, i32 125, i32 7, double %89, double 1.000000e+00, double 1.200000e+03, double 1.000000e+00, double 1.000000e+01, i32 0, i32 0, double 5.000000e-03, double 6.553600e+04, i8* null, i8* null)
  %input_spi = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 2
  store %struct._GtkObject* %call64, %struct._GtkObject** %input_spi, align 8
  %input_spi65 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 2
  %90 = load %struct._GtkObject*, %struct._GtkObject** %input_spi65, align 8
  %91 = bitcast %struct._GtkObject* %90 to i8*
  %92 = bitcast %struct.NewsprintDialog_st* %st to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @spi_callback to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 0)
  %input_spi67 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 2
  %93 = load %struct._GtkObject*, %struct._GtkObject** %input_spi67, align 8
  %94 = bitcast %struct._GtkObject* %93 to i8*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 2)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call69)
  %99 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0)) #4
  %100 = load double, double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 1), align 8
  %call72 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %99, i32 0, i32 1, i8* %call71, i32 125, i32 7, double %100, double 1.000000e+00, double 1.200000e+03, double 1.000000e+00, double 1.000000e+01, i32 1, i32 0, double 5.000000e-03, double 6.553600e+04, i8* null, i8* null)
  %output_lpi = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 3
  store %struct._GtkObject* %call72, %struct._GtkObject** %output_lpi, align 8
  %output_lpi73 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 3
  %101 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi73, align 8
  %102 = bitcast %struct._GtkObject* %101 to i8*
  %103 = bitcast %struct.NewsprintDialog_st* %st to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @lpi_callback to void ()*), i8* %103, void (i8*, %struct._GClosure*)* null, i32 0)
  %output_lpi75 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 3
  %104 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi75, align 8
  %105 = bitcast %struct._GtkObject* %104 to i8*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 2)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call77)
  %110 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0)) #4
  %111 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %111 to double
  %call80 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %110, i32 0, i32 2, i8* %call79, i32 125, i32 7, double %conv, double 3.000000e+00, double 1.000000e+02, double 1.000000e+00, double 5.000000e+00, i32 0, i32 0, double 3.000000e+00, double 2.621440e+05, i8* null, i8* null)
  %cellsize = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 4
  store %struct._GtkObject* %call80, %struct._GtkObject** %cellsize, align 8
  %cellsize81 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 4
  %112 = load %struct._GtkObject*, %struct._GtkObject** %cellsize81, align 8
  %113 = bitcast %struct._GtkObject* %112 to i8*
  %114 = bitcast %struct.NewsprintDialog_st* %st to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @cellsize_callback to void ()*), i8* %114, void (i8*, %struct._GClosure*)* null, i32 0)
  %cellsize83 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 4
  %115 = load %struct._GtkObject*, %struct._GtkObject** %cellsize83, align 8
  %116 = bitcast %struct._GtkObject* %115 to i8*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %118 = bitcast %struct._GtkWidget* %117 to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %118, void (i8*, %struct._GClosure*)* null, i32 2)
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0)) #4
  %call86 = call %struct._GtkWidget* @gimp_frame_new(i8* %call85)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %frame, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call87)
  %121 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %121, %struct._GtkWidget* %122, i32 0, i32 0, i32 0)
  %call89 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  %vbox90 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 5
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %vbox90, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_container_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call91)
  %125 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkContainer*
  %vbox93 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 5
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox93, align 8
  call void @gtk_container_add(%struct._GtkContainer* %125, %struct._GtkWidget* %126)
  %127 = load i32, i32* %bpp, align 4
  %cmp94 = icmp ne i32 %127, 1
  br i1 %cmp94, label %if.then.96, label %if.end.193

if.then.96:                                       ; preds = %if.end.9
  %call98 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  %pull_table = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 0
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %pull_table, align 8
  %pull_table99 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 0
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %pull_table99, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_table_get_type() #5
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call100)
  %130 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %130, i32 6)
  %pull_table102 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 0
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %pull_table102, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_table_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call103)
  %133 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkTable*
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0)) #4
  %134 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 2), align 4
  %conv106 = sitofp i32 %134 to double
  %call107 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %133, i32 0, i32 0, i8* %call105, i32 125, i32 0, double %conv106, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %pull = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 1
  store %struct._GtkObject* %call107, %struct._GtkObject** %pull, align 8
  %pull_table108 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 0
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %pull_table108, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %cmp109 = icmp eq i32 %136, 2
  %conv110 = zext i1 %cmp109 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %135, i32 %conv110)
  %pull_table111 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 0
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %pull_table111, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %pull112 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 1
  %138 = load %struct._GtkObject*, %struct._GtkObject** %pull112, align 8
  %139 = bitcast %struct._GtkObject* %138 to i8*
  %call113 = call i64 @g_signal_connect_data(i8* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %pull114 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 1
  %140 = load %struct._GtkObject*, %struct._GtkObject** %pull114, align 8
  %141 = bitcast %struct._GtkObject* %140 to i8*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  %call115 = call i64 @g_signal_connect_data(i8* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %143, void (i8*, %struct._GClosure*)* null, i32 2)
  %call116 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call116, %struct._GtkWidget** %hbox97, align 8
  %vbox117 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 5
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox117, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_box_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call118)
  %146 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkBox*
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %146, %struct._GtkWidget* %147, i32 0, i32 0, i32 0)
  %vbox120 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 5
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox120, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call121)
  %150 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %pull_table123 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 0
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %pull_table123, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %150, %struct._GtkWidget* %151, i32 0, i32 0, i32 0)
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0)) #4
  %call125 = call %struct._GtkWidget* @gtk_label_new(i8* %call124)
  store %struct._GtkWidget* %call125, %struct._GtkWidget** %label, align 8
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_box_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call126)
  %154 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkBox*
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %154, %struct._GtkWidget* %155, i32 0, i32 0, i32 0)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %156)
  %157 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #4
  %call129 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %157, i8* %call128)
  store %struct._GtkWidget* %call129, %struct._GtkWidget** %toggle, align 8
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_radio_button_get_type() #5
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call130)
  %160 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkRadioButton*
  %call132 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %160)
  store %struct._GSList* %call132, %struct._GSList** %group, align 8
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_box_get_type() #5
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call133)
  %163 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkBox*
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %163, %struct._GtkWidget* %164, i32 1, i32 1, i32 0)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_toggle_button_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call135)
  %167 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkToggleButton*
  %168 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %cmp137 = icmp eq i32 %168, 1
  %conv138 = zext i1 %cmp137 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %167, i32 %conv138)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %169)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 80)
  %172 = bitcast %struct._GTypeInstance* %call139 to %struct._GObject*
  %173 = bitcast %struct.NewsprintDialog_st* %st to i8*
  call void @g_object_set_data(%struct._GObject* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* %173)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 80)
  %176 = bitcast %struct._GTypeInstance* %call140 to %struct._GObject*
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %178 = bitcast %struct._GtkWidget* %177 to i8*
  call void @g_object_set_data(%struct._GObject* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* %178)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %180 = bitcast %struct._GtkWidget* %179 to i8*
  %call141 = call i64 @g_signal_connect_data(i8* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @newsprint_cspace_update to void ()*), i8* inttoptr (i64 1 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %182 = bitcast %struct._GtkWidget* %181 to i8*
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %184 = bitcast %struct._GtkWidget* %183 to i8*
  %call142 = call i64 @g_signal_connect_data(i8* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %184, void (i8*, %struct._GClosure*)* null, i32 2)
  %185 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call143 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)) #4
  %call144 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %185, i8* %call143)
  store %struct._GtkWidget* %call144, %struct._GtkWidget** %toggle, align 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_radio_button_get_type() #5
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call145)
  %188 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkRadioButton*
  %call147 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %188)
  store %struct._GSList* %call147, %struct._GSList** %group, align 8
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_box_get_type() #5
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call148)
  %191 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkBox*
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %191, %struct._GtkWidget* %192, i32 1, i32 1, i32 0)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %194 = bitcast %struct._GtkWidget* %193 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_toggle_button_get_type() #5
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call150)
  %195 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkToggleButton*
  %196 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %cmp152 = icmp eq i32 %196, 2
  %conv153 = zext i1 %cmp152 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %195, i32 %conv153)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %197)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 80)
  %200 = bitcast %struct._GTypeInstance* %call154 to %struct._GObject*
  %201 = bitcast %struct.NewsprintDialog_st* %st to i8*
  call void @g_object_set_data(%struct._GObject* %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* %201)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 80)
  %204 = bitcast %struct._GTypeInstance* %call155 to %struct._GObject*
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %206 = bitcast %struct._GtkWidget* %205 to i8*
  call void @g_object_set_data(%struct._GObject* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* %206)
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %208 = bitcast %struct._GtkWidget* %207 to i8*
  %call156 = call i64 @g_signal_connect_data(i8* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @newsprint_cspace_update to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %210 = bitcast %struct._GtkWidget* %209 to i8*
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %212 = bitcast %struct._GtkWidget* %211 to i8*
  %call157 = call i64 @g_signal_connect_data(i8* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %212, void (i8*, %struct._GClosure*)* null, i32 2)
  %213 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0)) #4
  %call159 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %213, i8* %call158)
  store %struct._GtkWidget* %call159, %struct._GtkWidget** %toggle, align 8
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_radio_button_get_type() #5
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 %call160)
  %216 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkRadioButton*
  %call162 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %216)
  store %struct._GSList* %call162, %struct._GSList** %group, align 8
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  %218 = bitcast %struct._GtkWidget* %217 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_box_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %218, i64 %call163)
  %219 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkBox*
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %219, %struct._GtkWidget* %220, i32 1, i32 1, i32 0)
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %222 = bitcast %struct._GtkWidget* %221 to %struct._GTypeInstance*
  %call165 = call i64 @gtk_toggle_button_get_type() #5
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %222, i64 %call165)
  %223 = bitcast %struct._GTypeInstance* %call166 to %struct._GtkToggleButton*
  %224 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %cmp167 = icmp eq i32 %224, 3
  %conv168 = zext i1 %cmp167 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %223, i32 %conv168)
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %225)
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %227 = bitcast %struct._GtkWidget* %226 to %struct._GTypeInstance*
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %227, i64 80)
  %228 = bitcast %struct._GTypeInstance* %call169 to %struct._GObject*
  %229 = bitcast %struct.NewsprintDialog_st* %st to i8*
  call void @g_object_set_data(%struct._GObject* %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* %229)
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 80)
  %232 = bitcast %struct._GTypeInstance* %call170 to %struct._GObject*
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %234 = bitcast %struct._GtkWidget* %233 to i8*
  call void @g_object_set_data(%struct._GObject* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* %234)
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %236 = bitcast %struct._GtkWidget* %235 to i8*
  %call171 = call i64 @g_signal_connect_data(i8* %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @newsprint_cspace_update to void ()*), i8* inttoptr (i64 3 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %237 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %238 = bitcast %struct._GtkWidget* %237 to i8*
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %240 = bitcast %struct._GtkWidget* %239 to i8*
  %call172 = call i64 @g_signal_connect_data(i8* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %240, void (i8*, %struct._GClosure*)* null, i32 2)
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %241)
  %call173 = call %struct._GtkWidget* @gtk_button_box_new(i32 0)
  store %struct._GtkWidget* %call173, %struct._GtkWidget** %hbox97, align 8
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  %243 = bitcast %struct._GtkWidget* %242 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_box_get_type() #5
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %243, i64 %call174)
  %244 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %244, i32 6)
  %vbox176 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 5
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox176, align 8
  %246 = bitcast %struct._GtkWidget* %245 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_box_get_type() #5
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call177)
  %247 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkBox*
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %247, %struct._GtkWidget* %248, i32 0, i32 0, i32 0)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %249)
  %call179 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0)) #4
  %call180 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call179)
  store %struct._GtkWidget* %call180, %struct._GtkWidget** %toggle, align 8
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %251 = bitcast %struct._GtkWidget* %250 to %struct._GTypeInstance*
  %call181 = call i64 @gtk_toggle_button_get_type() #5
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %251, i64 %call181)
  %252 = bitcast %struct._GTypeInstance* %call182 to %struct._GtkToggleButton*
  %253 = load i32, i32* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %252, i32 %253)
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  %255 = bitcast %struct._GtkWidget* %254 to %struct._GTypeInstance*
  %call183 = call i64 @gtk_box_get_type() #5
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %255, i64 %call183)
  %256 = bitcast %struct._GTypeInstance* %call184 to %struct._GtkBox*
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %256, %struct._GtkWidget* %257, i32 0, i32 0, i32 0)
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %258)
  %259 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %260 = bitcast %struct._GtkWidget* %259 to i8*
  %call185 = call i64 @g_signal_connect_data(i8* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %261 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %262 = bitcast %struct._GtkWidget* %261 to i8*
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %264 = bitcast %struct._GtkWidget* %263 to i8*
  %call186 = call i64 @g_signal_connect_data(i8* %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %264, void (i8*, %struct._GClosure*)* null, i32 2)
  %call187 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0)) #4
  %call188 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call187)
  store %struct._GtkWidget* %call188, %struct._GtkWidget** %button, align 8
  %265 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox97, align 8
  %266 = bitcast %struct._GtkWidget* %265 to %struct._GTypeInstance*
  %call189 = call i64 @gtk_box_get_type() #5
  %call190 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %266, i64 %call189)
  %267 = bitcast %struct._GTypeInstance* %call190 to %struct._GtkBox*
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %267, %struct._GtkWidget* %268, i32 0, i32 0, i32 0)
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %269)
  %270 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %271 = bitcast %struct._GtkWidget* %270 to i8*
  %272 = bitcast %struct.NewsprintDialog_st* %st to i8*
  %call191 = call i64 @g_signal_connect_data(i8* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @newsprint_defaults_callback to void ()*), i8* %272, void (i8*, %struct._GClosure*)* null, i32 0)
  %273 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %274 = bitcast %struct._GtkWidget* %273 to i8*
  %275 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %276 = bitcast %struct._GtkWidget* %275 to i8*
  %call192 = call i64 @g_signal_connect_data(i8* %274, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %276, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.96, %if.end.9
  %277 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %idxprom194 = sext i32 %277 to i64
  %chst195 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 7
  %arrayidx196 = getelementptr inbounds [4 x [4 x %struct._channel_st*]], [4 x [4 x %struct._channel_st*]]* %chst195, i32 0, i64 %idxprom194
  %arrayidx197 = getelementptr inbounds [4 x %struct._channel_st*], [4 x %struct._channel_st*]* %arrayidx196, i32 0, i64 0
  %278 = load %struct._channel_st*, %struct._channel_st** %arrayidx197, align 8
  %tobool198 = icmp ne %struct._channel_st* %278, null
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %if.end.193
  %279 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %280 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gen_channels(%struct.NewsprintDialog_st* %st, i32 %279, %struct._GtkWidget* %280)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %if.end.193
  %vbox201 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 5
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox201, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %281)
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %282)
  %call202 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0)) #4
  %call203 = call %struct._GtkWidget* @gimp_frame_new(i8* %call202)
  store %struct._GtkWidget* %call203, %struct._GtkWidget** %frame, align 8
  %283 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %284 = bitcast %struct._GtkWidget* %283 to %struct._GTypeInstance*
  %call204 = call i64 @gtk_box_get_type() #5
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %284, i64 %call204)
  %285 = bitcast %struct._GTypeInstance* %call205 to %struct._GtkBox*
  %286 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %285, %struct._GtkWidget* %286, i32 0, i32 0, i32 0)
  %call206 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call206, %struct._GtkWidget** %table, align 8
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %288 = bitcast %struct._GtkWidget* %287 to %struct._GTypeInstance*
  %call207 = call i64 @gtk_table_get_type() #5
  %call208 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %288, i64 %call207)
  %289 = bitcast %struct._GTypeInstance* %call208 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %289, i32 6)
  %290 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %291 = bitcast %struct._GtkWidget* %290 to %struct._GTypeInstance*
  %call209 = call i64 @gtk_container_get_type() #5
  %call210 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %291, i64 %call209)
  %292 = bitcast %struct._GTypeInstance* %call210 to %struct._GtkContainer*
  %293 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %292, %struct._GtkWidget* %293)
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %295 = bitcast %struct._GtkWidget* %294 to %struct._GTypeInstance*
  %call211 = call i64 @gtk_table_get_type() #5
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %295, i64 %call211)
  %296 = bitcast %struct._GTypeInstance* %call212 to %struct._GtkTable*
  %call213 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0)) #4
  %297 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 11), align 4
  %conv214 = sitofp i32 %297 to double
  %call215 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %296, i32 0, i32 0, i8* %call213, i32 125, i32 0, double %conv214, double 1.000000e+00, double 1.500000e+01, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call215, %struct._GtkObject** %adj, align 8
  %298 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %299 = bitcast %struct._GtkObject* %298 to i8*
  %call216 = call i64 @g_signal_connect_data(i8* %299, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %300 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %301 = bitcast %struct._GtkObject* %300 to i8*
  %302 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %303 = bitcast %struct._GtkWidget* %302 to i8*
  %call217 = call i64 @g_signal_connect_data(i8* %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %303, void (i8*, %struct._GClosure*)* null, i32 2)
  %304 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %304)
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %305)
  %306 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %306)
  %307 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %idxprom218 = sext i32 %307 to i64
  %chst219 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %st, i32 0, i32 7
  %arrayidx220 = getelementptr inbounds [4 x [4 x %struct._channel_st*]], [4 x [4 x %struct._channel_st*]]* %chst219, i32 0, i64 %idxprom218
  %arrayidx221 = getelementptr inbounds [4 x %struct._channel_st*], [4 x %struct._channel_st*]* %arrayidx220, i32 0, i64 0
  %308 = load %struct._channel_st*, %struct._channel_st** %arrayidx221, align 8
  call void @preview_update(%struct._channel_st* %308)
  %309 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %310 = bitcast %struct._GtkWidget* %309 to %struct._GTypeInstance*
  %call222 = call i64 @gimp_dialog_get_type() #5
  %call223 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %310, i64 %call222)
  %311 = bitcast %struct._GTypeInstance* %call223 to %struct._GimpDialog*
  %call224 = call i32 @gimp_dialog_run(%struct._GimpDialog* %311)
  %cmp225 = icmp eq i32 %call224, -5
  %conv226 = zext i1 %cmp225 to i32
  store i32 %conv226, i32* %run, align 4
  %312 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %312)
  %313 = load i32, i32* %run, align 4
  ret i32 %313
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @newsprint(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %thresh = alloca [4 x i8*], align 16
  %r = alloca double, align 8
  %theta = alloca double, align 8
  %rot = alloca [4 x double], align 16
  %bpp = alloca i32, align 4
  %colour_bpp = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %width = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x_step = alloca i32, align 4
  %y_step = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %preview_width = alloca i32, align 4
  %preview_height = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %oversample = alloca i32, align 4
  %colourspace = alloca i32, align 4
  %pr = alloca i8*, align 8
  %w002 = alloca i32, align 4
  %preview_buffer = alloca i8*, align 8
  %rf = alloca i32, align 4
  %gf = alloca i32, align 4
  %bf = alloca i32, align 4
  %data192 = alloca [4 x i8], align 1
  %r216 = alloca i32, align 4
  %g = alloca i32, align 4
  %b217 = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = bitcast [4 x i8*]* %thresh to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 16, i1 false)
  store i8* null, i8** %preview_buffer, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 0), align 4
  store i32 %1, i32* %width, align 4
  %2 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %width, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %width, align 4
  %cmp1 = icmp slt i32 %4, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %width, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 11), align 4
  store i32 %5, i32* %oversample, align 4
  %6 = load i32, i32* %oversample, align 4
  %7 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %7, %6
  store i32 %mul, i32* %width, align 4
  %call = call i32 @gimp_tile_width() #5
  store i32 %call, i32* %tile_width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call4 = call i32 @gimp_drawable_bpp(i32 %9)
  store i32 %call4, i32* %bpp, align 4
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %10, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %11, i32* %x1, i32* %y1)
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %12, i32* %preview_width, i32* %preview_height)
  %13 = load i32, i32* %x1, align 4
  %14 = load i32, i32* %preview_width, align 4
  %add = add nsw i32 %13, %14
  store i32 %add, i32* %x2, align 4
  %15 = load i32, i32* %y1, align 4
  %16 = load i32, i32* %preview_height, align 4
  %add6 = add nsw i32 %15, %16
  store i32 %add6, i32* %y2, align 4
  %17 = load i32, i32* %preview_width, align 4
  %18 = load i32, i32* %preview_height, align 4
  %mul7 = mul nsw i32 %17, %18
  %19 = load i32, i32* %bpp, align 4
  %mul8 = mul nsw i32 %mul7, %19
  %conv = sext i32 %mul8 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call9, i8** %preview_buffer, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.3
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_mask_bounds(i32 %21, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.5
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 0
  %23 = load i32, i32* %drawable_id13, align 4
  %call14 = call i32 @gimp_drawable_has_alpha(i32 %23)
  store i32 %call14, i32* %has_alpha, align 4
  %24 = load i32, i32* %has_alpha, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %25 = load i32, i32* %bpp, align 4
  %sub16 = sub nsw i32 %25, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %26 = load i32, i32* %bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub16, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, i32* %colour_bpp, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  store i32 %27, i32* %colourspace, align 4
  %28 = load i32, i32* %colour_bpp, align 4
  %cmp17 = icmp eq i32 %28, 1
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %cond.end
  store i32 0, i32* %colourspace, align 4
  br label %if.end.25

if.else.20:                                       ; preds = %cond.end
  %29 = load i32, i32* %colourspace, align 4
  %cmp21 = icmp eq i32 %29, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else.20
  store i32 1, i32* %colourspace, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.else.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.19
  %30 = load i32, i32* %oversample, align 4
  %div = sdiv i32 %30, 2
  %add26 = add nsw i32 %div, 1
  %sub27 = sub nsw i32 %add26, 0
  %31 = load i32, i32* %oversample, align 4
  %div28 = sdiv i32 %31, 2
  %add29 = add nsw i32 %div28, 1
  %sub30 = sub nsw i32 %add29, 0
  %mul31 = mul nsw i32 %sub27, %sub30
  %32 = load i32, i32* %oversample, align 4
  %div32 = sdiv i32 %32, 2
  %add33 = add nsw i32 %div32, 1
  %sub34 = sub nsw i32 %add33, 0
  %33 = load i32, i32* %oversample, align 4
  %div35 = sdiv i32 %33, 2
  %add36 = add nsw i32 %div35, 1
  %sub37 = sub nsw i32 %add36, 0
  %mul38 = mul nsw i32 %sub34, %sub37
  %mul39 = mul nsw i32 %mul31, %mul38
  store i32 %mul39, i32* %w002, align 4
  %34 = load i32, i32* %colour_bpp, align 4
  %cmp40 = icmp eq i32 %34, 1
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %35 = load i32, i32* %colourspace, align 4
  %cmp42 = icmp eq i32 %35, 3
  br i1 %cmp42, label %if.then.44, label %if.else.49

if.then.44:                                       ; preds = %lor.lhs.false, %if.end.25
  %36 = load double, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 3), align 8
  %mul45 = fmul double %36, 0x400921FB54442D18
  %div46 = fdiv double %mul45, 1.800000e+02
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %rot, i32 0, i64 0
  store double %div46, double* %arrayidx, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 4), align 4
  %38 = load i32, i32* %width, align 4
  %call47 = call i8* @spot2thresh(i32 %37, i32 %38)
  %arrayidx48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %thresh, i32 0, i64 0
  store i8* %call47, i8** %arrayidx48, align 8
  br label %if.end.138

if.else.49:                                       ; preds = %lor.lhs.false
  %39 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 6), align 4
  store i32 %39, i32* %rf, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 8), align 4
  store i32 %40, i32* %gf, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 10), align 4
  store i32 %41, i32* %bf, align 4
  %42 = load double, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 5), align 8
  %mul50 = fmul double %42, 0x400921FB54442D18
  %div51 = fdiv double %mul50, 1.800000e+02
  %arrayidx52 = getelementptr inbounds [4 x double], [4 x double]* %rot, i32 0, i64 0
  store double %div51, double* %arrayidx52, align 8
  %43 = load double, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 7), align 8
  %mul53 = fmul double %43, 0x400921FB54442D18
  %div54 = fdiv double %mul53, 1.800000e+02
  %arrayidx55 = getelementptr inbounds [4 x double], [4 x double]* %rot, i32 0, i64 1
  store double %div54, double* %arrayidx55, align 8
  %44 = load double, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 9), align 8
  %mul56 = fmul double %44, 0x400921FB54442D18
  %div57 = fdiv double %mul56, 1.800000e+02
  %arrayidx58 = getelementptr inbounds [4 x double], [4 x double]* %rot, i32 0, i64 2
  store double %div57, double* %arrayidx58, align 8
  br label %do.body

do.body:                                          ; preds = %if.else.49
  %45 = load i32, i32* %rf, align 4
  %cmp59 = icmp sge i32 %45, 0
  br i1 %cmp59, label %land.lhs.true, label %if.then.64

land.lhs.true:                                    ; preds = %do.body
  %46 = load i32, i32* %rf, align 4
  %conv61 = sext i32 %46 to i64
  %cmp62 = icmp ult i64 %conv61, 6
  br i1 %cmp62, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true, %do.body
  %47 = load i32, i32* %rf, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.90, i32 0, i32 0), i32 %47)
  store i32 0, i32* %rf, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end.66
  %48 = load i32, i32* %rf, align 4
  %49 = load i32, i32* %width, align 4
  %call67 = call i8* @spot2thresh(i32 %48, i32 %49)
  %50 = load i32, i32* %rf, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx68 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom
  %thresh69 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx68, i32 0, i32 2
  store i8* %call67, i8** %thresh69, align 8
  %51 = load i32, i32* %rf, align 4
  %idxprom70 = sext i32 %51 to i64
  %arrayidx71 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom70
  %thresh72 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx71, i32 0, i32 2
  %52 = load i8*, i8** %thresh72, align 8
  %arrayidx73 = getelementptr inbounds [4 x i8*], [4 x i8*]* %thresh, i32 0, i64 0
  store i8* %52, i8** %arrayidx73, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %do.end
  %53 = load i32, i32* %gf, align 4
  %cmp75 = icmp sge i32 %53, 0
  br i1 %cmp75, label %land.lhs.true.77, label %if.then.81

land.lhs.true.77:                                 ; preds = %do.body.74
  %54 = load i32, i32* %gf, align 4
  %conv78 = sext i32 %54 to i64
  %cmp79 = icmp ult i64 %conv78, 6
  br i1 %cmp79, label %if.end.83, label %if.then.81

if.then.81:                                       ; preds = %land.lhs.true.77, %do.body.74
  %55 = load i32, i32* %gf, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.90, i32 0, i32 0), i32 %55)
  store i32 0, i32* %gf, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %land.lhs.true.77
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %56 = load i32, i32* %gf, align 4
  %57 = load i32, i32* %width, align 4
  %call85 = call i8* @spot2thresh(i32 %56, i32 %57)
  %58 = load i32, i32* %gf, align 4
  %idxprom86 = sext i32 %58 to i64
  %arrayidx87 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom86
  %thresh88 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx87, i32 0, i32 2
  store i8* %call85, i8** %thresh88, align 8
  %59 = load i32, i32* %gf, align 4
  %idxprom89 = sext i32 %59 to i64
  %arrayidx90 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom89
  %thresh91 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx90, i32 0, i32 2
  %60 = load i8*, i8** %thresh91, align 8
  %arrayidx92 = getelementptr inbounds [4 x i8*], [4 x i8*]* %thresh, i32 0, i64 1
  store i8* %60, i8** %arrayidx92, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.84
  %61 = load i32, i32* %bf, align 4
  %cmp94 = icmp sge i32 %61, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.then.100

land.lhs.true.96:                                 ; preds = %do.body.93
  %62 = load i32, i32* %bf, align 4
  %conv97 = sext i32 %62 to i64
  %cmp98 = icmp ult i64 %conv97, 6
  br i1 %cmp98, label %if.end.102, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.96, %do.body.93
  %63 = load i32, i32* %bf, align 4
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.90, i32 0, i32 0), i32 %63)
  store i32 0, i32* %bf, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %land.lhs.true.96
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %64 = load i32, i32* %bf, align 4
  %65 = load i32, i32* %width, align 4
  %call104 = call i8* @spot2thresh(i32 %64, i32 %65)
  %66 = load i32, i32* %bf, align 4
  %idxprom105 = sext i32 %66 to i64
  %arrayidx106 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom105
  %thresh107 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx106, i32 0, i32 2
  store i8* %call104, i8** %thresh107, align 8
  %67 = load i32, i32* %bf, align 4
  %idxprom108 = sext i32 %67 to i64
  %arrayidx109 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom108
  %thresh110 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx109, i32 0, i32 2
  %68 = load i8*, i8** %thresh110, align 8
  %arrayidx111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %thresh, i32 0, i64 2
  store i8* %68, i8** %arrayidx111, align 8
  %69 = load i32, i32* %colourspace, align 4
  %cmp112 = icmp eq i32 %69, 2
  br i1 %cmp112, label %if.then.114, label %if.end.137

if.then.114:                                      ; preds = %do.end.103
  %70 = load double, double* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 3), align 8
  %mul115 = fmul double %70, 0x400921FB54442D18
  %div116 = fdiv double %mul115, 1.800000e+02
  %arrayidx117 = getelementptr inbounds [4 x double], [4 x double]* %rot, i32 0, i64 3
  store double %div116, double* %arrayidx117, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 4), align 4
  store i32 %71, i32* %gf, align 4
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.114
  %72 = load i32, i32* %gf, align 4
  %cmp119 = icmp sge i32 %72, 0
  br i1 %cmp119, label %land.lhs.true.121, label %if.then.125

land.lhs.true.121:                                ; preds = %do.body.118
  %73 = load i32, i32* %gf, align 4
  %conv122 = sext i32 %73 to i64
  %cmp123 = icmp ult i64 %conv122, 6
  br i1 %cmp123, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.121, %do.body.118
  %74 = load i32, i32* %gf, align 4
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.90, i32 0, i32 0), i32 %74)
  store i32 0, i32* %gf, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %land.lhs.true.121
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  %75 = load i32, i32* %gf, align 4
  %76 = load i32, i32* %width, align 4
  %call129 = call i8* @spot2thresh(i32 %75, i32 %76)
  %77 = load i32, i32* %gf, align 4
  %idxprom130 = sext i32 %77 to i64
  %arrayidx131 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom130
  %thresh132 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx131, i32 0, i32 2
  store i8* %call129, i8** %thresh132, align 8
  %78 = load i32, i32* %gf, align 4
  %idxprom133 = sext i32 %78 to i64
  %arrayidx134 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom133
  %thresh135 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx134, i32 0, i32 2
  %79 = load i8*, i8** %thresh135, align 8
  %arrayidx136 = getelementptr inbounds [4 x i8*], [4 x i8*]* %thresh, i32 0, i64 3
  store i8* %79, i8** %arrayidx136, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.128, %do.end.103
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.44
  store i32 0, i32* %progress, align 4
  %80 = load i32, i32* %x2, align 4
  %81 = load i32, i32* %x1, align 4
  %sub139 = sub nsw i32 %80, %81
  %82 = load i32, i32* %y2, align 4
  %83 = load i32, i32* %y1, align 4
  %sub140 = sub nsw i32 %82, %83
  %mul141 = mul nsw i32 %sub139, %sub140
  store i32 %mul141, i32* %max_progress, align 4
  %84 = load i32, i32* %y1, align 4
  store i32 %84, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.542, %if.end.138
  %85 = load i32, i32* %y, align 4
  %86 = load i32, i32* %y2, align 4
  %cmp142 = icmp slt i32 %85, %86
  br i1 %cmp142, label %for.body, label %for.end.546

for.body:                                         ; preds = %for.cond
  %87 = load i32, i32* %x1, align 4
  store i32 %87, i32* %x, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.537, %for.body
  %88 = load i32, i32* %x, align 4
  %89 = load i32, i32* %x2, align 4
  %cmp145 = icmp slt i32 %88, %89
  br i1 %cmp145, label %for.body.147, label %for.end.541

for.body.147:                                     ; preds = %for.cond.144
  %90 = load i32, i32* %tile_width, align 4
  %91 = load i32, i32* %x, align 4
  %92 = load i32, i32* %tile_width, align 4
  %rem = srem i32 %91, %92
  %sub148 = sub nsw i32 %90, %rem
  store i32 %sub148, i32* %x_step, align 4
  %93 = load i32, i32* %tile_width, align 4
  %94 = load i32, i32* %y, align 4
  %95 = load i32, i32* %tile_width, align 4
  %rem149 = srem i32 %94, %95
  %sub150 = sub nsw i32 %93, %rem149
  store i32 %sub150, i32* %y_step, align 4
  %96 = load i32, i32* %x_step, align 4
  %97 = load i32, i32* %x2, align 4
  %98 = load i32, i32* %x, align 4
  %sub151 = sub nsw i32 %97, %98
  %cmp152 = icmp slt i32 %96, %sub151
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %for.body.147
  %99 = load i32, i32* %x_step, align 4
  br label %cond.end.157

cond.false.155:                                   ; preds = %for.body.147
  %100 = load i32, i32* %x2, align 4
  %101 = load i32, i32* %x, align 4
  %sub156 = sub nsw i32 %100, %101
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.154
  %cond158 = phi i32 [ %99, %cond.true.154 ], [ %sub156, %cond.false.155 ]
  store i32 %cond158, i32* %x_step, align 4
  %102 = load i32, i32* %y_step, align 4
  %103 = load i32, i32* %y2, align 4
  %104 = load i32, i32* %y, align 4
  %sub159 = sub nsw i32 %103, %104
  %cmp160 = icmp slt i32 %102, %sub159
  br i1 %cmp160, label %cond.true.162, label %cond.false.163

cond.true.162:                                    ; preds = %cond.end.157
  %105 = load i32, i32* %y_step, align 4
  br label %cond.end.165

cond.false.163:                                   ; preds = %cond.end.157
  %106 = load i32, i32* %y2, align 4
  %107 = load i32, i32* %y, align 4
  %sub164 = sub nsw i32 %106, %107
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.162
  %cond166 = phi i32 [ %105, %cond.true.162 ], [ %sub164, %cond.false.163 ]
  store i32 %cond166, i32* %y_step, align 4
  %108 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %109 = load i32, i32* %x, align 4
  %110 = load i32, i32* %y, align 4
  %111 = load i32, i32* %x_step, align 4
  %112 = load i32, i32* %y_step, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 0, i32 0)
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %114 = load i32, i32* %x, align 4
  %115 = load i32, i32* %y, align 4
  %116 = load i32, i32* %x_step, align 4
  %117 = load i32, i32* %y_step, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 1, i32 1)
  %call167 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call167, i8** %pr, align 8
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.534, %cond.end.165
  %118 = load i8*, i8** %pr, align 8
  %cmp169 = icmp ne i8* %118, null
  br i1 %cmp169, label %for.body.171, label %for.end.536

for.body.171:                                     ; preds = %for.cond.168
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %119 = load i8*, i8** %data, align 8
  store i8* %119, i8** %src_row, align 8
  %120 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool172 = icmp ne %struct._GimpPreview* %120, null
  br i1 %tobool172, label %if.then.173, label %if.else.181

if.then.173:                                      ; preds = %for.body.171
  %121 = load i8*, i8** %preview_buffer, align 8
  %y174 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %122 = load i32, i32* %y174, align 4
  %123 = load i32, i32* %y1, align 4
  %sub175 = sub nsw i32 %122, %123
  %124 = load i32, i32* %preview_width, align 4
  %mul176 = mul nsw i32 %sub175, %124
  %x177 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %125 = load i32, i32* %x177, align 4
  %add178 = add nsw i32 %mul176, %125
  %126 = load i32, i32* %x1, align 4
  %sub179 = sub nsw i32 %add178, %126
  %127 = load i32, i32* %bpp, align 4
  %mul180 = mul nsw i32 %sub179, %127
  %idx.ext = sext i32 %mul180 to i64
  %add.ptr = getelementptr inbounds i8, i8* %121, i64 %idx.ext
  store i8* %add.ptr, i8** %dest_row, align 8
  br label %if.end.183

if.else.181:                                      ; preds = %for.body.171
  %data182 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %128 = load i8*, i8** %data182, align 8
  store i8* %128, i8** %dest_row, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.181, %if.then.173
  store i32 0, i32* %row, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.520, %if.end.183
  %129 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %130 = load i32, i32* %h, align 4
  %cmp185 = icmp slt i32 %129, %130
  br i1 %cmp185, label %for.body.187, label %for.end.522

for.body.187:                                     ; preds = %for.cond.184
  %131 = load i8*, i8** %src_row, align 8
  store i8* %131, i8** %src, align 8
  %132 = load i8*, i8** %dest_row, align 8
  store i8* %132, i8** %dest, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.505, %for.body.187
  %133 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %134 = load i32, i32* %w, align 4
  %cmp189 = icmp slt i32 %133, %134
  br i1 %cmp189, label %for.body.191, label %for.end.507

for.body.191:                                     ; preds = %for.cond.188
  %135 = load i32, i32* %x, align 4
  %136 = load i32, i32* %col, align 4
  %add193 = add nsw i32 %135, %136
  %137 = load i32, i32* %oversample, align 4
  %mul194 = mul nsw i32 %add193, %137
  store i32 %mul194, i32* %rx, align 4
  %138 = load i32, i32* %y, align 4
  %139 = load i32, i32* %row, align 4
  %add195 = add nsw i32 %138, %139
  %140 = load i32, i32* %oversample, align 4
  %mul196 = mul nsw i32 %add195, %140
  store i32 %mul196, i32* %ry, align 4
  %141 = load i32, i32* %rx, align 4
  %conv197 = sitofp i32 %141 to double
  %142 = load i32, i32* %rx, align 4
  %conv198 = sitofp i32 %142 to double
  %mul199 = fmul double %conv197, %conv198
  %143 = load i32, i32* %ry, align 4
  %conv200 = sitofp i32 %143 to double
  %144 = load i32, i32* %ry, align 4
  %conv201 = sitofp i32 %144 to double
  %mul202 = fmul double %conv200, %conv201
  %add203 = fadd double %mul199, %mul202
  %call204 = call double @sqrt(double %add203) #4
  store double %call204, double* %r, align 8
  %145 = load i32, i32* %ry, align 4
  %conv205 = sitofp i32 %145 to double
  %146 = load i32, i32* %rx, align 4
  %conv206 = sitofp i32 %146 to double
  %call207 = call double @atan2(double %conv205, double %conv206) #4
  store double %call207, double* %theta, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc, %for.body.191
  %147 = load i32, i32* %b, align 4
  %148 = load i32, i32* %colour_bpp, align 4
  %cmp209 = icmp slt i32 %147, %148
  br i1 %cmp209, label %for.body.211, label %for.end

for.body.211:                                     ; preds = %for.cond.208
  %149 = load i32, i32* %b, align 4
  %idxprom212 = sext i32 %149 to i64
  %150 = load i8*, i8** %src, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %150, i64 %idxprom212
  %151 = load i8, i8* %arrayidx213, align 1
  %152 = load i32, i32* %b, align 4
  %idxprom214 = sext i32 %152 to i64
  %arrayidx215 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 %idxprom214
  store i8 %151, i8* %arrayidx215, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.211
  %153 = load i32, i32* %b, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.208

for.end:                                          ; preds = %for.cond.208
  %154 = load i32, i32* %colourspace, align 4
  switch i32 %154, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.232
  ]

sw.bb:                                            ; preds = %for.end
  %arrayidx218 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %155 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %155 to i32
  store i32 %conv219, i32* %r216, align 4
  %arrayidx220 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  %156 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %156 to i32
  store i32 %conv221, i32* %g, align 4
  %arrayidx222 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  %157 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %157 to i32
  store i32 %conv223, i32* %b217, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 2), align 4
  store i32 %158, i32* %k, align 4
  call void @gimp_rgb_to_cmyk_int(i32* %r216, i32* %g, i32* %b217, i32* %k)
  %159 = load i32, i32* %r216, align 4
  %conv224 = trunc i32 %159 to i8
  %arrayidx225 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  store i8 %conv224, i8* %arrayidx225, align 1
  %160 = load i32, i32* %g, align 4
  %conv226 = trunc i32 %160 to i8
  %arrayidx227 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  store i8 %conv226, i8* %arrayidx227, align 1
  %161 = load i32, i32* %b217, align 4
  %conv228 = trunc i32 %161 to i8
  %arrayidx229 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  store i8 %conv228, i8* %arrayidx229, align 1
  %162 = load i32, i32* %k, align 4
  %conv230 = trunc i32 %162 to i8
  %arrayidx231 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  store i8 %conv230, i8* %arrayidx231, align 1
  br label %sw.epilog

sw.bb.232:                                        ; preds = %for.end
  %arrayidx233 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %163 = load i8, i8* %arrayidx233, align 1
  %arrayidx234 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  store i8 %163, i8* %arrayidx234, align 1
  %arrayidx235 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %164 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %164 to i32
  %conv237 = sitofp i32 %conv236 to double
  %mul238 = fmul double %conv237, 2.126000e-01
  %arrayidx239 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  %165 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %165 to i32
  %conv241 = sitofp i32 %conv240 to double
  %mul242 = fmul double %conv241, 7.152000e-01
  %add243 = fadd double %mul238, %mul242
  %arrayidx244 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  %166 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %166 to i32
  %conv246 = sitofp i32 %conv245 to double
  %mul247 = fmul double %conv246, 7.220000e-02
  %add248 = fadd double %add243, %mul247
  %add249 = fadd double %add248, 5.000000e-01
  %conv250 = fptoui double %add249 to i8
  %arrayidx251 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  store i8 %conv250, i8* %arrayidx251, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.232, %sw.bb
  store i32 0, i32* %b, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.374, %sw.epilog
  %167 = load i32, i32* %b, align 4
  %168 = load i32, i32* %colourspace, align 4
  %idxprom253 = sext i32 %168 to i64
  %arrayidx254 = getelementptr inbounds [4 x i32], [4 x i32]* @cspace_nchans, i32 0, i64 %idxprom253
  %169 = load i32, i32* %arrayidx254, align 4
  %cmp255 = icmp slt i32 %167, %169
  br i1 %cmp255, label %for.body.257, label %for.end.376

for.body.257:                                     ; preds = %for.cond.252
  %170 = load double, double* %r, align 8
  %171 = load double, double* %theta, align 8
  %172 = load i32, i32* %b, align 4
  %idxprom258 = sext i32 %172 to i64
  %arrayidx259 = getelementptr inbounds [4 x double], [4 x double]* %rot, i32 0, i64 %idxprom258
  %173 = load double, double* %arrayidx259, align 8
  %add260 = fadd double %171, %173
  %call261 = call double @cos(double %add260) #4
  %mul262 = fmul double %170, %call261
  %call263 = call double @rint(double %mul262) #5
  %conv264 = fptosi double %call263 to i32
  store i32 %conv264, i32* %rx, align 4
  %174 = load double, double* %r, align 8
  %175 = load double, double* %theta, align 8
  %176 = load i32, i32* %b, align 4
  %idxprom265 = sext i32 %176 to i64
  %arrayidx266 = getelementptr inbounds [4 x double], [4 x double]* %rot, i32 0, i64 %idxprom265
  %177 = load double, double* %arrayidx266, align 8
  %add267 = fadd double %175, %177
  %call268 = call double @sin(double %add267) #4
  %mul269 = fmul double %174, %call268
  %call270 = call double @rint(double %mul269) #5
  %conv271 = fptosi double %call270 to i32
  store i32 %conv271, i32* %ry, align 4
  %178 = load i32, i32* %rx, align 4
  %179 = load i32, i32* %rx, align 4
  %cmp272 = icmp slt i32 %179, 0
  %cond274 = select i1 %cmp272, i32 1, i32 0
  %180 = load i32, i32* %width, align 4
  %sub275 = sub nsw i32 %180, 1
  %mul276 = mul nsw i32 %cond274, %sub275
  %sub277 = sub nsw i32 %178, %mul276
  %181 = load i32, i32* %width, align 4
  %div278 = sdiv i32 %sub277, %181
  %182 = load i32, i32* %width, align 4
  %mul279 = mul nsw i32 %div278, %182
  %183 = load i32, i32* %rx, align 4
  %sub280 = sub nsw i32 %183, %mul279
  store i32 %sub280, i32* %rx, align 4
  %184 = load i32, i32* %ry, align 4
  %185 = load i32, i32* %ry, align 4
  %cmp281 = icmp slt i32 %185, 0
  %cond283 = select i1 %cmp281, i32 1, i32 0
  %186 = load i32, i32* %width, align 4
  %sub284 = sub nsw i32 %186, 1
  %mul285 = mul nsw i32 %cond283, %sub284
  %sub286 = sub nsw i32 %184, %mul285
  %187 = load i32, i32* %width, align 4
  %div287 = sdiv i32 %sub286, %187
  %188 = load i32, i32* %width, align 4
  %mul288 = mul nsw i32 %div287, %188
  %189 = load i32, i32* %ry, align 4
  %sub289 = sub nsw i32 %189, %mul288
  store i32 %sub289, i32* %ry, align 4
  store i32 0, i32* %sum, align 4
  %190 = load i32, i32* %oversample, align 4
  %sub290 = sub nsw i32 0, %190
  %div291 = sdiv i32 %sub290, 2
  store i32 %div291, i32* %sy, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.367, %for.body.257
  %191 = load i32, i32* %sy, align 4
  %192 = load i32, i32* %oversample, align 4
  %div293 = sdiv i32 %192, 2
  %cmp294 = icmp sle i32 %191, %div293
  br i1 %cmp294, label %for.body.296, label %for.end.369

for.body.296:                                     ; preds = %for.cond.292
  %193 = load i32, i32* %oversample, align 4
  %sub297 = sub nsw i32 0, %193
  %div298 = sdiv i32 %sub297, 2
  store i32 %div298, i32* %sx, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.364, %for.body.296
  %194 = load i32, i32* %sx, align 4
  %195 = load i32, i32* %oversample, align 4
  %div300 = sdiv i32 %195, 2
  %cmp301 = icmp sle i32 %194, %div300
  br i1 %cmp301, label %for.body.303, label %for.end.366

for.body.303:                                     ; preds = %for.cond.299
  %196 = load i32, i32* %rx, align 4
  %197 = load i32, i32* %sx, align 4
  %add304 = add nsw i32 %196, %197
  store i32 %add304, i32* %tx, align 4
  %198 = load i32, i32* %ry, align 4
  %199 = load i32, i32* %sy, align 4
  %add305 = add nsw i32 %198, %199
  store i32 %add305, i32* %ty, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.303
  %200 = load i32, i32* %tx, align 4
  %cmp306 = icmp slt i32 %200, 0
  br i1 %cmp306, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %201 = load i32, i32* %width, align 4
  %202 = load i32, i32* %tx, align 4
  %add308 = add nsw i32 %202, %201
  store i32 %add308, i32* %tx, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.309

while.cond.309:                                   ; preds = %while.body.312, %while.end
  %203 = load i32, i32* %ty, align 4
  %cmp310 = icmp slt i32 %203, 0
  br i1 %cmp310, label %while.body.312, label %while.end.314

while.body.312:                                   ; preds = %while.cond.309
  %204 = load i32, i32* %width, align 4
  %205 = load i32, i32* %ty, align 4
  %add313 = add nsw i32 %205, %204
  store i32 %add313, i32* %ty, align 4
  br label %while.cond.309

while.end.314:                                    ; preds = %while.cond.309
  br label %while.cond.315

while.cond.315:                                   ; preds = %while.body.318, %while.end.314
  %206 = load i32, i32* %tx, align 4
  %207 = load i32, i32* %width, align 4
  %cmp316 = icmp sge i32 %206, %207
  br i1 %cmp316, label %while.body.318, label %while.end.320

while.body.318:                                   ; preds = %while.cond.315
  %208 = load i32, i32* %width, align 4
  %209 = load i32, i32* %tx, align 4
  %sub319 = sub nsw i32 %209, %208
  store i32 %sub319, i32* %tx, align 4
  br label %while.cond.315

while.end.320:                                    ; preds = %while.cond.315
  br label %while.cond.321

while.cond.321:                                   ; preds = %while.body.324, %while.end.320
  %210 = load i32, i32* %ty, align 4
  %211 = load i32, i32* %width, align 4
  %cmp322 = icmp sge i32 %210, %211
  br i1 %cmp322, label %while.body.324, label %while.end.326

while.body.324:                                   ; preds = %while.cond.321
  %212 = load i32, i32* %width, align 4
  %213 = load i32, i32* %ty, align 4
  %sub325 = sub nsw i32 %213, %212
  store i32 %sub325, i32* %ty, align 4
  br label %while.cond.321

while.end.326:                                    ; preds = %while.cond.321
  %214 = load i32, i32* %b, align 4
  %idxprom327 = sext i32 %214 to i64
  %arrayidx328 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 %idxprom327
  %215 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %215 to i32
  %216 = load i32, i32* %ty, align 4
  %217 = load i32, i32* %width, align 4
  %mul330 = mul nsw i32 %216, %217
  %218 = load i32, i32* %tx, align 4
  %add331 = add nsw i32 %mul330, %218
  %idxprom332 = sext i32 %add331 to i64
  %219 = load i32, i32* %b, align 4
  %idxprom333 = sext i32 %219 to i64
  %arrayidx334 = getelementptr inbounds [4 x i8*], [4 x i8*]* %thresh, i32 0, i64 %idxprom333
  %220 = load i8*, i8** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %220, i64 %idxprom332
  %221 = load i8, i8* %arrayidx335, align 1
  %conv336 = zext i8 %221 to i32
  %cmp337 = icmp sgt i32 %conv329, %conv336
  br i1 %cmp337, label %if.then.339, label %if.end.363

if.then.339:                                      ; preds = %while.end.326
  %222 = load i32, i32* %oversample, align 4
  %div340 = sdiv i32 %222, 2
  %add341 = add nsw i32 %div340, 1
  %223 = load i32, i32* %sx, align 4
  %cmp342 = icmp slt i32 %223, 0
  br i1 %cmp342, label %cond.true.344, label %cond.false.346

cond.true.344:                                    ; preds = %if.then.339
  %224 = load i32, i32* %sx, align 4
  %sub345 = sub nsw i32 0, %224
  br label %cond.end.347

cond.false.346:                                   ; preds = %if.then.339
  %225 = load i32, i32* %sx, align 4
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.346, %cond.true.344
  %cond348 = phi i32 [ %sub345, %cond.true.344 ], [ %225, %cond.false.346 ]
  %sub349 = sub nsw i32 %add341, %cond348
  %226 = load i32, i32* %oversample, align 4
  %div350 = sdiv i32 %226, 2
  %add351 = add nsw i32 %div350, 1
  %227 = load i32, i32* %sy, align 4
  %cmp352 = icmp slt i32 %227, 0
  br i1 %cmp352, label %cond.true.354, label %cond.false.356

cond.true.354:                                    ; preds = %cond.end.347
  %228 = load i32, i32* %sy, align 4
  %sub355 = sub nsw i32 0, %228
  br label %cond.end.357

cond.false.356:                                   ; preds = %cond.end.347
  %229 = load i32, i32* %sy, align 4
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.356, %cond.true.354
  %cond358 = phi i32 [ %sub355, %cond.true.354 ], [ %229, %cond.false.356 ]
  %sub359 = sub nsw i32 %add351, %cond358
  %mul360 = mul nsw i32 %sub349, %sub359
  %mul361 = mul nsw i32 255, %mul360
  %230 = load i32, i32* %sum, align 4
  %add362 = add i32 %230, %mul361
  store i32 %add362, i32* %sum, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %cond.end.357, %while.end.326
  br label %for.inc.364

for.inc.364:                                      ; preds = %if.end.363
  %231 = load i32, i32* %sx, align 4
  %inc365 = add nsw i32 %231, 1
  store i32 %inc365, i32* %sx, align 4
  br label %for.cond.299

for.end.366:                                      ; preds = %for.cond.299
  br label %for.inc.367

for.inc.367:                                      ; preds = %for.end.366
  %232 = load i32, i32* %sy, align 4
  %inc368 = add nsw i32 %232, 1
  store i32 %inc368, i32* %sy, align 4
  br label %for.cond.292

for.end.369:                                      ; preds = %for.cond.292
  %233 = load i32, i32* %w002, align 4
  %234 = load i32, i32* %sum, align 4
  %div370 = udiv i32 %234, %233
  store i32 %div370, i32* %sum, align 4
  %235 = load i32, i32* %sum, align 4
  %conv371 = trunc i32 %235 to i8
  %236 = load i32, i32* %b, align 4
  %idxprom372 = sext i32 %236 to i64
  %arrayidx373 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 %idxprom372
  store i8 %conv371, i8* %arrayidx373, align 1
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.end.369
  %237 = load i32, i32* %b, align 4
  %inc375 = add nsw i32 %237, 1
  store i32 %inc375, i32* %b, align 4
  br label %for.cond.252

for.end.376:                                      ; preds = %for.cond.252
  %238 = load i32, i32* %has_alpha, align 4
  %tobool377 = icmp ne i32 %238, 0
  br i1 %tobool377, label %if.then.378, label %if.end.383

if.then.378:                                      ; preds = %for.end.376
  %239 = load i32, i32* %colour_bpp, align 4
  %idxprom379 = sext i32 %239 to i64
  %240 = load i8*, i8** %src, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %240, i64 %idxprom379
  %241 = load i8, i8* %arrayidx380, align 1
  %242 = load i32, i32* %colour_bpp, align 4
  %idxprom381 = sext i32 %242 to i64
  %243 = load i8*, i8** %dest, align 8
  %arrayidx382 = getelementptr inbounds i8, i8* %243, i64 %idxprom381
  store i8 %241, i8* %arrayidx382, align 1
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.378, %for.end.376
  %244 = load i32, i32* %colourspace, align 4
  switch i32 %244, label %sw.default.486 [
    i32 2, label %sw.bb.384
    i32 3, label %sw.bb.454
  ]

sw.bb.384:                                        ; preds = %if.end.383
  %arrayidx385 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %245 = load i8, i8* %arrayidx385, align 1
  %conv386 = zext i8 %245 to i32
  %arrayidx387 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  %246 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %246 to i32
  %add389 = add nsw i32 %conv386, %conv388
  %cmp390 = icmp sgt i32 %add389, 255
  br i1 %cmp390, label %cond.true.392, label %cond.false.393

cond.true.392:                                    ; preds = %sw.bb.384
  br label %cond.end.399

cond.false.393:                                   ; preds = %sw.bb.384
  %arrayidx394 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %247 = load i8, i8* %arrayidx394, align 1
  %conv395 = zext i8 %247 to i32
  %arrayidx396 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  %248 = load i8, i8* %arrayidx396, align 1
  %conv397 = zext i8 %248 to i32
  %add398 = add nsw i32 %conv395, %conv397
  br label %cond.end.399

cond.end.399:                                     ; preds = %cond.false.393, %cond.true.392
  %cond400 = phi i32 [ 255, %cond.true.392 ], [ %add398, %cond.false.393 ]
  %conv401 = trunc i32 %cond400 to i8
  %arrayidx402 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  store i8 %conv401, i8* %arrayidx402, align 1
  %arrayidx403 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  %249 = load i8, i8* %arrayidx403, align 1
  %conv404 = zext i8 %249 to i32
  %arrayidx405 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  %250 = load i8, i8* %arrayidx405, align 1
  %conv406 = zext i8 %250 to i32
  %add407 = add nsw i32 %conv404, %conv406
  %cmp408 = icmp sgt i32 %add407, 255
  br i1 %cmp408, label %cond.true.410, label %cond.false.411

cond.true.410:                                    ; preds = %cond.end.399
  br label %cond.end.417

cond.false.411:                                   ; preds = %cond.end.399
  %arrayidx412 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  %251 = load i8, i8* %arrayidx412, align 1
  %conv413 = zext i8 %251 to i32
  %arrayidx414 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  %252 = load i8, i8* %arrayidx414, align 1
  %conv415 = zext i8 %252 to i32
  %add416 = add nsw i32 %conv413, %conv415
  br label %cond.end.417

cond.end.417:                                     ; preds = %cond.false.411, %cond.true.410
  %cond418 = phi i32 [ 255, %cond.true.410 ], [ %add416, %cond.false.411 ]
  %conv419 = trunc i32 %cond418 to i8
  %arrayidx420 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  store i8 %conv419, i8* %arrayidx420, align 1
  %arrayidx421 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  %253 = load i8, i8* %arrayidx421, align 1
  %conv422 = zext i8 %253 to i32
  %arrayidx423 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  %254 = load i8, i8* %arrayidx423, align 1
  %conv424 = zext i8 %254 to i32
  %add425 = add nsw i32 %conv422, %conv424
  %cmp426 = icmp sgt i32 %add425, 255
  br i1 %cmp426, label %cond.true.428, label %cond.false.429

cond.true.428:                                    ; preds = %cond.end.417
  br label %cond.end.435

cond.false.429:                                   ; preds = %cond.end.417
  %arrayidx430 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  %255 = load i8, i8* %arrayidx430, align 1
  %conv431 = zext i8 %255 to i32
  %arrayidx432 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  %256 = load i8, i8* %arrayidx432, align 1
  %conv433 = zext i8 %256 to i32
  %add434 = add nsw i32 %conv431, %conv433
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.429, %cond.true.428
  %cond436 = phi i32 [ 255, %cond.true.428 ], [ %add434, %cond.false.429 ]
  %conv437 = trunc i32 %cond436 to i8
  %arrayidx438 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  store i8 %conv437, i8* %arrayidx438, align 1
  %arrayidx439 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %257 = load i8, i8* %arrayidx439, align 1
  %conv440 = zext i8 %257 to i32
  %sub441 = sub nsw i32 255, %conv440
  %conv442 = trunc i32 %sub441 to i8
  %arrayidx443 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  store i8 %conv442, i8* %arrayidx443, align 1
  %arrayidx444 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  %258 = load i8, i8* %arrayidx444, align 1
  %conv445 = zext i8 %258 to i32
  %sub446 = sub nsw i32 255, %conv445
  %conv447 = trunc i32 %sub446 to i8
  %arrayidx448 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  store i8 %conv447, i8* %arrayidx448, align 1
  %arrayidx449 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  %259 = load i8, i8* %arrayidx449, align 1
  %conv450 = zext i8 %259 to i32
  %sub451 = sub nsw i32 255, %conv450
  %conv452 = trunc i32 %sub451 to i8
  %arrayidx453 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  store i8 %conv452, i8* %arrayidx453, align 1
  br label %sw.epilog.487

sw.bb.454:                                        ; preds = %if.end.383
  %260 = load i32, i32* %has_alpha, align 4
  %tobool455 = icmp ne i32 %260, 0
  br i1 %tobool455, label %if.then.456, label %if.end.461

if.then.456:                                      ; preds = %sw.bb.454
  %arrayidx457 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %261 = load i8, i8* %arrayidx457, align 1
  %262 = load i32, i32* %colour_bpp, align 4
  %idxprom458 = sext i32 %262 to i64
  %263 = load i8*, i8** %dest, align 8
  %arrayidx459 = getelementptr inbounds i8, i8* %263, i64 %idxprom458
  store i8 %261, i8* %arrayidx459, align 1
  %arrayidx460 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  store i8 -1, i8* %arrayidx460, align 1
  br label %if.end.461

if.end.461:                                       ; preds = %if.then.456, %sw.bb.454
  %arrayidx462 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  %264 = load i8, i8* %arrayidx462, align 1
  %conv463 = zext i8 %264 to i32
  %arrayidx464 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %265 = load i8, i8* %arrayidx464, align 1
  %conv465 = zext i8 %265 to i32
  %mul466 = mul nsw i32 %conv463, %conv465
  %div467 = sdiv i32 %mul466, 255
  %conv468 = trunc i32 %div467 to i8
  %arrayidx469 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 1
  store i8 %conv468, i8* %arrayidx469, align 1
  %arrayidx470 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  %266 = load i8, i8* %arrayidx470, align 1
  %conv471 = zext i8 %266 to i32
  %arrayidx472 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %267 = load i8, i8* %arrayidx472, align 1
  %conv473 = zext i8 %267 to i32
  %mul474 = mul nsw i32 %conv471, %conv473
  %div475 = sdiv i32 %mul474, 255
  %conv476 = trunc i32 %div475 to i8
  %arrayidx477 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 2
  store i8 %conv476, i8* %arrayidx477, align 1
  %arrayidx478 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 3
  %268 = load i8, i8* %arrayidx478, align 1
  %conv479 = zext i8 %268 to i32
  %arrayidx480 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  %269 = load i8, i8* %arrayidx480, align 1
  %conv481 = zext i8 %269 to i32
  %mul482 = mul nsw i32 %conv479, %conv481
  %div483 = sdiv i32 %mul482, 255
  %conv484 = trunc i32 %div483 to i8
  %arrayidx485 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 0
  store i8 %conv484, i8* %arrayidx485, align 1
  br label %sw.epilog.487

sw.default.486:                                   ; preds = %if.end.383
  br label %sw.epilog.487

sw.epilog.487:                                    ; preds = %sw.default.486, %if.end.461, %cond.end.435
  store i32 0, i32* %b, align 4
  br label %for.cond.488

for.cond.488:                                     ; preds = %for.inc.496, %sw.epilog.487
  %270 = load i32, i32* %b, align 4
  %271 = load i32, i32* %colour_bpp, align 4
  %cmp489 = icmp slt i32 %270, %271
  br i1 %cmp489, label %for.body.491, label %for.end.498

for.body.491:                                     ; preds = %for.cond.488
  %272 = load i32, i32* %b, align 4
  %idxprom492 = sext i32 %272 to i64
  %arrayidx493 = getelementptr inbounds [4 x i8], [4 x i8]* %data192, i32 0, i64 %idxprom492
  %273 = load i8, i8* %arrayidx493, align 1
  %274 = load i32, i32* %b, align 4
  %idxprom494 = sext i32 %274 to i64
  %275 = load i8*, i8** %dest, align 8
  %arrayidx495 = getelementptr inbounds i8, i8* %275, i64 %idxprom494
  store i8 %273, i8* %arrayidx495, align 1
  br label %for.inc.496

for.inc.496:                                      ; preds = %for.body.491
  %276 = load i32, i32* %b, align 4
  %inc497 = add nsw i32 %276, 1
  store i32 %inc497, i32* %b, align 4
  br label %for.cond.488

for.end.498:                                      ; preds = %for.cond.488
  %bpp499 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %277 = load i32, i32* %bpp499, align 4
  %278 = load i8*, i8** %src, align 8
  %idx.ext500 = sext i32 %277 to i64
  %add.ptr501 = getelementptr inbounds i8, i8* %278, i64 %idx.ext500
  store i8* %add.ptr501, i8** %src, align 8
  %bpp502 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %279 = load i32, i32* %bpp502, align 4
  %280 = load i8*, i8** %dest, align 8
  %idx.ext503 = sext i32 %279 to i64
  %add.ptr504 = getelementptr inbounds i8, i8* %280, i64 %idx.ext503
  store i8* %add.ptr504, i8** %dest, align 8
  br label %for.inc.505

for.inc.505:                                      ; preds = %for.end.498
  %281 = load i32, i32* %col, align 4
  %inc506 = add nsw i32 %281, 1
  store i32 %inc506, i32* %col, align 4
  br label %for.cond.188

for.end.507:                                      ; preds = %for.cond.188
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %282 = load i32, i32* %rowstride, align 4
  %283 = load i8*, i8** %src_row, align 8
  %idx.ext508 = sext i32 %282 to i64
  %add.ptr509 = getelementptr inbounds i8, i8* %283, i64 %idx.ext508
  store i8* %add.ptr509, i8** %src_row, align 8
  %284 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool510 = icmp ne %struct._GimpPreview* %284, null
  br i1 %tobool510, label %if.then.511, label %if.else.515

if.then.511:                                      ; preds = %for.end.507
  %285 = load i32, i32* %preview_width, align 4
  %286 = load i32, i32* %bpp, align 4
  %mul512 = mul nsw i32 %285, %286
  %287 = load i8*, i8** %dest_row, align 8
  %idx.ext513 = sext i32 %mul512 to i64
  %add.ptr514 = getelementptr inbounds i8, i8* %287, i64 %idx.ext513
  store i8* %add.ptr514, i8** %dest_row, align 8
  br label %if.end.519

if.else.515:                                      ; preds = %for.end.507
  %rowstride516 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %288 = load i32, i32* %rowstride516, align 4
  %289 = load i8*, i8** %dest_row, align 8
  %idx.ext517 = sext i32 %288 to i64
  %add.ptr518 = getelementptr inbounds i8, i8* %289, i64 %idx.ext517
  store i8* %add.ptr518, i8** %dest_row, align 8
  br label %if.end.519

if.end.519:                                       ; preds = %if.else.515, %if.then.511
  br label %for.inc.520

for.inc.520:                                      ; preds = %if.end.519
  %290 = load i32, i32* %row, align 4
  %inc521 = add nsw i32 %290, 1
  store i32 %inc521, i32* %row, align 4
  br label %for.cond.184

for.end.522:                                      ; preds = %for.cond.184
  %w523 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %291 = load i32, i32* %w523, align 4
  %h524 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %292 = load i32, i32* %h524, align 4
  %mul525 = mul nsw i32 %291, %292
  %293 = load i32, i32* %progress, align 4
  %add526 = add nsw i32 %293, %mul525
  store i32 %add526, i32* %progress, align 4
  %294 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool527 = icmp ne %struct._GimpPreview* %294, null
  br i1 %tobool527, label %if.end.533, label %if.then.528

if.then.528:                                      ; preds = %for.end.522
  %295 = load i32, i32* %progress, align 4
  %conv529 = sitofp i32 %295 to double
  %296 = load i32, i32* %max_progress, align 4
  %conv530 = sitofp i32 %296 to double
  %div531 = fdiv double %conv529, %conv530
  %call532 = call i32 @gimp_progress_update(double %div531)
  br label %if.end.533

if.end.533:                                       ; preds = %if.then.528, %for.end.522
  br label %for.inc.534

for.inc.534:                                      ; preds = %if.end.533
  %297 = load i8*, i8** %pr, align 8
  %call535 = call i8* @gimp_pixel_rgns_process(i8* %297)
  store i8* %call535, i8** %pr, align 8
  br label %for.cond.168

for.end.536:                                      ; preds = %for.cond.168
  br label %for.inc.537

for.inc.537:                                      ; preds = %for.end.536
  %298 = load i32, i32* %tile_width, align 4
  %299 = load i32, i32* %x, align 4
  %300 = load i32, i32* %tile_width, align 4
  %rem538 = srem i32 %299, %300
  %sub539 = sub nsw i32 %298, %rem538
  %301 = load i32, i32* %x, align 4
  %add540 = add nsw i32 %301, %sub539
  store i32 %add540, i32* %x, align 4
  br label %for.cond.144

for.end.541:                                      ; preds = %for.cond.144
  br label %for.inc.542

for.inc.542:                                      ; preds = %for.end.541
  %302 = load i32, i32* %tile_width, align 4
  %303 = load i32, i32* %y, align 4
  %304 = load i32, i32* %tile_width, align 4
  %rem543 = srem i32 %303, %304
  %sub544 = sub nsw i32 %302, %rem543
  %305 = load i32, i32* %y, align 4
  %add545 = add nsw i32 %305, %sub544
  store i32 %add545, i32* %y, align 4
  br label %for.cond

for.end.546:                                      ; preds = %for.cond
  %306 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool547 = icmp ne %struct._GimpPreview* %306, null
  br i1 %tobool547, label %if.then.548, label %if.else.550

if.then.548:                                      ; preds = %for.end.546
  %307 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %308 = load i8*, i8** %preview_buffer, align 8
  %309 = load i32, i32* %preview_width, align 4
  %310 = load i32, i32* %bpp, align 4
  %mul549 = mul nsw i32 %309, %310
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %307, i8* %308, i32 %mul549)
  %311 = load i8*, i8** %preview_buffer, align 8
  call void @g_free(i8* %311)
  br label %if.end.558

if.else.550:                                      ; preds = %for.end.546
  %call551 = call i32 @gimp_progress_update(double 1.000000e+00)
  %312 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %312)
  %313 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id552 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %313, i32 0, i32 0
  %314 = load i32, i32* %drawable_id552, align 4
  %call553 = call i32 @gimp_drawable_merge_shadow(i32 %314, i32 1)
  %315 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id554 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %315, i32 0, i32 0
  %316 = load i32, i32* %drawable_id554, align 4
  %317 = load i32, i32* %x1, align 4
  %318 = load i32, i32* %y1, align 4
  %319 = load i32, i32* %x2, align 4
  %320 = load i32, i32* %x1, align 4
  %sub555 = sub nsw i32 %319, %320
  %321 = load i32, i32* %y2, align 4
  %322 = load i32, i32* %y1, align 4
  %sub556 = sub nsw i32 %321, %322
  %call557 = call i32 @gimp_drawable_update(i32 %316, i32 %317, i32 %318, i32 %sub555, i32 %sub556)
  br label %if.end.558

if.end.558:                                       ; preds = %if.else.550, %if.then.548
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gtk_paned_new(i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_paned_pack1(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_paned_pack2(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_item_get_image(i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @spi_callback(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %st = alloca %struct.NewsprintDialog_st*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.NewsprintDialog_st*
  store %struct.NewsprintDialog_st* %1, %struct.NewsprintDialog_st** %st, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %2, i8* bitcast (%struct.NewsprintUIValues* @pvals_ui to i8*))
  %3 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %output_lpi = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %3, i32 0, i32 3
  %4 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi, align 8
  %5 = bitcast %struct._GtkObject* %4 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @lpi_callback to i8*), i8* %6)
  %7 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %output_lpi1 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %7, i32 0, i32 3
  %8 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi1, align 8
  %9 = bitcast %struct._GtkObject* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %11 = load double, double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %12 to double
  %div = fdiv double %11, %conv
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %10, double %div)
  %13 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %output_lpi4 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %13, i32 0, i32 3
  %14 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi4, align 8
  %15 = bitcast %struct._GtkObject* %14 to i8*
  %16 = load i8*, i8** %data.addr, align 8
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @lpi_callback to i8*), i8* %16)
  ret void
}

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

; Function Attrs: nounwind uwtable
define internal void @lpi_callback(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %st = alloca %struct.NewsprintDialog_st*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.NewsprintDialog_st*
  store %struct.NewsprintDialog_st* %1, %struct.NewsprintDialog_st** %st, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %2, i8* bitcast (double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 1) to i8*))
  %3 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %cellsize = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %3, i32 0, i32 4
  %4 = load %struct._GtkObject*, %struct._GtkObject** %cellsize, align 8
  %5 = bitcast %struct._GtkObject* %4 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @cellsize_callback to i8*), i8* %6)
  %7 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %cellsize1 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %7, i32 0, i32 4
  %8 = load %struct._GtkObject*, %struct._GtkObject** %cellsize1, align 8
  %9 = bitcast %struct._GtkObject* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %11 = load double, double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 0), align 8
  %12 = load double, double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 1), align 8
  %div = fdiv double %11, %12
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %10, double %div)
  %13 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %cellsize4 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %13, i32 0, i32 4
  %14 = load %struct._GtkObject*, %struct._GtkObject** %cellsize4, align 8
  %15 = bitcast %struct._GtkObject* %14 to i8*
  %16 = load i8*, i8** %data.addr, align 8
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @cellsize_callback to i8*), i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cellsize_callback(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %st = alloca %struct.NewsprintDialog_st*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.NewsprintDialog_st*
  store %struct.NewsprintDialog_st* %1, %struct.NewsprintDialog_st** %st, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  call void @gimp_int_adjustment_update(%struct._GtkAdjustment* %2, i8* bitcast (%struct.NewsprintValues* @pvals to i8*))
  %3 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %output_lpi = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %3, i32 0, i32 3
  %4 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi, align 8
  %5 = bitcast %struct._GtkObject* %4 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @lpi_callback to i8*), i8* %6)
  %7 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %output_lpi1 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %7, i32 0, i32 3
  %8 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi1, align 8
  %9 = bitcast %struct._GtkObject* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %11 = load double, double* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %12 to double
  %div = fdiv double %11, %conv
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %10, double %div)
  %13 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %output_lpi4 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %13, i32 0, i32 3
  %14 = load %struct._GtkObject*, %struct._GtkObject** %output_lpi4, align 8
  %15 = bitcast %struct._GtkObject* %14 to i8*
  %16 = load i8*, i8** %data.addr, align 8
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @lpi_callback to i8*), i8* %16)
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @newsprint_cspace_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %st = alloca %struct.NewsprintDialog_st*, align 8
  %new_cs = alloca i32, align 4
  %old_cs = alloca i32, align 4
  %preview = alloca %struct._GtkWidget*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %new_cs, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  store i32 %2, i32* %old_cs, align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0))
  %6 = bitcast i8* %call1 to %struct.NewsprintDialog_st*
  store %struct.NewsprintDialog_st* %6, %struct.NewsprintDialog_st** %st, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0))
  %10 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %10, %struct._GtkWidget** %preview, align 8
  %11 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %tobool = icmp ne %struct.NewsprintDialog_st* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %tobool5 = icmp ne %struct.NewsprintDialog_st* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end.40

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_toggle_button_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkToggleButton*
  %call9 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %15)
  store i32 %call9, i32* %active, align 4
  %16 = load i32, i32* %new_cs, align 4
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  %17 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %pull_table = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %17, i32 0, i32 0
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %pull_table, align 8
  %19 = load i32, i32* %active, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %18, i32 %19)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.6
  %20 = load i32, i32* %active, align 4
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.40

if.end.15:                                        ; preds = %if.end.12
  %21 = load i32, i32* %new_cs, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.NewsprintValues, %struct.NewsprintValues* @pvals, i32 0, i32 1), align 4
  %22 = load i32, i32* %new_cs, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %chst = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %23, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x [4 x %struct._channel_st*]], [4 x [4 x %struct._channel_st*]]* %chst, i32 0, i64 %idxprom
  %arrayidx16 = getelementptr inbounds [4 x %struct._channel_st*], [4 x %struct._channel_st*]* %arrayidx, i32 0, i64 0
  %24 = load %struct._channel_st*, %struct._channel_st** %arrayidx16, align 8
  %tobool17 = icmp ne %struct._channel_st* %24, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %25 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %26 = load i32, i32* %new_cs, align 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gen_channels(%struct.NewsprintDialog_st* %25, i32 %26, %struct._GtkWidget* %27)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  %28 = load i32, i32* %old_cs, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %channel_notebook = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %29, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook, i32 0, i64 %idxprom20
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx21, align 8
  %tobool22 = icmp ne %struct._GtkWidget* %30, null
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.19
  %31 = load i32, i32* %old_cs, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %channel_notebook25 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %32, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook25, i32 0, i64 %idxprom24
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx26, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %33)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.19
  %34 = load i32, i32* %new_cs, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %channel_notebook29 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %35, i32 0, i32 6
  %arrayidx30 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook29, i32 0, i64 %idxprom28
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx30, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load i32, i32* %new_cs, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %channel_notebook32 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %38, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook32, i32 0, i64 %idxprom31
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx33, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_notebook_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call34)
  %41 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkNotebook*
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %41, i32 0)
  %42 = load i32, i32* %new_cs, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %chst37 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %43, i32 0, i32 7
  %arrayidx38 = getelementptr inbounds [4 x [4 x %struct._channel_st*]], [4 x [4 x %struct._channel_st*]]* %chst37, i32 0, i64 %idxprom36
  %arrayidx39 = getelementptr inbounds [4 x %struct._channel_st*], [4 x %struct._channel_st*]* %arrayidx38, i32 0, i64 0
  %44 = load %struct._channel_st*, %struct._channel_st** %arrayidx39, align 8
  call void @preview_update(%struct._channel_st* %44)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.14, %if.end.27, %if.end
  ret void
}

declare %struct._GtkWidget* @gtk_button_box_new(i32) #1

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @newsprint_defaults_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %st = alloca %struct.NewsprintDialog_st*, align 8
  %saved_lock = alloca i32, align 4
  %cspace = alloca i32, align 4
  %chst = alloca %struct._channel_st**, align 8
  %ct = alloca %struct.chan_tmpl*, align 8
  %spotfn = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.NewsprintDialog_st*
  store %struct.NewsprintDialog_st* %1, %struct.NewsprintDialog_st** %st, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 2), align 4
  store i32 %2, i32* %saved_lock, align 4
  store i32 0, i32* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 2), align 4
  store i32 0, i32* %cspace, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %cspace, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %cspace, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st, align 8
  %chst1 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %5, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x [4 x %struct._channel_st*]], [4 x [4 x %struct._channel_st*]]* %chst1, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x %struct._channel_st*], [4 x %struct._channel_st*]* %arrayidx, i32 0, i32 0
  store %struct._channel_st** %arraydecay, %struct._channel_st*** %chst, align 8
  %6 = load i32, i32* %cspace, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [4 x %struct.chan_tmpl*], [4 x %struct.chan_tmpl*]* @cspace_chan_tmpl, i32 0, i64 %idxprom2
  %7 = load %struct.chan_tmpl*, %struct.chan_tmpl** %arrayidx3, align 8
  store %struct.chan_tmpl* %7, %struct.chan_tmpl** %ct, align 8
  %8 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx4 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %8, i64 0
  %9 = load %struct._channel_st*, %struct._channel_st** %arrayidx4, align 8
  %tobool = icmp ne %struct._channel_st* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  store i32 0, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %name = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %tobool5 = icmp ne i8* %11, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %c, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx7 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %13, i64 %idxprom6
  %14 = load %struct._channel_st*, %struct._channel_st** %arrayidx7, align 8
  %angle_adj = getelementptr inbounds %struct._channel_st, %struct._channel_st* %14, i32 0, i32 3
  %15 = load %struct._GtkObject*, %struct._GtkObject** %angle_adj, align 8
  %16 = bitcast %struct._GtkObject* %15 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkAdjustment*
  %18 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %factory_angle = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %18, i32 0, i32 3
  %19 = load double*, double** %factory_angle, align 8
  %20 = load double, double* %19, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %17, double %20)
  %21 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %factory_spotfn = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %21, i32 0, i32 4
  %22 = load i32*, i32** %factory_spotfn, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %spotfn, align 4
  %24 = load i32, i32* %c, align 4
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx10 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %25, i64 %idxprom9
  %26 = load %struct._channel_st*, %struct._channel_st** %arrayidx10, align 8
  %combo = getelementptr inbounds %struct._channel_st, %struct._channel_st* %26, i32 0, i32 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_int_combo_box_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call11)
  %29 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpIntComboBox*
  %30 = load i32, i32* %spotfn, align 4
  %call13 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %29, i32 %30)
  %31 = load i32, i32* %c, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %c, align 4
  %32 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %incdec.ptr = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %32, i32 1
  store %struct.chan_tmpl* %incdec.ptr, %struct.chan_tmpl** %ct, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then
  %33 = load i32, i32* %cspace, align 4
  %inc14 = add nsw i32 %33, 1
  store i32 %inc14, i32* %cspace, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %saved_lock, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gen_channels(%struct.NewsprintDialog_st* %st, i32 %colourspace, %struct._GtkWidget* %preview) #0 {
entry:
  %st.addr = alloca %struct.NewsprintDialog_st*, align 8
  %colourspace.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %ct = alloca %struct.chan_tmpl*, align 8
  %chst = alloca %struct._channel_st**, align 8
  %base = alloca %struct._channel_st*, align 8
  %i = alloca i32, align 4
  store %struct.NewsprintDialog_st* %st, %struct.NewsprintDialog_st** %st.addr, align 8
  store i32 %colourspace, i32* %colourspace.addr, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store %struct._channel_st* null, %struct._channel_st** %base, align 8
  %0 = load i32, i32* %colourspace.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %chst1 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %1, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x [4 x %struct._channel_st*]], [4 x [4 x %struct._channel_st*]]* %chst1, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x %struct._channel_st*], [4 x %struct._channel_st*]* %arrayidx, i32 0, i32 0
  store %struct._channel_st** %arraydecay, %struct._channel_st*** %chst, align 8
  %2 = load i32, i32* %colourspace.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [4 x %struct.chan_tmpl*], [4 x %struct.chan_tmpl*]* @cspace_chan_tmpl, i32 0, i64 %idxprom2
  %3 = load %struct.chan_tmpl*, %struct.chan_tmpl** %arrayidx3, align 8
  store %struct.chan_tmpl* %3, %struct.chan_tmpl** %ct, align 8
  store i32 0, i32* %i, align 4
  %call = call %struct._GtkWidget* @gtk_notebook_new()
  %4 = load i32, i32* %colourspace.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %channel_notebook = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %5, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook, i32 0, i64 %idxprom4
  store %struct._GtkWidget* %call, %struct._GtkWidget** %arrayidx5, align 8
  %6 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %vbox = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %6, i32 0, i32 5
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %10 = load i32, i32* %colourspace.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %channel_notebook9 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %11, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook9, i32 0, i64 %idxprom8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx10, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %vbox11 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %13, i32 0, i32 5
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox11, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %17 = load i32, i32* %colourspace.addr, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %channel_notebook15 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %18, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook15, i32 0, i64 %idxprom14
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx16, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %16, %struct._GtkWidget* %19, i32 3)
  %20 = load i32, i32* %colourspace.addr, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %channel_notebook18 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %21, i32 0, i32 6
  %arrayidx19 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook18, i32 0, i64 %idxprom17
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx19, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %23 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %name = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %23, i32 0, i32 0
  %24 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %24, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %call20 = call %struct._channel_st* @new_channel(%struct.chan_tmpl* %25, %struct._GtkWidget* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx22 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %28, i64 %idxprom21
  store %struct._channel_st* %call20, %struct._channel_st** %arrayidx22, align 8
  %29 = load i32, i32* %i, align 4
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx25 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %31, i64 %idxprom24
  %32 = load %struct._channel_st*, %struct._channel_st** %arrayidx25, align 8
  %33 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %33, 1
  %idxprom26 = sext i32 %sub to i64
  %34 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx27 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %34, i64 %idxprom26
  %35 = load %struct._channel_st*, %struct._channel_st** %arrayidx27, align 8
  %next = getelementptr inbounds %struct._channel_st, %struct._channel_st* %35, i32 0, i32 8
  store %struct._channel_st* %32, %struct._channel_st** %next, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %36 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx29 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %37, i64 %idxprom28
  %38 = load %struct._channel_st*, %struct._channel_st** %arrayidx29, align 8
  store %struct._channel_st* %38, %struct._channel_st** %base, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %39 = load i32, i32* %colourspace.addr, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load %struct.NewsprintDialog_st*, %struct.NewsprintDialog_st** %st.addr, align 8
  %channel_notebook31 = getelementptr inbounds %struct.NewsprintDialog_st, %struct.NewsprintDialog_st* %40, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %channel_notebook31, i32 0, i64 %idxprom30
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx32, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_notebook_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call33)
  %43 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkNotebook*
  %44 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx36 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %45, i64 %idxprom35
  %46 = load %struct._channel_st*, %struct._channel_st** %arrayidx36, align 8
  %vbox37 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %46, i32 0, i32 0
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox37, align 8
  %48 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %name38 = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %48, i32 0, i32 0
  %49 = load i8*, i8** %name38, align 8
  %call39 = call i8* @gettext(i8* %49) #4
  %call40 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call39)
  %call41 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %43, %struct._GtkWidget* %47, %struct._GtkWidget* %call40)
  %50 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx43 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %51, i64 %idxprom42
  %52 = load %struct._channel_st*, %struct._channel_st** %arrayidx43, align 8
  %vbox44 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %52, i32 0, i32 0
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox44, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  %55 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct, align 8
  %incdec.ptr = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %55, i32 1
  store %struct.chan_tmpl* %incdec.ptr, %struct.chan_tmpl** %ct, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct._channel_st*, %struct._channel_st** %base, align 8
  %57 = load i32, i32* %i, align 4
  %sub45 = sub nsw i32 %57, 1
  %idxprom46 = sext i32 %sub45 to i64
  %58 = load %struct._channel_st**, %struct._channel_st*** %chst, align 8
  %arrayidx47 = getelementptr inbounds %struct._channel_st*, %struct._channel_st** %58, i64 %idxprom46
  %59 = load %struct._channel_st*, %struct._channel_st** %arrayidx47, align 8
  %next48 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %59, i32 0, i32 8
  store %struct._channel_st* %56, %struct._channel_st** %next48, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @preview_update(%struct._channel_st* %st) #0 {
entry:
  %st.addr = alloca %struct._channel_st*, align 8
  %sfn = alloca i32, align 4
  %prev = alloca %struct.preview_st*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %oversample = alloca i32, align 4
  %thresh = alloca i8*, align 8
  %pct = alloca [12 x i8], align 1
  %value = alloca i8, align 1
  %rgb = alloca [3267 x i8], align 16
  %sum = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  store %struct._channel_st* %st, %struct._channel_st** %st.addr, align 8
  %0 = load %struct._channel_st*, %struct._channel_st** %st.addr, align 8
  %spotfn_num = getelementptr inbounds %struct._channel_st, %struct._channel_st* %0, i32 0, i32 1
  %1 = load i32*, i32** %spotfn_num, align 8
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %sfn, align 4
  store i32 48, i32* %width, align 4
  store i32 3, i32* %oversample, align 4
  %3 = load i32, i32* %sfn, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom
  %prev_thresh = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx, i32 0, i32 4
  %4 = load i8*, i8** %prev_thresh, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %sfn, align 4
  %call = call i8* @spot2thresh(i32 %5, i32 48)
  %6 = load i32, i32* %sfn, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom1
  %prev_thresh3 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx2, i32 0, i32 4
  store i8* %call, i8** %prev_thresh3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %sfn, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom4
  %prev_thresh6 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx5, i32 0, i32 4
  %8 = load i8*, i8** %prev_thresh6, align 8
  store i8* %8, i8** %thresh, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.173, %if.end
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 3
  br i1 %cmp, label %for.body, label %for.end.175

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct._channel_st*, %struct._channel_st** %st.addr, align 8
  %prev8 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %11, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [3 x %struct.preview_st], [3 x %struct.preview_st]* %prev8, i32 0, i64 %idxprom7
  store %struct.preview_st* %arrayidx9, %struct.preview_st** %prev, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32, i32* %sfn, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom11
  %prev_lvl = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx12, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %prev_lvl, i32 0, i64 %idxprom10
  %14 = load double, double* %arrayidx13, align 8
  %mul = fmul double %14, 2.550000e+02
  %conv = fptoui double %mul to i8
  store i8 %conv, i8* %value, align 1
  store i32 0, i32* %y, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.155, %for.body
  %15 = load i32, i32* %y, align 4
  %cmp15 = icmp slt i32 %15, 33
  br i1 %cmp15, label %for.body.17, label %for.end.157

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %x, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.152, %for.body.17
  %16 = load i32, i32* %x, align 4
  %cmp19 = icmp slt i32 %16, 33
  br i1 %cmp19, label %for.body.21, label %for.end.154

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %sum, align 4
  %17 = load i32, i32* %x, align 4
  %mul22 = mul nsw i32 %17, 3
  store i32 %mul22, i32* %rx, align 4
  %18 = load i32, i32* %y, align 4
  %mul23 = mul nsw i32 %18, 3
  store i32 %mul23, i32* %ry, align 4
  %19 = load i32, i32* %oversample, align 4
  %sub = sub nsw i32 0, %19
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %sy, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.87, %for.body.21
  %20 = load i32, i32* %sy, align 4
  %21 = load i32, i32* %oversample, align 4
  %div25 = sdiv i32 %21, 2
  %cmp26 = icmp sle i32 %20, %div25
  br i1 %cmp26, label %for.body.28, label %for.end.89

for.body.28:                                      ; preds = %for.cond.24
  %22 = load i32, i32* %oversample, align 4
  %sub29 = sub nsw i32 0, %22
  %div30 = sdiv i32 %sub29, 2
  store i32 %div30, i32* %sx, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %for.body.28
  %23 = load i32, i32* %sx, align 4
  %24 = load i32, i32* %oversample, align 4
  %div32 = sdiv i32 %24, 2
  %cmp33 = icmp sle i32 %23, %div32
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.31
  %25 = load i32, i32* %rx, align 4
  %26 = load i32, i32* %sx, align 4
  %add = add nsw i32 %25, %26
  store i32 %add, i32* %tx, align 4
  %27 = load i32, i32* %ry, align 4
  %28 = load i32, i32* %sy, align 4
  %add36 = add nsw i32 %27, %28
  store i32 %add36, i32* %ty, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.35
  %29 = load i32, i32* %tx, align 4
  %cmp37 = icmp slt i32 %29, 0
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %tx, align 4
  %add39 = add nsw i32 %31, %30
  store i32 %add39, i32* %tx, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.43, %while.end
  %32 = load i32, i32* %ty, align 4
  %cmp41 = icmp slt i32 %32, 0
  br i1 %cmp41, label %while.body.43, label %while.end.45

while.body.43:                                    ; preds = %while.cond.40
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %ty, align 4
  %add44 = add nsw i32 %34, %33
  store i32 %add44, i32* %ty, align 4
  br label %while.cond.40

while.end.45:                                     ; preds = %while.cond.40
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.49, %while.end.45
  %35 = load i32, i32* %tx, align 4
  %36 = load i32, i32* %width, align 4
  %cmp47 = icmp sge i32 %35, %36
  br i1 %cmp47, label %while.body.49, label %while.end.51

while.body.49:                                    ; preds = %while.cond.46
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %tx, align 4
  %sub50 = sub nsw i32 %38, %37
  store i32 %sub50, i32* %tx, align 4
  br label %while.cond.46

while.end.51:                                     ; preds = %while.cond.46
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.55, %while.end.51
  %39 = load i32, i32* %ty, align 4
  %40 = load i32, i32* %width, align 4
  %cmp53 = icmp sge i32 %39, %40
  br i1 %cmp53, label %while.body.55, label %while.end.57

while.body.55:                                    ; preds = %while.cond.52
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %ty, align 4
  %sub56 = sub nsw i32 %42, %41
  store i32 %sub56, i32* %ty, align 4
  br label %while.cond.52

while.end.57:                                     ; preds = %while.cond.52
  %43 = load i8, i8* %value, align 1
  %conv58 = zext i8 %43 to i32
  %44 = load i32, i32* %ty, align 4
  %45 = load i32, i32* %width, align 4
  %mul59 = mul nsw i32 %44, %45
  %46 = load i32, i32* %tx, align 4
  %add60 = add nsw i32 %mul59, %46
  %idxprom61 = sext i32 %add60 to i64
  %47 = load i8*, i8** %thresh, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %47, i64 %idxprom61
  %48 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %48 to i32
  %cmp64 = icmp sgt i32 %conv58, %conv63
  br i1 %cmp64, label %if.then.66, label %if.end.86

if.then.66:                                       ; preds = %while.end.57
  %49 = load i32, i32* %oversample, align 4
  %div67 = sdiv i32 %49, 2
  %add68 = add nsw i32 %div67, 1
  %50 = load i32, i32* %sx, align 4
  %cmp69 = icmp slt i32 %50, 0
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.66
  %51 = load i32, i32* %sx, align 4
  %sub71 = sub nsw i32 0, %51
  br label %cond.end

cond.false:                                       ; preds = %if.then.66
  %52 = load i32, i32* %sx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub71, %cond.true ], [ %52, %cond.false ]
  %sub72 = sub nsw i32 %add68, %cond
  %53 = load i32, i32* %oversample, align 4
  %div73 = sdiv i32 %53, 2
  %add74 = add nsw i32 %div73, 1
  %54 = load i32, i32* %sy, align 4
  %cmp75 = icmp slt i32 %54, 0
  br i1 %cmp75, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.end
  %55 = load i32, i32* %sy, align 4
  %sub78 = sub nsw i32 0, %55
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end
  %56 = load i32, i32* %sy, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi i32 [ %sub78, %cond.true.77 ], [ %56, %cond.false.79 ]
  %sub82 = sub nsw i32 %add74, %cond81
  %mul83 = mul nsw i32 %sub72, %sub82
  %mul84 = mul nsw i32 255, %mul83
  %57 = load i32, i32* %sum, align 4
  %add85 = add i32 %57, %mul84
  store i32 %add85, i32* %sum, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %cond.end.80, %while.end.57
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %58 = load i32, i32* %sx, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %sx, align 4
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end
  %59 = load i32, i32* %sy, align 4
  %inc88 = add nsw i32 %59, 1
  store i32 %inc88, i32* %sy, align 4
  br label %for.cond.24

for.end.89:                                       ; preds = %for.cond.24
  %60 = load i32, i32* %oversample, align 4
  %div90 = sdiv i32 %60, 2
  %add91 = add nsw i32 %div90, 1
  %sub92 = sub nsw i32 %add91, 0
  %61 = load i32, i32* %oversample, align 4
  %div93 = sdiv i32 %61, 2
  %add94 = add nsw i32 %div93, 1
  %sub95 = sub nsw i32 %add94, 0
  %mul96 = mul nsw i32 %sub92, %sub95
  %62 = load i32, i32* %oversample, align 4
  %div97 = sdiv i32 %62, 2
  %add98 = add nsw i32 %div97, 1
  %sub99 = sub nsw i32 %add98, 0
  %63 = load i32, i32* %oversample, align 4
  %div100 = sdiv i32 %63, 2
  %add101 = add nsw i32 %div100, 1
  %sub102 = sub nsw i32 %add101, 0
  %mul103 = mul nsw i32 %sub99, %sub102
  %mul104 = mul nsw i32 %mul96, %mul103
  %64 = load i32, i32* %sum, align 4
  %div105 = udiv i32 %64, %mul104
  store i32 %div105, i32* %sum, align 4
  %65 = load i32, i32* %x, align 4
  %rem = srem i32 %65, 16
  %cmp106 = icmp eq i32 %rem, 0
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.89
  %66 = load i32, i32* %y, align 4
  %rem108 = srem i32 %66, 16
  %cmp109 = icmp eq i32 %rem108, 0
  br i1 %cmp109, label %if.then.111, label %if.else

if.then.111:                                      ; preds = %lor.lhs.false, %for.end.89
  %67 = load i32, i32* %y, align 4
  %mul112 = mul nsw i32 %67, 33
  %68 = load i32, i32* %x, align 4
  %add113 = add nsw i32 %mul112, %68
  %mul114 = mul nsw i32 %add113, 3
  %add115 = add nsw i32 %mul114, 0
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [3267 x i8], [3267 x i8]* %rgb, i32 0, i64 %idxprom116
  store i8 0, i8* %arrayidx117, align 1
  %69 = load i32, i32* %y, align 4
  %mul118 = mul nsw i32 %69, 33
  %70 = load i32, i32* %x, align 4
  %add119 = add nsw i32 %mul118, %70
  %mul120 = mul nsw i32 %add119, 3
  %add121 = add nsw i32 %mul120, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [3267 x i8], [3267 x i8]* %rgb, i32 0, i64 %idxprom122
  store i8 0, i8* %arrayidx123, align 1
  %71 = load i32, i32* %y, align 4
  %mul124 = mul nsw i32 %71, 33
  %72 = load i32, i32* %x, align 4
  %add125 = add nsw i32 %mul124, %72
  %mul126 = mul nsw i32 %add125, 3
  %add127 = add nsw i32 %mul126, 2
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds [3267 x i8], [3267 x i8]* %rgb, i32 0, i64 %idxprom128
  store i8 -1, i8* %arrayidx129, align 1
  br label %if.end.151

if.else:                                          ; preds = %lor.lhs.false
  %73 = load i32, i32* %sum, align 4
  %conv130 = trunc i32 %73 to i8
  %74 = load i32, i32* %y, align 4
  %mul131 = mul nsw i32 %74, 33
  %75 = load i32, i32* %x, align 4
  %add132 = add nsw i32 %mul131, %75
  %mul133 = mul nsw i32 %add132, 3
  %add134 = add nsw i32 %mul133, 0
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds [3267 x i8], [3267 x i8]* %rgb, i32 0, i64 %idxprom135
  store i8 %conv130, i8* %arrayidx136, align 1
  %76 = load i32, i32* %sum, align 4
  %conv137 = trunc i32 %76 to i8
  %77 = load i32, i32* %y, align 4
  %mul138 = mul nsw i32 %77, 33
  %78 = load i32, i32* %x, align 4
  %add139 = add nsw i32 %mul138, %78
  %mul140 = mul nsw i32 %add139, 3
  %add141 = add nsw i32 %mul140, 1
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds [3267 x i8], [3267 x i8]* %rgb, i32 0, i64 %idxprom142
  store i8 %conv137, i8* %arrayidx143, align 1
  %79 = load i32, i32* %sum, align 4
  %conv144 = trunc i32 %79 to i8
  %80 = load i32, i32* %y, align 4
  %mul145 = mul nsw i32 %80, 33
  %81 = load i32, i32* %x, align 4
  %add146 = add nsw i32 %mul145, %81
  %mul147 = mul nsw i32 %add146, 3
  %add148 = add nsw i32 %mul147, 2
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [3267 x i8], [3267 x i8]* %rgb, i32 0, i64 %idxprom149
  store i8 %conv144, i8* %arrayidx150, align 1
  br label %if.end.151

if.end.151:                                       ; preds = %if.else, %if.then.111
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %82 = load i32, i32* %x, align 4
  %inc153 = add nsw i32 %82, 1
  store i32 %inc153, i32* %x, align 4
  br label %for.cond.18

for.end.154:                                      ; preds = %for.cond.18
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.end.154
  %83 = load i32, i32* %y, align 4
  %inc156 = add nsw i32 %83, 1
  store i32 %inc156, i32* %y, align 4
  br label %for.cond.14

for.end.157:                                      ; preds = %for.cond.14
  %84 = load %struct.preview_st*, %struct.preview_st** %prev, align 8
  %widget = getelementptr inbounds %struct.preview_st, %struct.preview_st* %84, i32 0, i32 0
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_preview_area_get_type() #5
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call158)
  %87 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpPreviewArea*
  %arraydecay = getelementptr inbounds [3267 x i8], [3267 x i8]* %rgb, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %87, i32 0, i32 0, i32 33, i32 33, i32 0, i8* %arraydecay, i32 99)
  %arraydecay160 = getelementptr inbounds [12 x i8], [12 x i8]* %pct, i32 0, i32 0
  %88 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %88 to i64
  %89 = load i32, i32* %sfn, align 4
  %idxprom162 = sext i32 %89 to i64
  %arrayidx163 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom162
  %prev_lvl164 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx163, i32 0, i32 3
  %arrayidx165 = getelementptr inbounds [3 x double], [3 x double]* %prev_lvl164, i32 0, i64 %idxprom161
  %90 = load double, double* %arrayidx165, align 8
  %mul166 = fmul double %90, 1.000000e+02
  %call167 = call double @rint(double %mul166) #5
  %conv168 = fptosi double %call167 to i32
  %call169 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay160, i64 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 %conv168)
  %91 = load %struct.preview_st*, %struct.preview_st** %prev, align 8
  %label = getelementptr inbounds %struct.preview_st, %struct.preview_st* %91, i32 0, i32 1
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call170 = call i64 @gtk_label_get_type() #5
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call170)
  %94 = bitcast %struct._GTypeInstance* %call171 to %struct._GtkLabel*
  %arraydecay172 = getelementptr inbounds [12 x i8], [12 x i8]* %pct, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %94, i8* %arraydecay172)
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.end.157
  %95 = load i32, i32* %i, align 4
  %inc174 = add nsw i32 %95, 1
  store i32 %inc174, i32* %i, align 4
  br label %for.cond

for.end.175:                                      ; preds = %for.cond
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._channel_st* @new_channel(%struct.chan_tmpl* %ct, %struct._GtkWidget* %preview) #0 {
entry:
  %ct.addr = alloca %struct.chan_tmpl*, align 8
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %hbox2 = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %sf = alloca %struct.spot_info_t*, align 8
  %chst = alloca %struct._channel_st*, align 8
  %i = alloca i32, align 4
  %sub = alloca %struct._GtkWidget*, align 8
  store %struct.chan_tmpl* %ct, %struct.chan_tmpl** %ct.addr, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct.addr, align 8
  %spotfn = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %0, i32 0, i32 2
  %1 = load i32*, i32** %spotfn, align 8
  %call = call %struct._channel_st* @new_preview(i32* %1)
  store %struct._channel_st* %call, %struct._channel_st** %chst, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  %2 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %vbox = getelementptr inbounds %struct._channel_st, %struct._channel_st* %2, i32 0, i32 0
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %3 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %vbox2 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %3, i32 0, i32 0
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %6, i32 12)
  %call5 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %table, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %9, i32 6)
  %10 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %vbox8 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox8, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call11 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call11, %struct._GtkSizeGroup** %group, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0)) #4
  %19 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct.addr, align 8
  %angle = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %19, i32 0, i32 1
  %20 = load double*, double** %angle, align 8
  %21 = load double, double* %20, align 8
  %call15 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %18, i32 0, i32 0, i8* %call14, i32 125, i32 0, double %21, double -9.000000e+01, double 9.000000e+01, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %22 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %angle_adj = getelementptr inbounds %struct._channel_st, %struct._channel_st* %22, i32 0, i32 3
  store %struct._GtkObject* %call15, %struct._GtkObject** %angle_adj, align 8
  %23 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %angle_adj16 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %23, i32 0, i32 3
  %24 = load %struct._GtkObject*, %struct._GtkObject** %angle_adj16, align 8
  %25 = bitcast %struct._GtkObject* %24 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %27 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct.addr, align 8
  %angle18 = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %27, i32 0, i32 1
  %28 = load double*, double** %angle18, align 8
  %29 = bitcast double* %28 to i8*
  call void @g_object_set_data(%struct._GObject* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* %29)
  %30 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %31 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %angle_adj19 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %31, i32 0, i32 3
  %32 = load %struct._GtkObject*, %struct._GtkObject** %angle_adj19, align 8
  %33 = bitcast %struct._GtkObject* %32 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @g_object_get_data(%struct._GObject* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0))
  %35 = bitcast i8* %call21 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %30, %struct._GtkWidget* %35)
  %36 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %37 = bitcast %struct._GtkSizeGroup* %36 to i8*
  call void @g_object_unref(i8* %37)
  %38 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %angle_adj22 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %38, i32 0, i32 3
  %39 = load %struct._GtkObject*, %struct._GtkObject** %angle_adj22, align 8
  %40 = bitcast %struct._GtkObject* %39 to i8*
  %41 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %42 = bitcast %struct._channel_st* %41 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @angle_callback to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %angle_adj24 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %43, i32 0, i32 3
  %44 = load %struct._GtkObject*, %struct._GtkObject** %angle_adj24, align 8
  %45 = bitcast %struct._GtkObject* %44 to i8*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 2)
  %call26 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %hbox, align 8
  %48 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %vbox27 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %48, i32 0, i32 0
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox27, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call28)
  %51 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %call30 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %abox, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call31)
  %56 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %56, %struct._GtkWidget* %57, i32 0, i32 0, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %call33 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %hbox2, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call34)
  %61 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %61, %struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0)) #4
  %call37 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call36)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %label, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_misc_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call38)
  %66 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %66, float 0.000000e+00, float 5.000000e-01)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call40)
  %69 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %72, %struct._GtkWidget* %73)
  %call42 = call i64 @gimp_int_combo_box_get_type() #5
  %call43 = call i8* (i64, i8*, ...) @g_object_new(i64 %call42, i8* null)
  %74 = bitcast i8* %call43 to %struct._GtkWidget*
  %75 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %combo = getelementptr inbounds %struct._channel_st, %struct._channel_st* %75, i32 0, i32 4
  store %struct._GtkWidget* %74, %struct._GtkWidget** %combo, align 8
  store %struct.spot_info_t* getelementptr inbounds ([6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i32 0), %struct.spot_info_t** %sf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %76 = load %struct.spot_info_t*, %struct.spot_info_t** %sf, align 8
  %name = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %76, i32 0, i32 0
  %77 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %77, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %combo44 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %78, i32 0, i32 4
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %combo44, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_int_combo_box_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call45)
  %81 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpIntComboBox*
  %82 = load i32, i32* %i, align 4
  %83 = load %struct.spot_info_t*, %struct.spot_info_t** %sf, align 8
  %name47 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %83, i32 0, i32 0
  %84 = load i8*, i8** %name47, align 8
  %call48 = call i8* @gettext(i8* %84) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %81, i32 0, i32 %82, i32 1, i8* %call48, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %85 = load %struct.spot_info_t*, %struct.spot_info_t** %sf, align 8
  %incdec.ptr = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %85, i32 1
  store %struct.spot_info_t* %incdec.ptr, %struct.spot_info_t** %sf, align 8
  %86 = load i32, i32* %i, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %combo49 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %87, i32 0, i32 4
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %combo49, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_int_combo_box_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call50)
  %90 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpIntComboBox*
  %91 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct.addr, align 8
  %spotfn52 = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %91, i32 0, i32 2
  %92 = load i32*, i32** %spotfn52, align 8
  %93 = load i32, i32* %92, align 4
  %call53 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %90, i32 %93)
  %94 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %combo54 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %94, i32 0, i32 4
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %combo54, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %97 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %98 = bitcast %struct._channel_st* %97 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @newsprint_menu_callback to void ()*), i8* %98, void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %combo56 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %99, i32 0, i32 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %combo56, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %103, void (i8*, %struct._GClosure*)* null, i32 2)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call58)
  %106 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %107 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %combo60 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %107, i32 0, i32 4
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %combo60, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %106, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %109 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %combo61 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %109, i32 0, i32 4
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %combo61, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %call62 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %sub, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %sub, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call63)
  %113 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %113, i32 6)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %sub, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call65)
  %116 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %116, i32 1)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call67)
  %119 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %sub, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %119, %struct._GtkWidget* %120, i32 0, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.80, %for.end
  %121 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %121, 3
  br i1 %cmp, label %for.body.70, label %for.end.82

for.body.70:                                      ; preds = %for.cond.69
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %sub, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call71)
  %124 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %125 = load i32, i32* %i, align 4
  %idxprom = sext i32 %125 to i64
  %126 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %prev = getelementptr inbounds %struct._channel_st, %struct._channel_st* %126, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x %struct.preview_st], [3 x %struct.preview_st]* %prev, i32 0, i64 %idxprom
  %widget = getelementptr inbounds %struct.preview_st, %struct.preview_st* %arrayidx, i32 0, i32 0
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %i, align 4
  %add = add nsw i32 %129, 1
  call void @gtk_table_attach(%struct._GtkTable* %124, %struct._GtkWidget* %127, i32 %128, i32 %add, i32 0, i32 1, i32 6, i32 4, i32 0, i32 0)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %sub, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_table_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call73)
  %132 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkTable*
  %133 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %133 to i64
  %134 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %prev76 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %134, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [3 x %struct.preview_st], [3 x %struct.preview_st]* %prev76, i32 0, i64 %idxprom75
  %label78 = getelementptr inbounds %struct.preview_st, %struct.preview_st* %arrayidx77, i32 0, i32 1
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %label78, align 8
  %136 = load i32, i32* %i, align 4
  %137 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %137, 1
  call void @gtk_table_attach(%struct._GtkTable* %132, %struct._GtkWidget* %135, i32 %136, i32 %add79, i32 1, i32 2, i32 6, i32 4, i32 0, i32 0)
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.70
  %138 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %138, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.69

for.end.82:                                       ; preds = %for.cond.69
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %sub, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %139)
  %140 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  call void @preview_update(%struct._channel_st* %140)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %142 = load %struct.chan_tmpl*, %struct.chan_tmpl** %ct.addr, align 8
  %name83 = getelementptr inbounds %struct.chan_tmpl, %struct.chan_tmpl* %142, i32 0, i32 0
  %143 = load i8*, i8** %name83, align 8
  %call84 = call i8* @gettext(i8* %143) #4
  %call85 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %call84)
  %144 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  %ch_menuitem = getelementptr inbounds %struct._channel_st, %struct._channel_st* %144, i32 0, i32 6
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %ch_menuitem, align 8
  %145 = load %struct._channel_st*, %struct._channel_st** %chst, align 8
  ret %struct._channel_st* %145
}

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._channel_st* @new_preview(i32* %sfn) #0 {
entry:
  %sfn.addr = alloca i32*, align 8
  %st = alloca %struct._channel_st*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  store i32* %sfn, i32** %sfn.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 152)
  %0 = bitcast i8* %call to %struct._channel_st*
  store %struct._channel_st* %0, %struct._channel_st** %st, align 8
  %1 = load i32*, i32** %sfn.addr, align 8
  %2 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %spotfn_num = getelementptr inbounds %struct._channel_st, %struct._channel_st* %2, i32 0, i32 1
  store i32* %1, i32** %spotfn_num, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %preview, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %4, i32 33, i32 33)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %9 = bitcast %struct._channel_st* %8 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0), void ()* bitcast (void (%struct._channel_st*)* @preview_update to void ()*), i8* %9, void (i8*, %struct._GClosure*)* null, i32 2)
  %call3 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.82, i32 0, i32 0))
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %label, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %prev = getelementptr inbounds %struct._channel_st, %struct._channel_st* %13, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x %struct.preview_st], [3 x %struct.preview_st]* %prev, i32 0, i64 %idxprom
  %widget = getelementptr inbounds %struct.preview_st, %struct.preview_st* %arrayidx, i32 0, i32 0
  store %struct._GtkWidget* %11, %struct._GtkWidget** %widget, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %prev5 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %16, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [3 x %struct.preview_st], [3 x %struct.preview_st]* %prev5, i32 0, i64 %idxprom4
  %label7 = getelementptr inbounds %struct.preview_st, %struct.preview_st* %arrayidx6, i32 0, i32 1
  store %struct._GtkWidget* %14, %struct._GtkWidget** %label7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  ret %struct._channel_st* %18
}

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @angle_callback(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %st = alloca %struct._channel_st*, align 8
  %c = alloca %struct._channel_st*, align 8
  %angle_ptr = alloca double*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._channel_st*
  store %struct._channel_st* %1, %struct._channel_st** %st, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %3 = bitcast %struct._GtkAdjustment* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0))
  %5 = bitcast i8* %call1 to double*
  store double* %5, double** %angle_ptr, align 8
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %7 = load double*, double** %angle_ptr, align 8
  %8 = bitcast double* %7 to i8*
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %6, i8* %8)
  %9 = load i32, i32* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 2), align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* @angle_callback.in_progress, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @angle_callback.in_progress, align 4
  %11 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %next = getelementptr inbounds %struct._channel_st, %struct._channel_st* %11, i32 0, i32 8
  %12 = load %struct._channel_st*, %struct._channel_st** %next, align 8
  store %struct._channel_st* %12, %struct._channel_st** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %13 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %14 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %cmp = icmp ne %struct._channel_st* %13, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %angle_adj = getelementptr inbounds %struct._channel_st, %struct._channel_st* %15, i32 0, i32 3
  %16 = load %struct._GtkObject*, %struct._GtkObject** %angle_adj, align 8
  %17 = bitcast %struct._GtkObject* %16 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_adjustment_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call3)
  %18 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkAdjustment*
  %19 = load double*, double** %angle_ptr, align 8
  %20 = load double, double* %19, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %18, double %20)
  %21 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %next5 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %21, i32 0, i32 8
  %22 = load %struct._channel_st*, %struct._channel_st** %next5, align 8
  store %struct._channel_st* %22, %struct._channel_st** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* @angle_callback.in_progress, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_int_combo_box_append(%struct._GimpIntComboBox*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @newsprint_menu_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %st = alloca %struct._channel_st*, align 8
  %value = alloca i32, align 4
  %c = alloca %struct._channel_st*, align 8
  %old_value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._channel_st*
  store %struct._channel_st* %1, %struct._channel_st** %st, align 8
  %2 = load i32, i32* @newsprint_menu_callback.in_progress, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.88, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @newsprint_menu_callback.in_progress, align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_int_combo_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %5, i32* %value)
  %6 = load i32, i32* %value, align 4
  %7 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %spotfn_num = getelementptr inbounds %struct._channel_st, %struct._channel_st* %7, i32 0, i32 1
  %8 = load i32*, i32** %spotfn_num, align 8
  store i32 %6, i32* %8, align 4
  %9 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  call void @preview_update(%struct._channel_st* %9)
  %10 = load i32, i32* getelementptr inbounds (%struct.NewsprintUIValues, %struct.NewsprintUIValues* @pvals_ui, i32 0, i32 2), align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %next = getelementptr inbounds %struct._channel_st, %struct._channel_st* %11, i32 0, i32 8
  %12 = load %struct._channel_st*, %struct._channel_st** %next, align 8
  store %struct._channel_st* %12, %struct._channel_st** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.then.5
  %13 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %14 = load %struct._channel_st*, %struct._channel_st** %st, align 8
  %cmp = icmp ne %struct._channel_st* %13, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %combo = getelementptr inbounds %struct._channel_st, %struct._channel_st* %15, i32 0, i32 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_int_combo_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpIntComboBox*
  %19 = load i32, i32* %value, align 4
  %call8 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %18, i32 %19)
  %20 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %spotfn_num9 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %20, i32 0, i32 1
  %21 = load i32*, i32** %spotfn_num9, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %old_value, align 4
  %23 = load i32, i32* %value, align 4
  %24 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %spotfn_num10 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %24, i32 0, i32 1
  %25 = load i32*, i32** %spotfn_num10, align 8
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %old_value, align 4
  %27 = load i32, i32* %value, align 4
  %cmp11 = icmp ne i32 %26, %27
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  %28 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  call void @preview_update(%struct._channel_st* %28)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.body
  %29 = load %struct._channel_st*, %struct._channel_st** %c, align 8
  %next14 = getelementptr inbounds %struct._channel_st, %struct._channel_st* %29, i32 0, i32 8
  %30 = load %struct._channel_st*, %struct._channel_st** %next14, align 8
  store %struct._channel_st* %30, %struct._channel_st** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.15

if.end.15:                                        ; preds = %while.end, %if.end
  store i32 0, i32* @newsprint_menu_callback.in_progress, align 4
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_menu_item_new_with_label(i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal double @spot_round(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* %y.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %mul1 = fmul double %2, %3
  %add = fadd double %mul, %mul1
  %sub = fsub double 1.000000e+00, %add
  ret double %sub
}

; Function Attrs: nounwind uwtable
define internal double @spot_line(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %y.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %y.addr, align 8
  %sub = fsub double -0.000000e+00, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %y.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %2, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define internal double @spot_diamond(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %xy = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %2, %cond.false ]
  %3 = load double, double* %y.addr, align 8
  %cmp1 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %4 = load double, double* %y.addr, align 8
  %sub3 = fsub double -0.000000e+00, %4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %5 = load double, double* %y.addr, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi double [ %sub3, %cond.true.2 ], [ %5, %cond.false.4 ]
  %add = fadd double %cond, %cond6
  store double %add, double* %xy, align 8
  %6 = load double, double* %xy, align 8
  %cmp7 = fcmp ole double %6, 1.000000e+00
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.end.5
  %7 = load double, double* %xy, align 8
  %mul = fmul double 2.000000e+00, %7
  %8 = load double, double* %xy, align 8
  %mul9 = fmul double %mul, %8
  br label %cond.end.18

cond.false.10:                                    ; preds = %cond.end.5
  %9 = load double, double* %xy, align 8
  %mul11 = fmul double 2.000000e+00, %9
  %10 = load double, double* %xy, align 8
  %mul12 = fmul double %mul11, %10
  %11 = load double, double* %xy, align 8
  %sub13 = fsub double %11, 1.000000e+00
  %mul14 = fmul double 4.000000e+00, %sub13
  %12 = load double, double* %xy, align 8
  %sub15 = fsub double %12, 1.000000e+00
  %mul16 = fmul double %mul14, %sub15
  %sub17 = fsub double %mul12, %mul16
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.10, %cond.true.8
  %cond19 = phi double [ %mul9, %cond.true.8 ], [ %sub17, %cond.false.10 ]
  %div = fdiv double %cond19, 4.000000e+00
  ret double %div
}

; Function Attrs: nounwind uwtable
define internal double @spot_PSsquare(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %2, %cond.false ]
  store double %cond, double* %ax, align 8
  %3 = load double, double* %y.addr, align 8
  %cmp1 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %4 = load double, double* %y.addr, align 8
  %sub3 = fsub double -0.000000e+00, %4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %5 = load double, double* %y.addr, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi double [ %sub3, %cond.true.2 ], [ %5, %cond.false.4 ]
  store double %cond6, double* %ay, align 8
  %6 = load double, double* %ax, align 8
  %7 = load double, double* %ay, align 8
  %add = fadd double %6, %7
  %cmp7 = fcmp ogt double %add, 1.000000e+00
  br i1 %cmp7, label %cond.true.8, label %cond.false.16

cond.true.8:                                      ; preds = %cond.end.5
  %8 = load double, double* %ay, align 8
  %sub9 = fsub double %8, 1.000000e+00
  %9 = load double, double* %ay, align 8
  %sub10 = fsub double %9, 1.000000e+00
  %mul = fmul double %sub9, %sub10
  %10 = load double, double* %ax, align 8
  %sub11 = fsub double %10, 1.000000e+00
  %11 = load double, double* %ax, align 8
  %sub12 = fsub double %11, 1.000000e+00
  %mul13 = fmul double %sub11, %sub12
  %add14 = fadd double %mul, %mul13
  %sub15 = fsub double %add14, 1.000000e+00
  br label %cond.end.21

cond.false.16:                                    ; preds = %cond.end.5
  %12 = load double, double* %ay, align 8
  %13 = load double, double* %ay, align 8
  %mul17 = fmul double %12, %13
  %14 = load double, double* %ax, align 8
  %15 = load double, double* %ax, align 8
  %mul18 = fmul double %14, %15
  %add19 = fadd double %mul17, %mul18
  %sub20 = fsub double 1.000000e+00, %add19
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.16, %cond.true.8
  %cond22 = phi double [ %sub15, %cond.true.8 ], [ %sub20, %cond.false.16 ]
  ret double %cond22
}

; Function Attrs: nounwind uwtable
define internal double @spot_PSdiamond(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %2, %cond.false ]
  store double %cond, double* %ax, align 8
  %3 = load double, double* %y.addr, align 8
  %cmp1 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %4 = load double, double* %y.addr, align 8
  %sub3 = fsub double -0.000000e+00, %4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %5 = load double, double* %y.addr, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi double [ %sub3, %cond.true.2 ], [ %5, %cond.false.4 ]
  store double %cond6, double* %ay, align 8
  %6 = load double, double* %ax, align 8
  %7 = load double, double* %ay, align 8
  %add = fadd double %6, %7
  %cmp7 = fcmp ole double %add, 7.500000e-01
  br i1 %cmp7, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %cond.end.5
  %8 = load double, double* %ax, align 8
  %9 = load double, double* %ax, align 8
  %mul = fmul double %8, %9
  %10 = load double, double* %ay, align 8
  %11 = load double, double* %ay, align 8
  %mul9 = fmul double %10, %11
  %add10 = fadd double %mul, %mul9
  %sub11 = fsub double 1.000000e+00, %add10
  br label %cond.end.30

cond.false.12:                                    ; preds = %cond.end.5
  %12 = load double, double* %ax, align 8
  %13 = load double, double* %ay, align 8
  %add13 = fadd double %12, %13
  %cmp14 = fcmp ole double %add13, 1.230000e+00
  br i1 %cmp14, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %cond.false.12
  %14 = load double, double* %ay, align 8
  %mul16 = fmul double %14, 7.600000e-01
  %15 = load double, double* %ax, align 8
  %add17 = fadd double %mul16, %15
  %sub18 = fsub double 1.000000e+00, %add17
  br label %cond.end.28

cond.false.19:                                    ; preds = %cond.false.12
  %16 = load double, double* %ay, align 8
  %sub20 = fsub double %16, 1.000000e+00
  %17 = load double, double* %ay, align 8
  %sub21 = fsub double %17, 1.000000e+00
  %mul22 = fmul double %sub20, %sub21
  %18 = load double, double* %ax, align 8
  %sub23 = fsub double %18, 1.000000e+00
  %19 = load double, double* %ax, align 8
  %sub24 = fsub double %19, 1.000000e+00
  %mul25 = fmul double %sub23, %sub24
  %add26 = fadd double %mul22, %mul25
  %sub27 = fsub double %add26, 1.000000e+00
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.19, %cond.true.15
  %cond29 = phi double [ %sub18, %cond.true.15 ], [ %sub27, %cond.false.19 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.8
  %cond31 = phi double [ %sub11, %cond.true.8 ], [ %cond29, %cond.end.28 ]
  ret double %cond31
}

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i8* @spot2thresh(i32 %type, i32 %width) #0 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %val = alloca double, align 8
  %spotfn = alloca double (double, double)*, align 8
  %thresh = alloca i8*, align 8
  %order = alloca %struct.order_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %wid2 = alloca i32, align 4
  %balanced = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %wid2, align 4
  %2 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom
  %balanced1 = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx, i32 0, i32 5
  %3 = load i32, i32* %balanced1, align 4
  store i32 %3, i32* %balanced, align 4
  %4 = load i32, i32* %wid2, align 4
  %conv = sext i32 %4 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %thresh, align 8
  %5 = load i32, i32* %type.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [6 x %struct.spot_info_t], [6 x %struct.spot_info_t]* @spotfn_list, i32 0, i64 %idxprom2
  %fn = getelementptr inbounds %struct.spot_info_t, %struct.spot_info_t* %arrayidx3, i32 0, i32 1
  %6 = load double (double, double)*, double (double, double)** %fn, align 8
  store double (double, double)* %6, double (double, double)** %spotfn, align 8
  %7 = load i32, i32* %wid2, align 4
  %conv4 = sext i32 %7 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 16)
  %8 = bitcast i8* %call5 to %struct.order_t*
  store %struct.order_t* %8, %struct.order_t** %order, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %width.addr, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %13 = load i32, i32* %x, align 4
  %conv11 = sitofp i32 %13 to double
  %14 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %14, 1
  %conv12 = sitofp i32 %sub to double
  %div = fdiv double %conv11, %conv12
  %sub13 = fsub double %div, 5.000000e-01
  %mul14 = fmul double %sub13, 2.000000e+00
  store double %mul14, double* %sx, align 8
  %15 = load i32, i32* %y, align 4
  %conv15 = sitofp i32 %15 to double
  %16 = load i32, i32* %width.addr, align 4
  %sub16 = sub nsw i32 %16, 1
  %conv17 = sitofp i32 %sub16 to double
  %div18 = fdiv double %conv15, %conv17
  %sub19 = fsub double %div18, 5.000000e-01
  %mul20 = fmul double %sub19, 2.000000e+00
  store double %mul20, double* %sy, align 8
  %17 = load double (double, double)*, double (double, double)** %spotfn, align 8
  %18 = load double, double* %sx, align 8
  %19 = load double, double* %sy, align 8
  %call21 = call double %17(double %18, double %19)
  store double %call21, double* %val, align 8
  %20 = load double, double* %val, align 8
  %cmp22 = fcmp ogt double %20, 1.000000e+00
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.10
  br label %cond.end.28

cond.false:                                       ; preds = %for.body.10
  %21 = load double, double* %val, align 8
  %cmp24 = fcmp olt double %21, -1.000000e+00
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false
  br label %cond.end

cond.false.27:                                    ; preds = %cond.false
  %22 = load double, double* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.27, %cond.true.26
  %cond = phi double [ -1.000000e+00, %cond.true.26 ], [ %22, %cond.false.27 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond29, double* %val, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load %struct.order_t*, %struct.order_t** %order, align 8
  %arrayidx31 = getelementptr inbounds %struct.order_t, %struct.order_t* %25, i64 %idxprom30
  %index = getelementptr inbounds %struct.order_t, %struct.order_t* %arrayidx31, i32 0, i32 0
  store i32 %23, i32* %index, align 4
  %26 = load double, double* %val, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load %struct.order_t*, %struct.order_t** %order, align 8
  %arrayidx33 = getelementptr inbounds %struct.order_t, %struct.order_t* %28, i64 %idxprom32
  %value = getelementptr inbounds %struct.order_t, %struct.order_t* %arrayidx33, i32 0, i32 1
  store double %26, double* %value, align 8
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.28
  %30 = load i32, i32* %x, align 4
  %inc34 = add nsw i32 %30, 1
  store i32 %inc34, i32* %x, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %31 = load i32, i32* %y, align 4
  %inc36 = add nsw i32 %31, 1
  store i32 %inc36, i32* %y, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %32 = load i32, i32* %balanced, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.37
  %33 = load %struct.order_t*, %struct.order_t** %order, align 8
  %34 = bitcast %struct.order_t* %33 to i8*
  %35 = load i32, i32* %wid2, align 4
  %conv38 = sext i32 %35 to i64
  call void @qsort(i8* %34, i64 %conv38, i64 16, i32 (i8*, i8*)* @order_cmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.37
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.64, %if.end
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %wid2, align 4
  %cmp40 = icmp slt i32 %36, %37
  br i1 %cmp40, label %for.body.42, label %for.end.66

for.body.42:                                      ; preds = %for.cond.39
  %38 = load i32, i32* %balanced, align 4
  %tobool43 = icmp ne i32 %38, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %for.body.42
  %39 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %39 to i64
  %40 = load %struct.order_t*, %struct.order_t** %order, align 8
  %arrayidx46 = getelementptr inbounds %struct.order_t, %struct.order_t* %40, i64 %idxprom45
  %value47 = getelementptr inbounds %struct.order_t, %struct.order_t* %arrayidx46, i32 0, i32 1
  %41 = load double, double* %value47, align 8
  %mul48 = fmul double %41, 2.540000e+02
  %conv49 = fptoui double %mul48 to i8
  %42 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.order_t*, %struct.order_t** %order, align 8
  %arrayidx51 = getelementptr inbounds %struct.order_t, %struct.order_t* %43, i64 %idxprom50
  %index52 = getelementptr inbounds %struct.order_t, %struct.order_t* %arrayidx51, i32 0, i32 0
  %44 = load i32, i32* %index52, align 4
  %idxprom53 = sext i32 %44 to i64
  %45 = load i8*, i8** %thresh, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %45, i64 %idxprom53
  store i8 %conv49, i8* %arrayidx54, align 1
  br label %if.end.63

if.else:                                          ; preds = %for.body.42
  %46 = load i32, i32* %i, align 4
  %mul55 = mul nsw i32 %46, 255
  %47 = load i32, i32* %wid2, align 4
  %div56 = sdiv i32 %mul55, %47
  %conv57 = trunc i32 %div56 to i8
  %48 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %48 to i64
  %49 = load %struct.order_t*, %struct.order_t** %order, align 8
  %arrayidx59 = getelementptr inbounds %struct.order_t, %struct.order_t* %49, i64 %idxprom58
  %index60 = getelementptr inbounds %struct.order_t, %struct.order_t* %arrayidx59, i32 0, i32 0
  %50 = load i32, i32* %index60, align 4
  %idxprom61 = sext i32 %50 to i64
  %51 = load i8*, i8** %thresh, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %51, i64 %idxprom61
  store i8 %conv57, i8* %arrayidx62, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.44
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %52 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.39

for.end.66:                                       ; preds = %for.cond.39
  %53 = load %struct.order_t*, %struct.order_t** %order, align 8
  %54 = bitcast %struct.order_t* %53 to i8*
  call void @g_free(i8* %54)
  %55 = load i8*, i8** %thresh, align 8
  ret i8* %55
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @order_cmp(i8* %va, i8* %vb) #0 {
entry:
  %va.addr = alloca i8*, align 8
  %vb.addr = alloca i8*, align 8
  %a = alloca %struct.order_t*, align 8
  %b = alloca %struct.order_t*, align 8
  store i8* %va, i8** %va.addr, align 8
  store i8* %vb, i8** %vb.addr, align 8
  %0 = load i8*, i8** %va.addr, align 8
  %1 = bitcast i8* %0 to %struct.order_t*
  store %struct.order_t* %1, %struct.order_t** %a, align 8
  %2 = load i8*, i8** %vb.addr, align 8
  %3 = bitcast i8* %2 to %struct.order_t*
  store %struct.order_t* %3, %struct.order_t** %b, align 8
  %4 = load %struct.order_t*, %struct.order_t** %a, align 8
  %value = getelementptr inbounds %struct.order_t, %struct.order_t* %4, i32 0, i32 1
  %5 = load double, double* %value, align 8
  %6 = load %struct.order_t*, %struct.order_t** %b, align 8
  %value1 = getelementptr inbounds %struct.order_t, %struct.order_t* %6, i32 0, i32 1
  %7 = load double, double* %value1, align 8
  %cmp = fcmp olt double %5, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.order_t*, %struct.order_t** %a, align 8
  %value2 = getelementptr inbounds %struct.order_t, %struct.order_t* %8, i32 0, i32 1
  %9 = load double, double* %value2, align 8
  %10 = load %struct.order_t*, %struct.order_t** %b, align 8
  %value3 = getelementptr inbounds %struct.order_t, %struct.order_t* %10, i32 0, i32 1
  %11 = load double, double* %value3, align 8
  %cmp4 = fcmp ogt double %9, %11
  %cond = select i1 %cmp4, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  ret i32 %cond5
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

declare void @gimp_rgb_to_cmyk_int(i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
