; ModuleID = './plug-ins/common/sample-colorize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.t_values = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, float }
%struct.t_samp_table_elem = type { i32, i32, %struct.t_samp_color_elem* }
%struct.t_samp_color_elem = type { [4 x i8], i32, i8* }
%struct.t_samp_interface = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, i32, [5 x i32], i32, i32, i32, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct.t_GDRW = type { %struct._GimpDrawable*, i8*, %struct._GimpPixelRgn, i32, i32, i32, i32, i32, i32, %struct._GimpTile*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._cairo = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [13 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"dst-drawable\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"The drawable to be colorized (Type GRAY* or RGB*)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sample-drawable\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Sample drawable (should be of Type RGB or RGBA)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"hold-inten\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"hold brightness intensity levels (TRUE, FALSE)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"orig-inten\00", align 1
@.str.11 = private unnamed_addr constant [90 x i8] c"TRUE: hold brightness of original intensity levels. FALSE: Hold Intensity of input levels\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"rnd-subcolors\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"TRUE: Use all subcolors of same intensity, FALSE: use only one color per intensity\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"guess-missing\00", align 1
@.str.15 = private unnamed_addr constant [101 x i8] c"TRUE: guess samplecolors for the missing intensity values FALSE: use only colors found in the sample\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"in-low\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"intensity of lowest input (0 <= in_low <= 254)\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"in-high\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"intensity of highest input (1 <= in_high <= 255)\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"gamma correction factor (0.1 <= gamma <= 10) where 1.0 is linear\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"out-low\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"lowest sample color intensity (0 <= out_low <= 254)\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"out-high\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"highest sample color intensity (1 <= out_high <= 255)\00", align 1
@query.help_string = internal global i8* getelementptr inbounds ([1981 x i8], [1981 x i8]* @.str.26, i32 0, i32 0), align 8
@.str.26 = private unnamed_addr constant [1981 x i8] c"This plug-in colorizes the contents of the specified (gray) layer with the help of a  sample (color) layer. It analyzes all colors in the sample layer. The sample colors are sorted by brightness (== intentisty) and amount and stored in a sample colortable (where brightness is the index) The pixels of the destination layer are remapped with the help of the sample colortable. If use_subcolors is TRUE, the remapping process uses all sample colors of the corresponding brightness-intensity and distributes the subcolors according to their amount in the sample (If the sample has 5 green, 3 yellow, and 1 red pixel of the  intensity value 105, the destination pixels at intensity value 105 are randomly painted in green, yellow and red in a relation of 5:3:1 If use_subcolors is FALSE only one sample color per intensity is used. (green will be used in this example) The brightness intensity value is transformed at the remapping process according to the levels: out_lo, out_hi, in_lo, in_high and gamma The in_low / in_high levels specify an initial mapping of the intensity. The gamma value determines how intensities are interpolated between the in_lo and in_high levels. A gamma value of 1.0 results in linear interpolation. Higher gamma values results in more high-level intensities Lower gamma values results in more low-level intensities The out_low/out_high levels constrain the resulting intensity index The intensity index is used to pick the corresponding color in the sample colortable. If hold_inten is FALSE the picked color is used 1:1 as resulting remap_color. If hold_inten is TRUE The brightness of the picked color is adjusted back to the origial intensity value (only hue and saturation are taken from the picked sample color) (or to the input level, if orig_inten is set FALSE) Works on both Grayscale and RGB image with/without alpha channel. (the image with the dst_drawable is converted to RGB if necessary) The sample_drawable should be of type RGB or RGBA\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"plug-in-sample-colorize\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Colorize image using a sample image as a guide\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Wolfgang Hofer\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"hof@hotbot.com\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"02/2000\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"_Sample Colorize...\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"<Image>/Colors/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"SAMPLE_COLORIZE_DEBUG\00", align 1
@g_Sdebug = internal global i32 0, align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"sample colorize run\0A\00", align 1
@g_show_progress = internal global i32 0, align 4
@g_values = internal global %struct.t_values { i32 -1, i32 -1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 255, float 1.000000e+00, i32 0, i32 255, float 5.500000e+00 }, align 4
@g_lum_tab = internal global [256 x %struct.t_samp_table_elem] zeroinitializer, align 16
@g_lvl_trans_tab = internal global [256 x i8] zeroinitializer, align 16
@g_out_trans_tab = internal global [256 x i8] zeroinitializer, align 16
@g_sample_color_tab = internal global [768 x i8] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [18 x i8] c"smp_dialog START\0A\00", align 1
@g_di = internal global %struct.t_samp_interface zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [16 x i8] c"sample-colorize\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"Sample Colorize\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"gimp-sample-colorize\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Get _Sample Colors\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Destination:\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"Sample:\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"From reverse gradient\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"From gradient\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"Show selection\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Show color\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"Input levels:\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Output levels:\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Hold intensity\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"Original intensity\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"Use subcolors\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"Smooth samples\00", align 1
@g_dst_preview_buffer = internal global [262144 x i8] zeroinitializer, align 16
@.str.64 = private unnamed_addr constant [19 x i8] c"EVENT: GDK_EXPOSE\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"EVENT: GDK_BUTTON_PRESS\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"EVENT: GDK_BUTTON_RELEASE\0A\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"EVENT: GDK_MOTION_NOTIFY\0A\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"EVENT: default\0A\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"EVENT: ** update **\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"OUT_EVENT: GDK_EXPOSE\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"OUT_EVENT: GDK_BUTTON_PRESS\0A\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"OUT_EVENT: GDK_BUTTON_RELEASE\0A\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"OUT_EVENT: GDK_MOTION_NOTIFY\0A\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"OUT_EVENT: default\0A\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"OUT_EVENT: ** update **\0A\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"UPD PREVIEWS   ID:%d ENABLE_UPD:%d\0A\00", align 1
@.str.77 = private unnamed_addr constant [54 x i8] c"sample colorize: unknown layer_id %d (Image closed?)\0A\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"\0Ap_init_gdrw: drawable %p  ID: %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"init_gdrw: image_id %d sel_channel_id: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"init_gdrw: BOUNDS     x1: %d y1: %d x2:%d y2: %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"init_gdrw: OFFS       x: %d y: %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"init_gdrw: SEL_BOUNDS x1: %d y1: %d x2:%d y2: %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"init_gdrw: SEL_OFFS   x: %d y: %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [35 x i8] c"init_gdrw: SEL_DELTA  x: %d y: %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"levels_update: update reques %x\0A\00", align 1
@g_tol_col_err = internal global i32 0, align 4
@g_max_col_err = internal global i32 0, align 4
@.str.86 = private unnamed_addr constant [23 x i8] c"sample_colorize.values\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"g_values.tol_col_err    :%f\0A\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"Sample analyze\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"sample_colors.dump\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"ROWS: %d - %d  COLS: %d - %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"sample_color_all.ppm\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"sample_color_2.ppm\00", align 1
@.str.96 = private unnamed_addr constant [43 x i8] c"Error: Source sample has no visible Pixel\0A\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"sample_colorize: params\0A\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"g_values.hold_inten     :%d\0A\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"g_values.orig_inten     :%d\0A\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"g_values.rnd_subcolors  :%d\0A\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"g_values.guess_missing  :%d\0A\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"g_values.lvl_in_min     :%d\0A\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"g_values.lvl_in_max     :%d\0A\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"g_values.lvl_in_gamma   :%f\0A\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"g_values.lvl_out_min    :%d\0A\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"g_values.lvl_out_max    :%d\0A\00", align 1
@.str.107 = private unnamed_addr constant [29 x i8] c"---------------------------\0A\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"print_table\0A\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"LUM [%03d]  pixcount:%d\0A\00", align 1
@.str.110 = private unnamed_addr constant [40 x i8] c"  RGBA: %03d %03d %03d %03d  sum: [%d]\0A\00", align 1
@.str.111 = private unnamed_addr constant [47 x i8] c"P3\0A# CREATOR: Gimp sample coloros\0A256 256\0A255\0A\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"print_transtable\0A\00", align 1
@.str.114 = private unnamed_addr constant [45 x i8] c"LVL_TRANS [%03d]  in_lvl: %3d  out_lvl: %3d\0A\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"Remap colorized\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %0 = load i8*, i8** @query.help_string, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 1, i32 13, i32 0, %struct._GimpParamDef* getelementptr inbounds ([13 x %struct._GimpParamDef], [13 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0))
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
  %dst_drawable = alloca %struct._GimpDrawable*, align 8
  %status = alloca i32, align 4
  %env = alloca i8*, align 8
  %run_mode = alloca i32, align 4
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
  %call4 = call i8* @g_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0))
  store i8* %call4, i8** %env, align 8
  %0 = load i8*, i8** %env, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %1 = load i8*, i8** %env, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp5 = icmp ne i32 %conv, 110
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %3 = load i8*, i8** %env, align 8
  %4 = load i8, i8* %3, align 1
  %conv8 = sext i8 %4 to i32
  %cmp9 = icmp ne i32 %conv8, 78
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  store i32 1, i32* @g_Sdebug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %land.lhs.true, %do.end
  %5 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  store i32 0, i32* @g_show_progress, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_int32, align 4
  store i32 %7, i32* %run_mode, align 4
  %8 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %9, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  store i32 255, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  store i32 0, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  store i32 255, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  store float 1.000000e+00, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %call14 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* bitcast (%struct.t_values* @g_values to i8*))
  %11 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1), align 4
  %cmp15 = icmp eq i32 %11, -444
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %12 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1), align 4
  %cmp17 = icmp eq i32 %12, -445
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.13
  store i32 -1, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1), align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false
  store float 5.500000e+00, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 11), align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 2
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data22 to i32*
  %14 = load i32, i32* %d_drawable, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0), align 4
  %call23 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %15)
  store %struct._GimpDrawable* %call23, %struct._GimpDrawable** %dst_drawable, align 8
  call void @clear_tables()
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id, align 4
  %call24 = call i32 @gimp_drawable_is_rgb(i32 %17)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.end.20
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id27, align 4
  %call28 = call i32 @gimp_drawable_is_gray(i32 %19)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.76

if.then.30:                                       ; preds = %lor.lhs.false.26, %if.end.20
  call void @gimp_tile_cache_ntiles(i64 32)
  %20 = load i32, i32* %run_mode, align 4
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %if.then.30
  call void @smp_dialog()
  call void @free_colors()
  %call31 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* bitcast (%struct.t_values* @g_values to i8*), i32 48)
  %call32 = call i32 @gimp_displays_flush()
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.then.30
  %21 = load i32, i32* %nparams.addr, align 4
  %cmp34 = icmp eq i32 %21, 13
  br i1 %cmp34, label %if.then.36, label %if.else.73

if.then.36:                                       ; preds = %sw.bb.33
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 3
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_drawable39 = bitcast %union._GimpParamData* %data38 to i32*
  %23 = load i32, i32* %d_drawable39, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1), align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 4
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_int3242 = bitcast %union._GimpParamData* %data41 to i32*
  %25 = load i32, i32* %d_int3242, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2), align 4
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 5
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_int3245 = bitcast %union._GimpParamData* %data44 to i32*
  %27 = load i32, i32* %d_int3245, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 3), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 6
  %data47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx46, i32 0, i32 1
  %d_int3248 = bitcast %union._GimpParamData* %data47 to i32*
  %29 = load i32, i32* %d_int3248, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 4), align 4
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 7
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %31 = load i32, i32* %d_int3251, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 5), align 4
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 8
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_int3254 = bitcast %union._GimpParamData* %data53 to i32*
  %33 = load i32, i32* %d_int3254, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 9
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_int3257 = bitcast %union._GimpParamData* %data56 to i32*
  %35 = load i32, i32* %d_int3257, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 10
  %data59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx58, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data59 to double*
  %37 = load double, double* %d_float, align 8
  %conv60 = fptrunc double %37 to float
  store float %conv60, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 11
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_int3263 = bitcast %union._GimpParamData* %data62 to i32*
  %39 = load i32, i32* %d_int3263, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 12
  %data65 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx64, i32 0, i32 1
  %d_int3266 = bitcast %union._GimpParamData* %data65 to i32*
  %41 = load i32, i32* %d_int3266, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %call67 = call i32 @main_colorize(i32 1)
  %cmp68 = icmp sge i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.then.36
  %call71 = call i32 @main_colorize(i32 2)
  store i32 3, i32* %status, align 4
  br label %if.end.72

if.else:                                          ; preds = %if.then.36
  store i32 0, i32* %status, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else, %if.then.70
  br label %if.end.74

if.else.73:                                       ; preds = %sw.bb.33
  store i32 1, i32* %status, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.end.72
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.then.30
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.30, %sw.bb.75, %if.end.74, %sw.bb
  br label %if.end.77

if.else.76:                                       ; preds = %lor.lhs.false.26
  store i32 0, i32* %status, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %sw.epilog
  %42 = load i32, i32* %status, align 4
  store i32 %42, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %43)
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

declare i8* @g_getenv(i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind uwtable
define internal void @clear_tables() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %col_ptr = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx, i32 0, i32 2
  store %struct.t_samp_color_elem* null, %struct.t_samp_color_elem** %col_ptr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom1
  %all_samples = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx2, i32 0, i32 0
  store i32 0, i32* %all_samples, align 4
  %3 = load i32, i32* %i, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @g_lvl_trans_tab, i32 0, i64 %idxprom3
  store i8 %conv, i8* %arrayidx4, align 1
  %5 = load i32, i32* %i, align 4
  %conv5 = trunc i32 %5 to i8
  %6 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @g_out_trans_tab, i32 0, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  %7 = load i32, i32* %i, align 4
  %conv8 = trunc i32 %7 to i8
  %8 = load i32, i32* %i, align 4
  %mul = mul i32 3, %8
  %add = add i32 %mul, 0
  %idxprom9 = zext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx10, align 1
  %9 = load i32, i32* %i, align 4
  %conv11 = trunc i32 %9 to i8
  %10 = load i32, i32* %i, align 4
  %mul12 = mul i32 3, %10
  %add13 = add i32 %mul12, 1
  %idxprom14 = zext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom14
  store i8 %conv11, i8* %arrayidx15, align 1
  %11 = load i32, i32* %i, align 4
  %conv16 = trunc i32 %11 to i8
  %12 = load i32, i32* %i, align 4
  %mul17 = mul i32 3, %12
  %add18 = add i32 %mul17, 2
  %idxprom19 = zext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom19
  store i8 %conv16, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @smp_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %check_button = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GtkObject*, align 8
  %ty = alloca i32, align 4
  %0 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 15), align 4
  store i32 1, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 16), align 4
  store i32 1, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 17), align 4
  store i32 1, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 19), align 4
  store i32 1, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 18), align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 12), align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0)) #4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0)) #4
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 1, i8* %call1, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 -7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 -10, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %call2, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 0), align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 2, i32 1, i32 -10, i32 -7, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32)* @smp_response_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 5, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %14, i32 6)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %17, i32 12)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  %call17 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %20)
  %21 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 1, i32 1, i32 0)
  store i32 0, i32* %ty, align 4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* @gtk_label_new(i8* %call20)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %label, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_misc_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %26, float 1.000000e+00, float 5.000000e-01)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %31 = load i32, i32* %ty, align 4
  %32 = load i32, i32* %ty, align 4
  %add = add nsw i32 %32, 1
  call void @gtk_table_attach(%struct._GtkTable* %29, %struct._GtkWidget* %30, i32 0, i32 1, i32 %31, i32 %add, i32 4, i32 4, i32 4, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call26 = call %struct._GtkWidget* @gimp_layer_combo_box_new(i32 (i32, i32, i8*)* @smp_constrain, i8* null)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %combo, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_int_combo_box_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpIntComboBox*
  %37 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0), align 4
  %call29 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %36, i32 %37, void ()* bitcast (void (%struct._GtkWidget*)* @smp_dest_combo_callback to void ()*), i8* null)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %42 = load i32, i32* %ty, align 4
  %43 = load i32, i32* %ty, align 4
  %add32 = add nsw i32 %43, 1
  call void @gtk_table_attach(%struct._GtkTable* %40, %struct._GtkWidget* %41, i32 1, i32 2, i32 %42, i32 %add32, i32 5, i32 5, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_misc_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call35)
  %47 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %47, float 1.000000e+00, float 5.000000e-01)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call37)
  %50 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %52 = load i32, i32* %ty, align 4
  %53 = load i32, i32* %ty, align 4
  %add39 = add nsw i32 %53, 1
  call void @gtk_table_attach(%struct._GtkTable* %50, %struct._GtkWidget* %51, i32 3, i32 4, i32 %52, i32 %add39, i32 4, i32 4, i32 4, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %call40 = call %struct._GtkWidget* @gimp_layer_combo_box_new(i32 (i32, i32, i8*)* @smp_constrain, i8* null)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %combo, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_int_combo_box_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call41)
  %57 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpIntComboBox*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0)) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %57, i32 0, i32 -445, i32 1, i8* %call43, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 -1)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_int_combo_box_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call44)
  %60 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpIntComboBox*
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0)) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %60, i32 0, i32 -444, i32 1, i8* %call46, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 -1)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_int_combo_box_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call47)
  %63 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpIntComboBox*
  %64 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1), align 4
  %call49 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %63, i32 %64, void ()* bitcast (void (%struct._GtkWidget*)* @smp_sample_combo_callback to void ()*), i8* null)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call50)
  %67 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %69 = load i32, i32* %ty, align 4
  %70 = load i32, i32* %ty, align 4
  %add52 = add nsw i32 %70, 1
  call void @gtk_table_attach(%struct._GtkTable* %67, %struct._GtkWidget* %68, i32 4, i32 5, i32 %69, i32 %add52, i32 5, i32 5, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load i32, i32* %ty, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %ty, align 4
  %call53 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %hbox, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call54)
  %75 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %77 = load i32, i32* %ty, align 4
  %78 = load i32, i32* %ty, align 4
  %add56 = add nsw i32 %78, 1
  call void @gtk_table_attach(%struct._GtkTable* %75, %struct._GtkWidget* %76, i32 0, i32 2, i32 %77, i32 %add56, i32 4, i32 0, i32 0, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0)) #4
  %call58 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call57)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %check_button, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_box_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call59)
  %82 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkBox*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %82, %struct._GtkWidget* %83, i32 0, i32 0, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %86 = bitcast %struct._GtkWidget* %85 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 17) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_toggle_button_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call62)
  %89 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkToggleButton*
  %90 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 17), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %89, i32 %90)
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0)) #4
  %call65 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call64)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %check_button, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call66)
  %93 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 19) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_toggle_button_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call69)
  %100 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkToggleButton*
  %101 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 19), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %100, i32 %101)
  %call71 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %hbox, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call72)
  %104 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %106 = load i32, i32* %ty, align 4
  %107 = load i32, i32* %ty, align 4
  %add74 = add nsw i32 %107, 1
  call void @gtk_table_attach(%struct._GtkTable* %104, %struct._GtkWidget* %105, i32 3, i32 5, i32 %106, i32 %add74, i32 4, i32 0, i32 0, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0)) #4
  %call76 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call75)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %check_button, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call77)
  %111 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %111, %struct._GtkWidget* %112, i32 0, i32 0, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %113)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %115 = bitcast %struct._GtkWidget* %114 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 16) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_toggle_button_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call80)
  %118 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkToggleButton*
  %119 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 16), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %118, i32 %119)
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0)) #4
  %call83 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call82)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %check_button, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call84)
  %122 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 18) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_toggle_button_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call87)
  %129 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkToggleButton*
  %130 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 18), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %129, i32 %130)
  %131 = load i32, i32* %ty, align 4
  %inc89 = add nsw i32 %131, 1
  store i32 %inc89, i32* %ty, align 4
  %call90 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %frame, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_frame_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call91)
  %134 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %134, i32 1)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call93)
  %137 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %139 = load i32, i32* %ty, align 4
  %140 = load i32, i32* %ty, align 4
  %add95 = add nsw i32 %140, 1
  call void @gtk_table_attach(%struct._GtkTable* %137, %struct._GtkWidget* %138, i32 0, i32 2, i32 %139, i32 %add95, i32 0, i32 0, i32 0, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %call96 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call96, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %142, i32 256, i32 256)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_container_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call97)
  %145 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkContainer*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @gtk_container_add(%struct._GtkContainer* %145, %struct._GtkWidget* %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %call99 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %frame, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_frame_get_type() #5
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call100)
  %150 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %150, i32 1)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_table_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call102)
  %153 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkTable*
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %155 = load i32, i32* %ty, align 4
  %156 = load i32, i32* %ty, align 4
  %add104 = add nsw i32 %156, 1
  call void @gtk_table_attach(%struct._GtkTable* %153, %struct._GtkWidget* %154, i32 3, i32 5, i32 %155, i32 %add104, i32 0, i32 0, i32 0, i32 0)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %157)
  %call105 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call105, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %158, i32 256, i32 256)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_container_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call106)
  %161 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkContainer*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  call void @gtk_container_add(%struct._GtkContainer* %161, %struct._GtkWidget* %162)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %163)
  %164 = load i32, i32* %ty, align 4
  %inc108 = add nsw i32 %164, 1
  store i32 %inc108, i32* %ty, align 4
  %call109 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %frame, align 8
  %call110 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call110, %struct._GtkWidget** %vbox2, align 8
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_container_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call111)
  %167 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkContainer*
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %167, %struct._GtkWidget* %168)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %170 = bitcast %struct._GtkWidget* %169 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_table_get_type() #5
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call113)
  %171 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkTable*
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %173 = load i32, i32* %ty, align 4
  %174 = load i32, i32* %ty, align 4
  %add115 = add nsw i32 %174, 1
  call void @gtk_table_attach(%struct._GtkTable* %171, %struct._GtkWidget* %172, i32 0, i32 2, i32 %173, i32 %add115, i32 0, i32 0, i32 0, i32 0)
  %call116 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call116, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 5), align 8
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 5), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %175, i32 256, i32 15)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 5), align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %176, i32 4906)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_box_get_type() #5
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call117)
  %179 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkBox*
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 5), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %179, %struct._GtkWidget* %180, i32 0, i32 1, i32 0)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 5), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %181)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 5), align 8
  %183 = bitcast %struct._GtkWidget* %182 to i8*
  %call119 = call i64 @g_signal_connect_data(i8* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @level_in_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call120 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call120, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %184, i32 256, i32 10)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %185, i32 4906)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call121)
  %188 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %188, %struct._GtkWidget* %189, i32 0, i32 1, i32 0)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %190)
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  %192 = bitcast %struct._GtkWidget* %191 to i8*
  %call123 = call i64 @g_signal_connect_data(i8* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @level_in_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %193)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %194)
  %call124 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call124, %struct._GtkWidget** %frame, align 8
  %call125 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call125, %struct._GtkWidget** %vbox2, align 8
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_container_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call126)
  %197 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkContainer*
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %197, %struct._GtkWidget* %198)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_table_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call128)
  %201 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkTable*
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %203 = load i32, i32* %ty, align 4
  %204 = load i32, i32* %ty, align 4
  %add130 = add nsw i32 %204, 1
  call void @gtk_table_attach(%struct._GtkTable* %201, %struct._GtkWidget* %202, i32 3, i32 5, i32 %203, i32 %add130, i32 0, i32 0, i32 0, i32 0)
  %call131 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call131, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 3), align 8
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 3), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %205, i32 256, i32 15)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_box_get_type() #5
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %call132)
  %208 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkBox*
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 3), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %208, %struct._GtkWidget* %209, i32 0, i32 1, i32 0)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 3), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %210)
  %call134 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call134, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %211, i32 256, i32 10)
  %212 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %212, i32 4906)
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %214 = bitcast %struct._GtkWidget* %213 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_box_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %214, i64 %call135)
  %215 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkBox*
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %215, %struct._GtkWidget* %216, i32 0, i32 1, i32 0)
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %217)
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  %219 = bitcast %struct._GtkWidget* %218 to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @level_out_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %220)
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %221)
  %222 = load i32, i32* %ty, align 4
  %inc138 = add nsw i32 %222, 1
  store i32 %inc138, i32* %ty, align 4
  %call139 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %hbox, align 8
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %224 = bitcast %struct._GtkWidget* %223 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_box_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call140)
  %225 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %225, i32 1)
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %227 = bitcast %struct._GtkWidget* %226 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_table_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %227, i64 %call142)
  %228 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkTable*
  %229 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %230 = load i32, i32* %ty, align 4
  %231 = load i32, i32* %ty, align 4
  %add144 = add nsw i32 %231, 1
  call void @gtk_table_attach(%struct._GtkTable* %228, %struct._GtkWidget* %229, i32 0, i32 2, i32 %230, i32 %add144, i32 4, i32 0, i32 0, i32 0)
  %call145 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0)) #4
  %call146 = call %struct._GtkWidget* @gtk_label_new(i8* %call145)
  store %struct._GtkWidget* %call146, %struct._GtkWidget** %label, align 8
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %233 = bitcast %struct._GtkWidget* %232 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_box_get_type() #5
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call147)
  %234 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkBox*
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %234, %struct._GtkWidget* %235, i32 0, i32 0, i32 0)
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %236)
  %237 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %conv = sitofp i32 %237 to float
  %conv149 = fpext float %conv to double
  %call150 = call %struct._GtkObject* @gtk_adjustment_new(double %conv149, double 0.000000e+00, double 2.540000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  store %struct._GtkObject* %call150, %struct._GtkObject** %data, align 8
  %238 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %239 = bitcast %struct._GtkObject* %238 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_adjustment_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call151)
  %240 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %240, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 7), align 8
  %241 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 7), align 8
  %call153 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %241, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call153, %struct._GtkWidget** %spinbutton, align 8
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %243 = bitcast %struct._GtkWidget* %242 to %struct._GTypeInstance*
  %call154 = call i64 @gtk_spin_button_get_type() #5
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %243, i64 %call154)
  %244 = bitcast %struct._GTypeInstance* %call155 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %244, i32 1)
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %246 = bitcast %struct._GtkWidget* %245 to %struct._GTypeInstance*
  %call156 = call i64 @gtk_box_get_type() #5
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call156)
  %247 = bitcast %struct._GTypeInstance* %call157 to %struct._GtkBox*
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %247, %struct._GtkWidget* %248, i32 0, i32 0, i32 0)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %249)
  %250 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 7), align 8
  %251 = bitcast %struct._GtkAdjustment* %250 to i8*
  %call158 = call i64 @g_signal_connect_data(i8* %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @smp_adj_lvl_in_min_upd_callback to void ()*), i8* bitcast (%struct.t_samp_interface* @g_di to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %252 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %conv159 = fpext float %252 to double
  %call160 = call %struct._GtkObject* @gtk_adjustment_new(double %conv159, double 1.000000e-01, double 1.000000e+01, double 2.000000e-02, double 2.000000e-01, double 0.000000e+00)
  store %struct._GtkObject* %call160, %struct._GtkObject** %data, align 8
  %253 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %254 = bitcast %struct._GtkObject* %253 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_adjustment_get_type() #5
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 %call161)
  %255 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %255, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 9), align 8
  %256 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 9), align 8
  %call163 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %256, double 5.000000e-01, i32 2)
  store %struct._GtkWidget* %call163, %struct._GtkWidget** %spinbutton, align 8
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %258 = bitcast %struct._GtkWidget* %257 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_spin_button_get_type() #5
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %258, i64 %call164)
  %259 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %259, i32 1)
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %261 = bitcast %struct._GtkWidget* %260 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_box_get_type() #5
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call166)
  %262 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkBox*
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %262, %struct._GtkWidget* %263, i32 0, i32 0, i32 0)
  %264 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %264)
  %265 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 9), align 8
  %266 = bitcast %struct._GtkAdjustment* %265 to i8*
  %call168 = call i64 @g_signal_connect_data(i8* %266, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @smp_text_gamma_upd_callback to void ()*), i8* bitcast (%struct.t_samp_interface* @g_di to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %267 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %conv169 = sitofp i32 %267 to float
  %conv170 = fpext float %conv169 to double
  %call171 = call %struct._GtkObject* @gtk_adjustment_new(double %conv170, double 1.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  store %struct._GtkObject* %call171, %struct._GtkObject** %data, align 8
  %268 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %269 = bitcast %struct._GtkObject* %268 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_adjustment_get_type() #5
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call172)
  %270 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %270, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 8), align 8
  %271 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 8), align 8
  %call174 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %271, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call174, %struct._GtkWidget** %spinbutton, align 8
  %272 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %273 = bitcast %struct._GtkWidget* %272 to %struct._GTypeInstance*
  %call175 = call i64 @gtk_spin_button_get_type() #5
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %273, i64 %call175)
  %274 = bitcast %struct._GTypeInstance* %call176 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %274, i32 1)
  %275 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %276 = bitcast %struct._GtkWidget* %275 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_box_get_type() #5
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %276, i64 %call177)
  %277 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkBox*
  %278 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %277, %struct._GtkWidget* %278, i32 0, i32 0, i32 0)
  %279 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %279)
  %280 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 8), align 8
  %281 = bitcast %struct._GtkAdjustment* %280 to i8*
  %call179 = call i64 @g_signal_connect_data(i8* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @smp_adj_lvl_in_max_upd_callback to void ()*), i8* bitcast (%struct.t_samp_interface* @g_di to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %282)
  %call180 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call180, %struct._GtkWidget** %hbox, align 8
  %283 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %284 = bitcast %struct._GtkWidget* %283 to %struct._GTypeInstance*
  %call181 = call i64 @gtk_box_get_type() #5
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %284, i64 %call181)
  %285 = bitcast %struct._GTypeInstance* %call182 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %285, i32 1)
  %286 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %287 = bitcast %struct._GtkWidget* %286 to %struct._GTypeInstance*
  %call183 = call i64 @gtk_table_get_type() #5
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %287, i64 %call183)
  %288 = bitcast %struct._GTypeInstance* %call184 to %struct._GtkTable*
  %289 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %290 = load i32, i32* %ty, align 4
  %291 = load i32, i32* %ty, align 4
  %add185 = add nsw i32 %291, 1
  call void @gtk_table_attach(%struct._GtkTable* %288, %struct._GtkWidget* %289, i32 3, i32 5, i32 %290, i32 %add185, i32 4, i32 0, i32 0, i32 0)
  %call186 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)) #4
  %call187 = call %struct._GtkWidget* @gtk_label_new(i8* %call186)
  store %struct._GtkWidget* %call187, %struct._GtkWidget** %label, align 8
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %293 = bitcast %struct._GtkWidget* %292 to %struct._GTypeInstance*
  %call188 = call i64 @gtk_box_get_type() #5
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 %call188)
  %294 = bitcast %struct._GTypeInstance* %call189 to %struct._GtkBox*
  %295 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %294, %struct._GtkWidget* %295, i32 0, i32 0, i32 0)
  %296 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %296)
  %297 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %conv190 = sitofp i32 %297 to float
  %conv191 = fpext float %conv190 to double
  %call192 = call %struct._GtkObject* @gtk_adjustment_new(double %conv191, double 0.000000e+00, double 2.540000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  store %struct._GtkObject* %call192, %struct._GtkObject** %data, align 8
  %298 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %299 = bitcast %struct._GtkObject* %298 to %struct._GTypeInstance*
  %call193 = call i64 @gtk_adjustment_get_type() #5
  %call194 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %299, i64 %call193)
  %300 = bitcast %struct._GTypeInstance* %call194 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %300, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 10), align 8
  %301 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 10), align 8
  %call195 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %301, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call195, %struct._GtkWidget** %spinbutton, align 8
  %302 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %303 = bitcast %struct._GtkWidget* %302 to %struct._GTypeInstance*
  %call196 = call i64 @gtk_spin_button_get_type() #5
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %303, i64 %call196)
  %304 = bitcast %struct._GTypeInstance* %call197 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %304, i32 1)
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %306 = bitcast %struct._GtkWidget* %305 to %struct._GTypeInstance*
  %call198 = call i64 @gtk_box_get_type() #5
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %306, i64 %call198)
  %307 = bitcast %struct._GTypeInstance* %call199 to %struct._GtkBox*
  %308 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %307, %struct._GtkWidget* %308, i32 0, i32 0, i32 0)
  %309 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %309)
  %310 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 10), align 8
  %311 = bitcast %struct._GtkAdjustment* %310 to i8*
  %call200 = call i64 @g_signal_connect_data(i8* %311, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @smp_adj_lvl_out_min_upd_callback to void ()*), i8* bitcast (%struct.t_samp_interface* @g_di to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %312 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %conv201 = sitofp i32 %312 to float
  %conv202 = fpext float %conv201 to double
  %call203 = call %struct._GtkObject* @gtk_adjustment_new(double %conv202, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  store %struct._GtkObject* %call203, %struct._GtkObject** %data, align 8
  %313 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %314 = bitcast %struct._GtkObject* %313 to %struct._GTypeInstance*
  %call204 = call i64 @gtk_adjustment_get_type() #5
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %314, i64 %call204)
  %315 = bitcast %struct._GTypeInstance* %call205 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %315, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 11), align 8
  %316 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 11), align 8
  %call206 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %316, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call206, %struct._GtkWidget** %spinbutton, align 8
  %317 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %318 = bitcast %struct._GtkWidget* %317 to %struct._GTypeInstance*
  %call207 = call i64 @gtk_spin_button_get_type() #5
  %call208 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %318, i64 %call207)
  %319 = bitcast %struct._GTypeInstance* %call208 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %319, i32 1)
  %320 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %321 = bitcast %struct._GtkWidget* %320 to %struct._GTypeInstance*
  %call209 = call i64 @gtk_box_get_type() #5
  %call210 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %321, i64 %call209)
  %322 = bitcast %struct._GTypeInstance* %call210 to %struct._GtkBox*
  %323 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %322, %struct._GtkWidget* %323, i32 0, i32 0, i32 0)
  %324 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %324)
  %325 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 11), align 8
  %326 = bitcast %struct._GtkAdjustment* %325 to i8*
  %call211 = call i64 @g_signal_connect_data(i8* %326, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @smp_adj_lvl_out_max_upd_callback to void ()*), i8* bitcast (%struct.t_samp_interface* @g_di to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %327 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %327)
  %328 = load i32, i32* %ty, align 4
  %inc212 = add nsw i32 %328, 1
  store i32 %inc212, i32* %ty, align 4
  %call213 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call213, %struct._GtkWidget** %hbox, align 8
  %329 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %330 = bitcast %struct._GtkWidget* %329 to %struct._GTypeInstance*
  %call214 = call i64 @gtk_table_get_type() #5
  %call215 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %330, i64 %call214)
  %331 = bitcast %struct._GTypeInstance* %call215 to %struct._GtkTable*
  %332 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %333 = load i32, i32* %ty, align 4
  %334 = load i32, i32* %ty, align 4
  %add216 = add nsw i32 %334, 1
  call void @gtk_table_attach(%struct._GtkTable* %331, %struct._GtkWidget* %332, i32 0, i32 2, i32 %333, i32 %add216, i32 4, i32 0, i32 0, i32 0)
  %335 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %335)
  %call217 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0)) #4
  %call218 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call217)
  store %struct._GtkWidget* %call218, %struct._GtkWidget** %check_button, align 8
  %336 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %337 = bitcast %struct._GtkWidget* %336 to %struct._GTypeInstance*
  %call219 = call i64 @gtk_box_get_type() #5
  %call220 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %337, i64 %call219)
  %338 = bitcast %struct._GTypeInstance* %call220 to %struct._GtkBox*
  %339 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %338, %struct._GtkWidget* %339, i32 0, i32 0, i32 0)
  %340 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %340)
  %341 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %342 = bitcast %struct._GtkWidget* %341 to i8*
  %call221 = call i64 @g_signal_connect_data(i8* %342, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %343 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %344 = bitcast %struct._GtkWidget* %343 to %struct._GTypeInstance*
  %call222 = call i64 @gtk_toggle_button_get_type() #5
  %call223 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %344, i64 %call222)
  %345 = bitcast %struct._GTypeInstance* %call223 to %struct._GtkToggleButton*
  %346 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %345, i32 %346)
  %call224 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0)) #4
  %call225 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call224)
  store %struct._GtkWidget* %call225, %struct._GtkWidget** %check_button, align 8
  %347 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  store %struct._GtkWidget* %347, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 12), align 8
  %348 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %349 = bitcast %struct._GtkWidget* %348 to %struct._GTypeInstance*
  %call226 = call i64 @gtk_box_get_type() #5
  %call227 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %349, i64 %call226)
  %350 = bitcast %struct._GTypeInstance* %call227 to %struct._GtkBox*
  %351 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %350, %struct._GtkWidget* %351, i32 0, i32 0, i32 0)
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 12), align 8
  %353 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2), align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %352, i32 %353)
  %354 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %354)
  %355 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %356 = bitcast %struct._GtkWidget* %355 to i8*
  %call228 = call i64 @g_signal_connect_data(i8* %356, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %357 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %358 = bitcast %struct._GtkWidget* %357 to %struct._GTypeInstance*
  %call229 = call i64 @gtk_toggle_button_get_type() #5
  %call230 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %358, i64 %call229)
  %359 = bitcast %struct._GTypeInstance* %call230 to %struct._GtkToggleButton*
  %360 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %359, i32 %360)
  %call231 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call231, %struct._GtkWidget** %hbox, align 8
  %361 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %362 = bitcast %struct._GtkWidget* %361 to %struct._GTypeInstance*
  %call232 = call i64 @gtk_table_get_type() #5
  %call233 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %362, i64 %call232)
  %363 = bitcast %struct._GTypeInstance* %call233 to %struct._GtkTable*
  %364 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %365 = load i32, i32* %ty, align 4
  %366 = load i32, i32* %ty, align 4
  %add234 = add nsw i32 %366, 1
  call void @gtk_table_attach(%struct._GtkTable* %363, %struct._GtkWidget* %364, i32 3, i32 5, i32 %365, i32 %add234, i32 4, i32 0, i32 0, i32 0)
  %367 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %367)
  %call235 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0)) #4
  %call236 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call235)
  store %struct._GtkWidget* %call236, %struct._GtkWidget** %check_button, align 8
  %368 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %369 = bitcast %struct._GtkWidget* %368 to %struct._GTypeInstance*
  %call237 = call i64 @gtk_box_get_type() #5
  %call238 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %369, i64 %call237)
  %370 = bitcast %struct._GTypeInstance* %call238 to %struct._GtkBox*
  %371 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %370, %struct._GtkWidget* %371, i32 0, i32 0, i32 0)
  %372 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %372)
  %373 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %374 = bitcast %struct._GtkWidget* %373 to i8*
  %call239 = call i64 @g_signal_connect_data(i8* %374, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %375 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %376 = bitcast %struct._GtkWidget* %375 to %struct._GTypeInstance*
  %call240 = call i64 @gtk_toggle_button_get_type() #5
  %call241 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %376, i64 %call240)
  %377 = bitcast %struct._GTypeInstance* %call241 to %struct._GtkToggleButton*
  %378 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %377, i32 %378)
  %call242 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0)) #4
  %call243 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call242)
  store %struct._GtkWidget* %call243, %struct._GtkWidget** %check_button, align 8
  %379 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %380 = bitcast %struct._GtkWidget* %379 to %struct._GTypeInstance*
  %call244 = call i64 @gtk_box_get_type() #5
  %call245 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %380, i64 %call244)
  %381 = bitcast %struct._GTypeInstance* %call245 to %struct._GtkBox*
  %382 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %381, %struct._GtkWidget* %382, i32 0, i32 0, i32 0)
  %383 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %383)
  %384 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %385 = bitcast %struct._GtkWidget* %384 to i8*
  %call246 = call i64 @g_signal_connect_data(i8* %385, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smp_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %386 = load %struct._GtkWidget*, %struct._GtkWidget** %check_button, align 8
  %387 = bitcast %struct._GtkWidget* %386 to %struct._GTypeInstance*
  %call247 = call i64 @gtk_toggle_button_get_type() #5
  %call248 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %387, i64 %call247)
  %388 = bitcast %struct._GTypeInstance* %call248 to %struct._GtkToggleButton*
  %389 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %388, i32 %389)
  %390 = load i32, i32* %ty, align 4
  %inc249 = add nsw i32 %390, 1
  store i32 %inc249, i32* %ty, align 4
  %391 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %391)
  %392 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %392)
  %393 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %393)
  store i32 1, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 15), align 4
  call void @smp_get_colors(%struct._GtkWidget* null)
  call void @update_preview(i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0))
  call void @levels_update(i32 672)
  call void @gtk_main()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_colors() #0 {
entry:
  %lum = alloca i32, align 4
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  %next_ptr = alloca %struct.t_samp_color_elem*, align 8
  store i32 0, i32* %lum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %lum, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %lum, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %col_ptr1 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx, i32 0, i32 2
  %2 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr1, align 8
  store %struct.t_samp_color_elem* %2, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp3 = icmp ne %struct.t_samp_color_elem* %3, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %4 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %4, i32 0, i32 2
  %5 = load i8*, i8** %next, align 8
  %6 = bitcast i8* %5 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %6, %struct.t_samp_color_elem** %next_ptr, align 8
  %7 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %8 = bitcast %struct.t_samp_color_elem* %7 to i8*
  call void @g_free(i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %9 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %next_ptr, align 8
  store %struct.t_samp_color_elem* %9, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %10 = load i32, i32* %lum, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom5
  %col_ptr7 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx6, i32 0, i32 2
  store %struct.t_samp_color_elem* null, %struct.t_samp_color_elem** %col_ptr7, align 8
  %11 = load i32, i32* %lum, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom8
  %all_samples = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx9, i32 0, i32 0
  store i32 0, i32* %all_samples, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %12 = load i32, i32* %lum, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %lum, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

; Function Attrs: nounwind uwtable
define internal i32 @main_colorize(i32 %mc_flags) #0 {
entry:
  %retval = alloca i32, align 4
  %mc_flags.addr = alloca i32, align 4
  %dst_drawable = alloca %struct._GimpDrawable*, align 8
  %sample_drawable = alloca %struct._GimpDrawable*, align 8
  %sample_gdrw = alloca %struct.t_GDRW, align 8
  %max = alloca i32, align 4
  %id = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %mc_flags, i32* %mc_flags.addr, align 4
  %0 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @get_filevalues()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %sample_drawable, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %dst_drawable, align 8
  %call = call i32 @color_error(i8 zeroext 0, i8 zeroext 0, i8 zeroext 0, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1)
  store i32 %call, i32* %max, align 4
  %1 = load i32, i32* %max, align 4
  %conv = sitofp i32 %1 to float
  %2 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 11), align 4
  %3 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 11), align 4
  %mul = fmul float %2, %3
  %mul1 = fmul float %conv, %mul
  %conv2 = fpext float %mul1 to double
  %div = fdiv double %conv2, 1.000000e+04
  %conv3 = fptosi double %div to i32
  store i32 %conv3, i32* @g_tol_col_err, align 4
  %4 = load i32, i32* %max, align 4
  store i32 %4, i32* @g_max_col_err, align 4
  store i32 0, i32* %rc, align 4
  %5 = load i32, i32* %mc_flags.addr, align 4
  %and = and i32 %5, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %if.end
  %6 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1), align 4
  store i32 %6, i32* %id, align 4
  %7 = load i32, i32* %id, align 4
  %cmp = icmp eq i32 %7, -444
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %8 = load i32, i32* %id, align 4
  %cmp7 = icmp eq i32 %8, -445
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false, %if.then.5
  %9 = load i32, i32* %id, align 4
  call void @get_gradient(i32 %9)
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* %id, align 4
  %call10 = call i32 @is_layer_alive(i32 %10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  %11 = load i32, i32* %id, align 4
  %call15 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %11)
  store %struct._GimpDrawable* %call15, %struct._GimpDrawable** %sample_drawable, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sample_drawable, align 8
  call void @init_gdrw(%struct.t_GDRW* %sample_gdrw, %struct._GimpDrawable* %12, i32 0, i32 0)
  call void @free_colors()
  %call16 = call i32 @sample_analyze(%struct.t_GDRW* %sample_gdrw)
  store i32 %call16, i32* %rc, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %13 = load i32, i32* %mc_flags.addr, align 4
  %and19 = and i32 %13, 2
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.18
  %14 = load i32, i32* %rc, align 4
  %cmp21 = icmp eq i32 %14, 0
  br i1 %cmp21, label %if.then.23, label %if.end.39

if.then.23:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0), align 4
  %call24 = call i32 @is_layer_alive(i32 %15)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.23
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.23
  %16 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0), align 4
  %call29 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %16)
  store %struct._GimpDrawable* %call29, %struct._GimpDrawable** %dst_drawable, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0), align 4
  %call30 = call i32 @gimp_drawable_is_gray(i32 %17)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.38

land.lhs.true.32:                                 ; preds = %if.end.28
  %18 = load i32, i32* %mc_flags.addr, align 4
  %and33 = and i32 %18, 2
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %land.lhs.true.32
  %19 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0), align 4
  %call36 = call i32 @gimp_item_get_image(i32 %19)
  %call37 = call i32 @gimp_image_convert_rgb(i32 %call36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.end.28
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id, align 4
  call void @colorize_drawable(i32 %21)
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true, %if.end.18
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sample_drawable, align 8
  %tobool40 = icmp ne %struct._GimpDrawable* %22, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  call void @end_gdrw(%struct.t_GDRW* %sample_gdrw)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %23 = load i32, i32* %rc, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.27, %if.then.13
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_print(i8*, ...) #1

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

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @smp_response_callback(%struct._GtkWidget* %widget, i32 %response_id) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 -10, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  store i32 255, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  store float 1.000000e+00, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  store i32 0, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  store i32 255, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  call void @levels_update(i32 4095)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @smp_get_colors(%struct._GtkWidget* %1)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 1, i32* @g_show_progress, align 4
  %call = call i32 @main_colorize(i32 2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %call3 = call i32 @gimp_displays_flush()
  store i32 0, i32* @g_show_progress, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call4)
  %4 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %4, i32 -10, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %5)
  call void @gtk_main_quit()
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %if.end, %sw.bb.1, %sw.bb
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_layer_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @smp_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %image_id.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_indexed(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @smp_dest_combo_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0))
  call void @update_preview(i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0))
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 0), align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %5, i32 2, i32 1)
  ret void
}

declare void @gimp_int_combo_box_prepend(%struct._GimpIntComboBox*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @smp_sample_combo_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %3 = load i32, i32* %value, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1), align 4
  %4 = load i32, i32* %value, align 4
  %cmp = icmp eq i32 %4, -444
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %value, align 4
  %cmp3 = icmp eq i32 %5, -445
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %value, align 4
  call void @get_gradient(i32 %6)
  call void @smp_get_colors(%struct._GtkWidget* null)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  call void @clear_preview(%struct._GtkWidget* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 0), align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %11, i32 -10, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 0), align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %14, i32 2, i32 0)
  br label %if.end.11

if.else:                                          ; preds = %lor.lhs.false
  call void @update_preview(i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1))
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 0), align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %17, i32 2, i32 1)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @smp_toggle_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %toggle_val = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %toggle_val, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %5 = load i32*, i32** %toggle_val, align 8
  store i32 %call2, i32* %5, align 4
  %6 = load i8*, i8** %data.addr, align 8
  %cmp = icmp eq i8* %6, bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 16) to i8*)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i8*, i8** %data.addr, align 8
  %cmp3 = icmp eq i8* %7, bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 18) to i8*)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @update_preview(i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1))
  br label %if.end.23

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i8*, i8** %data.addr, align 8
  %cmp4 = icmp eq i8* %8, bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 17) to i8*)
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %9 = load i8*, i8** %data.addr, align 8
  %cmp6 = icmp eq i8* %9, bitcast (i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 19) to i8*)
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.5, %if.end
  call void @update_preview(i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0))
  br label %if.end.23

if.end.8:                                         ; preds = %lor.lhs.false.5
  %10 = load i8*, i8** %data.addr, align 8
  %cmp9 = icmp eq i8* %10, bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2) to i8*)
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.8
  %11 = load i8*, i8** %data.addr, align 8
  %cmp11 = icmp eq i8* %11, bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 3) to i8*)
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %12 = load i8*, i8** %data.addr, align 8
  %cmp13 = icmp eq i8* %12, bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 4) to i8*)
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %if.end.8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 12), align 8
  %tobool = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.14
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 12), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2), align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %14, i32 %15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.14
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @refresh_dst_preview(%struct._GtkWidget* %16, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @g_dst_preview_buffer, i32 0, i64 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %lor.lhs.false.12
  %17 = load i8*, i8** %data.addr, align 8
  %cmp18 = icmp eq i8* %17, bitcast (i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 5) to i8*)
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  %18 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 5), align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.19
  call void @guess_missing_colors()
  br label %if.end.22

if.else:                                          ; preds = %if.then.19
  call void @fill_missing_colors()
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  call void @smp_get_colors(%struct._GtkWidget* null)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then, %if.then.7, %if.end.22, %if.end.17
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @level_in_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %width = alloca double, align 8
  %mid = alloca double, align 8
  %tmp = alloca double, align 8
  %x = alloca i32, align 4
  %distance = alloca i32, align 4
  %i = alloca i32, align 4
  %update = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store i32 0, i32* %update, align 4
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.7
    i32 7, label %sw.bb.29
    i32 3, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  %cmp = icmp eq %struct._GtkWidget* %3, %4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @levels_update(i32 128)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  br label %sw.epilog.48

sw.bb.7:                                          ; preds = %entry
  %5 = load i32, i32* @g_Sdebug, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %sw.bb.7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %sw.bb.7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %6)
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %8 = bitcast %union._GdkEvent* %7 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %8, %struct._GdkEventButton** %bevent, align 8
  store i32 2147483647, i32* %distance, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %9 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %9, 3
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x13 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 4
  %11 = load double, double* %x13, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14), i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %13 to double
  %sub = fsub double %11, %conv
  %call14 = call double @fabs(double %sub) #5
  %14 = load i32, i32* %distance, align 4
  %conv15 = sitofp i32 %14 to double
  %cmp16 = fcmp olt double %call14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 13), align 4
  %16 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x19 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %16, i32 0, i32 4
  %17 = load double, double* %x19, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14), i32 0, i64 %idxprom20
  %19 = load i32, i32* %arrayidx21, align 4
  %conv22 = sitofp i32 %19 to double
  %sub23 = fsub double %17, %conv22
  %call24 = call double @fabs(double %sub23) #5
  %conv25 = fptosi double %call24 to i32
  store i32 %conv25, i32* %distance, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x27 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %21, i32 0, i32 4
  %22 = load double, double* %x27, align 8
  %conv28 = fptosi double %22 to i32
  store i32 %conv28, i32* %x, align 4
  store i32 1, i32* %update, align 4
  br label %sw.epilog.48

sw.bb.29:                                         ; preds = %entry
  %23 = load i32, i32* @g_Sdebug, align 4
  %tobool30 = icmp ne i32 %23, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %sw.bb.29
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %sw.bb.29
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %24)
  %25 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 13), align 4
  switch i32 %25, label %sw.epilog [
    i32 0, label %sw.bb.34
    i32 1, label %sw.bb.35
    i32 2, label %sw.bb.36
  ]

sw.bb.34:                                         ; preds = %if.end.33
  call void @levels_update(i32 515)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.33
  call void @levels_update(i32 2)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.33
  call void @levels_update(i32 518)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.33, %sw.bb.36, %sw.bb.35, %sw.bb.34
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @refresh_dst_preview(%struct._GtkWidget* %26, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @g_dst_preview_buffer, i32 0, i64 0))
  br label %sw.epilog.48

sw.bb.37:                                         ; preds = %entry
  %27 = load i32, i32* @g_Sdebug, align 4
  %tobool38 = icmp ne i32 %27, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %sw.bb.37
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %sw.bb.37
  %28 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %29 = bitcast %union._GdkEvent* %28 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %29, %struct._GdkEventMotion** %mevent, align 8
  %30 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x42 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %30, i32 0, i32 4
  %31 = load double, double* %x42, align 8
  %conv43 = fptosi double %31 to i32
  store i32 %conv43, i32* %x, align 4
  %32 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %32)
  store i32 1, i32* %update, align 4
  br label %sw.epilog.48

sw.default:                                       ; preds = %entry
  %33 = load i32, i32* @g_Sdebug, align 4
  %tobool44 = icmp ne i32 %33, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %sw.default
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %sw.default
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %if.end.47, %if.end.41, %sw.epilog, %for.end, %if.end.6
  %34 = load i32, i32* %update, align 4
  %tobool49 = icmp ne i32 %34, 0
  br i1 %tobool49, label %if.then.50, label %if.end.113

if.then.50:                                       ; preds = %sw.epilog.48
  %35 = load i32, i32* @g_Sdebug, align 4
  %tobool51 = icmp ne i32 %35, 0
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.50
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.50
  %36 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 13), align 4
  switch i32 %36, label %sw.epilog.112 [
    i32 0, label %sw.bb.55
    i32 1, label %sw.bb.66
    i32 2, label %sw.bb.95
  ]

sw.bb.55:                                         ; preds = %if.end.54
  %37 = load i32, i32* %x, align 4
  %conv56 = sitofp i32 %37 to double
  %div = fdiv double %conv56, 2.560000e+02
  %mul = fmul double %div, 2.550000e+02
  %conv57 = fptosi double %mul to i32
  store i32 %conv57, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %cmp58 = icmp sgt i32 %38, %39
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.55
  %40 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  br label %cond.end.64

cond.false:                                       ; preds = %sw.bb.55
  %41 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %cmp60 = icmp slt i32 %41, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false
  br label %cond.end

cond.false.63:                                    ; preds = %cond.false
  %42 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.63, %cond.true.62
  %cond = phi i32 [ 0, %cond.true.62 ], [ %42, %cond.false.63 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end, %cond.true
  %cond65 = phi i32 [ %40, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond65, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  br label %sw.epilog.112

sw.bb.66:                                         ; preds = %if.end.54
  %43 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 2), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  %sub67 = sub nsw i32 %43, %44
  %conv68 = sitofp i32 %sub67 to double
  %div69 = fdiv double %conv68, 2.000000e+00
  store double %div69, double* %width, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  %conv70 = sitofp i32 %45 to double
  %46 = load double, double* %width, align 8
  %add = fadd double %conv70, %46
  store double %add, double* %mid, align 8
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 2), align 4
  %cmp71 = icmp sgt i32 %47, %48
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %sw.bb.66
  %49 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 2), align 4
  br label %cond.end.81

cond.false.74:                                    ; preds = %sw.bb.66
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  %cmp75 = icmp slt i32 %50, %51
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.false.74
  %52 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.false.74
  %53 = load i32, i32* %x, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi i32 [ %52, %cond.true.77 ], [ %53, %cond.false.78 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.73
  %cond82 = phi i32 [ %49, %cond.true.73 ], [ %cond80, %cond.end.79 ]
  store i32 %cond82, i32* %x, align 4
  %54 = load i32, i32* %x, align 4
  %conv83 = sitofp i32 %54 to double
  %55 = load double, double* %mid, align 8
  %sub84 = fsub double %conv83, %55
  %56 = load double, double* %width, align 8
  %div85 = fdiv double %sub84, %56
  store double %div85, double* %tmp, align 8
  %57 = load double, double* %tmp, align 8
  %call86 = call double @pow(double 1.000000e+01, double %57) #4
  %div87 = fdiv double 1.000000e+00, %call86
  %conv88 = fptrunc double %div87 to float
  store float %conv88, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %58 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %mul89 = fmul float %58, 1.000000e+02
  %conv90 = fpext float %mul89 to double
  %add91 = fadd double %conv90, 5.000000e-01
  %call92 = call double @floor(double %add91) #5
  %div93 = fdiv double %call92, 1.000000e+02
  %conv94 = fptrunc double %div93 to float
  store float %conv94, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  br label %sw.epilog.112

sw.bb.95:                                         ; preds = %if.end.54
  %59 = load i32, i32* %x, align 4
  %conv96 = sitofp i32 %59 to double
  %div97 = fdiv double %conv96, 2.560000e+02
  %mul98 = fmul double %div97, 2.550000e+02
  %conv99 = fptosi double %mul98 to i32
  store i32 %conv99, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %cmp100 = icmp sgt i32 %60, 255
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %sw.bb.95
  br label %cond.end.110

cond.false.103:                                   ; preds = %sw.bb.95
  %61 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %cmp104 = icmp slt i32 %61, %62
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.false.103
  %63 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.false.103
  %64 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.106
  %cond109 = phi i32 [ %63, %cond.true.106 ], [ %64, %cond.false.107 ]
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.end.108, %cond.true.102
  %cond111 = phi i32 [ 255, %cond.true.102 ], [ %cond109, %cond.end.108 ]
  store i32 %cond111, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  br label %sw.epilog.112

sw.epilog.112:                                    ; preds = %if.end.54, %cond.end.110, %cond.end.81, %cond.end.64
  call void @levels_update(i32 672)
  br label %if.end.113

if.end.113:                                       ; preds = %sw.epilog.112, %sw.epilog.48
  ret i32 0
}

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

; Function Attrs: nounwind uwtable
define internal i32 @level_out_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %x = alloca i32, align 4
  %distance = alloca i32, align 4
  %i = alloca i32, align 4
  %update = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store i32 0, i32* %update, align 4
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.3
    i32 7, label %sw.bb.25
    i32 3, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  %cmp = icmp eq %struct._GtkWidget* %3, %4
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @levels_update(i32 256)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  br label %sw.epilog.43

sw.bb.3:                                          ; preds = %entry
  %5 = load i32, i32* @g_Sdebug, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %sw.bb.3
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %sw.bb.3
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %7 = bitcast %union._GdkEvent* %6 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %7, %struct._GdkEventButton** %bevent, align 8
  store i32 2147483647, i32* %distance, align 4
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %8, 5
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x9 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 4
  %10 = load double, double* %x9, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14), i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %12 to double
  %sub = fsub double %10, %conv
  %call10 = call double @fabs(double %sub) #5
  %13 = load i32, i32* %distance, align 4
  %conv11 = sitofp i32 %13 to double
  %cmp12 = fcmp olt double %call10, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 13), align 4
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x15 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %15, i32 0, i32 4
  %16 = load double, double* %x15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14), i32 0, i64 %idxprom16
  %18 = load i32, i32* %arrayidx17, align 4
  %conv18 = sitofp i32 %18 to double
  %sub19 = fsub double %16, %conv18
  %call20 = call double @fabs(double %sub19) #5
  %conv21 = fptosi double %call20 to i32
  store i32 %conv21, i32* %distance, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x23 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %20, i32 0, i32 4
  %21 = load double, double* %x23, align 8
  %conv24 = fptosi double %21 to i32
  store i32 %conv24, i32* %x, align 4
  store i32 1, i32* %update, align 4
  br label %sw.epilog.43

sw.bb.25:                                         ; preds = %entry
  %22 = load i32, i32* @g_Sdebug, align 4
  %tobool26 = icmp ne i32 %22, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %sw.bb.25
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %sw.bb.25
  %23 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 13), align 4
  switch i32 %23, label %sw.epilog [
    i32 3, label %sw.bb.30
    i32 4, label %sw.bb.31
  ]

sw.bb.30:                                         ; preds = %if.end.29
  call void @levels_update(i32 520)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.29
  call void @levels_update(i32 528)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %sw.bb.31, %sw.bb.30
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @refresh_dst_preview(%struct._GtkWidget* %24, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @g_dst_preview_buffer, i32 0, i64 0))
  br label %sw.epilog.43

sw.bb.32:                                         ; preds = %entry
  %25 = load i32, i32* @g_Sdebug, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %sw.bb.32
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %sw.bb.32
  %26 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %27 = bitcast %union._GdkEvent* %26 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %27, %struct._GdkEventMotion** %mevent, align 8
  %28 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x37 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %28, i32 0, i32 4
  %29 = load double, double* %x37, align 8
  %conv38 = fptosi double %29 to i32
  store i32 %conv38, i32* %x, align 4
  %30 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %30)
  store i32 1, i32* %update, align 4
  br label %sw.epilog.43

sw.default:                                       ; preds = %entry
  %31 = load i32, i32* @g_Sdebug, align 4
  %tobool39 = icmp ne i32 %31, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %sw.default
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %sw.default
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %if.end.42, %if.end.36, %sw.epilog, %for.end, %if.end.2
  %32 = load i32, i32* %update, align 4
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %if.then.45, label %if.end.79

if.then.45:                                       ; preds = %sw.epilog.43
  %33 = load i32, i32* @g_Sdebug, align 4
  %tobool46 = icmp ne i32 %33, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.45
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.45
  %34 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 13), align 4
  switch i32 %34, label %sw.epilog.78 [
    i32 3, label %sw.bb.50
    i32 4, label %sw.bb.61
  ]

sw.bb.50:                                         ; preds = %if.end.49
  %35 = load i32, i32* %x, align 4
  %conv51 = sitofp i32 %35 to double
  %div = fdiv double %conv51, 2.560000e+02
  %mul = fmul double %div, 2.550000e+02
  %conv52 = fptosi double %mul to i32
  store i32 %conv52, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %cmp53 = icmp sgt i32 %36, %37
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.50
  %38 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  br label %cond.end.59

cond.false:                                       ; preds = %sw.bb.50
  %39 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %cmp55 = icmp slt i32 %39, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false
  br label %cond.end

cond.false.58:                                    ; preds = %cond.false
  %40 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.58, %cond.true.57
  %cond = phi i32 [ 0, %cond.true.57 ], [ %40, %cond.false.58 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end, %cond.true
  %cond60 = phi i32 [ %38, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond60, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  br label %sw.epilog.78

sw.bb.61:                                         ; preds = %if.end.49
  %41 = load i32, i32* %x, align 4
  %conv62 = sitofp i32 %41 to double
  %div63 = fdiv double %conv62, 2.560000e+02
  %mul64 = fmul double %div63, 2.550000e+02
  %conv65 = fptosi double %mul64 to i32
  store i32 %conv65, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %cmp66 = icmp sgt i32 %42, 255
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %sw.bb.61
  br label %cond.end.76

cond.false.69:                                    ; preds = %sw.bb.61
  %43 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %cmp70 = icmp slt i32 %43, %44
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.false.69
  %45 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.false.69
  %46 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi i32 [ %45, %cond.true.72 ], [ %46, %cond.false.73 ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.74, %cond.true.68
  %cond77 = phi i32 [ 255, %cond.true.68 ], [ %cond75, %cond.end.74 ]
  store i32 %cond77, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  br label %sw.epilog.78

sw.epilog.78:                                     ; preds = %if.end.49, %cond.end.76, %cond.end.59
  call void @levels_update(i32 832)
  br label %if.end.79

if.end.79:                                        ; preds = %sw.epilog.78, %sw.epilog.43
  ret i32 0
}

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment*, double, i32) #1

declare void @gtk_spin_button_set_numeric(%struct._GtkSpinButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @smp_adj_lvl_in_min_upd_callback(%struct._GtkAdjustment* %adjustment) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  %upd_flags = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %cmp = fcmp ogt double %call, 2.540000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %cmp2 = fcmp olt double %call1, 0.000000e+00
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi double [ 0.000000e+00, %cond.true.3 ], [ %call5, %cond.false.4 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi double [ 2.540000e+02, %cond.true ], [ %cond, %cond.end ]
  store double %cond7, double* %value, align 8
  %3 = load double, double* %value, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %conv = sitofp i32 %4 to double
  %cmp8 = fcmp une double %3, %conv
  br i1 %cmp8, label %if.then, label %if.end.14

if.then:                                          ; preds = %cond.end.6
  %5 = load double, double* %value, align 8
  %conv10 = fptosi double %5 to i32
  store i32 %conv10, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  store i32 1696, i32* %upd_flags, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %cmp11 = icmp sgt i32 %6, %7
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %8 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %9 = load i32, i32* %upd_flags, align 4
  %or = or i32 %9, 4
  store i32 %or, i32* %upd_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %10 = load i32, i32* %upd_flags, align 4
  call void @levels_update(i32 %10)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %cond.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smp_text_gamma_upd_callback(%struct._GtkAdjustment* %adjustment) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %cmp = fcmp ogt double %call, 1.000000e+01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %cmp2 = fcmp olt double %call1, 1.000000e-01
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi double [ 1.000000e-01, %cond.true.3 ], [ %call5, %cond.false.4 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi double [ 1.000000e+01, %cond.true ], [ %cond, %cond.end ]
  store double %cond7, double* %value, align 8
  %3 = load double, double* %value, align 8
  %4 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %conv = fpext float %4 to double
  %cmp8 = fcmp une double %3, %conv
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  %5 = load double, double* %value, align 8
  %conv10 = fptrunc double %5 to float
  store float %conv10, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  call void @levels_update(i32 1696)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smp_adj_lvl_in_max_upd_callback(%struct._GtkAdjustment* %adjustment) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca i32, align 4
  %upd_flags = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %cmp = fcmp ogt double %call, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %cmp2 = fcmp olt double %call1, 1.000000e+00
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi double [ 1.000000e+00, %cond.true.3 ], [ %call5, %cond.false.4 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv = fptosi double %cond7 to i32
  store i32 %conv, i32* %value, align 4
  %3 = load i32, i32* %value, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %cmp8 = icmp ne i32 %3, %4
  br i1 %cmp8, label %if.then, label %if.end.13

if.then:                                          ; preds = %cond.end.6
  %5 = load i32, i32* %value, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  store i32 1696, i32* %upd_flags, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %cmp10 = icmp slt i32 %6, %7
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %8 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %9 = load i32, i32* %upd_flags, align 4
  %or = or i32 %9, 1
  store i32 %or, i32* %upd_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %10 = load i32, i32* %upd_flags, align 4
  call void @levels_update(i32 %10)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %cond.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smp_adj_lvl_out_min_upd_callback(%struct._GtkAdjustment* %adjustment) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  %upd_flags = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %cmp = fcmp ogt double %call, 2.540000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %cmp2 = fcmp olt double %call1, 0.000000e+00
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi double [ 0.000000e+00, %cond.true.3 ], [ %call5, %cond.false.4 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi double [ 2.540000e+02, %cond.true ], [ %cond, %cond.end ]
  store double %cond7, double* %value, align 8
  %3 = load double, double* %value, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %conv = sitofp i32 %4 to double
  %cmp8 = fcmp une double %3, %conv
  br i1 %cmp8, label %if.then, label %if.end.14

if.then:                                          ; preds = %cond.end.6
  %5 = load double, double* %value, align 8
  %conv10 = fptosi double %5 to i32
  store i32 %conv10, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  store i32 1856, i32* %upd_flags, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %cmp11 = icmp sgt i32 %6, %7
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %8 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %9 = load i32, i32* %upd_flags, align 4
  %or = or i32 %9, 16
  store i32 %or, i32* %upd_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %10 = load i32, i32* %upd_flags, align 4
  call void @levels_update(i32 %10)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %cond.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smp_adj_lvl_out_max_upd_callback(%struct._GtkAdjustment* %adjustment) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca i32, align 4
  %upd_flags = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %cmp = fcmp ogt double %call, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %cmp2 = fcmp olt double %call1, 1.000000e+00
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi double [ 1.000000e+00, %cond.true.3 ], [ %call5, %cond.false.4 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv = fptosi double %cond7 to i32
  store i32 %conv, i32* %value, align 4
  %3 = load i32, i32* %value, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %cmp8 = icmp ne i32 %3, %4
  br i1 %cmp8, label %if.then, label %if.end.13

if.then:                                          ; preds = %cond.end.6
  %5 = load i32, i32* %value, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  store i32 1856, i32* %upd_flags, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %cmp10 = icmp slt i32 %6, %7
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %8 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %9 = load i32, i32* %upd_flags, align 4
  %or = or i32 %9, 8
  store i32 %or, i32* %upd_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %10 = load i32, i32* %upd_flags, align 4
  call void @levels_update(i32 %10)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %cond.end.6
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @smp_get_colors(%struct._GtkWidget* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %buffer = alloca [11520 x i8], align 16
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  call void @update_preview(i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1))
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @main_colorize(i32 1)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 0), align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_dialog_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %3, i32 -10, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 15
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [11520 x i8], [11520 x i8]* %buffer, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 3
  %mul4 = mul nsw i32 %mul, 256
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i32 0), i64 768, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @update_preview(i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0))
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 3), align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_preview_area_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreviewArea*
  %arraydecay7 = getelementptr inbounds [11520 x i8], [11520 x i8]* %buffer, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %9, i32 0, i32 0, i32 256, i32 15, i32 0, i8* %arraydecay7, i32 768)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_preview(i32* %id_ptr) #0 {
entry:
  %id_ptr.addr = alloca i32*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %gdrw = alloca %struct.t_GDRW, align 8
  store i32* %id_ptr, i32** %id_ptr.addr, align 8
  %0 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %id_ptr.addr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 15), align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i32 0, i32 0), i32 %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %id_ptr.addr, align 8
  %cmp = icmp eq i32* %4, null
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 15), align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.23

if.end.3:                                         ; preds = %lor.lhs.false
  %6 = load i32*, i32** %id_ptr.addr, align 8
  %7 = load i32, i32* %6, align 4
  %call4 = call i32 @is_layer_alive(i32 %7)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end.3
  %8 = load i32*, i32** %id_ptr.addr, align 8
  %cmp7 = icmp eq i32* %8, getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1)
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  call void @clear_preview(%struct._GtkWidget* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  %10 = load i32*, i32** %id_ptr.addr, align 8
  %cmp10 = icmp eq i32* %10, getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0)
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @clear_preview(%struct._GtkWidget* %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  br label %if.end.23

if.end.13:                                        ; preds = %if.end.3
  %12 = load i32*, i32** %id_ptr.addr, align 8
  %13 = load i32, i32* %12, align 4
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %13)
  store %struct._GimpDrawable* %call14, %struct._GimpDrawable** %drawable, align 8
  %14 = load i32*, i32** %id_ptr.addr, align 8
  %cmp15 = icmp eq i32* %14, getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 1)
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @init_gdrw(%struct.t_GDRW* %gdrw, %struct._GimpDrawable* %15, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 1), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 16), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 18), align 4
  call void @update_pv(%struct._GtkWidget* %16, i32 %17, %struct.t_GDRW* %gdrw, i8* null, i32 %18)
  br label %if.end.20

if.else:                                          ; preds = %if.end.13
  %19 = load i32*, i32** %id_ptr.addr, align 8
  %cmp17 = icmp eq i32* %19, getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 0)
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @init_gdrw(%struct.t_GDRW* %gdrw, %struct._GimpDrawable* %20, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 17), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 19), align 4
  call void @update_pv(%struct._GtkWidget* %21, i32 %22, %struct.t_GDRW* %gdrw, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @g_dst_preview_buffer, i32 0, i64 0), i32 %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @refresh_dst_preview(%struct._GtkWidget* %24, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @g_dst_preview_buffer, i32 0, i64 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.16
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool21 = icmp ne %struct._GimpDrawable* %25, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  call void @end_gdrw(%struct.t_GDRW* %gdrw)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.2, %if.end.12, %if.then.22, %if.end.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @levels_update(i32 %update) #0 {
entry:
  %update.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [3840 x i8], align 16
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  %width = alloca double, align 8
  %mid = alloca double, align 8
  %tmp = alloca double, align 8
  %style68 = alloca %struct._GtkStyle*, align 8
  %cr71 = alloca %struct._cairo*, align 8
  store i32 %update, i32* %update.addr, align 4
  %0 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %update.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @calculate_level_transfers()
  %2 = load i32, i32* %update.addr, align 4
  %and = and i32 %2, 1024
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 2), align 8
  call void @refresh_dst_preview(%struct._GtkWidget* %3, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @g_dst_preview_buffer, i32 0, i64 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* %update.addr, align 4
  %and4 = and i32 %4, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 7), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %conv = sitofp i32 %6 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %5, double %conv)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %7 = load i32, i32* %update.addr, align 4
  %and8 = and i32 %7, 2
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 9), align 8
  %9 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %conv11 = fpext float %9 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %conv11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %10 = load i32, i32* %update.addr, align 4
  %and13 = and i32 %10, 4
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 8), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %conv16 = sitofp i32 %12 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %11, double %conv16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %13 = load i32, i32* %update.addr, align 4
  %and18 = and i32 %13, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 10), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %conv21 = sitofp i32 %15 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %14, double %conv21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  %16 = load i32, i32* %update.addr, align 4
  %and23 = and i32 %16, 16
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 11), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %conv26 = sitofp i32 %18 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %17, double %conv26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %19 = load i32, i32* %update.addr, align 4
  %and28 = and i32 %19, 32
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.27
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %20 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %20, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3840 x i8], [3840 x i8]* %buffer, i32 0, i32 0
  %21 = load i32, i32* %i, align 4
  %mul = mul nsw i32 256, %21
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @g_lvl_trans_tab, i32 0, i32 0), i64 256, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 5), align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_preview_area_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call32)
  %25 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpPreviewArea*
  %arraydecay34 = getelementptr inbounds [3840 x i8], [3840 x i8]* %buffer, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %25, i32 0, i32 0, i32 256, i32 15, i32 2, i8* %arraydecay34, i32 256)
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %if.end.27
  %26 = load i32, i32* %update.addr, align 4
  %and36 = and i32 %26, 128
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.63

if.then.38:                                       ; preds = %if.end.35
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  %call39 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %27)
  store %struct._GtkStyle* %call39, %struct._GtkStyle** %style, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 6), align 8
  %call40 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %28)
  %call41 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call40)
  store %struct._cairo* %call41, %struct._cairo** %cr, align 8
  %29 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %30 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %30, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %29, %struct._GdkColor* %arrayidx)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %31)
  %32 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %32, double 5.000000e-01, double 5.000000e-01)
  %33 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %33, double 1.000000e+00)
  %34 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %conv42 = sitofp i32 %34 to double
  %div = fdiv double %conv42, 2.550000e+02
  %mul43 = fmul double 2.560000e+02, %div
  %conv44 = fptosi double %mul43 to i32
  store i32 %conv44, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %conv45 = sitofp i32 %35 to double
  %div46 = fdiv double %conv45, 2.550000e+02
  %mul47 = fmul double 2.560000e+02, %div46
  %conv48 = fptosi double %mul47 to i32
  store i32 %conv48, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 2), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 2), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  %sub = sub nsw i32 %36, %37
  %conv49 = sitofp i32 %sub to double
  %div50 = fdiv double %conv49, 2.000000e+00
  store double %div50, double* %width, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  %conv51 = sitofp i32 %38 to double
  %39 = load double, double* %width, align 8
  %add = fadd double %conv51, %39
  store double %add, double* %mid, align 8
  %40 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %conv52 = fpext float %40 to double
  %div53 = fdiv double 1.000000e+00, %conv52
  %call54 = call double @log10(double %div53) #4
  store double %call54, double* %tmp, align 8
  %41 = load double, double* %mid, align 8
  %42 = load double, double* %width, align 8
  %43 = load double, double* %tmp, align 8
  %mul55 = fmul double %42, %43
  %add56 = fadd double %41, %mul55
  %add57 = fadd double %add56, 5.000000e-01
  %conv58 = fptosi double %add57 to i32
  store i32 %conv58, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 1), align 4
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %45 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %45, i32 0, i32 9
  %46 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %46, i32 0, i32 4
  %arrayidx59 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark, i32 0, i64 0
  %47 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 1), align 4
  call void @levels_draw_slider(%struct._cairo* %44, %struct._GdkColor* %black, %struct._GdkColor* %arrayidx59, i32 %47)
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %49 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black60 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %49, i32 0, i32 9
  %50 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black61 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %50, i32 0, i32 9
  %51 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 0), align 4
  call void @levels_draw_slider(%struct._cairo* %48, %struct._GdkColor* %black60, %struct._GdkColor* %black61, i32 %51)
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %53 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black62 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %53, i32 0, i32 9
  %54 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %54, i32 0, i32 10
  %55 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 2), align 4
  call void @levels_draw_slider(%struct._cairo* %52, %struct._GdkColor* %black62, %struct._GdkColor* %white, i32 %55)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %56)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.38, %if.end.35
  %57 = load i32, i32* %update.addr, align 4
  %and64 = and i32 %57, 256
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.88

if.then.66:                                       ; preds = %if.end.63
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  %call69 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %58)
  store %struct._GtkStyle* %call69, %struct._GtkStyle** %style68, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 4), align 8
  %call72 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %59)
  %call73 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call72)
  store %struct._cairo* %call73, %struct._cairo** %cr71, align 8
  %60 = load %struct._cairo*, %struct._cairo** %cr71, align 8
  %61 = load %struct._GtkStyle*, %struct._GtkStyle** %style68, align 8
  %bg74 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %61, i32 0, i32 2
  %arrayidx75 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg74, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %60, %struct._GdkColor* %arrayidx75)
  %62 = load %struct._cairo*, %struct._cairo** %cr71, align 8
  call void @cairo_paint(%struct._cairo* %62)
  %63 = load %struct._cairo*, %struct._cairo** %cr71, align 8
  call void @cairo_translate(%struct._cairo* %63, double 5.000000e-01, double 5.000000e-01)
  %64 = load %struct._cairo*, %struct._cairo** %cr71, align 8
  call void @cairo_set_line_width(%struct._cairo* %64, double 1.000000e+00)
  %65 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %conv76 = sitofp i32 %65 to double
  %div77 = fdiv double %conv76, 2.550000e+02
  %mul78 = fmul double 2.560000e+02, %div77
  %conv79 = fptosi double %mul78 to i32
  store i32 %conv79, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 3), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %conv80 = sitofp i32 %66 to double
  %div81 = fdiv double %conv80, 2.550000e+02
  %mul82 = fmul double 2.560000e+02, %div81
  %conv83 = fptosi double %mul82 to i32
  store i32 %conv83, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 4), align 4
  %67 = load %struct._cairo*, %struct._cairo** %cr71, align 8
  %68 = load %struct._GtkStyle*, %struct._GtkStyle** %style68, align 8
  %black84 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %68, i32 0, i32 9
  %69 = load %struct._GtkStyle*, %struct._GtkStyle** %style68, align 8
  %black85 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %69, i32 0, i32 9
  %70 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 3), align 4
  call void @levels_draw_slider(%struct._cairo* %67, %struct._GdkColor* %black84, %struct._GdkColor* %black85, i32 %70)
  %71 = load %struct._cairo*, %struct._cairo** %cr71, align 8
  %72 = load %struct._GtkStyle*, %struct._GtkStyle** %style68, align 8
  %black86 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %72, i32 0, i32 9
  %73 = load %struct._GtkStyle*, %struct._GtkStyle** %style68, align 8
  %black87 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %73, i32 0, i32 9
  %74 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 14, i64 4), align 4
  call void @levels_draw_slider(%struct._cairo* %71, %struct._GdkColor* %black86, %struct._GdkColor* %black87, i32 %74)
  %75 = load %struct._cairo*, %struct._cairo** %cr71, align 8
  call void @cairo_destroy(%struct._cairo* %75)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.66, %if.end.63
  ret void
}

declare void @gtk_main() #1

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_main_quit() #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @get_gradient(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %n_f_samples = alloca i32, align 4
  %f_samples = alloca double*, align 8
  %f_samp = alloca double*, align 8
  %lum = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  call void @free_colors()
  %call = call i8* @gimp_context_get_gradient()
  store i8* %call, i8** %name, align 8
  %0 = load i8*, i8** %name, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %1, -445
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @gimp_gradient_get_uniform_samples(i8* %0, i32 256, i32 %conv, i32* %n_f_samples, double** %f_samples)
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  store i32 0, i32* %lum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %lum, align 4
  %cmp2 = icmp slt i32 %3, 256
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %lum, align 4
  %mul = mul nsw i32 %4, 4
  %idxprom = sext i32 %mul to i64
  %5 = load double*, double** %f_samples, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  store double* %arrayidx, double** %f_samp, align 8
  %6 = load double*, double** %f_samp, align 8
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 0
  %7 = load double, double* %arrayidx4, align 8
  %mul5 = fmul double %7, 2.550000e+02
  %conv6 = fptoui double %mul5 to i8
  %8 = load i32, i32* %lum, align 4
  %mul7 = mul nsw i32 3, %8
  %add = add nsw i32 %mul7, 0
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom8
  store i8 %conv6, i8* %arrayidx9, align 1
  %9 = load double*, double** %f_samp, align 8
  %arrayidx10 = getelementptr inbounds double, double* %9, i64 1
  %10 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %10, 2.550000e+02
  %conv12 = fptoui double %mul11 to i8
  %11 = load i32, i32* %lum, align 4
  %mul13 = mul nsw i32 3, %11
  %add14 = add nsw i32 %mul13, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom15
  store i8 %conv12, i8* %arrayidx16, align 1
  %12 = load double*, double** %f_samp, align 8
  %arrayidx17 = getelementptr inbounds double, double* %12, i64 2
  %13 = load double, double* %arrayidx17, align 8
  %mul18 = fmul double %13, 2.550000e+02
  %conv19 = fptoui double %mul18 to i8
  %14 = load i32, i32* %lum, align 4
  %mul20 = mul nsw i32 3, %14
  %add21 = add nsw i32 %mul20, 2
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom22
  store i8 %conv19, i8* %arrayidx23, align 1
  %15 = load i32, i32* %lum, align 4
  %mul24 = mul nsw i32 3, %15
  %idxprom25 = sext i32 %mul24 to i64
  %arrayidx26 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom25
  %call27 = call %struct.t_samp_color_elem* @new_samp_color(i8* %arrayidx26)
  %16 = load i32, i32* %lum, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom28
  %col_ptr = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx29, i32 0, i32 2
  store %struct.t_samp_color_elem* %call27, %struct.t_samp_color_elem** %col_ptr, align 8
  %17 = load i32, i32* %lum, align 4
  %idxprom30 = sext i32 %17 to i64
  %arrayidx31 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom30
  %from_sample = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx31, i32 0, i32 1
  store i32 1, i32* %from_sample, align 4
  %18 = load i32, i32* %lum, align 4
  %idxprom32 = sext i32 %18 to i64
  %arrayidx33 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom32
  %all_samples = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx33, i32 0, i32 0
  store i32 1, i32* %all_samples, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %lum, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %lum, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load double*, double** %f_samples, align 8
  %21 = bitcast double* %20 to i8*
  call void @g_free(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_preview(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  call void @gimp_preview_area_fill(%struct._GimpPreviewArea* %2, i32 0, i32 0, i32 256, i32 256, i8 zeroext -86, i8 zeroext -86, i8 zeroext -86)
  ret void
}

declare i8* @gimp_context_get_gradient() #1

declare i32 @gimp_gradient_get_uniform_samples(i8*, i32, i32, i32*, double**) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.t_samp_color_elem* @new_samp_color(i8* %color) #0 {
entry:
  %color.addr = alloca i8*, align 8
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  store i8* %color, i8** %color.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %0, %struct.t_samp_color_elem** %col_ptr, align 8
  %1 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color1 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color1, i32 0, i64 0
  %2 = load i8*, i8** %color.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %2, i64 4, i32 1, i1 false)
  %3 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %3, i32 0, i32 1
  store i32 1, i32* %sum_color, align 4
  %4 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %4, i32 0, i32 2
  store i8* null, i8** %next, align 8
  %5 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  ret %struct.t_samp_color_elem* %5
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_preview_area_fill(%struct._GimpPreviewArea*, i32, i32, i32, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind uwtable
define internal void @refresh_dst_preview(%struct._GtkWidget* %preview, i8* %src_buffer) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %src_buffer.addr = alloca i8*, align 8
  %allrowsbuf = alloca [196608 x i8], align 16
  %ptr = alloca i8*, align 8
  %src_ptr = alloca i8*, align 8
  %lum = alloca i8, align 1
  %maskbyte = alloca i8, align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %preview_bpp = alloca i32, align 4
  %src_bpp = alloca i32, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i8* %src_buffer, i8** %src_buffer.addr, align 8
  store i32 3, i32* %preview_bpp, align 4
  store i32 4, i32* %src_bpp, align 4
  %0 = load i8*, i8** %src_buffer.addr, align 8
  store i8* %0, i8** %src_ptr, align 8
  %arraydecay = getelementptr inbounds [196608 x i8], [196608 x i8]* %allrowsbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %ptr, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %1 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %2, 256
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i8*, i8** %src_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 3
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %maskbyte, align 1
  %conv = zext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %5 = load i8*, i8** %src_ptr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx6, align 1
  %7 = load i8*, i8** %ptr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %6, i8* %arrayidx7, align 1
  %8 = load i8*, i8** %src_ptr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx8, align 1
  %10 = load i8*, i8** %ptr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %9, i8* %arrayidx9, align 1
  %11 = load i8*, i8** %src_ptr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx10, align 1
  %13 = load i8*, i8** %ptr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 %12, i8* %arrayidx11, align 1
  br label %if.end.70

if.else:                                          ; preds = %for.body.3
  %14 = load i32, i32* getelementptr inbounds (%struct.t_samp_interface, %struct.t_samp_interface* @g_di, i32 0, i32 19), align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  %15 = load i8*, i8** %ptr, align 8
  %16 = load i8*, i8** %src_ptr, align 8
  call void @remap_pixel(i8* %15, i8* %16, i32 3)
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %17 = load i8*, i8** %src_ptr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %mul = mul nsw i32 %conv15, 30
  %19 = load i8*, i8** %src_ptr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %20 to i32
  %mul18 = mul nsw i32 %conv17, 59
  %add = add nsw i32 %mul, %mul18
  %21 = load i8*, i8** %src_ptr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %22 to i32
  %mul21 = mul nsw i32 %conv20, 11
  %add22 = add nsw i32 %add, %mul21
  %div = sdiv i32 %add22, 100
  %idxprom = sext i32 %div to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @g_lvl_trans_tab, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx23, align 1
  store i8 %23, i8* %lum, align 1
  %24 = load i8, i8* %lum, align 1
  %25 = load i8*, i8** %ptr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %arrayidx24, align 1
  %26 = load i8, i8* %lum, align 1
  %27 = load i8*, i8** %ptr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %arrayidx25, align 1
  %28 = load i8, i8* %lum, align 1
  %29 = load i8*, i8** %ptr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %arrayidx26, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  %30 = load i8, i8* %maskbyte, align 1
  %conv27 = zext i8 %30 to i32
  %cmp28 = icmp slt i32 %conv27, 255
  br i1 %cmp28, label %if.then.30, label %if.end.69

if.then.30:                                       ; preds = %if.end
  %31 = load i8*, i8** %ptr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %32 to i32
  %33 = load i8, i8* %maskbyte, align 1
  %conv33 = zext i8 %33 to i32
  %mul34 = mul nsw i32 %conv32, %conv33
  %34 = load i8*, i8** %src_ptr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %35 to i32
  %36 = load i8, i8* %maskbyte, align 1
  %conv37 = zext i8 %36 to i32
  %sub = sub nsw i32 255, %conv37
  %mul38 = mul nsw i32 %conv36, %sub
  %add39 = add nsw i32 %mul34, %mul38
  %div40 = sdiv i32 %add39, 255
  %conv41 = trunc i32 %div40 to i8
  %37 = load i8*, i8** %ptr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %conv41, i8* %arrayidx42, align 1
  %38 = load i8*, i8** %ptr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %39 to i32
  %40 = load i8, i8* %maskbyte, align 1
  %conv45 = zext i8 %40 to i32
  %mul46 = mul nsw i32 %conv44, %conv45
  %41 = load i8*, i8** %src_ptr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %42 to i32
  %43 = load i8, i8* %maskbyte, align 1
  %conv49 = zext i8 %43 to i32
  %sub50 = sub nsw i32 255, %conv49
  %mul51 = mul nsw i32 %conv48, %sub50
  %add52 = add nsw i32 %mul46, %mul51
  %div53 = sdiv i32 %add52, 255
  %conv54 = trunc i32 %div53 to i8
  %44 = load i8*, i8** %ptr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %conv54, i8* %arrayidx55, align 1
  %45 = load i8*, i8** %ptr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %45, i64 2
  %46 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %46 to i32
  %47 = load i8, i8* %maskbyte, align 1
  %conv58 = zext i8 %47 to i32
  %mul59 = mul nsw i32 %conv57, %conv58
  %48 = load i8*, i8** %src_ptr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %49 to i32
  %50 = load i8, i8* %maskbyte, align 1
  %conv62 = zext i8 %50 to i32
  %sub63 = sub nsw i32 255, %conv62
  %mul64 = mul nsw i32 %conv61, %sub63
  %add65 = add nsw i32 %mul59, %mul64
  %div66 = sdiv i32 %add65, 255
  %conv67 = trunc i32 %div66 to i8
  %51 = load i8*, i8** %ptr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %51, i64 2
  store i8 %conv67, i8* %arrayidx68, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.30, %if.end
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then
  %52 = load i32, i32* %preview_bpp, align 4
  %53 = load i8*, i8** %ptr, align 8
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8
  %54 = load i32, i32* %src_bpp, align 4
  %55 = load i8*, i8** %src_ptr, align 8
  %idx.ext71 = sext i32 %54 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %55, i64 %idx.ext71
  store i8* %add.ptr72, i8** %src_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %56 = load i32, i32* %x, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end
  %57 = load i32, i32* %y, align 4
  %inc74 = add nsw i32 %57, 1
  store i32 %inc74, i32* %y, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call)
  %60 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpPreviewArea*
  %arraydecay77 = getelementptr inbounds [196608 x i8], [196608 x i8]* %allrowsbuf, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %60, i32 0, i32 0, i32 256, i32 256, i32 0, i8* %arraydecay77, i32 768)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @guess_missing_colors() #0 {
entry:
  %lum = alloca i32, align 4
  %idx = alloca i32, align 4
  %div = alloca float, align 4
  %lo_color = alloca [4 x i8], align 1
  %hi_color = alloca [4 x i8], align 1
  %new_color = alloca [4 x i8], align 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 1
  store i8 0, i8* %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 2
  store i8 0, i8* %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 3
  store i8 -1, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  store i8 -1, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 1
  store i8 -1, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 2
  store i8 -1, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 3
  store i8 -1, i8* %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  store i8 0, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 1
  store i8 0, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 2
  store i8 0, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 3
  store i8 -1, i8* %arrayidx11, align 1
  store i32 0, i32* %lum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %entry
  %0 = load i32, i32* %lum, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %lum, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx12 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %col_ptr = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx12, i32 0, i32 2
  %2 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp13 = icmp eq %struct.t_samp_color_elem* %2, null
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %lum, align 4
  %idxprom14 = sext i32 %3 to i64
  %arrayidx15 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom14
  %from_sample = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx15, i32 0, i32 1
  %4 = load i32, i32* %from_sample, align 4
  %cmp16 = icmp eq i32 %4, 0
  br i1 %cmp16, label %if.then, label %if.end.90

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %lum, align 4
  %cmp17 = icmp sgt i32 %5, 0
  br i1 %cmp17, label %if.then.18, label %if.end.78

if.then.18:                                       ; preds = %if.then
  %6 = load i32, i32* %lum, align 4
  store i32 %6, i32* %idx, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then.18
  %7 = load i32, i32* %idx, align 4
  %cmp20 = icmp slt i32 %7, 256
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %8 = load i32, i32* %idx, align 4
  %idxprom22 = sext i32 %8 to i64
  %arrayidx23 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom22
  %col_ptr24 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx23, i32 0, i32 2
  %9 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr24, align 8
  %cmp25 = icmp ne %struct.t_samp_color_elem* %9, null
  br i1 %cmp25, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.21
  %10 = load i32, i32* %idx, align 4
  %idxprom26 = sext i32 %10 to i64
  %arrayidx27 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom26
  %from_sample28 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx27, i32 0, i32 1
  %11 = load i32, i32* %from_sample28, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %land.lhs.true
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  %12 = load i32, i32* %idx, align 4
  %mul = mul nsw i32 3, %12
  %idxprom31 = sext i32 %mul to i64
  %arrayidx32 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx30, i8* %arrayidx32, i64 3, i32 1, i1 false)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body.21
  %13 = load i32, i32* %idx, align 4
  %cmp33 = icmp eq i32 %13, 255
  br i1 %cmp33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  store i8 -1, i8* %arrayidx35, align 1
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 1
  store i8 -1, i8* %arrayidx36, align 1
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 2
  store i8 -1, i8* %arrayidx37, align 1
  br label %for.end

if.end.38:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %14 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond.19

for.end:                                          ; preds = %if.then.34, %if.then.29, %for.cond.19
  %15 = load i32, i32* %idx, align 4
  %16 = load i32, i32* %lum, align 4
  %sub = sub nsw i32 %16, 1
  %sub39 = sub nsw i32 %15, %sub
  %conv = sitofp i32 %sub39 to float
  store float %conv, float* %div, align 4
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  %17 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %17 to i32
  %conv42 = sitofp i32 %conv41 to float
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  %18 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %18 to i32
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  %19 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %19 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %conv48 = sitofp i32 %sub47 to float
  %20 = load float, float* %div, align 4
  %div49 = fdiv float %conv48, %20
  %add = fadd float %conv42, %div49
  %conv50 = fptoui float %add to i8
  %arrayidx51 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  store i8 %conv50, i8* %arrayidx51, align 1
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 1
  %21 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %21 to i32
  %conv54 = sitofp i32 %conv53 to float
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 1
  %22 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %22 to i32
  %arrayidx57 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 1
  %23 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %23 to i32
  %sub59 = sub nsw i32 %conv56, %conv58
  %conv60 = sitofp i32 %sub59 to float
  %24 = load float, float* %div, align 4
  %div61 = fdiv float %conv60, %24
  %add62 = fadd float %conv54, %div61
  %conv63 = fptoui float %add62 to i8
  %arrayidx64 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 1
  store i8 %conv63, i8* %arrayidx64, align 1
  %arrayidx65 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 2
  %25 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %25 to i32
  %conv67 = sitofp i32 %conv66 to float
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 2
  %26 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %26 to i32
  %arrayidx70 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 2
  %27 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %27 to i32
  %sub72 = sub nsw i32 %conv69, %conv71
  %conv73 = sitofp i32 %sub72 to float
  %28 = load float, float* %div, align 4
  %div74 = fdiv float %conv73, %28
  %add75 = fadd float %conv67, %div74
  %conv76 = fptoui float %add75 to i8
  %arrayidx77 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 2
  store i8 %conv76, i8* %arrayidx77, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %for.end, %if.then
  %arrayidx79 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  %call = call %struct.t_samp_color_elem* @new_samp_color(i8* %arrayidx79)
  %29 = load i32, i32* %lum, align 4
  %idxprom80 = sext i32 %29 to i64
  %arrayidx81 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom80
  %col_ptr82 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx81, i32 0, i32 2
  store %struct.t_samp_color_elem* %call, %struct.t_samp_color_elem** %col_ptr82, align 8
  %30 = load i32, i32* %lum, align 4
  %idxprom83 = sext i32 %30 to i64
  %arrayidx84 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom83
  %from_sample85 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx84, i32 0, i32 1
  store i32 0, i32* %from_sample85, align 4
  %31 = load i32, i32* %lum, align 4
  %mul86 = mul nsw i32 3, %31
  %idxprom87 = sext i32 %mul86 to i64
  %arrayidx88 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx88, i8* %arrayidx89, i64 3, i32 1, i1 false)
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.78, %lor.lhs.false
  %arrayidx91 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  %32 = load i32, i32* %lum, align 4
  %mul92 = mul nsw i32 3, %32
  %idxprom93 = sext i32 %mul92 to i64
  %arrayidx94 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx91, i8* %arrayidx94, i64 3, i32 1, i1 false)
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.90
  %33 = load i32, i32* %lum, align 4
  %inc96 = add nsw i32 %33, 1
  store i32 %inc96, i32* %lum, align 4
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fill_missing_colors() #0 {
entry:
  %lum = alloca i32, align 4
  %idx = alloca i32, align 4
  %lo_idx = alloca i32, align 4
  %lo_color = alloca [4 x i8], align 1
  %hi_color = alloca [4 x i8], align 1
  %new_color = alloca [4 x i8], align 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 1
  store i8 0, i8* %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 2
  store i8 0, i8* %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 3
  store i8 -1, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  store i8 -1, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 1
  store i8 -1, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 2
  store i8 -1, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 3
  store i8 -1, i8* %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  store i8 0, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 1
  store i8 0, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 2
  store i8 0, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 3
  store i8 -1, i8* %arrayidx11, align 1
  store i32 0, i32* %lo_idx, align 4
  store i32 0, i32* %lum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %0 = load i32, i32* %lum, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %lum, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx12 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %col_ptr = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx12, i32 0, i32 2
  %2 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp13 = icmp eq %struct.t_samp_color_elem* %2, null
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %lum, align 4
  %idxprom14 = sext i32 %3 to i64
  %arrayidx15 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom14
  %from_sample = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx15, i32 0, i32 1
  %4 = load i32, i32* %from_sample, align 4
  %cmp16 = icmp eq i32 %4, 0
  br i1 %cmp16, label %if.then, label %if.else.67

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %lum, align 4
  %cmp17 = icmp sgt i32 %5, 0
  br i1 %cmp17, label %if.then.18, label %if.end.55

if.then.18:                                       ; preds = %if.then
  %6 = load i32, i32* %lum, align 4
  store i32 %6, i32* %idx, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then.18
  %7 = load i32, i32* %idx, align 4
  %cmp20 = icmp slt i32 %7, 256
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %8 = load i32, i32* %idx, align 4
  %idxprom22 = sext i32 %8 to i64
  %arrayidx23 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom22
  %col_ptr24 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx23, i32 0, i32 2
  %9 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr24, align 8
  %cmp25 = icmp ne %struct.t_samp_color_elem* %9, null
  br i1 %cmp25, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.21
  %10 = load i32, i32* %idx, align 4
  %idxprom26 = sext i32 %10 to i64
  %arrayidx27 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom26
  %from_sample28 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx27, i32 0, i32 1
  %11 = load i32, i32* %from_sample28, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %land.lhs.true
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  %12 = load i32, i32* %idx, align 4
  %mul = mul nsw i32 3, %12
  %idxprom31 = sext i32 %mul to i64
  %arrayidx32 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx30, i8* %arrayidx32, i64 3, i32 1, i1 false)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body.21
  %13 = load i32, i32* %idx, align 4
  %cmp33 = icmp eq i32 %13, 255
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx35, i8* %arrayidx36, i64 3, i32 1, i1 false)
  br label %for.end

if.end.37:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %14 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond.19

for.end:                                          ; preds = %if.then.34, %if.then.29, %for.cond.19
  %15 = load i32, i32* %lum, align 4
  %16 = load i32, i32* %lo_idx, align 4
  %17 = load i32, i32* %idx, align 4
  %18 = load i32, i32* %lo_idx, align 4
  %sub = sub nsw i32 %17, %18
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %16, %div
  %cmp38 = icmp sgt i32 %15, %add
  br i1 %cmp38, label %if.then.41, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %for.end
  %19 = load i32, i32* %lo_idx, align 4
  %cmp40 = icmp eq i32 %19, 0
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %lor.lhs.false.39, %for.end
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 0
  %20 = load i8, i8* %arrayidx42, align 1
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  store i8 %20, i8* %arrayidx43, align 1
  %arrayidx44 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 1
  %21 = load i8, i8* %arrayidx44, align 1
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 1
  store i8 %21, i8* %arrayidx45, align 1
  %arrayidx46 = getelementptr inbounds [4 x i8], [4 x i8]* %hi_color, i32 0, i64 2
  %22 = load i8, i8* %arrayidx46, align 1
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 2
  store i8 %22, i8* %arrayidx47, align 1
  br label %if.end.54

if.else:                                          ; preds = %lor.lhs.false.39
  %arrayidx48 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  %23 = load i8, i8* %arrayidx48, align 1
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  store i8 %23, i8* %arrayidx49, align 1
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 1
  %24 = load i8, i8* %arrayidx50, align 1
  %arrayidx51 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 1
  store i8 %24, i8* %arrayidx51, align 1
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 2
  %25 = load i8, i8* %arrayidx52, align 1
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 2
  store i8 %25, i8* %arrayidx53, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.41
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then
  %arrayidx56 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  %call = call %struct.t_samp_color_elem* @new_samp_color(i8* %arrayidx56)
  %26 = load i32, i32* %lum, align 4
  %idxprom57 = sext i32 %26 to i64
  %arrayidx58 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom57
  %col_ptr59 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx58, i32 0, i32 2
  store %struct.t_samp_color_elem* %call, %struct.t_samp_color_elem** %col_ptr59, align 8
  %27 = load i32, i32* %lum, align 4
  %idxprom60 = sext i32 %27 to i64
  %arrayidx61 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom60
  %from_sample62 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx61, i32 0, i32 1
  store i32 0, i32* %from_sample62, align 4
  %28 = load i32, i32* %lum, align 4
  %mul63 = mul nsw i32 3, %28
  %idxprom64 = sext i32 %mul63 to i64
  %arrayidx65 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %new_color, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx65, i8* %arrayidx66, i64 3, i32 1, i1 false)
  br label %if.end.72

if.else.67:                                       ; preds = %lor.lhs.false
  %29 = load i32, i32* %lum, align 4
  store i32 %29, i32* %lo_idx, align 4
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %lo_color, i32 0, i64 0
  %30 = load i32, i32* %lum, align 4
  %mul69 = mul nsw i32 3, %30
  %idxprom70 = sext i32 %mul69 to i64
  %arrayidx71 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom70
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx68, i8* %arrayidx71, i64 3, i32 1, i1 false)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.67, %if.end.55
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %31 = load i32, i32* %lum, align 4
  %inc74 = add nsw i32 %31, 1
  store i32 %inc74, i32* %lum, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remap_pixel(i8* %pixel, i8* %original, i32 %bpp2) #0 {
entry:
  %pixel.addr = alloca i8*, align 8
  %original.addr = alloca i8*, align 8
  %bpp2.addr = alloca i32, align 4
  %mapped_color = alloca [4 x i8], align 1
  %lum = alloca i32, align 4
  %orig_lum = alloca double, align 8
  %mapped_lum = alloca double, align 8
  %grn = alloca double, align 8
  %red = alloca double, align 8
  %blu = alloca double, align 8
  %mg = alloca double, align 8
  %mr = alloca double, align 8
  %mb = alloca double, align 8
  %dg = alloca double, align 8
  %dr = alloca double, align 8
  %db = alloca double, align 8
  %dlum = alloca double, align 8
  store i8* %pixel, i8** %pixel.addr, align 8
  store i8* %original, i8** %original.addr, align 8
  store i32 %bpp2, i32* %bpp2.addr, align 4
  %0 = load i8*, i8** %original.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nsw i32 %conv, 30
  %2 = load i8*, i8** %original.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %mul3 = mul nsw i32 %conv2, 59
  %add = add nsw i32 %mul, %mul3
  %4 = load i8*, i8** %original.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %mul6 = mul nsw i32 %conv5, 11
  %add7 = add nsw i32 %add, %mul6
  %div = sdiv i32 %add7, 100
  %idxprom = sext i32 %div to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @g_lvl_trans_tab, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx8, align 1
  %idxprom9 = zext i8 %6 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @g_out_trans_tab, i32 0, i64 %idxprom9
  %7 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %7 to i32
  store i32 %conv11, i32* %lum, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 4), align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %lum, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i32 0
  call void @rnd_remap(i32 %9, i8* %arraydecay)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = bitcast [4 x i8]* %mapped_color to i8*
  %11 = load i32, i32* %lum, align 4
  %mul12 = mul nsw i32 3, %11
  %idxprom13 = sext i32 %mul12 to i64
  %arrayidx14 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %arrayidx14, i64 3, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2), align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.then.16, label %if.end.322

if.then.16:                                       ; preds = %if.end
  %13 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 3), align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.then.18, label %if.else.31

if.then.18:                                       ; preds = %if.then.16
  %14 = load i8*, i8** %original.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %mul21 = mul nsw i32 %conv20, 30
  %16 = load i8*, i8** %original.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %mul24 = mul nsw i32 %conv23, 59
  %add25 = add nsw i32 %mul21, %mul24
  %18 = load i8*, i8** %original.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %19 to i32
  %mul28 = mul nsw i32 %conv27, 11
  %add29 = add nsw i32 %add25, %mul28
  %conv30 = sitofp i32 %add29 to double
  store double %conv30, double* %orig_lum, align 8
  br label %if.end.49

if.else.31:                                       ; preds = %if.then.16
  %20 = load i8*, i8** %original.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %21 to i32
  %mul34 = mul nsw i32 %conv33, 30
  %22 = load i8*, i8** %original.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %23 to i32
  %mul37 = mul nsw i32 %conv36, 59
  %add38 = add nsw i32 %mul34, %mul37
  %24 = load i8*, i8** %original.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %25 to i32
  %mul41 = mul nsw i32 %conv40, 11
  %add42 = add nsw i32 %add38, %mul41
  %div43 = sdiv i32 %add42, 100
  %idxprom44 = sext i32 %div43 to i64
  %arrayidx45 = getelementptr inbounds [256 x i8], [256 x i8]* @g_lvl_trans_tab, i32 0, i64 %idxprom44
  %26 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %26 to i32
  %conv47 = sitofp i32 %conv46 to double
  %mul48 = fmul double 1.000000e+02, %conv47
  store double %mul48, double* %orig_lum, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.31, %if.then.18
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 0
  %27 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %27 to i32
  %mul52 = mul nsw i32 %conv51, 30
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 1
  %28 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %28 to i32
  %mul55 = mul nsw i32 %conv54, 59
  %add56 = add nsw i32 %mul52, %mul55
  %arrayidx57 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 2
  %29 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %29 to i32
  %mul59 = mul nsw i32 %conv58, 11
  %add60 = add nsw i32 %add56, %mul59
  %conv61 = sitofp i32 %add60 to double
  store double %conv61, double* %mapped_lum, align 8
  %30 = load double, double* %mapped_lum, align 8
  %cmp = fcmp oeq double %30, 0.000000e+00
  br i1 %cmp, label %if.then.63, label %if.else.71

if.then.63:                                       ; preds = %if.end.49
  %31 = load double, double* %orig_lum, align 8
  %div64 = fdiv double %31, 1.000000e+02
  %conv65 = fptoui double %div64 to i8
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 0
  store i8 %conv65, i8* %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 0
  %32 = load i8, i8* %arrayidx67, align 1
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 1
  store i8 %32, i8* %arrayidx68, align 1
  %arrayidx69 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 0
  %33 = load i8, i8* %arrayidx69, align 1
  %arrayidx70 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 2
  store i8 %33, i8* %arrayidx70, align 1
  br label %if.end.321

if.else.71:                                       ; preds = %if.end.49
  %arrayidx72 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 0
  %34 = load i8, i8* %arrayidx72, align 1
  %conv73 = uitofp i8 %34 to double
  store double %conv73, double* %mr, align 8
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 1
  %35 = load i8, i8* %arrayidx74, align 1
  %conv75 = uitofp i8 %35 to double
  store double %conv75, double* %mg, align 8
  %arrayidx76 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 2
  %36 = load i8, i8* %arrayidx76, align 1
  %conv77 = uitofp i8 %36 to double
  store double %conv77, double* %mb, align 8
  %37 = load double, double* %mr, align 8
  %cmp78 = fcmp ogt double %37, 0.000000e+00
  br i1 %cmp78, label %if.then.80, label %if.else.92

if.then.80:                                       ; preds = %if.else.71
  %38 = load double, double* %orig_lum, align 8
  %39 = load double, double* %mg, align 8
  %mul81 = fmul double 5.900000e+01, %39
  %40 = load double, double* %mr, align 8
  %div82 = fdiv double %mul81, %40
  %add83 = fadd double 3.000000e+01, %div82
  %41 = load double, double* %mb, align 8
  %mul84 = fmul double 1.100000e+01, %41
  %42 = load double, double* %mr, align 8
  %div85 = fdiv double %mul84, %42
  %add86 = fadd double %add83, %div85
  %div87 = fdiv double %38, %add86
  store double %div87, double* %red, align 8
  %43 = load double, double* %mg, align 8
  %44 = load double, double* %red, align 8
  %mul88 = fmul double %43, %44
  %45 = load double, double* %mr, align 8
  %div89 = fdiv double %mul88, %45
  store double %div89, double* %grn, align 8
  %46 = load double, double* %mb, align 8
  %47 = load double, double* %red, align 8
  %mul90 = fmul double %46, %47
  %48 = load double, double* %mr, align 8
  %div91 = fdiv double %mul90, %48
  store double %div91, double* %blu, align 8
  br label %if.end.120

if.else.92:                                       ; preds = %if.else.71
  %49 = load double, double* %mg, align 8
  %cmp93 = fcmp ogt double %49, 0.000000e+00
  br i1 %cmp93, label %if.then.95, label %if.else.107

if.then.95:                                       ; preds = %if.else.92
  %50 = load double, double* %orig_lum, align 8
  %51 = load double, double* %mr, align 8
  %mul96 = fmul double 3.000000e+01, %51
  %52 = load double, double* %mg, align 8
  %div97 = fdiv double %mul96, %52
  %add98 = fadd double %div97, 5.900000e+01
  %53 = load double, double* %mb, align 8
  %mul99 = fmul double 1.100000e+01, %53
  %54 = load double, double* %mg, align 8
  %div100 = fdiv double %mul99, %54
  %add101 = fadd double %add98, %div100
  %div102 = fdiv double %50, %add101
  store double %div102, double* %grn, align 8
  %55 = load double, double* %mr, align 8
  %56 = load double, double* %grn, align 8
  %mul103 = fmul double %55, %56
  %57 = load double, double* %mg, align 8
  %div104 = fdiv double %mul103, %57
  store double %div104, double* %red, align 8
  %58 = load double, double* %mb, align 8
  %59 = load double, double* %grn, align 8
  %mul105 = fmul double %58, %59
  %60 = load double, double* %mg, align 8
  %div106 = fdiv double %mul105, %60
  store double %div106, double* %blu, align 8
  br label %if.end.119

if.else.107:                                      ; preds = %if.else.92
  %61 = load double, double* %orig_lum, align 8
  %62 = load double, double* %mr, align 8
  %mul108 = fmul double 3.000000e+01, %62
  %63 = load double, double* %mb, align 8
  %div109 = fdiv double %mul108, %63
  %64 = load double, double* %mg, align 8
  %mul110 = fmul double 5.900000e+01, %64
  %65 = load double, double* %mb, align 8
  %div111 = fdiv double %mul110, %65
  %add112 = fadd double %div109, %div111
  %add113 = fadd double %add112, 1.100000e+01
  %div114 = fdiv double %61, %add113
  store double %div114, double* %blu, align 8
  %66 = load double, double* %mg, align 8
  %67 = load double, double* %blu, align 8
  %mul115 = fmul double %66, %67
  %68 = load double, double* %mb, align 8
  %div116 = fdiv double %mul115, %68
  store double %div116, double* %grn, align 8
  %69 = load double, double* %mr, align 8
  %70 = load double, double* %blu, align 8
  %mul117 = fmul double %69, %70
  %71 = load double, double* %mb, align 8
  %div118 = fdiv double %mul117, %71
  store double %div118, double* %red, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.107, %if.then.95
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.80
  %72 = load double, double* %red, align 8
  %cmp121 = fcmp ogt double %72, 2.550000e+02
  br i1 %cmp121, label %if.then.123, label %if.else.169

if.then.123:                                      ; preds = %if.end.120
  %73 = load double, double* %blu, align 8
  %cmp124 = fcmp olt double %73, 2.550000e+02
  br i1 %cmp124, label %land.lhs.true, label %if.end.156

land.lhs.true:                                    ; preds = %if.then.123
  %74 = load double, double* %grn, align 8
  %cmp126 = fcmp olt double %74, 2.550000e+02
  br i1 %cmp126, label %if.then.128, label %if.end.156

if.then.128:                                      ; preds = %land.lhs.true
  %75 = load double, double* %red, align 8
  %sub = fsub double %75, 2.550000e+02
  %mul129 = fmul double %sub, 3.000000e+01
  store double %mul129, double* %dlum, align 8
  %76 = load double, double* %mg, align 8
  %cmp130 = fcmp ogt double %76, 0.000000e+00
  br i1 %cmp130, label %if.then.132, label %if.else.139

if.then.132:                                      ; preds = %if.then.128
  %77 = load double, double* %dlum, align 8
  %78 = load double, double* %mb, align 8
  %mul133 = fmul double 1.100000e+01, %78
  %79 = load double, double* %mg, align 8
  %div134 = fdiv double %mul133, %79
  %add135 = fadd double 5.900000e+01, %div134
  %div136 = fdiv double %77, %add135
  store double %div136, double* %dg, align 8
  %80 = load double, double* %dg, align 8
  %81 = load double, double* %mb, align 8
  %mul137 = fmul double %80, %81
  %82 = load double, double* %mg, align 8
  %div138 = fdiv double %mul137, %82
  store double %div138, double* %db, align 8
  br label %if.end.153

if.else.139:                                      ; preds = %if.then.128
  %83 = load double, double* %mb, align 8
  %cmp140 = fcmp ogt double %83, 0.000000e+00
  br i1 %cmp140, label %if.then.142, label %if.else.149

if.then.142:                                      ; preds = %if.else.139
  %84 = load double, double* %dlum, align 8
  %85 = load double, double* %mg, align 8
  %mul143 = fmul double 5.900000e+01, %85
  %86 = load double, double* %mb, align 8
  %div144 = fdiv double %mul143, %86
  %add145 = fadd double 1.100000e+01, %div144
  %div146 = fdiv double %84, %add145
  store double %div146, double* %db, align 8
  %87 = load double, double* %db, align 8
  %88 = load double, double* %mg, align 8
  %mul147 = fmul double %87, %88
  %89 = load double, double* %mb, align 8
  %div148 = fdiv double %mul147, %89
  store double %div148, double* %dg, align 8
  br label %if.end.152

if.else.149:                                      ; preds = %if.else.139
  %90 = load double, double* %dlum, align 8
  %div150 = fdiv double %90, 7.000000e+01
  store double %div150, double* %db, align 8
  %91 = load double, double* %dlum, align 8
  %div151 = fdiv double %91, 7.000000e+01
  store double %div151, double* %dg, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.142
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.132
  %92 = load double, double* %dg, align 8
  %93 = load double, double* %grn, align 8
  %add154 = fadd double %93, %92
  store double %add154, double* %grn, align 8
  %94 = load double, double* %db, align 8
  %95 = load double, double* %blu, align 8
  %add155 = fadd double %95, %94
  store double %add155, double* %blu, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.153, %land.lhs.true, %if.then.123
  store double 2.550000e+02, double* %red, align 8
  %96 = load double, double* %grn, align 8
  %cmp157 = fcmp ogt double %96, 2.550000e+02
  br i1 %cmp157, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %if.end.156
  store double 2.550000e+02, double* %grn, align 8
  %97 = load double, double* %orig_lum, align 8
  %sub160 = fsub double %97, 2.269500e+04
  %div161 = fdiv double %sub160, 1.100000e+01
  store double %div161, double* %blu, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %if.end.156
  %98 = load double, double* %blu, align 8
  %cmp163 = fcmp ogt double %98, 2.550000e+02
  br i1 %cmp163, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %if.end.162
  store double 2.550000e+02, double* %blu, align 8
  %99 = load double, double* %orig_lum, align 8
  %sub166 = fsub double %99, 1.045500e+04
  %div167 = fdiv double %sub166, 5.900000e+01
  store double %div167, double* %grn, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %if.end.162
  br label %if.end.273

if.else.169:                                      ; preds = %if.end.120
  %100 = load double, double* %grn, align 8
  %cmp170 = fcmp ogt double %100, 2.550000e+02
  br i1 %cmp170, label %if.then.172, label %if.else.220

if.then.172:                                      ; preds = %if.else.169
  %101 = load double, double* %blu, align 8
  %cmp173 = fcmp olt double %101, 2.550000e+02
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.207

land.lhs.true.175:                                ; preds = %if.then.172
  %102 = load double, double* %red, align 8
  %cmp176 = fcmp olt double %102, 2.550000e+02
  br i1 %cmp176, label %if.then.178, label %if.end.207

if.then.178:                                      ; preds = %land.lhs.true.175
  %103 = load double, double* %grn, align 8
  %sub179 = fsub double %103, 2.550000e+02
  %mul180 = fmul double %sub179, 5.900000e+01
  store double %mul180, double* %dlum, align 8
  %104 = load double, double* %mr, align 8
  %cmp181 = fcmp ogt double %104, 0.000000e+00
  br i1 %cmp181, label %if.then.183, label %if.else.190

if.then.183:                                      ; preds = %if.then.178
  %105 = load double, double* %dlum, align 8
  %106 = load double, double* %mb, align 8
  %mul184 = fmul double 1.100000e+01, %106
  %107 = load double, double* %mr, align 8
  %div185 = fdiv double %mul184, %107
  %add186 = fadd double 3.000000e+01, %div185
  %div187 = fdiv double %105, %add186
  store double %div187, double* %dr, align 8
  %108 = load double, double* %dr, align 8
  %109 = load double, double* %mb, align 8
  %mul188 = fmul double %108, %109
  %110 = load double, double* %mr, align 8
  %div189 = fdiv double %mul188, %110
  store double %div189, double* %db, align 8
  br label %if.end.204

if.else.190:                                      ; preds = %if.then.178
  %111 = load double, double* %mb, align 8
  %cmp191 = fcmp ogt double %111, 0.000000e+00
  br i1 %cmp191, label %if.then.193, label %if.else.200

if.then.193:                                      ; preds = %if.else.190
  %112 = load double, double* %dlum, align 8
  %113 = load double, double* %mr, align 8
  %mul194 = fmul double 3.000000e+01, %113
  %114 = load double, double* %mb, align 8
  %div195 = fdiv double %mul194, %114
  %add196 = fadd double 1.100000e+01, %div195
  %div197 = fdiv double %112, %add196
  store double %div197, double* %db, align 8
  %115 = load double, double* %db, align 8
  %116 = load double, double* %mr, align 8
  %mul198 = fmul double %115, %116
  %117 = load double, double* %mb, align 8
  %div199 = fdiv double %mul198, %117
  store double %div199, double* %dr, align 8
  br label %if.end.203

if.else.200:                                      ; preds = %if.else.190
  %118 = load double, double* %dlum, align 8
  %div201 = fdiv double %118, 4.100000e+01
  store double %div201, double* %db, align 8
  %119 = load double, double* %dlum, align 8
  %div202 = fdiv double %119, 4.100000e+01
  store double %div202, double* %dr, align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.200, %if.then.193
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.183
  %120 = load double, double* %dr, align 8
  %121 = load double, double* %red, align 8
  %add205 = fadd double %121, %120
  store double %add205, double* %red, align 8
  %122 = load double, double* %db, align 8
  %123 = load double, double* %blu, align 8
  %add206 = fadd double %123, %122
  store double %add206, double* %blu, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.204, %land.lhs.true.175, %if.then.172
  store double 2.550000e+02, double* %grn, align 8
  %124 = load double, double* %red, align 8
  %cmp208 = fcmp ogt double %124, 2.550000e+02
  br i1 %cmp208, label %if.then.210, label %if.end.213

if.then.210:                                      ; preds = %if.end.207
  store double 2.550000e+02, double* %red, align 8
  %125 = load double, double* %orig_lum, align 8
  %sub211 = fsub double %125, 2.269500e+04
  %div212 = fdiv double %sub211, 1.100000e+01
  store double %div212, double* %blu, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.210, %if.end.207
  %126 = load double, double* %blu, align 8
  %cmp214 = fcmp ogt double %126, 2.550000e+02
  br i1 %cmp214, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %if.end.213
  store double 2.550000e+02, double* %blu, align 8
  %127 = load double, double* %orig_lum, align 8
  %sub217 = fsub double %127, 1.785000e+04
  %div218 = fdiv double %sub217, 3.000000e+01
  store double %div218, double* %red, align 8
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %if.end.213
  br label %if.end.272

if.else.220:                                      ; preds = %if.else.169
  %128 = load double, double* %blu, align 8
  %cmp221 = fcmp ogt double %128, 2.550000e+02
  br i1 %cmp221, label %if.then.223, label %if.end.271

if.then.223:                                      ; preds = %if.else.220
  %129 = load double, double* %red, align 8
  %cmp224 = fcmp olt double %129, 2.550000e+02
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.258

land.lhs.true.226:                                ; preds = %if.then.223
  %130 = load double, double* %grn, align 8
  %cmp227 = fcmp olt double %130, 2.550000e+02
  br i1 %cmp227, label %if.then.229, label %if.end.258

if.then.229:                                      ; preds = %land.lhs.true.226
  %131 = load double, double* %blu, align 8
  %sub230 = fsub double %131, 2.550000e+02
  %mul231 = fmul double %sub230, 1.100000e+01
  store double %mul231, double* %dlum, align 8
  %132 = load double, double* %mg, align 8
  %cmp232 = fcmp ogt double %132, 0.000000e+00
  br i1 %cmp232, label %if.then.234, label %if.else.241

if.then.234:                                      ; preds = %if.then.229
  %133 = load double, double* %dlum, align 8
  %134 = load double, double* %mr, align 8
  %mul235 = fmul double 3.000000e+01, %134
  %135 = load double, double* %mg, align 8
  %div236 = fdiv double %mul235, %135
  %add237 = fadd double 5.900000e+01, %div236
  %div238 = fdiv double %133, %add237
  store double %div238, double* %dg, align 8
  %136 = load double, double* %dg, align 8
  %137 = load double, double* %mr, align 8
  %mul239 = fmul double %136, %137
  %138 = load double, double* %mg, align 8
  %div240 = fdiv double %mul239, %138
  store double %div240, double* %dr, align 8
  br label %if.end.255

if.else.241:                                      ; preds = %if.then.229
  %139 = load double, double* %mr, align 8
  %cmp242 = fcmp ogt double %139, 0.000000e+00
  br i1 %cmp242, label %if.then.244, label %if.else.251

if.then.244:                                      ; preds = %if.else.241
  %140 = load double, double* %dlum, align 8
  %141 = load double, double* %mg, align 8
  %mul245 = fmul double 5.900000e+01, %141
  %142 = load double, double* %mr, align 8
  %div246 = fdiv double %mul245, %142
  %add247 = fadd double 3.000000e+01, %div246
  %div248 = fdiv double %140, %add247
  store double %div248, double* %dr, align 8
  %143 = load double, double* %dr, align 8
  %144 = load double, double* %mg, align 8
  %mul249 = fmul double %143, %144
  %145 = load double, double* %mr, align 8
  %div250 = fdiv double %mul249, %145
  store double %div250, double* %dg, align 8
  br label %if.end.254

if.else.251:                                      ; preds = %if.else.241
  %146 = load double, double* %dlum, align 8
  %div252 = fdiv double %146, 8.900000e+01
  store double %div252, double* %dr, align 8
  %147 = load double, double* %dlum, align 8
  %div253 = fdiv double %147, 8.900000e+01
  store double %div253, double* %dg, align 8
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.251, %if.then.244
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.then.234
  %148 = load double, double* %dg, align 8
  %149 = load double, double* %grn, align 8
  %add256 = fadd double %149, %148
  store double %add256, double* %grn, align 8
  %150 = load double, double* %dr, align 8
  %151 = load double, double* %red, align 8
  %add257 = fadd double %151, %150
  store double %add257, double* %red, align 8
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.255, %land.lhs.true.226, %if.then.223
  store double 2.550000e+02, double* %blu, align 8
  %152 = load double, double* %grn, align 8
  %cmp259 = fcmp ogt double %152, 2.550000e+02
  br i1 %cmp259, label %if.then.261, label %if.end.264

if.then.261:                                      ; preds = %if.end.258
  store double 2.550000e+02, double* %grn, align 8
  %153 = load double, double* %orig_lum, align 8
  %sub262 = fsub double %153, 1.785000e+04
  %div263 = fdiv double %sub262, 3.000000e+01
  store double %div263, double* %red, align 8
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.261, %if.end.258
  %154 = load double, double* %red, align 8
  %cmp265 = fcmp ogt double %154, 2.550000e+02
  br i1 %cmp265, label %if.then.267, label %if.end.270

if.then.267:                                      ; preds = %if.end.264
  store double 2.550000e+02, double* %red, align 8
  %155 = load double, double* %orig_lum, align 8
  %sub268 = fsub double %155, 1.045500e+04
  %div269 = fdiv double %sub268, 5.900000e+01
  store double %div269, double* %grn, align 8
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.267, %if.end.264
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.else.220
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.219
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.end.168
  %156 = load double, double* %red, align 8
  %add274 = fadd double %156, 5.000000e-01
  %cmp275 = fcmp ogt double %add274, 2.550000e+02
  br i1 %cmp275, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.273
  br label %cond.end.283

cond.false:                                       ; preds = %if.end.273
  %157 = load double, double* %red, align 8
  %add277 = fadd double %157, 5.000000e-01
  %cmp278 = fcmp olt double %add277, 0.000000e+00
  br i1 %cmp278, label %cond.true.280, label %cond.false.281

cond.true.280:                                    ; preds = %cond.false
  br label %cond.end

cond.false.281:                                   ; preds = %cond.false
  %158 = load double, double* %red, align 8
  %add282 = fadd double %158, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false.281, %cond.true.280
  %cond = phi double [ 0.000000e+00, %cond.true.280 ], [ %add282, %cond.false.281 ]
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.end, %cond.true
  %cond284 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv285 = fptoui double %cond284 to i8
  %arrayidx286 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 0
  store i8 %conv285, i8* %arrayidx286, align 1
  %159 = load double, double* %grn, align 8
  %add287 = fadd double %159, 5.000000e-01
  %cmp288 = fcmp ogt double %add287, 2.550000e+02
  br i1 %cmp288, label %cond.true.290, label %cond.false.291

cond.true.290:                                    ; preds = %cond.end.283
  br label %cond.end.300

cond.false.291:                                   ; preds = %cond.end.283
  %160 = load double, double* %grn, align 8
  %add292 = fadd double %160, 5.000000e-01
  %cmp293 = fcmp olt double %add292, 0.000000e+00
  br i1 %cmp293, label %cond.true.295, label %cond.false.296

cond.true.295:                                    ; preds = %cond.false.291
  br label %cond.end.298

cond.false.296:                                   ; preds = %cond.false.291
  %161 = load double, double* %grn, align 8
  %add297 = fadd double %161, 5.000000e-01
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.296, %cond.true.295
  %cond299 = phi double [ 0.000000e+00, %cond.true.295 ], [ %add297, %cond.false.296 ]
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.end.298, %cond.true.290
  %cond301 = phi double [ 2.550000e+02, %cond.true.290 ], [ %cond299, %cond.end.298 ]
  %conv302 = fptoui double %cond301 to i8
  %arrayidx303 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 1
  store i8 %conv302, i8* %arrayidx303, align 1
  %162 = load double, double* %blu, align 8
  %add304 = fadd double %162, 5.000000e-01
  %cmp305 = fcmp ogt double %add304, 2.550000e+02
  br i1 %cmp305, label %cond.true.307, label %cond.false.308

cond.true.307:                                    ; preds = %cond.end.300
  br label %cond.end.317

cond.false.308:                                   ; preds = %cond.end.300
  %163 = load double, double* %blu, align 8
  %add309 = fadd double %163, 5.000000e-01
  %cmp310 = fcmp olt double %add309, 0.000000e+00
  br i1 %cmp310, label %cond.true.312, label %cond.false.313

cond.true.312:                                    ; preds = %cond.false.308
  br label %cond.end.315

cond.false.313:                                   ; preds = %cond.false.308
  %164 = load double, double* %blu, align 8
  %add314 = fadd double %164, 5.000000e-01
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.313, %cond.true.312
  %cond316 = phi double [ 0.000000e+00, %cond.true.312 ], [ %add314, %cond.false.313 ]
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.end.315, %cond.true.307
  %cond318 = phi double [ 2.550000e+02, %cond.true.307 ], [ %cond316, %cond.end.315 ]
  %conv319 = fptoui double %cond318 to i8
  %arrayidx320 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 2
  store i8 %conv319, i8* %arrayidx320, align 1
  br label %if.end.321

if.end.321:                                       ; preds = %cond.end.317, %if.then.63
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end
  %165 = load i8*, i8** %pixel.addr, align 8
  %arrayidx323 = getelementptr inbounds [4 x i8], [4 x i8]* %mapped_color, i32 0, i64 0
  %166 = load i32, i32* %bpp2.addr, align 4
  %conv324 = sext i32 %166 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %arrayidx323, i64 %conv324, i32 1, i1 false)
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @rnd_remap(i32 %lum, i8* %mapped_color) #0 {
entry:
  %lum.addr = alloca i32, align 4
  %mapped_color.addr = alloca i8*, align 8
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  %rnd = alloca i32, align 4
  %ct = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32 %lum, i32* %lum.addr, align 4
  store i8* %mapped_color, i8** %mapped_color.addr, align 8
  %0 = load i32, i32* %lum.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %all_samples = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %all_samples, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %lum.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom1
  %all_samples3 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx2, i32 0, i32 0
  %3 = load i32, i32* %all_samples3, align 4
  %call = call i32 @g_random_int_range(i32 0, i32 %3)
  store i32 %call, i32* %rnd, align 4
  store i32 0, i32* %ct, align 4
  store i32 0, i32* %idx, align 4
  %4 = load i32, i32* %lum.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom4
  %col_ptr6 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx5, i32 0, i32 2
  %5 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr6, align 8
  store %struct.t_samp_color_elem* %5, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp7 = icmp ne %struct.t_samp_color_elem* %6, null
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %7, i32 0, i32 1
  %8 = load i32, i32* %sum_color, align 4
  %9 = load i32, i32* %ct, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %ct, align 4
  %10 = load i32, i32* %rnd, align 4
  %11 = load i32, i32* %ct, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %12 = load i8*, i8** %mapped_color.addr, align 8
  %13 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %13, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %arrayidx10, i64 3, i32 1, i1 false)
  br label %return

if.end:                                           ; preds = %for.body
  %14 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %15, i32 0, i32 2
  %16 = load i8*, i8** %next, align 8
  %17 = bitcast i8* %16 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %17, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  %18 = load i8*, i8** %mapped_color.addr, align 8
  %19 = load i32, i32* %lum.addr, align 4
  %20 = load i32, i32* %lum.addr, align 4
  %add12 = add nsw i32 %19, %20
  %21 = load i32, i32* %lum.addr, align 4
  %add13 = add nsw i32 %add12, %21
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %arrayidx15, i64 3, i32 1, i1 false)
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9
  ret void
}

declare i32 @g_random_int_range(i32, i32) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_layer_alive(i32 %drawable_id) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  %0 = load i32, i32* %drawable_id.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_item_get_image(i32 %1)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.77, i32 0, i32 0), i32 %2)
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %drawable_id.addr, align 4
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @init_gdrw(%struct.t_GDRW* %gdrw, %struct._GimpDrawable* %drawable, i32 %dirty, i32 %shadow) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dirty.addr = alloca i32, align 4
  %shadow.addr = alloca i32, align 4
  %image_id = alloca i32, align 4
  %sel_channel_id = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %sel_offsetx = alloca i32, align 4
  %sel_offsety = alloca i32, align 4
  %sel_gdrw = alloca %struct.t_GDRW*, align 8
  %non_empty = alloca i32, align 4
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %dirty, i32* %dirty.addr, align 4
  store i32 %shadow, i32* %shadow.addr, align 4
  %0 = load i32, i32* @g_Sdebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), %struct._GimpDrawable* %1, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %5, i32 0, i32 0
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable1, align 8
  %6 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %6, i32 0, i32 9
  store %struct._GimpTile* null, %struct._GimpTile** %tile, align 8
  %7 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_dirty = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %7, i32 0, i32 14
  store i32 0, i32* %tile_dirty, align 4
  %call2 = call i32 @gimp_tile_width() #5
  %8 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_width = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %8, i32 0, i32 12
  store i32 %call2, i32* %tile_width, align 4
  %call3 = call i32 @gimp_tile_height() #5
  %9 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_height = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %9, i32 0, i32 13
  store i32 %call3, i32* %tile_height, align 4
  %10 = load i32, i32* %shadow.addr, align 4
  %11 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %shadow4 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %11, i32 0, i32 15
  store i32 %10, i32* %shadow4, align 4
  %12 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_swapcount = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %12, i32 0, i32 18
  store i32 0, i32* %tile_swapcount, align 4
  %13 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltax = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %13, i32 0, i32 16
  store i32 0, i32* %seldeltax, align 4
  %14 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltay = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %14, i32 0, i32 17
  store i32 0, i32* %seldeltay, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_drawable_offsets(i32 %16, i32* %offsetx, i32* %offsety)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id7, align 4
  %19 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x18 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %19, i32 0, i32 3
  %20 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y19 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %20, i32 0, i32 4
  %21 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x210 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %21, i32 0, i32 5
  %22 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y211 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %22, i32 0, i32 6
  %call12 = call i32 @gimp_drawable_mask_bounds(i32 %18, i32* %x18, i32* %y19, i32* %x210, i32* %y211)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 3
  %24 = load i32, i32* %bpp, align 4
  %25 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp13 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %25, i32 0, i32 8
  store i32 %24, i32* %bpp13, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 0
  %27 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_has_alpha(i32 %27)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %28 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp18 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %28, i32 0, i32 8
  %29 = load i32, i32* %bpp18, align 4
  %sub = sub nsw i32 %29, 1
  %30 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %30, i32 0, i32 7
  store i32 %sub, i32* %index_alpha, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %31 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha19 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %31, i32 0, i32 7
  store i32 0, i32* %index_alpha19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id21 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 0
  %33 = load i32, i32* %drawable_id21, align 4
  %call22 = call i32 @gimp_item_get_image(i32 %33)
  store i32 %call22, i32* %image_id, align 4
  %34 = load i32, i32* %image_id, align 4
  %call23 = call i32 @gimp_image_get_selection(i32 %34)
  store i32 %call23, i32* %sel_channel_id, align 4
  %35 = load i32, i32* @g_Sdebug, align 4
  %tobool24 = icmp ne i32 %35, 0
  br i1 %tobool24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.20
  %36 = load i32, i32* %image_id, align 4
  %37 = load i32, i32* %sel_channel_id, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.79, i32 0, i32 0), i32 %36, i32 %37)
  %38 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x127 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %38, i32 0, i32 3
  %39 = load i32, i32* %x127, align 4
  %40 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y128 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %40, i32 0, i32 4
  %41 = load i32, i32* %y128, align 4
  %42 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x229 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %42, i32 0, i32 5
  %43 = load i32, i32* %x229, align 4
  %44 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y230 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %44, i32 0, i32 6
  %45 = load i32, i32* %y230, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.80, i32 0, i32 0), i32 %39, i32 %41, i32 %43, i32 %45)
  %46 = load i32, i32* %offsetx, align 4
  %47 = load i32, i32* %offsety, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0), i32 %46, i32 %47)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.25, %if.end.20
  %48 = load i32, i32* %image_id, align 4
  %call34 = call i32 @gimp_selection_bounds(i32 %48, i32* %non_empty, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %49 = load i32, i32* %non_empty, align 4
  %tobool35 = icmp ne i32 %49, 0
  br i1 %tobool35, label %land.lhs.true, label %if.else.77

land.lhs.true:                                    ; preds = %if.end.33
  %50 = load i32, i32* %sel_channel_id, align 4
  %cmp = icmp sge i32 %50, 0
  br i1 %cmp, label %if.then.36, label %if.else.77

if.then.36:                                       ; preds = %land.lhs.true
  %call37 = call noalias i8* @g_malloc0_n(i64 1, i64 136)
  %51 = bitcast i8* %call37 to %struct.t_GDRW*
  store %struct.t_GDRW* %51, %struct.t_GDRW** %sel_gdrw, align 8
  %52 = load i32, i32* %sel_channel_id, align 4
  %call38 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %52)
  %53 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %drawable39 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %53, i32 0, i32 0
  store %struct._GimpDrawable* %call38, %struct._GimpDrawable** %drawable39, align 8
  %54 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile40 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %54, i32 0, i32 9
  store %struct._GimpTile* null, %struct._GimpTile** %tile40, align 8
  %55 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile_dirty41 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %55, i32 0, i32 14
  store i32 0, i32* %tile_dirty41, align 4
  %call42 = call i32 @gimp_tile_width() #5
  %56 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile_width43 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %56, i32 0, i32 12
  store i32 %call42, i32* %tile_width43, align 4
  %call44 = call i32 @gimp_tile_height() #5
  %57 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile_height45 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %57, i32 0, i32 13
  store i32 %call44, i32* %tile_height45, align 4
  %58 = load i32, i32* %shadow.addr, align 4
  %59 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %shadow46 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %59, i32 0, i32 15
  store i32 %58, i32* %shadow46, align 4
  %60 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile_swapcount47 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %60, i32 0, i32 18
  store i32 0, i32* %tile_swapcount47, align 4
  %61 = load i32, i32* %x1, align 4
  %62 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %x148 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %62, i32 0, i32 3
  store i32 %61, i32* %x148, align 4
  %63 = load i32, i32* %y1, align 4
  %64 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %y149 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %64, i32 0, i32 4
  store i32 %63, i32* %y149, align 4
  %65 = load i32, i32* %x2, align 4
  %66 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %x250 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %66, i32 0, i32 5
  store i32 %65, i32* %x250, align 4
  %67 = load i32, i32* %y2, align 4
  %68 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %y251 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %68, i32 0, i32 6
  store i32 %67, i32* %y251, align 4
  %69 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %seldeltax52 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %69, i32 0, i32 16
  store i32 0, i32* %seldeltax52, align 4
  %70 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %seldeltay53 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %70, i32 0, i32 17
  store i32 0, i32* %seldeltay53, align 4
  %71 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %drawable54 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %71, i32 0, i32 0
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable54, align 8
  %bpp55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %72, i32 0, i32 3
  %73 = load i32, i32* %bpp55, align 4
  %74 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %bpp56 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %74, i32 0, i32 8
  store i32 %73, i32* %bpp56, align 4
  %75 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %index_alpha57 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %75, i32 0, i32 7
  store i32 0, i32* %index_alpha57, align 4
  %76 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %sel_gdrw58 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %76, i32 0, i32 1
  store i8* null, i8** %sel_gdrw58, align 8
  %77 = load i32, i32* %sel_channel_id, align 4
  %call59 = call i32 @gimp_drawable_offsets(i32 %77, i32* %sel_offsetx, i32* %sel_offsety)
  %78 = load i32, i32* %offsetx, align 4
  %79 = load i32, i32* %sel_offsetx, align 4
  %sub60 = sub nsw i32 %78, %79
  %80 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltax61 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %80, i32 0, i32 16
  store i32 %sub60, i32* %seldeltax61, align 4
  %81 = load i32, i32* %offsety, align 4
  %82 = load i32, i32* %sel_offsety, align 4
  %sub62 = sub nsw i32 %81, %82
  %83 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltay63 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %83, i32 0, i32 17
  store i32 %sub62, i32* %seldeltay63, align 4
  %84 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %85 = bitcast %struct.t_GDRW* %84 to i8*
  %86 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %sel_gdrw64 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %86, i32 0, i32 1
  store i8* %85, i8** %sel_gdrw64, align 8
  %87 = load i32, i32* @g_Sdebug, align 4
  %tobool65 = icmp ne i32 %87, 0
  br i1 %tobool65, label %if.then.66, label %if.end.76

if.then.66:                                       ; preds = %if.then.36
  %88 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %x167 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %88, i32 0, i32 3
  %89 = load i32, i32* %x167, align 4
  %90 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %y168 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %90, i32 0, i32 4
  %91 = load i32, i32* %y168, align 4
  %92 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %x269 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %92, i32 0, i32 5
  %93 = load i32, i32* %x269, align 4
  %94 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %y270 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %94, i32 0, i32 6
  %95 = load i32, i32* %y270, align 4
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.82, i32 0, i32 0), i32 %89, i32 %91, i32 %93, i32 %95)
  %96 = load i32, i32* %sel_offsetx, align 4
  %97 = load i32, i32* %sel_offsety, align 4
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.83, i32 0, i32 0), i32 %96, i32 %97)
  %98 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltax73 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %98, i32 0, i32 16
  %99 = load i32, i32* %seldeltax73, align 4
  %100 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltay74 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %100, i32 0, i32 17
  %101 = load i32, i32* %seldeltay74, align 4
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.84, i32 0, i32 0), i32 %99, i32 %101)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.66, %if.then.36
  br label %if.end.79

if.else.77:                                       ; preds = %land.lhs.true, %if.end.33
  %102 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %sel_gdrw78 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %102, i32 0, i32 1
  store i8* null, i8** %sel_gdrw78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.end.76
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_pv(%struct._GtkWidget* %preview, i32 %show_selection, %struct.t_GDRW* %gdrw, i8* %dst_buffer, i32 %is_color) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %show_selection.addr = alloca i32, align 4
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %dst_buffer.addr = alloca i8*, align 8
  %is_color.addr = alloca i32, align 4
  %allrowsbuf = alloca [262144 x i8], align 16
  %pixel = alloca [4 x i8], align 1
  %ptr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %ofx = alloca i32, align 4
  %ofy = alloca i32, align 4
  %sel_width = alloca i32, align 4
  %sel_height = alloca i32, align 4
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %buf_ptr = alloca i8*, align 8
  %dummy = alloca [4 x i8], align 1
  %maskbytes = alloca [4 x i8], align 1
  %dstep = alloca i32, align 4
  %alpha = alloca i8, align 1
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i32 %show_selection, i32* %show_selection.addr, align 4
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store i8* %dst_buffer, i8** %dst_buffer.addr, align 8
  store i32 %is_color, i32* %is_color.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.166

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  store i8 127, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  store i8 127, i8* %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  store i8 127, i8* %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  store i8 127, i8* %arrayidx3, align 1
  %1 = load i32, i32* %show_selection.addr, align 4
  %tobool4 = icmp ne i32 %1, 0
  br i1 %tobool4, label %if.then.5, label %if.else.31

if.then.5:                                        ; preds = %if.end
  %2 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x26 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %2, i32 0, i32 5
  %3 = load i32, i32* %x26, align 4
  %4 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %4, i32 0, i32 3
  %5 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %3, %5
  store i32 %sub, i32* %sel_width, align 4
  %6 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y27 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %6, i32 0, i32 6
  %7 = load i32, i32* %y27, align 4
  %8 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %8, i32 0, i32 4
  %9 = load i32, i32* %y1, align 4
  %sub8 = sub nsw i32 %7, %9
  store i32 %sub8, i32* %sel_height, align 4
  %10 = load i32, i32* %sel_height, align 4
  %11 = load i32, i32* %sel_width, align 4
  %cmp = icmp sgt i32 %10, %11
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %12 = load i32, i32* %sel_height, align 4
  %conv = sitofp i32 %12 to float
  %div = fdiv float %conv, 2.560000e+02
  %conv10 = fpext float %div to double
  store double %conv10, double* %scale_y, align 8
  %13 = load double, double* %scale_y, align 8
  store double %13, double* %scale_x, align 8
  %14 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x111 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %14, i32 0, i32 3
  %15 = load i32, i32* %x111, align 4
  %conv12 = sitofp i32 %15 to double
  %16 = load i32, i32* %sel_width, align 4
  %conv13 = sitofp i32 %16 to double
  %17 = load double, double* %scale_x, align 8
  %mul = fmul double 2.560000e+02, %17
  %sub14 = fsub double %conv13, %mul
  %div15 = fdiv double %sub14, 2.000000e+00
  %add = fadd double %conv12, %div15
  %conv16 = fptosi double %add to i32
  store i32 %conv16, i32* %ofx, align 4
  %18 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y117 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %18, i32 0, i32 4
  %19 = load i32, i32* %y117, align 4
  store i32 %19, i32* %ofy, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.then.5
  %20 = load i32, i32* %sel_width, align 4
  %conv18 = sitofp i32 %20 to float
  %div19 = fdiv float %conv18, 2.560000e+02
  %conv20 = fpext float %div19 to double
  store double %conv20, double* %scale_x, align 8
  %21 = load double, double* %scale_x, align 8
  store double %21, double* %scale_y, align 8
  %22 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x121 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %22, i32 0, i32 3
  %23 = load i32, i32* %x121, align 4
  store i32 %23, i32* %ofx, align 4
  %24 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y122 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %24, i32 0, i32 4
  %25 = load i32, i32* %y122, align 4
  %conv23 = sitofp i32 %25 to double
  %26 = load i32, i32* %sel_height, align 4
  %conv24 = sitofp i32 %26 to double
  %27 = load double, double* %scale_y, align 8
  %mul25 = fmul double 2.560000e+02, %27
  %sub26 = fsub double %conv24, %mul25
  %div27 = fdiv double %sub26, 2.000000e+00
  %add28 = fadd double %conv23, %div27
  %conv29 = fptosi double %add28 to i32
  store i32 %conv29, i32* %ofy, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.9
  br label %if.end.62

if.else.31:                                       ; preds = %if.end
  %28 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %28, i32 0, i32 0
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 2
  %30 = load i32, i32* %height, align 4
  %31 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable32 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %31, i32 0, i32 0
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable32, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 1
  %33 = load i32, i32* %width, align 4
  %cmp33 = icmp ugt i32 %30, %33
  br i1 %cmp33, label %if.then.35, label %if.else.48

if.then.35:                                       ; preds = %if.else.31
  %34 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable36 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %34, i32 0, i32 0
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable36, align 8
  %height37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 2
  %36 = load i32, i32* %height37, align 4
  %conv38 = uitofp i32 %36 to float
  %div39 = fdiv float %conv38, 2.560000e+02
  %conv40 = fpext float %div39 to double
  store double %conv40, double* %scale_y, align 8
  %37 = load double, double* %scale_y, align 8
  store double %37, double* %scale_x, align 8
  %38 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable41 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %38, i32 0, i32 0
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable41, align 8
  %width42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load i32, i32* %width42, align 4
  %conv43 = uitofp i32 %40 to double
  %41 = load double, double* %scale_x, align 8
  %mul44 = fmul double 2.560000e+02, %41
  %sub45 = fsub double %conv43, %mul44
  %div46 = fdiv double %sub45, 2.000000e+00
  %conv47 = fptosi double %div46 to i32
  store i32 %conv47, i32* %ofx, align 4
  store i32 0, i32* %ofy, align 4
  br label %if.end.61

if.else.48:                                       ; preds = %if.else.31
  %42 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable49 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %42, i32 0, i32 0
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable49, align 8
  %width50 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width50, align 4
  %conv51 = uitofp i32 %44 to float
  %div52 = fdiv float %conv51, 2.560000e+02
  %conv53 = fpext float %div52 to double
  store double %conv53, double* %scale_x, align 8
  %45 = load double, double* %scale_x, align 8
  store double %45, double* %scale_y, align 8
  store i32 0, i32* %ofx, align 4
  %46 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable54 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %46, i32 0, i32 0
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable54, align 8
  %height55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 2
  %48 = load i32, i32* %height55, align 4
  %conv56 = uitofp i32 %48 to double
  %49 = load double, double* %scale_y, align 8
  %mul57 = fmul double 2.560000e+02, %49
  %sub58 = fsub double %conv56, %mul57
  %div59 = fdiv double %sub58, 2.000000e+00
  %conv60 = fptosi double %div59 to i32
  store i32 %conv60, i32* %ofy, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.48, %if.then.35
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.30
  %50 = load i8*, i8** %dst_buffer.addr, align 8
  %tobool63 = icmp ne i8* %50, null
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.62
  %51 = load i8*, i8** %dst_buffer.addr, align 8
  store i8* %51, i8** %buf_ptr, align 8
  store i32 4, i32* %dstep, align 4
  br label %if.end.67

if.else.65:                                       ; preds = %if.end.62
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %dummy, i32 0, i64 0
  store i8* %arrayidx66, i8** %buf_ptr, align 8
  store i32 0, i32* %dstep, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.64
  %arraydecay = getelementptr inbounds [262144 x i8], [262144 x i8]* %allrowsbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %ptr, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.158, %if.end.67
  %52 = load i32, i32* %y, align 4
  %cmp68 = icmp slt i32 %52, 256
  br i1 %cmp68, label %for.body, label %for.end.160

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %for.body
  %53 = load i32, i32* %x, align 4
  %cmp71 = icmp slt i32 %53, 256
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %54 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable74 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %54, i32 0, i32 0
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable74, align 8
  %tobool75 = icmp ne %struct._GimpDrawable* %55, null
  br i1 %tobool75, label %if.then.76, label %if.end.97

if.then.76:                                       ; preds = %for.body.73
  %56 = load i32, i32* %ofx, align 4
  %conv77 = sitofp i32 %56 to double
  %57 = load i32, i32* %x, align 4
  %conv78 = sitofp i32 %57 to double
  %58 = load double, double* %scale_x, align 8
  %mul79 = fmul double %conv78, %58
  %add80 = fadd double %conv77, %mul79
  %conv81 = fptosi double %add80 to i32
  store i32 %conv81, i32* %x2, align 4
  %59 = load i32, i32* %ofy, align 4
  %conv82 = sitofp i32 %59 to double
  %60 = load i32, i32* %y, align 4
  %conv83 = sitofp i32 %60 to double
  %61 = load double, double* %scale_y, align 8
  %mul84 = fmul double %conv83, %61
  %add85 = fadd double %conv82, %mul84
  %conv86 = fptosi double %add85 to i32
  store i32 %conv86, i32* %y2, align 4
  %62 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %63 = load i32, i32* %x2, align 4
  %64 = load i32, i32* %y2, align 4
  %arrayidx87 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  call void @get_pixel(%struct.t_GDRW* %62, i32 %63, i32 %64, i8* %arrayidx87)
  %65 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %sel_gdrw = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %65, i32 0, i32 1
  %66 = load i8*, i8** %sel_gdrw, align 8
  %tobool88 = icmp ne i8* %66, null
  br i1 %tobool88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %if.then.76
  %67 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %sel_gdrw90 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %67, i32 0, i32 1
  %68 = load i8*, i8** %sel_gdrw90, align 8
  %69 = bitcast i8* %68 to %struct.t_GDRW*
  %70 = load i32, i32* %x2, align 4
  %71 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltax = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %71, i32 0, i32 16
  %72 = load i32, i32* %seldeltax, align 4
  %add91 = add nsw i32 %70, %72
  %73 = load i32, i32* %y2, align 4
  %74 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %seldeltay = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %74, i32 0, i32 17
  %75 = load i32, i32* %seldeltay, align 4
  %add92 = add nsw i32 %73, %75
  %arrayidx93 = getelementptr inbounds [4 x i8], [4 x i8]* %maskbytes, i32 0, i64 0
  call void @get_pixel(%struct.t_GDRW* %69, i32 %add91, i32 %add92, i8* %arrayidx93)
  br label %if.end.96

if.else.94:                                       ; preds = %if.then.76
  %arrayidx95 = getelementptr inbounds [4 x i8], [4 x i8]* %maskbytes, i32 0, i64 0
  store i8 -1, i8* %arrayidx95, align 1
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.89
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %for.body.73
  %76 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %76, i32 0, i32 7
  %77 = load i32, i32* %index_alpha, align 4
  %idxprom = sext i32 %77 to i64
  %arrayidx98 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom
  %78 = load i8, i8* %arrayidx98, align 1
  store i8 %78, i8* %alpha, align 1
  %79 = load i32, i32* %is_color.addr, align 4
  %tobool99 = icmp ne i32 %79, 0
  br i1 %tobool99, label %land.lhs.true, label %if.else.112

land.lhs.true:                                    ; preds = %if.end.97
  %80 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %80, i32 0, i32 8
  %81 = load i32, i32* %bpp, align 4
  %cmp100 = icmp sgt i32 %81, 2
  br i1 %cmp100, label %if.then.102, label %if.else.112

if.then.102:                                      ; preds = %land.lhs.true
  %arrayidx103 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %82 = load i8, i8* %arrayidx103, align 1
  %83 = load i8*, i8** %ptr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 %82, i8* %arrayidx104, align 1
  %84 = load i8*, i8** %buf_ptr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 %82, i8* %arrayidx105, align 1
  %arrayidx106 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %85 = load i8, i8* %arrayidx106, align 1
  %86 = load i8*, i8** %ptr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %85, i8* %arrayidx107, align 1
  %87 = load i8*, i8** %buf_ptr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %85, i8* %arrayidx108, align 1
  %arrayidx109 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %88 = load i8, i8* %arrayidx109, align 1
  %89 = load i8*, i8** %ptr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 %88, i8* %arrayidx110, align 1
  %90 = load i8*, i8** %buf_ptr, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 %88, i8* %arrayidx111, align 1
  br label %if.end.137

if.else.112:                                      ; preds = %land.lhs.true, %if.end.97
  %91 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp113 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %91, i32 0, i32 8
  %92 = load i32, i32* %bpp113, align 4
  %cmp114 = icmp sgt i32 %92, 2
  br i1 %cmp114, label %if.then.116, label %if.else.130

if.then.116:                                      ; preds = %if.else.112
  %arrayidx117 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %93 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %93 to i32
  %mul119 = mul nsw i32 %conv118, 30
  %arrayidx120 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %94 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %94 to i32
  %mul122 = mul nsw i32 %conv121, 59
  %add123 = add nsw i32 %mul119, %mul122
  %arrayidx124 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %95 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %95 to i32
  %mul126 = mul nsw i32 %conv125, 11
  %add127 = add nsw i32 %add123, %mul126
  %div128 = sdiv i32 %add127, 100
  %conv129 = trunc i32 %div128 to i8
  %96 = load i8*, i8** %ptr, align 8
  store i8 %conv129, i8* %96, align 1
  br label %if.end.132

if.else.130:                                      ; preds = %if.else.112
  %arrayidx131 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %97 = load i8, i8* %arrayidx131, align 1
  %98 = load i8*, i8** %ptr, align 8
  store i8 %97, i8* %98, align 1
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %if.then.116
  %99 = load i8*, i8** %ptr, align 8
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %buf_ptr, align 8
  store i8 %100, i8* %101, align 1
  %102 = load i8*, i8** %ptr, align 8
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %ptr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %104, i64 1
  store i8 %103, i8* %arrayidx133, align 1
  %105 = load i8*, i8** %buf_ptr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 %103, i8* %arrayidx134, align 1
  %106 = load i8*, i8** %ptr, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %ptr, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %108, i64 2
  store i8 %107, i8* %arrayidx135, align 1
  %109 = load i8*, i8** %buf_ptr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %109, i64 2
  store i8 %107, i8* %arrayidx136, align 1
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.132, %if.then.102
  %110 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha138 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %110, i32 0, i32 7
  %111 = load i32, i32* %index_alpha138, align 4
  %cmp139 = icmp eq i32 %111, 0
  br i1 %cmp139, label %if.then.141, label %if.else.144

if.then.141:                                      ; preds = %if.end.137
  %112 = load i8*, i8** %ptr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %112, i64 3
  store i8 -1, i8* %arrayidx142, align 1
  %113 = load i8*, i8** %buf_ptr, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %113, i64 3
  store i8 -1, i8* %arrayidx143, align 1
  br label %if.end.156

if.else.144:                                      ; preds = %if.end.137
  %arrayidx145 = getelementptr inbounds [4 x i8], [4 x i8]* %maskbytes, i32 0, i64 0
  %114 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %114 to i32
  %115 = load i8, i8* %alpha, align 1
  %conv147 = zext i8 %115 to i32
  %cmp148 = icmp slt i32 %conv146, %conv147
  br i1 %cmp148, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.144
  %arrayidx150 = getelementptr inbounds [4 x i8], [4 x i8]* %maskbytes, i32 0, i64 0
  %116 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %116 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else.144
  %117 = load i8, i8* %alpha, align 1
  %conv152 = zext i8 %117 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv151, %cond.true ], [ %conv152, %cond.false ]
  %conv153 = trunc i32 %cond to i8
  %118 = load i8*, i8** %ptr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %118, i64 3
  store i8 %conv153, i8* %arrayidx154, align 1
  %119 = load i8*, i8** %buf_ptr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 %conv153, i8* %arrayidx155, align 1
  br label %if.end.156

if.end.156:                                       ; preds = %cond.end, %if.then.141
  %120 = load i32, i32* %dstep, align 4
  %121 = load i8*, i8** %buf_ptr, align 8
  %idx.ext = sext i32 %120 to i64
  %add.ptr = getelementptr inbounds i8, i8* %121, i64 %idx.ext
  store i8* %add.ptr, i8** %buf_ptr, align 8
  %122 = load i8*, i8** %ptr, align 8
  %add.ptr157 = getelementptr inbounds i8, i8* %122, i64 4
  store i8* %add.ptr157, i8** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.156
  %123 = load i32, i32* %x, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end
  %124 = load i32, i32* %y, align 4
  %inc159 = add nsw i32 %124, 1
  store i32 %inc159, i32* %y, align 4
  br label %for.cond

for.end.160:                                      ; preds = %for.cond
  %125 = load i8*, i8** %dst_buffer.addr, align 8
  %cmp161 = icmp eq i8* %125, null
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %for.end.160
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call)
  %128 = bitcast %struct._GTypeInstance* %call164 to %struct._GimpPreviewArea*
  %arraydecay165 = getelementptr inbounds [262144 x i8], [262144 x i8]* %allrowsbuf, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %128, i32 0, i32 0, i32 256, i32 256, i32 1, i8* %arraydecay165, i32 1024)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %129)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then, %if.then.163, %for.end.160
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @end_gdrw(%struct.t_GDRW* %gdrw) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %sel_gdrw = alloca %struct.t_GDRW*, align 8
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  %0 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %0, i32 0, i32 9
  %1 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %tobool = icmp ne %struct._GimpTile* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %2, i32 0, i32 9
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tile1, align 8
  %4 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_dirty = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %4, i32 0, i32 14
  %5 = load i32, i32* %tile_dirty, align 4
  call void @gimp_tile_unref(%struct._GimpTile* %3, i32 %5)
  %6 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile2 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %6, i32 0, i32 9
  store %struct._GimpTile* null, %struct._GimpTile** %tile2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %sel_gdrw3 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %7, i32 0, i32 1
  %8 = load i8*, i8** %sel_gdrw3, align 8
  %9 = bitcast i8* %8 to %struct.t_GDRW*
  store %struct.t_GDRW* %9, %struct.t_GDRW** %sel_gdrw, align 8
  %10 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tobool4 = icmp ne %struct.t_GDRW* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile6 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %11, i32 0, i32 9
  %12 = load %struct._GimpTile*, %struct._GimpTile** %tile6, align 8
  %tobool7 = icmp ne %struct._GimpTile* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  %13 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile9 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %13, i32 0, i32 9
  %14 = load %struct._GimpTile*, %struct._GimpTile** %tile9, align 8
  %15 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile_dirty10 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %15, i32 0, i32 14
  %16 = load i32, i32* %tile_dirty10, align 4
  call void @gimp_tile_unref(%struct._GimpTile* %14, i32 %16)
  %17 = load %struct.t_GDRW*, %struct.t_GDRW** %sel_gdrw, align 8
  %tile11 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %17, i32 0, i32 9
  store %struct._GimpTile* null, %struct._GimpTile** %tile11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.then.5
  %18 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %sel_gdrw13 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %18, i32 0, i32 1
  store i8* null, i8** %sel_gdrw13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.end
  ret void
}

declare i32 @gimp_item_get_image(i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare i32 @gimp_selection_bounds(i32, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @get_pixel(%struct.t_GDRW* %gdrw, i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %2, i32 0, i32 0
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %sub = sub i32 %4, 1
  %cmp1 = icmp ugt i32 %1, %sub
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable5 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %7, i32 0, i32 0
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable5, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height, align 4
  %sub6 = sub i32 %9, 1
  %cmp7 = icmp ugt i32 %6, %sub6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %10 = load i8*, i8** %pixel.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 2
  store i8 -56, i8* %arrayidx, align 1
  %11 = load i8*, i8** %pixel.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 -56, i8* %arrayidx8, align 1
  %12 = load i8*, i8** %pixel.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 -56, i8* %arrayidx9, align 1
  %13 = load i8*, i8** %pixel.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 0, i8* %arrayidx10, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %14 = load i32, i32* %x.addr, align 4
  %15 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_width = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %15, i32 0, i32 12
  %16 = load i32, i32* %tile_width, align 4
  %div = sdiv i32 %14, %16
  store i32 %div, i32* %col, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_height = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %18, i32 0, i32 13
  %19 = load i32, i32* %tile_height, align 4
  %div11 = sdiv i32 %17, %19
  store i32 %div11, i32* %row, align 4
  %20 = load i32, i32* %x.addr, align 4
  %21 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_width12 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %21, i32 0, i32 12
  %22 = load i32, i32* %tile_width12, align 4
  %rem = srem i32 %20, %22
  store i32 %rem, i32* %offx, align 4
  %23 = load i32, i32* %y.addr, align 4
  %24 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_height13 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %24, i32 0, i32 13
  %25 = load i32, i32* %tile_height13, align 4
  %rem14 = srem i32 %23, %25
  store i32 %rem14, i32* %offy, align 4
  %26 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %27 = load i32, i32* %col, align 4
  %28 = load i32, i32* %row, align 4
  %29 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %shadow = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %29, i32 0, i32 15
  %30 = load i32, i32* %shadow, align 4
  call void @provide_tile(%struct.t_GDRW* %26, i32 %27, i32 %28, i32 %30)
  %31 = load i8*, i8** %pixel.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %31, i64 3
  store i8 0, i8* %arrayidx15, align 1
  %32 = load i8*, i8** %pixel.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 0, i8* %arrayidx16, align 1
  %33 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %33, i32 0, i32 9
  %34 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %34, i32 0, i32 6
  %35 = load i8*, i8** %data, align 8
  %36 = load i32, i32* %offy, align 4
  %37 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile17 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %37, i32 0, i32 9
  %38 = load %struct._GimpTile*, %struct._GimpTile** %tile17, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %38, i32 0, i32 0
  %39 = load i32, i32* %ewidth, align 4
  %mul = mul i32 %36, %39
  %40 = load i32, i32* %offx, align 4
  %add = add i32 %mul, %40
  %41 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %41, i32 0, i32 8
  %42 = load i32, i32* %bpp, align 4
  %mul18 = mul i32 %add, %42
  %idx.ext = zext i32 %mul18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8
  %43 = load i8*, i8** %pixel.addr, align 8
  %44 = load i8*, i8** %ptr, align 8
  %45 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp19 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %45, i32 0, i32 8
  %46 = load i32, i32* %bpp19, align 4
  %conv = sext i32 %46 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %conv, i32 1, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @provide_tile(%struct.t_GDRW* %gdrw, i32 %col, i32 %row, i32 %shadow) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %col.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %shadow.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %shadow, i32* %shadow.addr, align 4
  %0 = load i32, i32* %col.addr, align 4
  %1 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_col = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %1, i32 0, i32 11
  %2 = load i32, i32* %tile_col, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %row.addr, align 4
  %4 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_row = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %4, i32 0, i32 10
  %5 = load i32, i32* %tile_row, align 4
  %cmp1 = icmp ne i32 %3, %5
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %6, i32 0, i32 9
  %7 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %tobool = icmp ne %struct._GimpTile* %7, null
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %8 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile3 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %8, i32 0, i32 9
  %9 = load %struct._GimpTile*, %struct._GimpTile** %tile3, align 8
  %tobool4 = icmp ne %struct._GimpTile* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile6 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %10, i32 0, i32 9
  %11 = load %struct._GimpTile*, %struct._GimpTile** %tile6, align 8
  %12 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_dirty = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %12, i32 0, i32 14
  %13 = load i32, i32* %tile_dirty, align 4
  call void @gimp_tile_unref(%struct._GimpTile* %11, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %14 = load i32, i32* %col.addr, align 4
  %15 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_col7 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %15, i32 0, i32 11
  store i32 %14, i32* %tile_col7, align 4
  %16 = load i32, i32* %row.addr, align 4
  %17 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_row8 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %17, i32 0, i32 10
  store i32 %16, i32* %tile_row8, align 4
  %18 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %18, i32 0, i32 0
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = load i32, i32* %shadow.addr, align 4
  %21 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_row9 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %21, i32 0, i32 10
  %22 = load i32, i32* %tile_row9, align 4
  %23 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_col10 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %23, i32 0, i32 11
  %24 = load i32, i32* %tile_col10, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable* %19, i32 %20, i32 %22, i32 %24)
  %25 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile11 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %25, i32 0, i32 9
  store %struct._GimpTile* %call, %struct._GimpTile** %tile11, align 8
  %26 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_dirty12 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %26, i32 0, i32 14
  store i32 0, i32* %tile_dirty12, align 4
  %27 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile13 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %27, i32 0, i32 9
  %28 = load %struct._GimpTile*, %struct._GimpTile** %tile13, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %28)
  %29 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_swapcount = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %29, i32 0, i32 18
  %30 = load i32, i32* %tile_swapcount, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %tile_swapcount, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %lor.lhs.false.2
  ret void
}

declare void @gimp_tile_unref(%struct._GimpTile*, i32) #1

declare %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable*, i32, i32, i32) #1

declare void @gimp_tile_ref(%struct._GimpTile*) #1

; Function Attrs: nounwind uwtable
define internal void @calculate_level_transfers() #0 {
entry:
  %inten = alloca double, align 8
  %i = alloca i32, align 4
  %in_min = alloca i32, align 4
  %in_max = alloca i32, align 4
  %out_min = alloca i32, align 4
  %out_max = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  store i32 %2, i32* %in_max, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  store i32 %3, i32* %in_min, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  store i32 %4, i32* %in_max, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  store i32 %5, i32* %in_min, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %cmp1 = icmp sge i32 %6, %7
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  store i32 %8, i32* %out_max, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  store i32 %9, i32* %out_min, align 4
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  %10 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  store i32 %10, i32* %out_max, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  store i32 %11, i32* %out_min, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %12 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %12, 256
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %conv = sitofp i32 %13 to double
  %div = fdiv double %conv, 2.550000e+02
  store double %div, double* %inten, align 8
  %14 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %conv6 = fpext float %14 to double
  %cmp7 = fcmp une double %conv6, 0.000000e+00
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %for.body
  %15 = load double, double* %inten, align 8
  %16 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %conv10 = fpext float %16 to double
  %div11 = fdiv double 1.000000e+00, %conv10
  %call = call double @pow(double %15, double %div11) #4
  store double %call, double* %inten, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %for.body
  %17 = load double, double* %inten, align 8
  %18 = load i32, i32* %in_max, align 4
  %19 = load i32, i32* %in_min, align 4
  %sub = sub nsw i32 %18, %19
  %conv13 = sitofp i32 %sub to double
  %mul = fmul double %17, %conv13
  %20 = load i32, i32* %in_min, align 4
  %conv14 = sitofp i32 %20 to double
  %add = fadd double %mul, %conv14
  store double %add, double* %inten, align 8
  %21 = load double, double* %inten, align 8
  %cmp15 = fcmp ogt double %21, 2.550000e+02
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  br label %cond.end.21

cond.false:                                       ; preds = %if.end.12
  %22 = load double, double* %inten, align 8
  %cmp17 = fcmp olt double %22, 0.000000e+00
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %23 = load double, double* %inten, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond = phi double [ 0.000000e+00, %cond.true.19 ], [ %23, %cond.false.20 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end, %cond.true
  %cond22 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  store double %cond22, double* %inten, align 8
  %24 = load double, double* %inten, align 8
  %add23 = fadd double %24, 5.000000e-01
  %conv24 = fptoui double %add23 to i8
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @g_lvl_trans_tab, i32 0, i64 %idxprom
  store i8 %conv24, i8* %arrayidx, align 1
  %26 = load i32, i32* %i, align 4
  %conv25 = sitofp i32 %26 to double
  %div26 = fdiv double %conv25, 2.550000e+02
  store double %div26, double* %inten, align 8
  %27 = load double, double* %inten, align 8
  %28 = load i32, i32* %out_max, align 4
  %29 = load i32, i32* %out_min, align 4
  %sub27 = sub nsw i32 %28, %29
  %conv28 = sitofp i32 %sub27 to double
  %mul29 = fmul double %27, %conv28
  %30 = load i32, i32* %out_min, align 4
  %conv30 = sitofp i32 %30 to double
  %add31 = fadd double %mul29, %conv30
  store double %add31, double* %inten, align 8
  %31 = load double, double* %inten, align 8
  %cmp32 = fcmp ogt double %31, 2.550000e+02
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.end.21
  br label %cond.end.42

cond.false.35:                                    ; preds = %cond.end.21
  %32 = load double, double* %inten, align 8
  %cmp36 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.false.35
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.false.35
  %33 = load double, double* %inten, align 8
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi double [ 0.000000e+00, %cond.true.38 ], [ %33, %cond.false.39 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end.40, %cond.true.34
  %cond43 = phi double [ 2.550000e+02, %cond.true.34 ], [ %cond41, %cond.end.40 ]
  store double %cond43, double* %inten, align 8
  %34 = load double, double* %inten, align 8
  %add44 = fadd double %34, 5.000000e-01
  %conv45 = fptoui double %add44 to i8
  %35 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* @g_out_trans_tab, i32 0, i64 %idxprom46
  store i8 %conv45, i8* %arrayidx47, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.42
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

; Function Attrs: nounwind
declare double @log10(double) #2

; Function Attrs: nounwind uwtable
define internal void @levels_draw_slider(%struct._cairo* %cr, %struct._GdkColor* %border_color, %struct._GdkColor* %fill_color, i32 %xpos) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %border_color.addr = alloca %struct._GdkColor*, align 8
  %fill_color.addr = alloca %struct._GdkColor*, align 8
  %xpos.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GdkColor* %border_color, %struct._GdkColor** %border_color.addr, align 8
  store %struct._GdkColor* %fill_color, %struct._GdkColor** %fill_color.addr, align 8
  store i32 %xpos, i32* %xpos.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %xpos.addr, align 4
  %conv = sitofp i32 %1 to double
  call void @cairo_move_to(%struct._cairo* %0, double %conv, double 0.000000e+00)
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load i32, i32* %xpos.addr, align 4
  %sub = sub nsw i32 %3, 4
  %conv1 = sitofp i32 %sub to double
  call void @cairo_line_to(%struct._cairo* %2, double %conv1, double 9.000000e+00)
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load i32, i32* %xpos.addr, align 4
  %add = add nsw i32 %5, 4
  %conv2 = sitofp i32 %add to double
  call void @cairo_line_to(%struct._cairo* %4, double %conv2, double 9.000000e+00)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load i32, i32* %xpos.addr, align 4
  %conv3 = sitofp i32 %7 to double
  call void @cairo_line_to(%struct._cairo* %6, double %conv3, double 0.000000e+00)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load %struct._GdkColor*, %struct._GdkColor** %fill_color.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %8, %struct._GdkColor* %9)
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load %struct._GdkColor*, %struct._GdkColor** %border_color.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %11, %struct._GdkColor* %12)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_stroke(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @get_filevalues() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %buf = alloca [1000 x i8], align 16
  store float 5.500000e+00, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 11), align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 999, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i32 0, i32 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 11)) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 11), align 4
  %conv = fpext float %3 to double
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.89, i32 0, i32 0), double %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @color_error(i8 zeroext %ref_red, i8 zeroext %ref_green, i8 zeroext %ref_blue, i8 zeroext %cmp_red, i8 zeroext %cmp_green, i8 zeroext %cmp_blue) #0 {
entry:
  %ref_red.addr = alloca i8, align 1
  %ref_green.addr = alloca i8, align 1
  %ref_blue.addr = alloca i8, align 1
  %cmp_red.addr = alloca i8, align 1
  %cmp_green.addr = alloca i8, align 1
  %cmp_blue.addr = alloca i8, align 1
  %ff = alloca i64, align 8
  %fs = alloca i64, align 8
  %cmp_h = alloca i64, align 8
  %ref_h = alloca i64, align 8
  store i8 %ref_red, i8* %ref_red.addr, align 1
  store i8 %ref_green, i8* %ref_green.addr, align 1
  store i8 %ref_blue, i8* %ref_blue.addr, align 1
  store i8 %cmp_red, i8* %cmp_red.addr, align 1
  store i8 %cmp_green, i8* %cmp_green.addr, align 1
  store i8 %cmp_blue, i8* %cmp_blue.addr, align 1
  %0 = load i8, i8* %cmp_red.addr, align 1
  %conv = zext i8 %0 to i32
  %mul = mul nsw i32 3, %conv
  %1 = load i8, i8* %cmp_green.addr, align 1
  %conv1 = zext i8 %1 to i32
  %mul2 = mul nsw i32 6, %conv1
  %add = add nsw i32 %mul, %mul2
  %2 = load i8, i8* %cmp_blue.addr, align 1
  %conv3 = zext i8 %2 to i32
  %add4 = add nsw i32 %add, %conv3
  %div = sdiv i32 %add4, 10
  %conv5 = sext i32 %div to i64
  store i64 %conv5, i64* %cmp_h, align 8
  %3 = load i8, i8* %ref_red.addr, align 1
  %conv6 = zext i8 %3 to i32
  %mul7 = mul nsw i32 3, %conv6
  %4 = load i8, i8* %ref_green.addr, align 1
  %conv8 = zext i8 %4 to i32
  %mul9 = mul nsw i32 6, %conv8
  %add10 = add nsw i32 %mul7, %mul9
  %5 = load i8, i8* %ref_blue.addr, align 1
  %conv11 = zext i8 %5 to i32
  %add12 = add nsw i32 %add10, %conv11
  %div13 = sdiv i32 %add12, 10
  %conv14 = sext i32 %div13 to i64
  store i64 %conv14, i64* %ref_h, align 8
  %6 = load i64, i64* %ref_h, align 8
  %7 = load i64, i64* %cmp_h, align 8
  %sub = sub nsw i64 %6, %7
  %conv15 = trunc i64 %sub to i32
  %call = call i32 @abs(i32 %conv15) #5
  %conv16 = sext i32 %call to i64
  store i64 %conv16, i64* %fs, align 8
  %8 = load i64, i64* %fs, align 8
  %9 = load i64, i64* %fs, align 8
  %mul17 = mul nsw i64 %8, %9
  store i64 %mul17, i64* %ff, align 8
  %10 = load i8, i8* %ref_red.addr, align 1
  %conv18 = zext i8 %10 to i32
  %11 = load i8, i8* %cmp_red.addr, align 1
  %conv19 = zext i8 %11 to i32
  %sub20 = sub nsw i32 %conv18, %conv19
  %call21 = call i32 @abs(i32 %sub20) #5
  %conv22 = sext i32 %call21 to i64
  store i64 %conv22, i64* %fs, align 8
  %12 = load i64, i64* %fs, align 8
  %13 = load i64, i64* %fs, align 8
  %mul23 = mul nsw i64 %12, %13
  %14 = load i64, i64* %ff, align 8
  %add24 = add nsw i64 %14, %mul23
  store i64 %add24, i64* %ff, align 8
  %15 = load i8, i8* %ref_green.addr, align 1
  %conv25 = zext i8 %15 to i32
  %16 = load i8, i8* %cmp_green.addr, align 1
  %conv26 = zext i8 %16 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  %call28 = call i32 @abs(i32 %sub27) #5
  %conv29 = sext i32 %call28 to i64
  store i64 %conv29, i64* %fs, align 8
  %17 = load i64, i64* %fs, align 8
  %18 = load i64, i64* %fs, align 8
  %mul30 = mul nsw i64 %17, %18
  %19 = load i64, i64* %ff, align 8
  %add31 = add nsw i64 %19, %mul30
  store i64 %add31, i64* %ff, align 8
  %20 = load i8, i8* %ref_blue.addr, align 1
  %conv32 = zext i8 %20 to i32
  %21 = load i8, i8* %cmp_blue.addr, align 1
  %conv33 = zext i8 %21 to i32
  %sub34 = sub nsw i32 %conv32, %conv33
  %call35 = call i32 @abs(i32 %sub34) #5
  %conv36 = sext i32 %call35 to i64
  store i64 %conv36, i64* %fs, align 8
  %22 = load i64, i64* %fs, align 8
  %23 = load i64, i64* %fs, align 8
  %mul37 = mul nsw i64 %22, %23
  %24 = load i64, i64* %ff, align 8
  %add38 = add nsw i64 %24, %mul37
  store i64 %add38, i64* %ff, align 8
  %25 = load i64, i64* %ff, align 8
  %conv39 = trunc i64 %25 to i32
  ret i32 %conv39
}

; Function Attrs: nounwind uwtable
define internal i32 @sample_analyze(%struct.t_GDRW* %sample_gdrw) #0 {
entry:
  %retval = alloca i32, align 4
  %sample_gdrw.addr = alloca %struct.t_GDRW*, align 8
  %sample_pixels = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %first_row = alloca i32, align 4
  %first_col = alloca i32, align 4
  %last_row = alloca i32, align 4
  %last_col = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %progress_step = alloca float, align 4
  %progress_max = alloca float, align 4
  %progress = alloca float, align 4
  %color = alloca [4 x i8], align 1
  %prot_fp = alloca %struct._IO_FILE*, align 8
  store %struct.t_GDRW* %sample_gdrw, %struct.t_GDRW** %sample_gdrw.addr, align 8
  store i32 0, i32* %sample_pixels, align 4
  %0 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %x21 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %0, i32 0, i32 5
  %1 = load i32, i32* %x21, align 4
  %2 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %x1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %2, i32 0, i32 3
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %1, %3
  %conv = sitofp i32 %sub to float
  store float %conv, float* %progress_max, align 4
  %4 = load float, float* %progress_max, align 4
  %conv2 = fpext float %4 to double
  %div = fdiv double 1.000000e+00, %conv2
  %conv3 = fptrunc double %div to float
  store float %conv3, float* %progress_step, align 4
  store float 0.000000e+00, float* %progress, align 4
  %5 = load i32, i32* @g_show_progress, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0)) #4
  %call4 = call i32 @gimp_progress_init(i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %prot_fp, align 8
  %6 = load i32, i32* @g_Sdebug, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %prot_fp, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prot_fp, align 8
  call void @print_values(%struct._IO_FILE* %7)
  %8 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %y1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %8, i32 0, i32 4
  %9 = load i32, i32* %y1, align 4
  %10 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_height = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %10, i32 0, i32 13
  %11 = load i32, i32* %tile_height, align 4
  %div9 = sdiv i32 %9, %11
  store i32 %div9, i32* %first_row, align 4
  %12 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %y210 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %12, i32 0, i32 6
  %13 = load i32, i32* %y210, align 4
  %14 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_height11 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %14, i32 0, i32 13
  %15 = load i32, i32* %tile_height11, align 4
  %div12 = sdiv i32 %13, %15
  store i32 %div12, i32* %last_row, align 4
  %16 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %x113 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %16, i32 0, i32 3
  %17 = load i32, i32* %x113, align 4
  %18 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_width = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %18, i32 0, i32 12
  %19 = load i32, i32* %tile_width, align 4
  %div14 = sdiv i32 %17, %19
  store i32 %div14, i32* %first_col, align 4
  %20 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %x215 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %20, i32 0, i32 5
  %21 = load i32, i32* %x215, align 4
  %22 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_width16 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %22, i32 0, i32 12
  %23 = load i32, i32* %tile_width16, align 4
  %div17 = sdiv i32 %21, %23
  store i32 %div17, i32* %last_col, align 4
  %24 = load i32, i32* %first_row, align 4
  store i32 %24, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.98, %if.end.8
  %25 = load i32, i32* %row, align 4
  %26 = load i32, i32* %last_row, align 4
  %cmp = icmp sle i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end.100

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %first_col, align 4
  store i32 %27, i32* %col, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.95, %for.body
  %28 = load i32, i32* %col, align 4
  %29 = load i32, i32* %last_col, align 4
  %cmp20 = icmp sle i32 %28, %29
  br i1 %cmp20, label %for.body.22, label %for.end.97

for.body.22:                                      ; preds = %for.cond.19
  %30 = load i32, i32* %col, align 4
  %31 = load i32, i32* %first_col, align 4
  %cmp23 = icmp eq i32 %30, %31
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.body.22
  %32 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %x126 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %32, i32 0, i32 3
  %33 = load i32, i32* %x126, align 4
  store i32 %33, i32* %x, align 4
  br label %if.end.28

if.else:                                          ; preds = %for.body.22
  %34 = load i32, i32* %col, align 4
  %35 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_width27 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %35, i32 0, i32 12
  %36 = load i32, i32* %tile_width27, align 4
  %mul = mul nsw i32 %34, %36
  store i32 %mul, i32* %x, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.25
  %37 = load i32, i32* %col, align 4
  %38 = load i32, i32* %last_col, align 4
  %cmp29 = icmp eq i32 %37, %38
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.end.28
  %39 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %x232 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %39, i32 0, i32 5
  %40 = load i32, i32* %x232, align 4
  store i32 %40, i32* %x2, align 4
  br label %if.end.36

if.else.33:                                       ; preds = %if.end.28
  %41 = load i32, i32* %col, align 4
  %add = add nsw i32 %41, 1
  %42 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_width34 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %42, i32 0, i32 12
  %43 = load i32, i32* %tile_width34, align 4
  %mul35 = mul nsw i32 %add, %43
  store i32 %mul35, i32* %x2, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.31
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.92, %if.end.36
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %x2, align 4
  %cmp38 = icmp slt i32 %44, %45
  br i1 %cmp38, label %for.body.40, label %for.end.94

for.body.40:                                      ; preds = %for.cond.37
  %46 = load i32, i32* %row, align 4
  %47 = load i32, i32* %first_row, align 4
  %cmp41 = icmp eq i32 %46, %47
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %for.body.40
  %48 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %y144 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %48, i32 0, i32 4
  %49 = load i32, i32* %y144, align 4
  store i32 %49, i32* %y, align 4
  br label %if.end.48

if.else.45:                                       ; preds = %for.body.40
  %50 = load i32, i32* %row, align 4
  %51 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_height46 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %51, i32 0, i32 13
  %52 = load i32, i32* %tile_height46, align 4
  %mul47 = mul nsw i32 %50, %52
  store i32 %mul47, i32* %y, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.43
  %53 = load i32, i32* %row, align 4
  %54 = load i32, i32* %last_row, align 4
  %cmp49 = icmp eq i32 %53, %54
  br i1 %cmp49, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.end.48
  %55 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %y252 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %55, i32 0, i32 6
  %56 = load i32, i32* %y252, align 4
  store i32 %56, i32* %y2, align 4
  br label %if.end.57

if.else.53:                                       ; preds = %if.end.48
  %57 = load i32, i32* %row, align 4
  %add54 = add nsw i32 %57, 1
  %58 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %tile_height55 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %58, i32 0, i32 13
  %59 = load i32, i32* %tile_height55, align 4
  %mul56 = mul nsw i32 %add54, %59
  store i32 %mul56, i32* %y2, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.53, %if.then.51
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %if.end.57
  %60 = load i32, i32* %y, align 4
  %61 = load i32, i32* %y2, align 4
  %cmp59 = icmp slt i32 %60, %61
  br i1 %cmp59, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.58
  %62 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %sel_gdrw = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %62, i32 0, i32 1
  %63 = load i8*, i8** %sel_gdrw, align 8
  %tobool62 = icmp ne i8* %63, null
  br i1 %tobool62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %for.body.61
  %64 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %sel_gdrw64 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %64, i32 0, i32 1
  %65 = load i8*, i8** %sel_gdrw64, align 8
  %66 = bitcast i8* %65 to %struct.t_GDRW*
  %67 = load i32, i32* %x, align 4
  %68 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %seldeltax = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %68, i32 0, i32 16
  %69 = load i32, i32* %seldeltax, align 4
  %add65 = add nsw i32 %67, %69
  %70 = load i32, i32* %y, align 4
  %71 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %seldeltay = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %71, i32 0, i32 17
  %72 = load i32, i32* %seldeltay, align 4
  %add66 = add nsw i32 %70, %72
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  call void @get_pixel(%struct.t_GDRW* %66, i32 %add65, i32 %add66, i8* %arrayidx)
  %arrayidx67 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %73 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %73 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.63
  br label %for.inc

if.end.72:                                        ; preds = %if.then.63
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %for.body.61
  %74 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %y, align 4
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  call void @get_pixel(%struct.t_GDRW* %74, i32 %75, i32 %76, i8* %arrayidx74)
  %77 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %index_alpha = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %77, i32 0, i32 7
  %78 = load i32, i32* %index_alpha, align 4
  %cmp75 = icmp slt i32 %78, 1
  br i1 %cmp75, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.73
  %79 = load %struct.t_GDRW*, %struct.t_GDRW** %sample_gdrw.addr, align 8
  %index_alpha77 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %79, i32 0, i32 7
  %80 = load i32, i32* %index_alpha77, align 4
  %idxprom = sext i32 %80 to i64
  %arrayidx78 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 %idxprom
  %81 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %81 to i32
  %cmp80 = icmp ne i32 %conv79, 0
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %lor.lhs.false, %if.end.73
  %arrayidx83 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  call void @add_color(i8* %arrayidx83)
  %82 = load i32, i32* %sample_pixels, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %sample_pixels, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.84, %if.then.71
  %83 = load i32, i32* %y, align 4
  %inc85 = add nsw i32 %83, 1
  store i32 %inc85, i32* %y, align 4
  br label %for.cond.58

for.end:                                          ; preds = %for.cond.58
  %84 = load i32, i32* @g_show_progress, align 4
  %tobool86 = icmp ne i32 %84, 0
  br i1 %tobool86, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %for.end
  %85 = load float, float* %progress_step, align 4
  %86 = load float, float* %progress, align 4
  %add88 = fadd float %86, %85
  store float %add88, float* %progress, align 4
  %conv89 = fpext float %add88 to double
  %call90 = call i32 @gimp_progress_update(double %conv89)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %for.end
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %87 = load i32, i32* %x, align 4
  %inc93 = add nsw i32 %87, 1
  store i32 %inc93, i32* %x, align 4
  br label %for.cond.37

for.end.94:                                       ; preds = %for.cond.37
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94
  %88 = load i32, i32* %col, align 4
  %inc96 = add nsw i32 %88, 1
  store i32 %inc96, i32* %col, align 4
  br label %for.cond.19

for.end.97:                                       ; preds = %for.cond.19
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %89 = load i32, i32* %row, align 4
  %inc99 = add nsw i32 %89, 1
  store i32 %inc99, i32* %row, align 4
  br label %for.cond

for.end.100:                                      ; preds = %for.cond
  %90 = load i32, i32* @g_show_progress, align 4
  %tobool101 = icmp ne i32 %90, 0
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %for.end.100
  %call103 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %for.end.100
  %91 = load i32, i32* @g_Sdebug, align 4
  %tobool105 = icmp ne i32 %91, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.104
  %92 = load i32, i32* %first_row, align 4
  %93 = load i32, i32* %last_row, align 4
  %94 = load i32, i32* %first_col, align 4
  %95 = load i32, i32* %last_col, align 4
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0), i32 %92, i32 %93, i32 %94, i32 %95)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.104
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %prot_fp, align 8
  call void @print_table(%struct._IO_FILE* %96)
  %97 = load i32, i32* @g_Sdebug, align 4
  %tobool109 = icmp ne i32 %97, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.108
  call void @print_ppm(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.108
  call void @ideal_samples()
  call void @calculate_level_transfers()
  %98 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 5), align 4
  %tobool112 = icmp ne i32 %98, 0
  br i1 %tobool112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %if.end.111
  call void @guess_missing_colors()
  br label %if.end.115

if.else.114:                                      ; preds = %if.end.111
  call void @fill_missing_colors()
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.114, %if.then.113
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %prot_fp, align 8
  call void @print_table(%struct._IO_FILE* %99)
  %100 = load i32, i32* @g_Sdebug, align 4
  %tobool116 = icmp ne i32 %100, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.115
  call void @print_ppm(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.115
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %prot_fp, align 8
  call void @print_transtable(%struct._IO_FILE* %101)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %prot_fp, align 8
  %tobool119 = icmp ne %struct._IO_FILE* %102, null
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.118
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %prot_fp, align 8
  %call121 = call i32 @fclose(%struct._IO_FILE* %103)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.118
  %104 = load i32, i32* %sample_pixels, align 4
  %cmp123 = icmp eq i32 %104, 0
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.122
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.96, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.122
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.127, %if.then.125
  %105 = load i32, i32* %retval
  ret i32 %105
}

declare i32 @gimp_image_convert_rgb(i32) #1

; Function Attrs: nounwind uwtable
define internal void @colorize_drawable(i32 %drawable_id) #0 {
entry:
  %drawable_id.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %has_alpha = alloca i32, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %2)
  store i32 %call2, i32* %has_alpha, align 4
  %3 = load i32, i32* @g_show_progress, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.115, i32 0, i32 0)) #4
  %call4 = call i32 @gimp_progress_init(i8* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = load i32, i32* %has_alpha, align 4
  %conv = sext i32 %5 to i64
  %6 = inttoptr i64 %conv to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %4, i32 0, void (i8*, i8*, i32, i8*)* @colorize_func, i8* %6)
  %7 = load i32, i32* @g_show_progress, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i32 @gimp_progress_update(double 0.000000e+00)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @print_values(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.97, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 2), align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.98, i32 0, i32 0), i32 %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 3), align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.99, i32 0, i32 0), i32 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 4), align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i32 0, i32 0), i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 5), align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.101, i32 0, i32 0), i32 %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 6), align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 7), align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i32 0, i32 0), i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 8), align 4
  %conv = fpext float %15 to double
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), double %conv)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 9), align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0), i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 10), align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0), i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %21 = load float, float* getelementptr inbounds (%struct.t_values, %struct.t_values* @g_values, i32 0, i32 11), align 4
  %conv10 = fpext float %21 to double
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.89, i32 0, i32 0), double %conv10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_color(i8* %color) #0 {
entry:
  %color.addr = alloca i8*, align 8
  %lum = alloca i32, align 4
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  store i8* %color, i8** %color.addr, align 8
  %0 = load i8*, i8** %color.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nsw i32 %conv, 30
  %2 = load i8*, i8** %color.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %mul3 = mul nsw i32 %conv2, 59
  %add = add nsw i32 %mul, %mul3
  %4 = load i8*, i8** %color.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %mul6 = mul nsw i32 %conv5, 11
  %add7 = add nsw i32 %add, %mul6
  %div = sdiv i32 %add7, 100
  store i32 %div, i32* %lum, align 4
  %6 = load i32, i32* %lum, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %all_samples = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx8, i32 0, i32 0
  %7 = load i32, i32* %all_samples, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %all_samples, align 4
  %8 = load i32, i32* %lum, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom9
  %from_sample = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx10, i32 0, i32 1
  store i32 1, i32* %from_sample, align 4
  %9 = load i32, i32* %lum, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom11
  %col_ptr13 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx12, i32 0, i32 2
  %10 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr13, align 8
  store %struct.t_samp_color_elem* %10, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp = icmp ne %struct.t_samp_color_elem* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %color.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %14 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color17 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %14, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %color17, i32 0, i64 0
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv16, %conv19
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %16 = load i8*, i8** %color.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %18 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color24 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %18, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %color24, i32 0, i64 1
  %19 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %cmp27 = icmp eq i32 %conv23, %conv26
  br i1 %cmp27, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %20 = load i8*, i8** %color.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %20, i64 2
  %21 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %21 to i32
  %22 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color32 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %22, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %color32, i32 0, i64 2
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %cmp35 = icmp eq i32 %conv31, %conv34
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.29
  %24 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %24, i32 0, i32 1
  %25 = load i32, i32* %sum_color, align 4
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, i32* %sum_color, align 4
  br label %if.end.48

if.end:                                           ; preds = %land.lhs.true.29, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %26, i32 0, i32 2
  %27 = load i8*, i8** %next, align 8
  %28 = bitcast i8* %27 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %28, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %color.addr, align 8
  %call = call %struct.t_samp_color_elem* @new_samp_color(i8* %29)
  store %struct.t_samp_color_elem* %call, %struct.t_samp_color_elem** %col_ptr, align 8
  %30 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp38 = icmp ne %struct.t_samp_color_elem* %30, null
  br i1 %cmp38, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %for.end
  %31 = load i32, i32* %lum, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom41
  %col_ptr43 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx42, i32 0, i32 2
  %32 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr43, align 8
  %33 = bitcast %struct.t_samp_color_elem* %32 to i8*
  %34 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next44 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %34, i32 0, i32 2
  store i8* %33, i8** %next44, align 8
  %35 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %36 = load i32, i32* %lum, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom45
  %col_ptr47 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx46, i32 0, i32 2
  store %struct.t_samp_color_elem* %35, %struct.t_samp_color_elem** %col_ptr47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then, %if.then.40, %for.end
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal void @print_table(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %idx = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.107, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.107, i32 0, i32 0))
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %idx, align 4
  %cmp3 = icmp slt i32 %4, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %idx, align 4
  %7 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %all_samples = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %all_samples, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i32 0, i32 0), i32 %6, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i32, i32* %idx, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom5
  %col_ptr = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx6, i32 0, i32 2
  %11 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  call void @print_color_list(%struct._IO_FILE* %9, %struct.t_samp_color_elem* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_ppm(i8* %ppm_name) #0 {
entry:
  %ppm_name.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %idx = alloca i32, align 4
  %cnt = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  store i8* %ppm_name, i8** %ppm_name.addr, align 8
  %0 = load i8*, i8** %ppm_name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.31

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %ppm_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.31

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.111, i32 0, i32 0))
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.then.1
  %4 = load i32, i32* %idx, align 4
  %cmp3 = icmp slt i32 %4, 256
  br i1 %cmp3, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %col_ptr4 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx, i32 0, i32 2
  %6 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr4, align 8
  store %struct.t_samp_color_elem* %6, %struct.t_samp_color_elem** %col_ptr, align 8
  store i32 0, i32* %cnt, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %cnt, align 4
  %cmp6 = icmp slt i32 %7, 256
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %b, align 4
  store i32 0, i32* %g, align 4
  store i32 0, i32* %r, align 4
  %8 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %tobool8 = icmp ne %struct.t_samp_color_elem* %8, null
  br i1 %tobool8, label %if.then.9, label %if.end.25

if.then.9:                                        ; preds = %for.body.7
  %9 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %9, i32 0, i32 1
  %10 = load i32, i32* %sum_color, align 4
  %cmp10 = icmp sgt i32 %10, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.9
  %11 = load i32, i32* %cnt, align 4
  %cmp11 = icmp ne i32 %11, 20
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %land.lhs.true
  %12 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %12, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %13 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %13 to i32
  store i32 %conv, i32* %r, align 4
  %14 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color14 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %14, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %color14, i32 0, i64 1
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  store i32 %conv16, i32* %g, align 4
  %16 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color17 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %color17, i32 0, i64 2
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  store i32 %conv19, i32* %b, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %land.lhs.true, %if.then.9
  %18 = load i32, i32* %cnt, align 4
  %cmp21 = icmp sgt i32 %18, 20
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %19 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %19, i32 0, i32 2
  %20 = load i8*, i8** %next, align 8
  %21 = bitcast i8* %20 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %21, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.body.7
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %23 = load i32, i32* %r, align 4
  %24 = load i32, i32* %g, align 4
  %25 = load i32, i32* %b, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i32 %23, i32 %24, i32 %25)
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %26 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %27 = load i32, i32* %idx, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %idx, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %28)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then, %for.end.29, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ideal_samples() #0 {
entry:
  %lum = alloca i32, align 4
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  %color = alloca i8*, align 8
  %color_tone = alloca [4 x i8], align 1
  %color_ideal = alloca [4 x i8], align 1
  %csum = alloca i32, align 4
  %maxsum = alloca i32, align 4
  store i8* null, i8** %color, align 8
  store i32 0, i32* %lum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %0 = load i32, i32* %lum, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %lum, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %col_ptr1 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx, i32 0, i32 2
  %2 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr1, align 8
  %cmp2 = icmp eq %struct.t_samp_color_elem* %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.29

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %lum, align 4
  call void @sort_color(i32 %3)
  %4 = load i32, i32* %lum, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom3
  %col_ptr5 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx4, i32 0, i32 2
  %5 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr5, align 8
  store %struct.t_samp_color_elem* %5, %struct.t_samp_color_elem** %col_ptr, align 8
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %color_ideal, i32 0, i64 0
  %6 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color7 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %color7, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx6, i8* %arrayidx8, i64 3, i32 1, i1 false)
  store i32 0, i32* %maxsum, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end
  %7 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp10 = icmp ne %struct.t_samp_color_elem* %7, null
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %csum, align 4
  %8 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %8, i32 0, i32 1
  %9 = load i32, i32* %sum_color, align 4
  %cmp12 = icmp sgt i32 %9, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body.11
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %color_tone, i32 0, i64 0
  %10 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color15 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %10, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %color15, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx14, i8* %arrayidx16, i64 3, i32 1, i1 false)
  %11 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %12 = load i8*, i8** %color, align 8
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %color_tone, i32 0, i64 0
  call void @cnt_same_sample_colortones(%struct.t_samp_color_elem* %11, i8* %12, i8* %arrayidx17, i32* %csum)
  %13 = load i32, i32* %csum, align 4
  %14 = load i32, i32* %maxsum, align 4
  %cmp18 = icmp sgt i32 %13, %14
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.13
  %15 = load i32, i32* %csum, align 4
  store i32 %15, i32* %maxsum, align 4
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %color_ideal, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %color_tone, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx20, i8* %arrayidx21, i64 3, i32 1, i1 false)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.13
  br label %if.end.25

if.else:                                          ; preds = %for.body.11
  %16 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color23 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %16, i32 0, i32 1
  %17 = load i32, i32* %sum_color23, align 4
  %call = call i32 @abs(i32 %17) #5
  %18 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color24 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %18, i32 0, i32 1
  store i32 %call, i32* %sum_color24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %19 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %19, i32 0, i32 2
  %20 = load i8*, i8** %next, align 8
  %21 = bitcast i8* %20 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %21, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %22 = load i32, i32* %lum, align 4
  %mul = mul nsw i32 3, %22
  %idxprom26 = sext i32 %mul to i64
  %arrayidx27 = getelementptr inbounds [768 x i8], [768 x i8]* @g_sample_color_tab, i32 0, i64 %idxprom26
  store i8* %arrayidx27, i8** %color, align 8
  %23 = load i8*, i8** %color, align 8
  %arrayidx28 = getelementptr inbounds [4 x i8], [4 x i8]* %color_ideal, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %arrayidx28, i64 3, i32 1, i1 false)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end, %if.then
  %24 = load i32, i32* %lum, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %lum, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_transtable(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %idx = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.107, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.113, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.107, i32 0, i32 0))
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %idx, align 4
  %cmp3 = icmp slt i32 %4, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %idx, align 4
  %7 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @g_lvl_trans_tab, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %idx, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @g_out_trans_tab, i32 0, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.114, i32 0, i32 0), i32 %6, i32 %conv, i32 %conv6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @print_color_list(%struct._IO_FILE* %fp, %struct.t_samp_color_elem* %col_ptr) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %col_ptr.addr = alloca %struct.t_samp_color_elem*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.t_samp_color_elem* %col_ptr, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %tobool = icmp ne %struct.t_samp_color_elem* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %color1 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %5, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %color1, i32 0, i64 1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %7 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %color4 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %7, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %color4, i32 0, i64 2
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %9 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %color7 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %9, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %color7, i32 0, i64 3
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %11 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %11, i32 0, i32 1
  %12 = load i32, i32* %sum_color, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.110, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9, i32 %12)
  %13 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %13, i32 0, i32 2
  %14 = load i8*, i8** %next, align 8
  %15 = bitcast i8* %14 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %15, %struct.t_samp_color_elem** %col_ptr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_color(i32 %lum) #0 {
entry:
  %lum.addr = alloca i32, align 4
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  %next_ptr = alloca %struct.t_samp_color_elem*, align 8
  %prev_ptr = alloca %struct.t_samp_color_elem*, align 8
  %sorted_col_ptr = alloca %struct.t_samp_color_elem*, align 8
  %min = alloca i32, align 4
  %min_next = alloca i32, align 4
  store i32 %lum, i32* %lum.addr, align 4
  store %struct.t_samp_color_elem* null, %struct.t_samp_color_elem** %sorted_col_ptr, align 8
  store i32 0, i32* %min_next, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, i32* %lum.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom
  %col_ptr1 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx, i32 0, i32 2
  %1 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr1, align 8
  %cmp = icmp ne %struct.t_samp_color_elem* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %min_next, align 4
  store i32 %2, i32* %min, align 4
  store %struct.t_samp_color_elem* null, %struct.t_samp_color_elem** %next_ptr, align 8
  store %struct.t_samp_color_elem* null, %struct.t_samp_color_elem** %prev_ptr, align 8
  %3 = load i32, i32* %lum.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom2
  %col_ptr4 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx3, i32 0, i32 2
  %4 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr4, align 8
  store %struct.t_samp_color_elem* %4, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp5 = icmp ne %struct.t_samp_color_elem* %5, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %6, i32 0, i32 2
  %7 = load i8*, i8** %next, align 8
  %8 = bitcast i8* %7 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %8, %struct.t_samp_color_elem** %next_ptr, align 8
  %9 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %9, i32 0, i32 1
  %10 = load i32, i32* %sum_color, align 4
  %11 = load i32, i32* %min, align 4
  %cmp6 = icmp sgt i32 %10, %11
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color7 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %12, i32 0, i32 1
  %13 = load i32, i32* %sum_color7, align 4
  %14 = load i32, i32* %min_next, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i32, i32* %min, align 4
  %16 = load i32, i32* %min_next, align 4
  %cmp9 = icmp eq i32 %15, %16
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %if.then
  %17 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color11 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %17, i32 0, i32 1
  %18 = load i32, i32* %sum_color11, align 4
  store i32 %18, i32* %min_next, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %lor.lhs.false
  %19 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  store %struct.t_samp_color_elem* %19, %struct.t_samp_color_elem** %prev_ptr, align 8
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %20 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %sorted_col_ptr, align 8
  %21 = bitcast %struct.t_samp_color_elem* %20 to i8*
  %22 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next12 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %22, i32 0, i32 2
  store i8* %21, i8** %next12, align 8
  %23 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  store %struct.t_samp_color_elem* %23, %struct.t_samp_color_elem** %sorted_col_ptr, align 8
  %24 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %prev_ptr, align 8
  %cmp13 = icmp eq %struct.t_samp_color_elem* %24, null
  br i1 %cmp13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.else
  %25 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %next_ptr, align 8
  %26 = load i32, i32* %lum.addr, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom15
  %col_ptr17 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx16, i32 0, i32 2
  store %struct.t_samp_color_elem* %25, %struct.t_samp_color_elem** %col_ptr17, align 8
  br label %if.end.20

if.else.18:                                       ; preds = %if.else
  %27 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %next_ptr, align 8
  %28 = bitcast %struct.t_samp_color_elem* %27 to i8*
  %29 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %prev_ptr, align 8
  %next19 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %29, i32 0, i32 2
  store i8* %28, i8** %next19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %30 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %next_ptr, align 8
  store %struct.t_samp_color_elem* %30, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %sorted_col_ptr, align 8
  %32 = load i32, i32* %lum.addr, align 4
  %idxprom22 = sext i32 %32 to i64
  %arrayidx23 = getelementptr inbounds [256 x %struct.t_samp_table_elem], [256 x %struct.t_samp_table_elem]* @g_lum_tab, i32 0, i64 %idxprom22
  %col_ptr24 = getelementptr inbounds %struct.t_samp_table_elem, %struct.t_samp_table_elem* %arrayidx23, i32 0, i32 2
  store %struct.t_samp_color_elem* %31, %struct.t_samp_color_elem** %col_ptr24, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cnt_same_sample_colortones(%struct.t_samp_color_elem* %ref_ptr, i8* %prev_color, i8* %color_tone, i32* %csum) #0 {
entry:
  %ref_ptr.addr = alloca %struct.t_samp_color_elem*, align 8
  %prev_color.addr = alloca i8*, align 8
  %color_tone.addr = alloca i8*, align 8
  %csum.addr = alloca i32*, align 8
  %col_error = alloca i32, align 4
  %ref_error = alloca i32, align 4
  %col_ptr = alloca %struct.t_samp_color_elem*, align 8
  store %struct.t_samp_color_elem* %ref_ptr, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  store i8* %prev_color, i8** %prev_color.addr, align 8
  store i8* %color_tone, i8** %color_tone.addr, align 8
  store i32* %csum, i32** %csum.addr, align 8
  store i32 0, i32* %ref_error, align 4
  %0 = load i8*, i8** %prev_color.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  %color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  %color1 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %color1, i32 0, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %5 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  %color3 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %color3, i32 0, i64 2
  %6 = load i8, i8* %arrayidx4, align 1
  %7 = load i8*, i8** %prev_color.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx5, align 1
  %9 = load i8*, i8** %prev_color.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx6, align 1
  %11 = load i8*, i8** %prev_color.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx7, align 1
  %call = call i32 @color_error(i8 zeroext %2, i8 zeroext %4, i8 zeroext %6, i8 zeroext %8, i8 zeroext %10, i8 zeroext %12)
  store i32 %call, i32* %ref_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  %next = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %13, i32 0, i32 2
  %14 = load i8*, i8** %next, align 8
  %15 = bitcast i8* %14 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %15, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %cmp8 = icmp ne %struct.t_samp_color_elem* %16, null
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %17, i32 0, i32 1
  %18 = load i32, i32* %sum_color, align 4
  %cmp9 = icmp slt i32 %18, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.inc

if.end.11:                                        ; preds = %for.body
  %19 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  %color12 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %19, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %color12, i32 0, i64 0
  %20 = load i8, i8* %arrayidx13, align 1
  %21 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  %color14 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %21, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %color14, i32 0, i64 1
  %22 = load i8, i8* %arrayidx15, align 1
  %23 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %ref_ptr.addr, align 8
  %color16 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %23, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %color16, i32 0, i64 2
  %24 = load i8, i8* %arrayidx17, align 1
  %25 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color18 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %25, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %color18, i32 0, i64 0
  %26 = load i8, i8* %arrayidx19, align 1
  %27 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color20 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %27, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %color20, i32 0, i64 1
  %28 = load i8, i8* %arrayidx21, align 1
  %29 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color22 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %29, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %color22, i32 0, i64 2
  %30 = load i8, i8* %arrayidx23, align 1
  %call24 = call i32 @color_error(i8 zeroext %20, i8 zeroext %22, i8 zeroext %24, i8 zeroext %26, i8 zeroext %28, i8 zeroext %30)
  store i32 %call24, i32* %col_error, align 4
  %31 = load i32, i32* %col_error, align 4
  %32 = load i32, i32* @g_tol_col_err, align 4
  %cmp25 = icmp sle i32 %31, %32
  br i1 %cmp25, label %if.then.26, label %if.end.48

if.then.26:                                       ; preds = %if.end.11
  %33 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color27 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %33, i32 0, i32 1
  %34 = load i32, i32* %sum_color27, align 4
  %35 = load i32*, i32** %csum.addr, align 8
  %36 = load i32, i32* %35, align 4
  %add = add nsw i32 %36, %34
  store i32 %add, i32* %35, align 4
  %37 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color28 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %37, i32 0, i32 1
  %38 = load i32, i32* %sum_color28, align 4
  %sub = sub nsw i32 0, %38
  %39 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %sum_color29 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %39, i32 0, i32 1
  store i32 %sub, i32* %sum_color29, align 4
  %40 = load i8*, i8** %prev_color.addr, align 8
  %cmp30 = icmp ne i8* %40, null
  br i1 %cmp30, label %if.then.31, label %if.end.47

if.then.31:                                       ; preds = %if.then.26
  %41 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color32 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %41, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %color32, i32 0, i64 0
  %42 = load i8, i8* %arrayidx33, align 1
  %43 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color34 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %43, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %color34, i32 0, i64 1
  %44 = load i8, i8* %arrayidx35, align 1
  %45 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color36 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %45, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %color36, i32 0, i64 2
  %46 = load i8, i8* %arrayidx37, align 1
  %47 = load i8*, i8** %prev_color.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx38, align 1
  %49 = load i8*, i8** %prev_color.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx39, align 1
  %51 = load i8*, i8** %prev_color.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx40, align 1
  %call41 = call i32 @color_error(i8 zeroext %42, i8 zeroext %44, i8 zeroext %46, i8 zeroext %48, i8 zeroext %50, i8 zeroext %52)
  store i32 %call41, i32* %col_error, align 4
  %53 = load i32, i32* %col_error, align 4
  %54 = load i32, i32* %ref_error, align 4
  %cmp42 = icmp slt i32 %53, %54
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.31
  %55 = load i8*, i8** %color_tone.addr, align 8
  %56 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %color44 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %56, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %color44, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %arrayidx45, i64 3, i32 1, i1 false)
  %57 = load i32, i32* %col_error, align 4
  store i32 %57, i32* %ref_error, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.31
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.26
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.48, %if.then.10
  %58 = load %struct.t_samp_color_elem*, %struct.t_samp_color_elem** %col_ptr, align 8
  %next49 = getelementptr inbounds %struct.t_samp_color_elem, %struct.t_samp_color_elem* %58, i32 0, i32 2
  %59 = load i8*, i8** %next49, align 8
  %60 = bitcast i8* %59 to %struct.t_samp_color_elem*
  store %struct.t_samp_color_elem* %60, %struct.t_samp_color_elem** %col_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @colorize_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %has_alpha, align 4
  %2 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bpp.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %bpp.addr, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i32, i32* %bpp.addr, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i8*, i8** %dest.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 %idxprom1
  store i8 %6, i8* %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %dest.addr, align 8
  %10 = load i8*, i8** %src.addr, align 8
  %11 = load i32, i32* %bpp.addr, align 4
  call void @remap_pixel(i8* %9, i8* %10, i32 %11)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
