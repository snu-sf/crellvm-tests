; ModuleID = './plug-ins/common/file-xmc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.XmcSaveVals = type { i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, [3 x i8*] }
%struct.anon.0 = type { i32, i32 }
%struct._GimpParamRegion = type { i32, i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._XcursorComments = type { i32, %struct._XcursorComment** }
%struct._XcursorComment = type { i32, i32, i8* }
%struct._XcursorImages = type { i32, %struct._XcursorImage**, i8* }
%struct._XcursorImage = type { i32, i32, i32, i32, i32, i32, i32, i32* }
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
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkAlignment = type { %struct._GtkBin, float, float, float, float }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkTextPendingScroll = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GRegex = type opaque
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GMatchInfo = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.thumb_args = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"thumb-size\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Preferred thumbnail size\00", align 1
@query.thumb_return_vals = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str.9 = private unnamed_addr constant [16 x i8] c"Thumbnail image\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"image-width\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"The width of image\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"image-height\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"The height of image\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"The color type of image\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"image-num-layers\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"The number of layeres\00", align 1
@query.save_args = internal constant [15 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0) }], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"x_hot\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"X-coordinate of hot spot\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"y_hot\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"Y-coordinate of hot spot\0AUse (-1, -1) to keep original hot spot.\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Auto-crop or not\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Default nominal size\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"size_replace\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"Replace existent size or not.\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Default delay\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"delay_replace\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Replace existent delay or not.\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"Copyright information.\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"License information.\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Other comment.(taken from \22gimp-comment\22 parasite)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"file-xmc-load\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Loads files of X11 Mouse Cursor file format\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"This plug-in loads X11 Mouse Cursor (XMC) files.\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"Takeshi Matsuyama <tksmashiw@gmail.com>\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Takeshi Matsuyama\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"26 May 2009\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"X11 Mouse Cursor\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"image/x-xcursor\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"xmc\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"0,string,Xcur\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"file-xmc-load-thumb\00", align 1
@.str.55 = private unnamed_addr constant [138 x i8] c"Loads only first frame of X11 Mouse Cursor's animation sequence which nominal size is the closest of thumb-size to be used as a thumbnail\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"file-xmc-save\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"Saves files of X11 cursor file\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"This plug-in saves X11 Mouse Cursor (XMC) files\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@run.values = internal global [6 x %struct._GimpParam] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.62 = private unnamed_addr constant [91 x i8] c"Cannot set the hot spot!\0AYou must arrange layers so that all of them have an intersection.\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"file-xmc\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"XMC\00", align 1
@xmcvals = internal global %struct.XmcSaveVals { i32 0, i32 32, i32 0, i32 50, i32 0 }, align 4
@xmcparas = internal global %struct.anon zeroinitializer, align 8
@.str.65 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"'%s' is not a valid X cursor.\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"Frame %d of '%s' is too wide for an X cursor.\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"Frame %d of '%s' is too high for an X cursor.\00", align 1
@parasiteName = internal global [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0)], align 16
@__func__.find_hotspots_and_dimensions = private unnamed_addr constant [29 x i8] c"find_hotspots_and_dimensions\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"xcIs\00", align 1
@__func__.set_hotspot_to_parasite = private unnamed_addr constant [24 x i8] c"set_hotspot_to_parasite\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"image_ID != -1\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"hot-spot\00", align 1
@make_framename.Counter = internal global [9 x %struct.anon.0] zeroinitializer, align 16
@__func__.make_framename = private unnamed_addr constant [15 x i8] c"make_framename\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"size > 0\00", align 1
@.str.76 = private unnamed_addr constant [91 x i8] c"Sorry, this plug-in cannot handle a cursor which contains over %i different nominal sizes.\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"(%dpx)_%0*d (%dms) (replace)\00", align 1
@__func__.set_comment_to_pname = private unnamed_addr constant [21 x i8] c"set_comment_to_pname\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"xmc-copyright\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"xmc-license\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@__func__.load_thumbnail = private unnamed_addr constant [15 x i8] c"load_thumbnail\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"thumb_width\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"thumb_height\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"thumb_num_layers\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"there is no image chunk in \22%s\22.\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"'%s' is too wide for an X cursor.\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"'%s' is too high for an X cursor.\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"A read error occurred.\00", align 1
@__func__.get_intersection_of_frames = private unnamed_addr constant [27 x i8] c"get_intersection_of_frames\00", align 1
@__func__.load_comments = private unnamed_addr constant [14 x i8] c"load_comments\00", align 1
@__func__.get_comment_from_pname = private unnamed_addr constant [23 x i8] c"get_comment_from_pname\00", align 1
@.str.90 = private unnamed_addr constant [78 x i8] c"The parasite \22%s\22 is too long for an X cursor comment. It was cut off to fit.\00", align 1
@__func__.load_default_hotspot = private unnamed_addr constant [21 x i8] c"load_default_hotspot\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"hotspotRange\00", align 1
@__func__.get_hotspot_from_parasite = private unnamed_addr constant [26 x i8] c"get_hotspot_from_parasite\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"%i %i\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"XMC Options\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.96 = private unnamed_addr constant [71 x i8] c"Enter the X coordinate of the hot spot. The origin is top left corner.\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"Hot spot _X:\00", align 1
@.str.98 = private unnamed_addr constant [71 x i8] c"Enter the Y coordinate of the hot spot. The origin is top left corner.\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"_Auto-Crop all frames.\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.102 = private unnamed_addr constant [206 x i8] c"Remove the empty borders of all frames.\0AThis reduces the file size and may fix the problem that some large cursors disorder the screen.\0AUncheck if you plan to edit the exported cursor using other programs.\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"12px\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"16px\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"24px\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"32px\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"36px\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"40px\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"48px\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"64px\00", align 1
@.str.111 = private unnamed_addr constant [346 x i8] c"Choose the nominal size of frames.\0AIf you don't have plans to make multi-sized cursor, or you have no idea, leave it \2232px\22.\0ANominal size has no relation with the actual size (width or height).\0AIt is only used to determine which frame depends on which animation sequence, and which sequence is used based on the value of \22gtk-cursor-theme-size\22.\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"_Size:\00", align 1
@.str.113 = private unnamed_addr constant [62 x i8] c"_Use this value only for a frame which size is not specified.\00", align 1
@.str.114 = private unnamed_addr constant [57 x i8] c"_Replace the size of all frames even if it is specified.\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.116 = private unnamed_addr constant [65 x i8] c"Enter time span in milliseconds in which each frame is rendered.\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"_Delay:\00", align 1
@.str.118 = private unnamed_addr constant [63 x i8] c"_Use this value only for a frame which delay is not specified.\00", align 1
@.str.119 = private unnamed_addr constant [58 x i8] c"_Replace the delay of all frames even if it is specified.\00", align 1
@.str.120 = private unnamed_addr constant [78 x i8] c"The part of copyright information that exceeded 65535 characters was removed.\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.122 = private unnamed_addr constant [29 x i8] c"Enter copyright information.\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"_Copyright:\00", align 1
@.str.124 = private unnamed_addr constant [76 x i8] c"The part of license information that exceeded 65535 characters was removed.\00", align 1
@.str.125 = private unnamed_addr constant [27 x i8] c"Enter license information.\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"_License:\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"_Other:\00", align 1
@.str.128 = private unnamed_addr constant [33 x i8] c"Enter other comment if you want.\00", align 1
@__func__.comment_entry_callback = private unnamed_addr constant [23 x i8] c"comment_entry_callback\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"commentp\00", align 1
@.str.130 = private unnamed_addr constant [41 x i8] c"strlen (text) <= XCURSOR_COMMENT_MAX_LEN\00", align 1
@__func__.text_view_callback = private unnamed_addr constant [19 x i8] c"text_view_callback\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"commentp != NULL\00", align 1
@.str.132 = private unnamed_addr constant [37 x i8] c"Comment is limited to %d characters.\00", align 1
@__func__.pix_in_region = private unnamed_addr constant [14 x i8] c"pix_in_region\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"xmcrp\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"[(][ ]*(\5Cd+)[ ]*(px|ms)[ ]*[)]\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.136 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.138 = private unnamed_addr constant [69 x i8] c"This plug-in can only handle RGBA image files with 8bit color depth.\00", align 1
@.str.139 = private unnamed_addr constant [60 x i8] c"Frame '%s' is too wide. Please reduce to no more than %dpx.\00", align 1
@.str.140 = private unnamed_addr constant [60 x i8] c"Frame '%s' is too high. Please reduce to no more than %dpx.\00", align 1
@.str.141 = private unnamed_addr constant [43 x i8] c"Width and/or height of frame '%s' is zero!\00", align 1
@.str.142 = private unnamed_addr constant [145 x i8] c"Cannot save the cursor because the hot spot is not on frame '%s'.\0ATry to change the hot spot position, layer geometry or save without auto-crop.\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"file-xmc.c\00", align 1
@__func__.save_image = private unnamed_addr constant [11 x i8] c"save_image\00", align 1
@.str.144 = private unnamed_addr constant [59 x i8] c"save_rgn.width * save_rgn.height < SQR(MAX_SAVE_DIMENSION)\00", align 1
@.str.145 = private unnamed_addr constant [160 x i8] c"Your cursor was successfully saved but it contains one or more frames whose width or height is more than %ipx.\0AIt will clutter the screen in some environments.\00", align 1
@.str.146 = private unnamed_addr constant [261 x i8] c"Your cursor was successfully saved but it contains one or more frames whose nominal size is not supported by GNOME settings.\0AYou can satisfy it by checking \22Replace the size of all frames...\22 in the save dialog, or your cursor may not appear in GNOME settings.\00", align 1
@__func__.get_cropped_region = private unnamed_addr constant [19 x i8] c"get_cropped_region\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@.str.148 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@__func__.set_size_and_delay = private unnamed_addr constant [19 x i8] c"set_size_and_delay\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"framename\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"sizep\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"delayp\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.154 = private unnamed_addr constant [30 x i8] c"Cannot create xcCommentp[%i]\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2, i32 5, %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.thumb_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.thumb_return_vals, i32 0, i32 0))
  %call2 = call i32 @gimp_register_thumbnail_loader(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 1, i32 15, i32 0, %struct._GimpParamDef* getelementptr inbounds ([15 x %struct._GimpParamDef], [15 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call3 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0))
  %call4 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %orig_image_ID = alloca i32, align 4
  %export = alloca i32, align 4
  %hotspotRange = alloca %struct._GimpParamRegion*, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %num_layers = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GimpParamRegion* null, %struct._GimpParamRegion** %hotspotRange, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0)) #9
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %do.end
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call5 = call i32 @load_image(i8* %4, %struct._GError** %error)
  store i32 %call5, i32* %image_ID, align 4
  %5 = load i32, i32* %image_ID, align 4
  %cmp6 = icmp ne i32 %5, -1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %6 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %6, align 4
  store i32 13, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %7 = load i32, i32* %image_ID, align 4
  store i32 %7, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.151

if.else.8:                                        ; preds = %do.end
  %8 = load i8*, i8** %name.addr, align 8
  %call9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.22

if.then.11:                                       ; preds = %if.else.8
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 0
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_string14 = bitcast %union._GimpParamData* %data13 to i8**
  %10 = load i8*, i8** %d_string14, align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data16 to i32*
  %12 = load i32, i32* %d_int32, align 4
  %call17 = call i32 @load_thumbnail(i8* %10, i32 %12, i32* %width, i32* %height, i32* %num_layers, %struct._GError** %error)
  store i32 %call17, i32* %image_ID, align 4
  %13 = load i32, i32* %image_ID, align 4
  %cmp18 = icmp ne i32 %13, -1
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.then.11
  %14 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 6, i32* %14, align 4
  store i32 13, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %15 = load i32, i32* %image_ID, align 4
  store i32 %15, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %16 = load i32, i32* %width, align 4
  store i32 %16, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 0), align 4
  %17 = load i32, i32* %height, align 4
  store i32 %17, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 4, i32 0), align 4
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 4, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 5, i32 0), align 4
  %18 = load i32, i32* %num_layers, align 4
  store i32 %18, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 5, i32 1) to i32*), align 4
  br label %if.end.21

if.else.20:                                       ; preds = %if.then.11
  store i32 0, i32* %status, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.150

if.else.22:                                       ; preds = %if.else.8
  %19 = load i8*, i8** %name.addr, align 8
  %call23 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0)) #9
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.148

if.then.25:                                       ; preds = %if.else.22
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 0
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_int3228 = bitcast %union._GimpParamData* %data27 to i32*
  %21 = load i32, i32* %d_int3228, align 4
  store i32 %21, i32* %run_mode, align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 1
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_int3231 = bitcast %union._GimpParamData* %data30 to i32*
  %23 = load i32, i32* %d_int3231, align 4
  store i32 %23, i32* %orig_image_ID, align 4
  store i32 %23, i32* %image_ID, align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 2
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_int3234 = bitcast %union._GimpParamData* %data33 to i32*
  %25 = load i32, i32* %d_int3234, align 4
  store i32 %25, i32* %drawable_ID, align 4
  %26 = load i32, i32* %image_ID, align 4
  %call35 = call %struct._GimpParamRegion* @get_intersection_of_frames(i32 %26)
  store %struct._GimpParamRegion* %call35, %struct._GimpParamRegion** %hotspotRange, align 8
  %27 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange, align 8
  %tobool = icmp ne %struct._GimpParamRegion* %27, null
  br i1 %tobool, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.then.25
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.62, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 0, i32 0, i8* %call37)
  %28 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %28, align 4
  store i32 4, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %29 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %29, i32 0, i32 2
  %30 = load i8*, i8** %message, align 8
  store i8* %30, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.38:                                        ; preds = %if.then.25
  %31 = load i32, i32* %run_mode, align 4
  switch i32 %31, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.38, %if.end.38
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 0)
  %call39 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 305)
  store i32 %call39, i32* %export, align 4
  %32 = load i32, i32* %export, align 4
  %cmp40 = icmp eq i32 %32, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %sw.bb
  %33 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %33, align 4
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.42:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.38
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.42
  %34 = load i32, i32* %run_mode, align 4
  switch i32 %34, label %sw.default.120 [
    i32 0, label %sw.bb.43
    i32 1, label %sw.bb.50
    i32 2, label %sw.bb.117
  ]

sw.bb.43:                                         ; preds = %sw.epilog
  %call44 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* bitcast (%struct.XmcSaveVals* @xmcvals to i8*))
  %35 = load i32, i32* %image_ID, align 4
  call void @load_comments(i32 %35)
  %36 = load i32, i32* %image_ID, align 4
  %37 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange, align 8
  %call45 = call i32 @load_default_hotspot(i32 %36, %struct._GimpParamRegion* %37)
  %38 = load i32, i32* %image_ID, align 4
  %39 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange, align 8
  %call46 = call i32 @save_dialog(i32 %38, %struct._GimpParamRegion* %39)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %sw.bb.43
  store i32 4, i32* %status, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %sw.bb.43
  br label %sw.epilog.121

sw.bb.50:                                         ; preds = %sw.epilog
  %40 = load i32, i32* %nparams.addr, align 4
  %cmp51 = icmp ne i32 %40, 15
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %sw.bb.50
  store i32 1, i32* %status, align 4
  br label %if.end.116

if.else.53:                                       ; preds = %sw.bb.50
  %41 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 5
  %data55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx54, i32 0, i32 1
  %d_int3256 = bitcast %union._GimpParamData* %data55 to i32*
  %42 = load i32, i32* %d_int3256, align 4
  %43 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 6
  %data58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx57, i32 0, i32 1
  %d_int3259 = bitcast %union._GimpParamData* %data58 to i32*
  %44 = load i32, i32* %d_int3259, align 4
  %45 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange, align 8
  %call60 = call i32 @pix_in_region(i32 %42, i32 %44, %struct._GimpParamRegion* %45)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.69

if.then.62:                                       ; preds = %if.else.53
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 5
  %data64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 1
  %d_int3265 = bitcast %union._GimpParamData* %data64 to i32*
  %47 = load i32, i32* %d_int3265, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %48 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 6
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int3268 = bitcast %union._GimpParamData* %data67 to i32*
  %49 = load i32, i32* %d_int3268, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  br label %if.end.71

if.else.69:                                       ; preds = %if.else.53
  %50 = load i32, i32* %image_ID, align 4
  %51 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange, align 8
  %call70 = call i32 @load_default_hotspot(i32 %50, %struct._GimpParamRegion* %51)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.62
  %52 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %52, i64 7
  %data73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx72, i32 0, i32 1
  %d_int3274 = bitcast %union._GimpParamData* %data73 to i32*
  %53 = load i32, i32* %d_int3274, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 0), align 4
  %54 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %54, i64 8
  %data76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx75, i32 0, i32 1
  %d_int3277 = bitcast %union._GimpParamData* %data76 to i32*
  %55 = load i32, i32* %d_int3277, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 1), align 4
  %56 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %56, i64 9
  %data79 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx78, i32 0, i32 1
  %d_int3280 = bitcast %union._GimpParamData* %data79 to i32*
  %57 = load i32, i32* %d_int3280, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 2), align 4
  %58 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %58, i64 10
  %data82 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx81, i32 0, i32 1
  %d_int3283 = bitcast %union._GimpParamData* %data82 to i32*
  %59 = load i32, i32* %d_int3283, align 4
  %cmp84 = icmp slt i32 %59, 5
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.end.71
  store i32 50, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 3), align 4
  br label %if.end.90

if.else.86:                                       ; preds = %if.end.71
  %60 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %60, i64 10
  %data88 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx87, i32 0, i32 1
  %d_int3289 = bitcast %union._GimpParamData* %data88 to i32*
  %61 = load i32, i32* %d_int3289, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 3), align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.86, %if.then.85
  %62 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %62, i64 11
  %data92 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx91, i32 0, i32 1
  %d_int3293 = bitcast %union._GimpParamData* %data92 to i32*
  %63 = load i32, i32* %d_int3293, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 4), align 4
  %64 = load i32, i32* %image_ID, align 4
  call void @load_comments(i32 %64)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.90
  %65 = load i32, i32* %i, align 4
  %cmp94 = icmp slt i32 %65, 3
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %i, align 4
  %add = add nsw i32 %66, 12
  %idxprom = sext i32 %add to i64
  %67 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx95 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %67, i64 %idxprom
  %data96 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx95, i32 0, i32 1
  %d_string97 = bitcast %union._GimpParamData* %data96 to i8**
  %68 = load i8*, i8** %d_string97, align 8
  %tobool98 = icmp ne i8* %68, null
  br i1 %tobool98, label %land.lhs.true, label %if.end.115

land.lhs.true:                                    ; preds = %for.body
  %69 = load i32, i32* %i, align 4
  %add99 = add nsw i32 %69, 12
  %idxprom100 = sext i32 %add99 to i64
  %70 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %70, i64 %idxprom100
  %data102 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx101, i32 0, i32 1
  %d_string103 = bitcast %union._GimpParamData* %data102 to i8**
  %71 = load i8*, i8** %d_string103, align 8
  %call104 = call i32 @g_utf8_validate(i8* %71, i64 -1, i8** null)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %land.lhs.true
  %72 = load i32, i32* %i, align 4
  %add107 = add nsw i32 %72, 12
  %idxprom108 = sext i32 %add107 to i64
  %73 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %73, i64 %idxprom108
  %data110 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx109, i32 0, i32 1
  %d_string111 = bitcast %union._GimpParamData* %data110 to i8**
  %74 = load i8*, i8** %d_string111, align 8
  %call112 = call noalias i8* @g_strdup(i8* %74)
  %75 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %75 to i64
  %arrayidx114 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom113
  store i8* %call112, i8** %arrayidx114, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.106, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.115
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.116

if.end.116:                                       ; preds = %for.end, %if.then.52
  br label %sw.epilog.121

sw.bb.117:                                        ; preds = %sw.epilog
  %call118 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* bitcast (%struct.XmcSaveVals* @xmcvals to i8*))
  %77 = load i32, i32* %image_ID, align 4
  call void @load_comments(i32 %77)
  %78 = load i32, i32* %image_ID, align 4
  %79 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange, align 8
  %call119 = call i32 @load_default_hotspot(i32 %78, %struct._GimpParamRegion* %79)
  br label %sw.epilog.121

sw.default.120:                                   ; preds = %sw.epilog
  br label %sw.epilog.121

sw.epilog.121:                                    ; preds = %sw.default.120, %sw.bb.117, %if.end.116, %if.end.49
  %80 = load i32, i32* %status, align 4
  %cmp122 = icmp eq i32 %80, 3
  br i1 %cmp122, label %if.then.123, label %if.end.133

if.then.123:                                      ; preds = %sw.epilog.121
  %81 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %81, i64 3
  %data125 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx124, i32 0, i32 1
  %d_string126 = bitcast %union._GimpParamData* %data125 to i8**
  %82 = load i8*, i8** %d_string126, align 8
  %83 = load i32, i32* %image_ID, align 4
  %84 = load i32, i32* %drawable_ID, align 4
  %85 = load i32, i32* %orig_image_ID, align 4
  %call127 = call i32 @save_image(i8* %82, i32 %83, i32 %84, i32 %85, %struct._GError** %error)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.129, label %if.else.131

if.then.129:                                      ; preds = %if.then.123
  %call130 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* bitcast (%struct.XmcSaveVals* @xmcvals to i8*), i32 20)
  br label %if.end.132

if.else.131:                                      ; preds = %if.then.123
  store i32 0, i32* %status, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.131, %if.then.129
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %sw.epilog.121
  %86 = load i32, i32* %export, align 4
  %cmp134 = icmp eq i32 %86, 2
  br i1 %cmp134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.133
  %87 = load i32, i32* %image_ID, align 4
  %call136 = call i32 @gimp_image_delete(i32 %87)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.133
  %88 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange, align 8
  %89 = bitcast %struct._GimpParamRegion* %88 to i8*
  call void @g_free(i8* %89)
  store i32 0, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.145, %if.end.137
  %90 = load i32, i32* %i, align 4
  %cmp139 = icmp slt i32 %90, 3
  br i1 %cmp139, label %for.body.140, label %for.end.147

for.body.140:                                     ; preds = %for.cond.138
  %91 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %91 to i64
  %arrayidx142 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom141
  %92 = load i8*, i8** %arrayidx142, align 8
  call void @g_free(i8* %92)
  %93 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %93 to i64
  %arrayidx144 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom143
  store i8* null, i8** %arrayidx144, align 8
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.140
  %94 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %94, 1
  store i32 %inc146, i32* %i, align 4
  br label %for.cond.138

for.end.147:                                      ; preds = %for.cond.138
  br label %if.end.149

if.else.148:                                      ; preds = %if.else.22
  store i32 1, i32* %status, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %for.end.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.21
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end
  %95 = load i32, i32* %status, align 4
  %cmp152 = icmp ne i32 %95, 3
  br i1 %cmp152, label %land.lhs.true.153, label %if.end.157

land.lhs.true.153:                                ; preds = %if.end.151
  %96 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool154 = icmp ne %struct._GError* %96, null
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %land.lhs.true.153
  %97 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %97, align 4
  store i32 4, i32* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %98 = load %struct._GError*, %struct._GError** %error, align 8
  %message156 = getelementptr inbounds %struct._GError, %struct._GError* %98, i32 0, i32 2
  %99 = load i8*, i8** %message156, align 8
  store i8* %99, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %land.lhs.true.153, %if.end.151
  %100 = load i32, i32* %status, align 4
  store i32 %100, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([6 x %struct._GimpParam], [6 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.157, %if.then.41, %if.then.36
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

declare i32 @gimp_register_file_handler_mime(i8*, i8*) #1

declare i32 @gimp_register_magic_load_handler(i8*, i8*, i8*, i8*) #1

declare i32 @gimp_register_thumbnail_loader(i8*, i8*) #1

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
define internal i32 @load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %img_width = alloca i32, align 4
  %img_height = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %commentsp = alloca %struct._XcursorComments*, align 8
  %imagesp = alloca %struct._XcursorImages*, align 8
  %delay = alloca i32, align 4
  %framename = alloca i8*, align 8
  %tmppixel = alloca i32*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #8
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0)) #6
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #8
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @XcursorFileLoad(%struct._IO_FILE* %6, %struct._XcursorComments** %commentsp, %struct._XcursorImages** %imagesp)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0)) #6
  %8 = load i8*, i8** %filename.addr, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %8)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 0, i32 0, i8* %call10, i8* %call11)
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0)) #6
  %9 = load i8*, i8** %filename.addr, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call15 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call13, i8* %call14)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %10 = load i32, i32* %i, align 4
  %11 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %11, i32 0, i32 0
  %12 = load i32, i32* %nimage, align 4
  %cmp16 = icmp slt i32 %10, %12
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %14, i32 0, i32 1
  %15 = load %struct._XcursorImage**, %struct._XcursorImage*** %images, align 8
  %arrayidx = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %15, i64 %idxprom
  %16 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx, align 8
  %width = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %16, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %cmp17 = icmp ugt i32 %17, 512
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.body
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i32 0, i32 0)) #6
  %19 = load i32, i32* %i, align 4
  %add = add nsw i32 %19, 1
  %20 = load i8*, i8** %filename.addr, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %20)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 0, i32 0, i8* %call19, i32 %add, i8* %call20)
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images23 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %22, i32 0, i32 1
  %23 = load %struct._XcursorImage**, %struct._XcursorImage*** %images23, align 8
  %arrayidx24 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %23, i64 %idxprom22
  %24 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx24, align 8
  %height = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %24, i32 0, i32 3
  %25 = load i32, i32* %height, align 4
  %cmp25 = icmp ugt i32 %25, 512
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.21
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0)) #6
  %27 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %27, 1
  %28 = load i8*, i8** %filename.addr, align 8
  %call29 = call i8* @gimp_filename_to_utf8(i8* %28)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %26, i32 0, i32 0, i8* %call27, i32 %add28, i8* %call29)
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  call void @find_hotspots_and_dimensions(%struct._XcursorImages* %30, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), i32* %img_width, i32* %img_height)
  %31 = load i32, i32* %img_width, align 4
  %32 = load i32, i32* %img_height, align 4
  %call31 = call i32 @gimp_image_new(i32 %31, i32 %32, i32 0)
  store i32 %call31, i32* %image_ID, align 4
  %33 = load i32, i32* %image_ID, align 4
  %34 = load i8*, i8** %filename.addr, align 8
  %call32 = call i32 @gimp_image_set_filename(i32 %33, i8* %34)
  %35 = load i32, i32* %image_ID, align 4
  %call33 = call i32 @set_hotspot_to_parasite(i32 %35)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %for.end
  %36 = load i32, i32* %img_width, align 4
  %37 = load i32, i32* %img_height, align 4
  %mul = mul nsw i32 %36, %37
  %conv = sext i32 %mul to i64
  %call37 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %38 = bitcast i8* %call37 to i32*
  store i32* %38, i32** %tmppixel, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.110, %if.end.36
  %39 = load i32, i32* %i, align 4
  %40 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage39 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %40, i32 0, i32 0
  %41 = load i32, i32* %nimage39, align 4
  %cmp40 = icmp slt i32 %39, %41
  br i1 %cmp40, label %for.body.42, label %for.end.112

for.body.42:                                      ; preds = %for.cond.38
  %42 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %42 to i64
  %43 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images44 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %43, i32 0, i32 1
  %44 = load %struct._XcursorImage**, %struct._XcursorImage*** %images44, align 8
  %arrayidx45 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %44, i64 %idxprom43
  %45 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx45, align 8
  %delay46 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %45, i32 0, i32 6
  %46 = load i32, i32* %delay46, align 4
  store i32 %46, i32* %delay, align 4
  %47 = load i32, i32* %delay, align 4
  %cmp47 = icmp ult i32 %47, 5
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.42
  store i32 50, i32* %delay, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.body.42
  %48 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %48 to i64
  %49 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images52 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %49, i32 0, i32 1
  %50 = load %struct._XcursorImage**, %struct._XcursorImage*** %images52, align 8
  %arrayidx53 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %50, i64 %idxprom51
  %51 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx53, align 8
  %size = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %51, i32 0, i32 1
  %52 = load i32, i32* %size, align 4
  %53 = load i32, i32* %delay, align 4
  %54 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage54 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %54, i32 0, i32 0
  %55 = load i32, i32* %nimage54, align 4
  %cmp55 = icmp sgt i32 %55, 100
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.50
  br label %cond.end

cond.false:                                       ; preds = %if.end.50
  %56 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage57 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %56, i32 0, i32 0
  %57 = load i32, i32* %nimage57, align 4
  %cmp58 = icmp sgt i32 %57, 10
  %cond = select i1 %cmp58, i32 2, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond60 = phi i32 [ 3, %cond.true ], [ %cond, %cond.false ]
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call61 = call i8* @make_framename(i32 %52, i32 %53, i32 %cond60, %struct._GError** %58)
  store i8* %call61, i8** %framename, align 8
  %59 = load i8*, i8** %framename, align 8
  %tobool62 = icmp ne i8* %59, null
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %cond.end
  %60 = load i32, i32* %image_ID, align 4
  %61 = load i8*, i8** %framename, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %62 to i64
  %63 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images66 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %63, i32 0, i32 1
  %64 = load %struct._XcursorImage**, %struct._XcursorImage*** %images66, align 8
  %arrayidx67 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %64, i64 %idxprom65
  %65 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx67, align 8
  %width68 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %65, i32 0, i32 2
  %66 = load i32, i32* %width68, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %67 to i64
  %68 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images70 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %68, i32 0, i32 1
  %69 = load %struct._XcursorImage**, %struct._XcursorImage*** %images70, align 8
  %arrayidx71 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %69, i64 %idxprom69
  %70 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx71, align 8
  %height72 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %70, i32 0, i32 3
  %71 = load i32, i32* %height72, align 4
  %call73 = call i32 @gimp_layer_new(i32 %60, i8* %61, i32 %66, i32 %71, i32 1, double 1.000000e+02, i32 0)
  store i32 %call73, i32* %layer_ID, align 4
  %72 = load i32, i32* %image_ID, align 4
  %73 = load i32, i32* %layer_ID, align 4
  %call74 = call i32 @gimp_image_insert_layer(i32 %72, i32 %73, i32 -1, i32 0)
  %74 = load i32, i32* %layer_ID, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %76 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %76 to i64
  %77 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images76 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %77, i32 0, i32 1
  %78 = load %struct._XcursorImage**, %struct._XcursorImage*** %images76, align 8
  %arrayidx77 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %78, i64 %idxprom75
  %79 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx77, align 8
  %xhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %79, i32 0, i32 4
  %80 = load i32, i32* %xhot, align 4
  %sub = sub i32 %75, %80
  %81 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  %82 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %82 to i64
  %83 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images79 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %83, i32 0, i32 1
  %84 = load %struct._XcursorImage**, %struct._XcursorImage*** %images79, align 8
  %arrayidx80 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %84, i64 %idxprom78
  %85 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx80, align 8
  %yhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %85, i32 0, i32 5
  %86 = load i32, i32* %yhot, align 4
  %sub81 = sub i32 %81, %86
  %call82 = call i32 @gimp_layer_translate(i32 %74, i32 %sub, i32 %sub81)
  %87 = load i8*, i8** %framename, align 8
  call void @g_free(i8* %87)
  %88 = load i32, i32* %layer_ID, align 4
  %call83 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %88)
  store %struct._GimpDrawable* %call83, %struct._GimpDrawable** %drawable, align 8
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width84 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %90, i32 0, i32 1
  %91 = load i32, i32* %width84, align 4
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height85 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %92, i32 0, i32 2
  %93 = load i32, i32* %height85, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %89, i32 0, i32 0, i32 %91, i32 %93, i32 1, i32 0)
  store i32 0, i32* %j, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.101, %if.end.64
  %94 = load i32, i32* %j, align 4
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width87 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %95, i32 0, i32 1
  %96 = load i32, i32* %width87, align 4
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height88 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %97, i32 0, i32 2
  %98 = load i32, i32* %height88, align 4
  %mul89 = mul i32 %96, %98
  %cmp90 = icmp ult i32 %94, %mul89
  br i1 %cmp90, label %for.body.92, label %for.end.103

for.body.92:                                      ; preds = %for.cond.86
  %99 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %100 to i64
  %101 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images95 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %101, i32 0, i32 1
  %102 = load %struct._XcursorImage**, %struct._XcursorImage*** %images95, align 8
  %arrayidx96 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %102, i64 %idxprom94
  %103 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx96, align 8
  %pixels = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %103, i32 0, i32 7
  %104 = load i32*, i32** %pixels, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %104, i64 %idxprom93
  %105 = load i32, i32* %arrayidx97, align 4
  %call98 = call i32 @separate_alpha(i32 %105)
  %106 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %106 to i64
  %107 = load i32*, i32** %tmppixel, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %107, i64 %idxprom99
  store i32 %call98, i32* %arrayidx100, align 4
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.92
  %108 = load i32, i32* %j, align 4
  %inc102 = add nsw i32 %108, 1
  store i32 %inc102, i32* %j, align 4
  br label %for.cond.86

for.end.103:                                      ; preds = %for.cond.86
  %109 = load i32*, i32** %tmppixel, align 8
  %110 = bitcast i32* %109 to i8*
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width104 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 1
  %112 = load i32, i32* %width104, align 4
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height105 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %113, i32 0, i32 2
  %114 = load i32, i32* %height105, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %110, i32 0, i32 0, i32 %112, i32 %114)
  %115 = load i32, i32* %i, align 4
  %add106 = add nsw i32 %115, 1
  %116 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage107 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %116, i32 0, i32 0
  %117 = load i32, i32* %nimage107, align 4
  %div = sdiv i32 %add106, %117
  %conv108 = sitofp i32 %div to double
  %call109 = call i32 @gimp_progress_update(double %conv108)
  %118 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %118)
  %119 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %119)
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end.103
  %120 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %120, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.38

for.end.112:                                      ; preds = %for.cond.38
  %call113 = call i32 @gimp_progress_update(double 1.000000e+00)
  %121 = load i32*, i32** %tmppixel, align 8
  %122 = bitcast i32* %121 to i8*
  call void @g_free(i8* %122)
  %123 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  %tobool114 = icmp ne %struct._XcursorComments* %123, null
  br i1 %tobool114, label %if.then.115, label %if.end.135

if.then.115:                                      ; preds = %for.end.112
  store i32 0, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.132, %if.then.115
  %124 = load i32, i32* %i, align 4
  %125 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  %ncomment = getelementptr inbounds %struct._XcursorComments, %struct._XcursorComments* %125, i32 0, i32 0
  %126 = load i32, i32* %ncomment, align 4
  %cmp117 = icmp slt i32 %124, %126
  br i1 %cmp117, label %for.body.119, label %for.end.134

for.body.119:                                     ; preds = %for.cond.116
  %127 = load i32, i32* %image_ID, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %128 to i64
  %129 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  %comments = getelementptr inbounds %struct._XcursorComments, %struct._XcursorComments* %129, i32 0, i32 1
  %130 = load %struct._XcursorComment**, %struct._XcursorComment*** %comments, align 8
  %arrayidx121 = getelementptr inbounds %struct._XcursorComment*, %struct._XcursorComment** %130, i64 %idxprom120
  %131 = load %struct._XcursorComment*, %struct._XcursorComment** %arrayidx121, align 8
  %comment = getelementptr inbounds %struct._XcursorComment, %struct._XcursorComment* %131, i32 0, i32 2
  %132 = load i8*, i8** %comment, align 8
  %133 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %133 to i64
  %134 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  %comments123 = getelementptr inbounds %struct._XcursorComments, %struct._XcursorComments* %134, i32 0, i32 1
  %135 = load %struct._XcursorComment**, %struct._XcursorComment*** %comments123, align 8
  %arrayidx124 = getelementptr inbounds %struct._XcursorComment*, %struct._XcursorComment** %135, i64 %idxprom122
  %136 = load %struct._XcursorComment*, %struct._XcursorComment** %arrayidx124, align 8
  %comment_type = getelementptr inbounds %struct._XcursorComment, %struct._XcursorComment* %136, i32 0, i32 1
  %137 = load i32, i32* %comment_type, align 4
  %sub125 = sub i32 %137, 1
  %idxprom126 = zext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds [3 x i8*], [3 x i8*]* @parasiteName, i32 0, i64 %idxprom126
  %138 = load i8*, i8** %arrayidx127, align 8
  %call128 = call i32 @set_comment_to_pname(i32 %127, i8* %132, i8* %138)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %for.body.119
  store i32 -1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %for.body.119
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %139 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %139, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.116

for.end.134:                                      ; preds = %for.cond.116
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end.112
  %140 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  call void @XcursorImagesDestroy(%struct._XcursorImages* %140)
  %141 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  call void @XcursorCommentsDestroy(%struct._XcursorComments* %141)
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call136 = call i32 @fclose(%struct._IO_FILE* %142)
  %call137 = call i32 @gimp_progress_end()
  %143 = load i32, i32* %image_ID, align 4
  store i32 %143, i32* %retval
  br label %return

return:                                           ; preds = %if.end.135, %if.then.130, %if.then.63, %if.then.35, %if.then.26, %if.then.18, %if.then.9, %if.then
  %144 = load i32, i32* %retval
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define internal i32 @load_thumbnail(i8* %filename, i32 %thumb_size, i32* %thumb_width, i32* %thumb_height, i32* %thumb_num_layers, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %thumb_size.addr = alloca i32, align 4
  %thumb_width.addr = alloca i32*, align 8
  %thumb_height.addr = alloca i32*, align 8
  %thumb_num_layers.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  %ntoc = alloca i32, align 4
  %sel_num = alloca i32, align 4
  %xcIs = alloca %struct._XcursorImages*, align 8
  %xcI = alloca %struct._XcursorImage*, align 8
  %positions = alloca i32*, align 8
  %size = alloca i32, align 4
  %diff = alloca i32, align 4
  %min_diff = alloca i32, align 4
  %type = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %tmppixel = alloca i32*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %thumb_size, i32* %thumb_size.addr, align 4
  store i32* %thumb_width, i32** %thumb_width.addr, align 8
  store i32* %thumb_height, i32** %thumb_height.addr, align 8
  store i32* %thumb_num_layers, i32** %thumb_num_layers.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %ntoc, align 4
  store i32 -1, i32* %sel_num, align 4
  store %struct._XcursorImages* null, %struct._XcursorImages** %xcIs, align 8
  store i32 32767, i32* %min_diff, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  store i32 -1, i32* %image_ID, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %thumb_width.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.load_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %thumb_height.addr, align 8
  %tobool2 = icmp ne i32* %1, null
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.load_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32*, i32** %thumb_num_layers.addr, align 8
  %tobool8 = icmp ne i32* %2, null
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.load_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load i32*, i32** %thumb_width.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %thumb_height.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %thumb_num_layers.addr, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %do.end.12
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @g_file_error_quark()
  %call15 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call15, align 4
  %call16 = call i32 @g_file_error_from_errno(i32 %9)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0)) #6
  %10 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call19 = call i32* @__errno_location() #8
  %11 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %11) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call14, i32 %call16, i8* %call17, i8* %call18, i8* %call20)
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 @fseek(%struct._IO_FILE* %12, i64 12, i32 0)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @read32(%struct._IO_FILE* %13, %struct._GError** %14)
  store i32 %call23, i32* %ntoc, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %tobool24 = icmp ne %struct._GError* %16, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.21
  %17 = load i32, i32* %ntoc, align 4
  %conv = zext i32 %17 to i64
  %mul = mul i64 %conv, 4
  %call27 = call noalias i8* @g_malloc(i64 %mul)
  %18 = bitcast i8* %call27 to i32*
  store i32* %18, i32** %positions, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %19 = load i32, i32* %ntoc, align 4
  %cmp28 = icmp ugt i32 %19, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call i32 @read32(%struct._IO_FILE* %20, %struct._GError** %21)
  store i32 %call30, i32* %type, align 4
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  %tobool31 = icmp ne %struct._GError* %23, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %for.body
  %24 = load i32, i32* %type, align 4
  %cmp34 = icmp ne i32 %24, -196606
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.33
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call37 = call i32 @fseek(%struct._IO_FILE* %25, i64 8, i32 1)
  br label %if.end.56

if.else.38:                                       ; preds = %if.end.33
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @read32(%struct._IO_FILE* %26, %struct._GError** %27)
  store i32 %call39, i32* %size, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  %tobool40 = icmp ne %struct._GError* %29, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else.38
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.else.38
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call43 = call i32 @read32(%struct._IO_FILE* %30, %struct._GError** %31)
  %32 = load i32*, i32** %thumb_num_layers.addr, align 8
  %33 = load i32, i32* %32, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load i32*, i32** %positions, align 8
  %arrayidx = getelementptr inbounds i32, i32* %34, i64 %idxprom
  store i32 %call43, i32* %arrayidx, align 4
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GError*, %struct._GError** %35, align 8
  %tobool44 = icmp ne %struct._GError* %36, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  %37 = load i32, i32* %thumb_size.addr, align 4
  %38 = load i32, i32* %size, align 4
  %sub = sub i32 %37, %38
  %cmp47 = icmp ult i32 %sub, 0
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.46
  %39 = load i32, i32* %thumb_size.addr, align 4
  %40 = load i32, i32* %size, align 4
  %sub49 = sub i32 %39, %40
  %sub50 = sub i32 0, %sub49
  br label %cond.end

cond.false:                                       ; preds = %if.end.46
  %41 = load i32, i32* %thumb_size.addr, align 4
  %42 = load i32, i32* %size, align 4
  %sub51 = sub i32 %41, %42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub50, %cond.true ], [ %sub51, %cond.false ]
  store i32 %cond, i32* %diff, align 4
  %43 = load i32, i32* %diff, align 4
  %44 = load i32, i32* %min_diff, align 4
  %cmp52 = icmp ult i32 %43, %44
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %cond.end
  %45 = load i32, i32* %diff, align 4
  store i32 %45, i32* %min_diff, align 4
  %46 = load i32*, i32** %thumb_num_layers.addr, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %sel_num, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %cond.end
  %48 = load i32*, i32** %thumb_num_layers.addr, align 8
  %49 = load i32, i32* %48, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %48, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %50 = load i32, i32* %ntoc, align 4
  %dec = add i32 %50, -1
  store i32 %dec, i32* %ntoc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %sel_num, align 4
  %cmp57 = icmp slt i32 %51, 0
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %for.end
  %52 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.86, i32 0, i32 0)) #6
  %53 = load i8*, i8** %filename.addr, align 8
  %call61 = call i8* @gimp_filename_to_utf8(i8* %53)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %52, i32 0, i32 0, i8* %call60, i8* %call61)
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %for.end
  %54 = load i32*, i32** %thumb_num_layers.addr, align 8
  %55 = load i32, i32* %54, align 4
  %call63 = call %struct._XcursorImages* @XcursorImagesCreate(i32 %55)
  store %struct._XcursorImages* %call63, %struct._XcursorImages** %xcIs, align 8
  %56 = load i32*, i32** %thumb_num_layers.addr, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %nimage = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %58, i32 0, i32 0
  store i32 %57, i32* %nimage, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.93, %if.end.62
  %59 = load i32, i32* %i, align 4
  %60 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %nimage65 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %60, i32 0, i32 0
  %61 = load i32, i32* %nimage65, align 4
  %cmp66 = icmp slt i32 %59, %61
  br i1 %cmp66, label %for.body.68, label %for.end.95

for.body.68:                                      ; preds = %for.cond.64
  %call69 = call %struct._XcursorImage* @XcursorImageCreate(i32 0, i32 0)
  store %struct._XcursorImage* %call69, %struct._XcursorImage** %xcI, align 8
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %63 to i64
  %64 = load i32*, i32** %positions, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %64, i64 %idxprom70
  %65 = load i32, i32* %arrayidx71, align 4
  %conv72 = zext i32 %65 to i64
  %call73 = call i32 @fseek(%struct._IO_FILE* %62, i64 %conv72, i32 0)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call74 = call i32 @fseek(%struct._IO_FILE* %66, i64 16, i32 1)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call75 = call i32 @read32(%struct._IO_FILE* %67, %struct._GError** %68)
  %69 = load %struct._XcursorImage*, %struct._XcursorImage** %xcI, align 8
  %width = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %69, i32 0, i32 2
  store i32 %call75, i32* %width, align 4
  %70 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %71 = load %struct._GError*, %struct._GError** %70, align 8
  %tobool76 = icmp ne %struct._GError* %71, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.68
  store i32 -1, i32* %retval
  br label %return

if.end.78:                                        ; preds = %for.body.68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %73 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call79 = call i32 @read32(%struct._IO_FILE* %72, %struct._GError** %73)
  %74 = load %struct._XcursorImage*, %struct._XcursorImage** %xcI, align 8
  %height = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %74, i32 0, i32 3
  store i32 %call79, i32* %height, align 4
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %76 = load %struct._GError*, %struct._GError** %75, align 8
  %tobool80 = icmp ne %struct._GError* %76, null
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.78
  store i32 -1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.end.78
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %78 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call83 = call i32 @read32(%struct._IO_FILE* %77, %struct._GError** %78)
  %79 = load %struct._XcursorImage*, %struct._XcursorImage** %xcI, align 8
  %xhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %79, i32 0, i32 4
  store i32 %call83, i32* %xhot, align 4
  %80 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %81 = load %struct._GError*, %struct._GError** %80, align 8
  %tobool84 = icmp ne %struct._GError* %81, null
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  store i32 -1, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.82
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call87 = call i32 @read32(%struct._IO_FILE* %82, %struct._GError** %83)
  %84 = load %struct._XcursorImage*, %struct._XcursorImage** %xcI, align 8
  %yhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %84, i32 0, i32 5
  store i32 %call87, i32* %yhot, align 4
  %85 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %86 = load %struct._GError*, %struct._GError** %85, align 8
  %tobool88 = icmp ne %struct._GError* %86, null
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.end.86
  %87 = load %struct._XcursorImage*, %struct._XcursorImage** %xcI, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %88 to i64
  %89 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %89, i32 0, i32 1
  %90 = load %struct._XcursorImage**, %struct._XcursorImage*** %images, align 8
  %arrayidx92 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %90, i64 %idxprom91
  store %struct._XcursorImage* %87, %struct._XcursorImage** %arrayidx92, align 8
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.90
  %91 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %91, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.64

for.end.95:                                       ; preds = %for.cond.64
  %92 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %93 = load i32*, i32** %thumb_width.addr, align 8
  %94 = load i32*, i32** %thumb_height.addr, align 8
  call void @find_hotspots_and_dimensions(%struct._XcursorImages* %92, i32* null, i32* null, i32* %93, i32* %94)
  %95 = load i32*, i32** %thumb_width.addr, align 8
  %96 = load i32, i32* %95, align 4
  %cmp96 = icmp sgt i32 %96, 512
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %for.end.95
  %97 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.87, i32 0, i32 0)) #6
  %98 = load i8*, i8** %filename.addr, align 8
  %call100 = call i8* @gimp_filename_to_utf8(i8* %98)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %97, i32 0, i32 0, i8* %call99, i8* %call100)
  store i32 -1, i32* %retval
  br label %return

if.end.101:                                       ; preds = %for.end.95
  %99 = load i32*, i32** %thumb_height.addr, align 8
  %100 = load i32, i32* %99, align 4
  %cmp102 = icmp sgt i32 %100, 512
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.end.101
  %101 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.88, i32 0, i32 0)) #6
  %102 = load i8*, i8** %filename.addr, align 8
  %call106 = call i8* @gimp_filename_to_utf8(i8* %102)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %101, i32 0, i32 0, i8* %call105, i8* %call106)
  store i32 -1, i32* %retval
  br label %return

if.end.107:                                       ; preds = %if.end.101
  %103 = load i32, i32* %sel_num, align 4
  %idxprom108 = sext i32 %103 to i64
  %104 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images109 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %104, i32 0, i32 1
  %105 = load %struct._XcursorImage**, %struct._XcursorImage*** %images109, align 8
  %arrayidx110 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %105, i64 %idxprom108
  %106 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx110, align 8
  %width111 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %106, i32 0, i32 2
  %107 = load i32, i32* %width111, align 4
  %108 = load i32, i32* %sel_num, align 4
  %idxprom112 = sext i32 %108 to i64
  %109 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images113 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %109, i32 0, i32 1
  %110 = load %struct._XcursorImage**, %struct._XcursorImage*** %images113, align 8
  %arrayidx114 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %110, i64 %idxprom112
  %111 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx114, align 8
  %height115 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %111, i32 0, i32 3
  %112 = load i32, i32* %height115, align 4
  %call116 = call i32 @gimp_image_new(i32 %107, i32 %112, i32 0)
  store i32 %call116, i32* %image_ID, align 4
  %113 = load i32, i32* %image_ID, align 4
  %114 = load i32, i32* %sel_num, align 4
  %idxprom117 = sext i32 %114 to i64
  %115 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images118 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %115, i32 0, i32 1
  %116 = load %struct._XcursorImage**, %struct._XcursorImage*** %images118, align 8
  %arrayidx119 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %116, i64 %idxprom117
  %117 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx119, align 8
  %width120 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %117, i32 0, i32 2
  %118 = load i32, i32* %width120, align 4
  %119 = load i32, i32* %sel_num, align 4
  %idxprom121 = sext i32 %119 to i64
  %120 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images122 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %120, i32 0, i32 1
  %121 = load %struct._XcursorImage**, %struct._XcursorImage*** %images122, align 8
  %arrayidx123 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %121, i64 %idxprom121
  %122 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx123, align 8
  %height124 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %122, i32 0, i32 3
  %123 = load i32, i32* %height124, align 4
  %call125 = call i32 @gimp_layer_new(i32 %113, i8* null, i32 %118, i32 %123, i32 1, double 1.000000e+02, i32 0)
  store i32 %call125, i32* %layer_ID, align 4
  %124 = load i32, i32* %image_ID, align 4
  %125 = load i32, i32* %layer_ID, align 4
  %call126 = call i32 @gimp_image_insert_layer(i32 %124, i32 %125, i32 -1, i32 0)
  %126 = load i32, i32* %layer_ID, align 4
  %call127 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %126)
  store %struct._GimpDrawable* %call127, %struct._GimpDrawable** %drawable, align 8
  %127 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %128 = load i32, i32* %sel_num, align 4
  %idxprom128 = sext i32 %128 to i64
  %129 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images129 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %129, i32 0, i32 1
  %130 = load %struct._XcursorImage**, %struct._XcursorImage*** %images129, align 8
  %arrayidx130 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %130, i64 %idxprom128
  %131 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx130, align 8
  %width131 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %131, i32 0, i32 2
  %132 = load i32, i32* %width131, align 4
  %133 = load i32, i32* %sel_num, align 4
  %idxprom132 = sext i32 %133 to i64
  %134 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images133 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %134, i32 0, i32 1
  %135 = load %struct._XcursorImage**, %struct._XcursorImage*** %images133, align 8
  %arrayidx134 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %135, i64 %idxprom132
  %136 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx134, align 8
  %height135 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %136, i32 0, i32 3
  %137 = load i32, i32* %height135, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %127, i32 0, i32 0, i32 %132, i32 %137, i32 1, i32 0)
  %138 = load i32, i32* %sel_num, align 4
  %idxprom136 = sext i32 %138 to i64
  %139 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images137 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %139, i32 0, i32 1
  %140 = load %struct._XcursorImage**, %struct._XcursorImage*** %images137, align 8
  %arrayidx138 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %140, i64 %idxprom136
  %141 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx138, align 8
  %width139 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %141, i32 0, i32 2
  %142 = load i32, i32* %width139, align 4
  %143 = load i32, i32* %sel_num, align 4
  %idxprom140 = sext i32 %143 to i64
  %144 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images141 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %144, i32 0, i32 1
  %145 = load %struct._XcursorImage**, %struct._XcursorImage*** %images141, align 8
  %arrayidx142 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %145, i64 %idxprom140
  %146 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx142, align 8
  %height143 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %146, i32 0, i32 3
  %147 = load i32, i32* %height143, align 4
  %mul144 = mul i32 %142, %147
  %conv145 = zext i32 %mul144 to i64
  %call146 = call noalias i8* @g_malloc_n(i64 %conv145, i64 4)
  %148 = bitcast i8* %call146 to i32*
  store i32* %148, i32** %tmppixel, align 8
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %150 = load i32, i32* %sel_num, align 4
  %idxprom147 = sext i32 %150 to i64
  %151 = load i32*, i32** %positions, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %151, i64 %idxprom147
  %152 = load i32, i32* %arrayidx148, align 4
  %conv149 = zext i32 %152 to i64
  %call150 = call i32 @fseek(%struct._IO_FILE* %149, i64 %conv149, i32 0)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call151 = call i32 @fseek(%struct._IO_FILE* %153, i64 36, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.176, %if.end.107
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* %sel_num, align 4
  %idxprom153 = sext i32 %155 to i64
  %156 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images154 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %156, i32 0, i32 1
  %157 = load %struct._XcursorImage**, %struct._XcursorImage*** %images154, align 8
  %arrayidx155 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %157, i64 %idxprom153
  %158 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx155, align 8
  %width156 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %158, i32 0, i32 2
  %159 = load i32, i32* %width156, align 4
  %160 = load i32, i32* %sel_num, align 4
  %idxprom157 = sext i32 %160 to i64
  %161 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs, align 8
  %images158 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %161, i32 0, i32 1
  %162 = load %struct._XcursorImage**, %struct._XcursorImage*** %images158, align 8
  %arrayidx159 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %162, i64 %idxprom157
  %163 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx159, align 8
  %height160 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %163, i32 0, i32 3
  %164 = load i32, i32* %height160, align 4
  %mul161 = mul i32 %159, %164
  %cmp162 = icmp ult i32 %154, %mul161
  br i1 %cmp162, label %for.body.164, label %for.end.178

for.body.164:                                     ; preds = %for.cond.152
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %166 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call165 = call i32 @read32(%struct._IO_FILE* %165, %struct._GError** %166)
  %167 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %167 to i64
  %168 = load i32*, i32** %tmppixel, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %168, i64 %idxprom166
  store i32 %call165, i32* %arrayidx167, align 4
  %169 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %170 = load %struct._GError*, %struct._GError** %169, align 8
  %tobool168 = icmp ne %struct._GError* %170, null
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %for.body.164
  store i32 -1, i32* %retval
  br label %return

if.end.170:                                       ; preds = %for.body.164
  %171 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %171 to i64
  %172 = load i32*, i32** %tmppixel, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %172, i64 %idxprom171
  %173 = load i32, i32* %arrayidx172, align 4
  %call173 = call i32 @separate_alpha(i32 %173)
  %174 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %174 to i64
  %175 = load i32*, i32** %tmppixel, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %175, i64 %idxprom174
  store i32 %call173, i32* %arrayidx175, align 4
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.170
  %176 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %176, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.152

for.end.178:                                      ; preds = %for.cond.152
  %177 = load i32*, i32** %tmppixel, align 8
  %178 = bitcast i32* %177 to i8*
  %179 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width179 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %179, i32 0, i32 1
  %180 = load i32, i32* %width179, align 4
  %181 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height180 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %181, i32 0, i32 2
  %182 = load i32, i32* %height180, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %178, i32 0, i32 0, i32 %180, i32 %182)
  %183 = load i32*, i32** %tmppixel, align 8
  %184 = bitcast i32* %183 to i8*
  call void @g_free(i8* %184)
  %185 = load i32*, i32** %positions, align 8
  %186 = bitcast i32* %185 to i8*
  call void @g_free(i8* %186)
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call181 = call i32 @fclose(%struct._IO_FILE* %187)
  %188 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %188)
  %189 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %189)
  %190 = load i32, i32* %image_ID, align 4
  store i32 %190, i32* %retval
  br label %return

return:                                           ; preds = %for.end.178, %if.then.169, %if.then.104, %if.then.98, %if.then.89, %if.then.85, %if.then.81, %if.then.77, %if.then.59, %if.then.45, %if.then.41, %if.then.32, %if.then.25, %if.then.13, %if.else.10, %if.else.4, %if.else
  %191 = load i32, i32* %retval
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpParamRegion* @get_intersection_of_frames(i32 %image_ID) #0 {
entry:
  %retval = alloca %struct._GimpParamRegion*, align 8
  %image_ID.addr = alloca i32, align 4
  %iregion = alloca %struct._GimpParamRegion*, align 8
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x_off = alloca i32, align 4
  %y_off = alloca i32, align 4
  %nlayers = alloca i32, align 4
  %layers = alloca i32*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -2147483648, i32* %x1, align 4
  store i32 2147483647, i32* %x2, align 4
  store i32 -2147483648, i32* %y1, align 4
  store i32 2147483647, i32* %y2, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %image_ID.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.get_intersection_of_frames, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0))
  store %struct._GimpParamRegion* null, %struct._GimpParamRegion** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %image_ID.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %1, i32* %nlayers)
  store i32* %call, i32** %layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nlayers, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call2 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32*, i32** %layers, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %call5 = call i32 @gimp_drawable_offsets(i32 %9, i32* %x_off, i32* %y_off)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  store %struct._GimpParamRegion* null, %struct._GimpParamRegion** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  %10 = load i32, i32* %x1, align 4
  %11 = load i32, i32* %x_off, align 4
  %cmp8 = icmp sgt i32 %10, %11
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %12 = load i32, i32* %x1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %13 = load i32, i32* %x_off, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %x1, align 4
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* %y_off, align 4
  %cmp9 = icmp sgt i32 %14, %15
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  %16 = load i32, i32* %y1, align 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  %17 = load i32, i32* %y_off, align 4
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i32 [ %16, %cond.true.10 ], [ %17, %cond.false.11 ]
  store i32 %cond13, i32* %y1, align 4
  %18 = load i32, i32* %x2, align 4
  %19 = load i32, i32* %x_off, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 1
  %21 = load i32, i32* %width, align 4
  %add = add i32 %19, %21
  %sub = sub i32 %add, 1
  %cmp14 = icmp ult i32 %18, %sub
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end.12
  %22 = load i32, i32* %x2, align 4
  br label %cond.end.20

cond.false.16:                                    ; preds = %cond.end.12
  %23 = load i32, i32* %x_off, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load i32, i32* %width17, align 4
  %add18 = add i32 %23, %25
  %sub19 = sub i32 %add18, 1
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.16, %cond.true.15
  %cond21 = phi i32 [ %22, %cond.true.15 ], [ %sub19, %cond.false.16 ]
  store i32 %cond21, i32* %x2, align 4
  %26 = load i32, i32* %y2, align 4
  %27 = load i32, i32* %y_off, align 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 2
  %29 = load i32, i32* %height, align 4
  %add22 = add i32 %27, %29
  %sub23 = sub i32 %add22, 1
  %cmp24 = icmp ult i32 %26, %sub23
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.20
  %30 = load i32, i32* %y2, align 4
  br label %cond.end.30

cond.false.26:                                    ; preds = %cond.end.20
  %31 = load i32, i32* %y_off, align 4
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 2
  %33 = load i32, i32* %height27, align 4
  %add28 = add i32 %31, %33
  %sub29 = sub i32 %add28, 1
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.26, %cond.true.25
  %cond31 = phi i32 [ %30, %cond.true.25 ], [ %sub29, %cond.false.26 ]
  store i32 %cond31, i32* %y2, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.30
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %x1, align 4
  %36 = load i32, i32* %x2, align 4
  %cmp32 = icmp sgt i32 %35, %36
  br i1 %cmp32, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %37 = load i32, i32* %y1, align 4
  %38 = load i32, i32* %y2, align 4
  %cmp33 = icmp sgt i32 %37, %38
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false, %for.end
  store %struct._GimpParamRegion* null, %struct._GimpParamRegion** %retval
  br label %return

if.end.35:                                        ; preds = %lor.lhs.false
  %call36 = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %39 = bitcast i8* %call36 to %struct._GimpParamRegion*
  store %struct._GimpParamRegion* %39, %struct._GimpParamRegion** %iregion, align 8
  %40 = load i32, i32* %x1, align 4
  %41 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %iregion, align 8
  %x = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %41, i32 0, i32 0
  store i32 %40, i32* %x, align 4
  %42 = load i32, i32* %y1, align 4
  %43 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %iregion, align 8
  %y = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %43, i32 0, i32 1
  store i32 %42, i32* %y, align 4
  %44 = load i32, i32* %x2, align 4
  %45 = load i32, i32* %x1, align 4
  %sub37 = sub nsw i32 %44, %45
  %add38 = add nsw i32 %sub37, 1
  %46 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %iregion, align 8
  %width39 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %46, i32 0, i32 2
  store i32 %add38, i32* %width39, align 4
  %47 = load i32, i32* %y2, align 4
  %48 = load i32, i32* %y1, align 4
  %sub40 = sub nsw i32 %47, %48
  %add41 = add nsw i32 %sub40, 1
  %49 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %iregion, align 8
  %height42 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %49, i32 0, i32 3
  store i32 %add41, i32* %height42, align 4
  %50 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %iregion, align 8
  store %struct._GimpParamRegion* %50, %struct._GimpParamRegion** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.then.6, %if.else
  %51 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %retval
  ret %struct._GimpParamRegion* %51
}

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @load_comments(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %image_ID.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.load_comments, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %image_ID.addr, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @parasiteName, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @get_comment_from_pname(i32 %2, i8* %4)
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom2
  store i8* %call, i8** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @load_default_hotspot(i32 %image_ID, %struct._GimpParamRegion* %hotspotRange) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %hotspotRange.addr = alloca %struct._GimpParamRegion*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpParamRegion* %hotspotRange, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %tobool = icmp ne %struct._GimpParamRegion* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.load_default_hotspot, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @get_hotspot_from_parasite(i32 %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %do.end
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  %4 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %call2 = call i32 @pix_in_region(i32 %2, i32 %3, %struct._GimpParamRegion* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %do.end
  %5 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %x = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %5, i32 0, i32 0
  %6 = load i32, i32* %x, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %7 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %y = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %7, i32 0, i32 1
  %8 = load i32, i32* %y, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.else
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i32 %image_ID, %struct._GimpParamRegion* %hotspotRange) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %hotspotRange.addr = alloca %struct._GimpParamRegion*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %alignment = alloca %struct._GtkWidget*, align 8
  %tmpwidget = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %textbuffer = alloca %struct._GtkTextBuffer*, align 8
  %val = alloca %struct._GValue, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpParamRegion* %hotspotRange, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %0 = bitcast %struct._GValue* %val to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %val, i64 60)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0)) #6
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0)) #6
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call5)
  %3 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %3, i32 12)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call7 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkWidget* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call8)
  %6 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 1, i32 1, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call10 = call %struct._GtkWidget* @gtk_table_new(i32 9, i32 3, i32 0)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %table, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call11)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %12, i32 6)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %18, i32 12)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %21, %struct._GtkWidget* %22)
  %23 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %x = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %23, i32 0, i32 0
  %24 = load i32, i32* %x, align 4
  store i32 %24, i32* %x1, align 4
  %25 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %width = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %25, i32 0, i32 2
  %26 = load i32, i32* %width, align 4
  %27 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %x19 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %27, i32 0, i32 0
  %28 = load i32, i32* %x19, align 4
  %add = add nsw i32 %26, %28
  %sub = sub nsw i32 %add, 1
  store i32 %sub, i32* %x2, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %conv = sitofp i32 %29 to double
  %30 = load i32, i32* %x1, align 4
  %conv20 = sitofp i32 %30 to double
  %31 = load i32, i32* %x2, align 4
  %conv21 = sitofp i32 %31 to double
  %call22 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv, double %conv20, double %conv21, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %tmpwidget, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  call void @g_value_set_double(%struct._GValue* %val, double 1.000000e+00)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  call void @g_object_set_property(%struct._GObject* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), %struct._GValue* %val)
  %36 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %37 = bitcast %struct._GtkObject* %36 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.anon* @xmcparas to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.96, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %38, i8* %call25, i8* null)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call26)
  %41 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0)) #6
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call29 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %41, i32 0, i32 0, i8* %call28, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %42, i32 1, i32 1)
  %43 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %y = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %43, i32 0, i32 1
  %44 = load i32, i32* %y, align 4
  store i32 %44, i32* %y1, align 4
  %45 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %height = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %45, i32 0, i32 3
  %46 = load i32, i32* %height, align 4
  %47 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %hotspotRange.addr, align 8
  %y30 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %47, i32 0, i32 1
  %48 = load i32, i32* %y30, align 4
  %add31 = add nsw i32 %46, %48
  %sub32 = sub nsw i32 %add31, 1
  store i32 %sub32, i32* %y2, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  %conv33 = sitofp i32 %49 to double
  %50 = load i32, i32* %y1, align 4
  %conv34 = sitofp i32 %50 to double
  %51 = load i32, i32* %y2, align 4
  %conv35 = sitofp i32 %51 to double
  %call36 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv33, double %conv34, double %conv35, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %tmpwidget, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  call void @g_value_set_double(%struct._GValue* %val, double 1.000000e+00)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  call void @g_object_set_property(%struct._GObject* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), %struct._GValue* %val)
  %56 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.98, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %58, i8* %call39, i8* null)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call40)
  %61 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call42 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %61, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %62, i32 1, i32 1)
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0)) #6
  %call44 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call43)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %tmpwidget, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #8
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call45)
  %65 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_table_attach(%struct._GtkTable* %65, %struct._GtkWidget* %66, i32 0, i32 3, i32 1, i32 2, i32 4, i32 0, i32 0, i32 10)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_toggle_button_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call47)
  %70 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkToggleButton*
  %71 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %70, i32 %71)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (%struct.XmcSaveVals* @xmcvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.102, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %75, i8* %call50, i8* null)
  %call51 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i32 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i32 24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i32 64, i8* null)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %tmpwidget, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_int_combo_box_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call52)
  %78 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpIntComboBox*
  %call54 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %78, i32 32, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 1) to i8*))
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([346 x i8], [346 x i8]* @.str.111, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %80, i8* %call55, i8* null)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call56)
  %83 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0)) #6
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call59 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %83, i32 0, i32 2, i8* %call58, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %84, i32 3, i32 1)
  %85 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 2), align 4
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.113, i32 0, i32 0)) #6
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.114, i32 0, i32 0)) #6
  %call62 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 2) to i8*), i32 %85, i8* %call60, i32 0, i8* null, i8* %call61, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %tmpwidget, align 8
  %call63 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %alignment, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #8
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call64)
  %89 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_table_attach(%struct._GtkTable* %89, %struct._GtkWidget* %90, i32 0, i32 3, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_alignment_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call66)
  %93 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkAlignment*
  call void @gtk_alignment_set_padding(%struct._GtkAlignment* %93, i32 0, i32 6, i32 20, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_container_get_type() #8
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call68)
  %96 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkContainer*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_container_add(%struct._GtkContainer* %96, %struct._GtkWidget* %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %call70 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %box, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %100 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 3), align 4
  %conv71 = sitofp i32 %100 to double
  %call72 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv71, double 5.000000e+00, double 1.000000e+08, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %tmpwidget, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  call void @g_value_set_double(%struct._GValue* %val, double 1.000000e+00)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 80)
  %104 = bitcast %struct._GTypeInstance* %call73 to %struct._GObject*
  call void @g_object_set_property(%struct._GObject* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), %struct._GValue* %val)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #8
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call74)
  %107 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %108, i32 1, i32 1, i32 0)
  %109 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %110 = bitcast %struct._GtkObject* %109 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call77 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0))
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %tmpwidget, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_misc_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call78)
  %113 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %113, float 0.000000e+00, float 5.000000e-01)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #8
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call80)
  %116 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %117, i32 1, i32 1, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.116, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %119, i8* %call82, i8* null)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_table_get_type() #8
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call83)
  %122 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTable*
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0)) #6
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call86 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %122, i32 0, i32 4, i8* %call85, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %123, i32 3, i32 1)
  %124 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 4), align 4
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.118, i32 0, i32 0)) #6
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.119, i32 0, i32 0)) #6
  %call89 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 4) to i8*), i32 %124, i8* %call87, i32 0, i8* null, i8* %call88, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %tmpwidget, align 8
  %call90 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %alignment, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_table_get_type() #8
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call91)
  %128 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTable*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_table_attach(%struct._GtkTable* %128, %struct._GtkWidget* %129, i32 0, i32 3, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_alignment_get_type() #8
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call93)
  %132 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkAlignment*
  call void @gtk_alignment_set_padding(%struct._GtkAlignment* %132, i32 0, i32 6, i32 20, i32 0)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_container_get_type() #8
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call95)
  %135 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkContainer*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_container_add(%struct._GtkContainer* %135, %struct._GtkWidget* %136)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %call97 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %tmpwidget, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_entry_get_type() #8
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call98)
  %140 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %140, i32 1048576)
  %141 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 0), align 8
  %tobool = icmp ne i8* %141, null
  br i1 %tobool, label %if.then, label %if.end.110

if.then:                                          ; preds = %entry
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_entry_get_type() #8
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call100)
  %144 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkEntry*
  %145 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 0), align 8
  %call102 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %145, i64 -1, i8* null)
  call void @gtk_entry_set_text(%struct._GtkEntry* %144, i8* %call102)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_entry_get_type() #8
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call103)
  %148 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkEntry*
  %call105 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %148)
  %call106 = call i64 @strlen(i8* %call105) #9
  %cmp = icmp uge i64 %call106, 65535
  br i1 %cmp, label %if.then.108, label %if.end

if.then.108:                                      ; preds = %if.then
  %call109 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.120, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call109)
  br label %if.end

if.end:                                           ; preds = %if.then.108, %if.then
  br label %if.end.110

if.end.110:                                       ; preds = %if.end, %entry
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %150 = bitcast %struct._GtkWidget* %149 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @comment_entry_callback to void ()*), i8* bitcast (i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %151)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.122, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %152, i8* %call112, i8* null)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_table_get_type() #8
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call113)
  %155 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkTable*
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0)) #6
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call116 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %155, i32 0, i32 6, i8* %call115, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %156, i32 3, i32 0)
  %call117 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %tmpwidget, align 8
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_entry_get_type() #8
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call118)
  %159 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %159, i32 1048576)
  %160 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 1), align 8
  %tobool120 = icmp ne i8* %160, null
  br i1 %tobool120, label %if.then.121, label %if.end.134

if.then.121:                                      ; preds = %if.end.110
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_entry_get_type() #8
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call122)
  %163 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkEntry*
  %164 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 1), align 8
  %call124 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %164, i64 -1, i8* null)
  call void @gtk_entry_set_text(%struct._GtkEntry* %163, i8* %call124)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_entry_get_type() #8
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call125)
  %167 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkEntry*
  %call127 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %167)
  %call128 = call i64 @strlen(i8* %call127) #9
  %cmp129 = icmp uge i64 %call128, 65535
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.then.121
  %call132 = call i8* @gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.124, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call132)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.then.121
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.110
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %169 = bitcast %struct._GtkWidget* %168 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @comment_entry_callback to void ()*), i8* bitcast (i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %170)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call136 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.125, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %171, i8* %call136, i8* null)
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_table_get_type() #8
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call137)
  %174 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkTable*
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0)) #6
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call140 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %174, i32 0, i32 7, i8* %call139, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %175, i32 3, i32 0)
  %call141 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i32 0, i32 0)) #6
  %call142 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call141)
  store %struct._GtkWidget* %call142, %struct._GtkWidget** %label, align 8
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_misc_get_type() #8
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call143)
  %179 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %179, float 0.000000e+00, float 0.000000e+00)
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %181 = bitcast %struct._GtkWidget* %180 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_table_get_type() #8
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 %call145)
  %182 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkTable*
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %182, %struct._GtkWidget* %183, i32 0, i32 1, i32 8, i32 9, i32 4, i32 0, i32 0, i32 0)
  %call147 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call147, %struct._GtkWidget** %box, align 8
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_scrolled_window_get_type() #8
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call148)
  %186 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %186, i32 1)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_scrolled_window_get_type() #8
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call150)
  %189 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %189, i32 1, i32 1)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_table_get_type() #8
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call152)
  %192 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkTable*
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_table_attach(%struct._GtkTable* %192, %struct._GtkWidget* %193, i32 1, i32 3, i32 8, i32 9, i32 4, i32 0, i32 0, i32 0)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %194)
  %call154 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  store %struct._GtkTextBuffer* %call154, %struct._GtkTextBuffer** %textbuffer, align 8
  %195 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 2), align 8
  %tobool155 = icmp ne i8* %195, null
  br i1 %tobool155, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.end.134
  %196 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %textbuffer, align 8
  %197 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 2), align 8
  %call157 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %197, i64 -1, i8* null)
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %196, i8* %call157, i32 -1)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.end.134
  %198 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %textbuffer, align 8
  %199 = bitcast %struct._GtkTextBuffer* %198 to i8*
  %call159 = call i64 @g_signal_connect_data(i8* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTextBuffer*, i8**)* @text_view_callback to void ()*), i8* bitcast (i8** getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2, i64 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %200 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %textbuffer, align 8
  %201 = bitcast %struct._GtkTextBuffer* %200 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_text_buffer_get_type() #8
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call160)
  %202 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkTextBuffer*
  %call162 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %202)
  store %struct._GtkWidget* %call162, %struct._GtkWidget** %tmpwidget, align 8
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_text_view_get_type() #8
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call163)
  %205 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkTextView*
  call void @gtk_text_view_set_accepts_tab(%struct._GtkTextView* %205, i32 0)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call165 = call i64 @gtk_text_view_get_type() #8
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %call165)
  %208 = bitcast %struct._GTypeInstance* %call166 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %208, i32 2)
  %209 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %textbuffer, align 8
  %210 = bitcast %struct._GtkTextBuffer* %209 to i8*
  call void @g_object_unref(i8* %210)
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %212 = bitcast %struct._GtkWidget* %211 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_text_view_get_type() #8
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %212, i64 %call167)
  %213 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %213, i32 2)
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_box_get_type() #8
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 %call169)
  %216 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkBox*
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %216, %struct._GtkWidget* %217, i32 1, i32 1, i32 0)
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %218)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  %call171 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.128, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %219, i8* %call171, i8* null)
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_label_get_type() #8
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call172)
  %222 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkLabel*
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpwidget, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %222, %struct._GtkWidget* %223)
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %224)
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %226 = bitcast %struct._GtkWidget* %225 to %struct._GTypeInstance*
  %call174 = call i64 @gimp_dialog_get_type() #8
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call174)
  %227 = bitcast %struct._GTypeInstance* %call175 to %struct._GimpDialog*
  %call176 = call i32 @gimp_dialog_run(%struct._GimpDialog* %227)
  %cmp177 = icmp eq i32 %call176, -5
  %conv178 = zext i1 %cmp177 to i32
  store i32 %conv178, i32* %run, align 4
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %228)
  %229 = load i32, i32* %run, align 4
  ret i32 %229
}

; Function Attrs: nounwind uwtable
define internal i32 @pix_in_region(i32 %x, i32 %y, %struct._GimpParamRegion* %xmcrp) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xmcrp.addr = alloca %struct._GimpParamRegion*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpParamRegion* %xmcrp, %struct._GimpParamRegion** %xmcrp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %xmcrp.addr, align 8
  %tobool = icmp ne %struct._GimpParamRegion* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pix_in_region, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %xmcrp.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i32, i32* %y.addr, align 4
  %5 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %xmcrp.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %5, i32 0, i32 1
  %6 = load i32, i32* %y2, align 4
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %if.then.11, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %x.addr, align 4
  %8 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %xmcrp.addr, align 8
  %x5 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %8, i32 0, i32 0
  %9 = load i32, i32* %x5, align 4
  %10 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %xmcrp.addr, align 8
  %width = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %10, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %add = add nsw i32 %9, %11
  %cmp6 = icmp sge i32 %7, %add
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %12 = load i32, i32* %y.addr, align 4
  %13 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %xmcrp.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %13, i32 0, i32 1
  %14 = load i32, i32* %y8, align 4
  %15 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %xmcrp.addr, align 8
  %height = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %15, i32 0, i32 3
  %16 = load i32, i32* %height, align 4
  %add9 = add nsw i32 %14, %16
  %cmp10 = icmp sge i32 %12, %add9
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %do.end
  store i32 0, i32* %retval
  br label %return

if.else.12:                                       ; preds = %lor.lhs.false.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.12, %if.then.11, %if.else
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, i32 %orig_image_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %orig_image_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %dimension_warn = alloca i32, align 4
  %size_warn = alloca i32, align 4
  %re = alloca %struct._GRegex*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %commentsp = alloca %struct._XcursorComments*, align 8
  %imagesp = alloca %struct._XcursorImages*, align 8
  %layers = alloca i32*, align 8
  %orig_layers = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %framename = alloca i8*, align 8
  %save_rgn = alloca %struct._GimpParamRegion, align 4
  %layer_xoffset = alloca i32, align 4
  %layer_yoffset = alloca i32, align 4
  %pixelbuf = alloca [65536 x i32], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %orig_image_ID, i32* %orig_image_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %dimension_warn, align 4
  store i32 0, i32* %size_warn, align 4
  %call = call %struct._GRegex* @g_regex_new(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.134, i32 0, i32 0), i32 8193, i32 0, %struct._GError** null)
  store %struct._GRegex* %call, %struct._GRegex** %re, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 @g_file_error_quark()
  %call3 = call i32* @__errno_location() #8
  %3 = load i32, i32* %call3, align 4
  %call4 = call i32 @g_file_error_from_errno(i32 %3)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.136, i32 0, i32 0)) #6
  %4 = load i8*, i8** %filename.addr, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call7 = call i32* @__errno_location() #8
  %5 = load i32, i32* %call7, align 4
  %call8 = call i8* @g_strerror(i32 %5) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call2, i32 %call4, i8* %call5, i8* %call6, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0)) #6
  %6 = load i8*, i8** %filename.addr, align 8
  %call10 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call11 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call9, i8* %call10)
  %7 = load i32, i32* %orig_image_ID.addr, align 4
  %call12 = call i32* @gimp_image_get_layers(i32 %7, i32* %nlayers)
  store i32* %call12, i32** %orig_layers, align 8
  %8 = load i32, i32* %image_ID.addr, align 4
  %call13 = call i32* @gimp_image_get_layers(i32 %8, i32* %nlayers)
  store i32* %call13, i32** %layers, align 8
  %9 = load i32, i32* %nlayers, align 4
  %call14 = call %struct._XcursorImages* @XcursorImagesCreate(i32 %9)
  store %struct._XcursorImages* %call14, %struct._XcursorImages** %imagesp, align 8
  %10 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %tobool = icmp ne %struct._XcursorImages* %10, null
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %11 = load i32, i32* %nlayers, align 4
  %12 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %12, i32 0, i32 0
  store i32 %11, i32* %nimage, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.194, %if.end.16
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nlayers, align 4
  %cmp17 = icmp slt i32 %13, %14
  br i1 %cmp17, label %for.body, label %for.end.196

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %nlayers, align 4
  %sub = sub nsw i32 %15, 1
  %16 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 %sub, %16
  %idxprom = sext i32 %sub18 to i64
  %17 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %call19 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %18)
  store %struct._GimpDrawable* %call19, %struct._GimpDrawable** %drawable, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 3
  %20 = load i32, i32* %bpp, align 4
  %cmp20 = icmp ne i32 %20, 4
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.138, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %21, i32 0, i32 0, i8* %call22)
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  %22 = load i32, i32* %nlayers, align 4
  %sub24 = sub nsw i32 %22, 1
  %23 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %sub24, %23
  %idxprom26 = sext i32 %sub25 to i64
  %24 = load i32*, i32** %layers, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %24, i64 %idxprom26
  %25 = load i32, i32* %arrayidx27, align 4
  %call28 = call i8* @gimp_item_get_name(i32 %25)
  store i8* %call28, i8** %framename, align 8
  %26 = load i32, i32* %nlayers, align 4
  %sub29 = sub nsw i32 %26, 1
  %27 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %sub29, %27
  %idxprom31 = sext i32 %sub30 to i64
  %28 = load i32*, i32** %layers, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %28, i64 %idxprom31
  %29 = load i32, i32* %arrayidx32, align 4
  %call33 = call i32 @gimp_drawable_offsets(i32 %29, i32* %layer_xoffset, i32* %layer_yoffset)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 1
  %31 = load i32, i32* %width, align 4
  %cmp34 = icmp ugt i32 %31, 256
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.23
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.139, i32 0, i32 0)) #6
  %33 = load i8*, i8** %framename, align 8
  %call37 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %33, i64 -1, i8* null)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %32, i32 0, i32 0, i8* %call36, i8* %call37, i32 256)
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.23
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 2
  %35 = load i32, i32* %height, align 4
  %cmp39 = icmp ugt i32 %35, 256
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.140, i32 0, i32 0)) #6
  %37 = load i8*, i8** %framename, align 8
  %call42 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %37, i64 -1, i8* null)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %36, i32 0, i32 0, i8* %call41, i8* %call42, i32 256)
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.38
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 2
  %39 = load i32, i32* %height44, align 4
  %cmp45 = icmp eq i32 %39, 0
  br i1 %cmp45, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 1
  %41 = load i32, i32* %width46, align 4
  %cmp47 = icmp eq i32 %41, 0
  br i1 %cmp47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %lor.lhs.false, %if.end.43
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.141, i32 0, i32 0)) #6
  %43 = load i8*, i8** %framename, align 8
  %call50 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %43, i64 -1, i8* null)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %42, i32 0, i32 0, i8* %call49, i8* %call50)
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %lor.lhs.false
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width52 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 1
  %46 = load i32, i32* %width52, align 4
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height53 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 2
  %48 = load i32, i32* %height53, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %44, i32 0, i32 0, i32 %46, i32 %48, i32 0, i32 0)
  %49 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 0), align 4
  %tobool54 = icmp ne i32 %49, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end.51
  call void @get_cropped_region(%struct._GimpParamRegion* %save_rgn, %struct._GimpPixelRgn* %pixel_rgn)
  %width56 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 2
  %50 = load i32, i32* %width56, align 4
  %cmp57 = icmp eq i32 %50, 0
  br i1 %cmp57, label %if.then.61, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.then.55
  %height59 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 3
  %51 = load i32, i32* %height59, align 4
  %cmp60 = icmp eq i32 %51, 0
  br i1 %cmp60, label %if.then.61, label %if.end.87

if.then.61:                                       ; preds = %lor.lhs.false.58, %if.then.55
  %call62 = call %struct._XcursorImage* @XcursorImageCreate(i32 1, i32 1)
  %52 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %52 to i64
  %53 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %53, i32 0, i32 1
  %54 = load %struct._XcursorImage**, %struct._XcursorImage*** %images, align 8
  %arrayidx64 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %54, i64 %idxprom63
  store %struct._XcursorImage* %call62, %struct._XcursorImage** %arrayidx64, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %55 to i64
  %56 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images66 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %56, i32 0, i32 1
  %57 = load %struct._XcursorImage**, %struct._XcursorImage*** %images66, align 8
  %arrayidx67 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %57, i64 %idxprom65
  %58 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx67, align 8
  %tobool68 = icmp ne %struct._XcursorImage* %58, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.then.61
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.61
  %59 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %59 to i64
  %60 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images72 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %60, i32 0, i32 1
  %61 = load %struct._XcursorImage**, %struct._XcursorImage*** %images72, align 8
  %arrayidx73 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %61, i64 %idxprom71
  %62 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx73, align 8
  %pixels = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %62, i32 0, i32 7
  %63 = load i32*, i32** %pixels, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 0, i32* %arrayidx74, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %64 to i64
  %65 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images76 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %65, i32 0, i32 1
  %66 = load %struct._XcursorImage**, %struct._XcursorImage*** %images76, align 8
  %arrayidx77 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %66, i64 %idxprom75
  %67 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx77, align 8
  %xhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %67, i32 0, i32 4
  store i32 0, i32* %xhot, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %68 to i64
  %69 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images79 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %69, i32 0, i32 1
  %70 = load %struct._XcursorImage**, %struct._XcursorImage*** %images79, align 8
  %arrayidx80 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %70, i64 %idxprom78
  %71 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx80, align 8
  %yhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %71, i32 0, i32 5
  store i32 0, i32* %yhot, align 4
  %72 = load i8*, i8** %framename, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %73 to i64
  %74 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images82 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %74, i32 0, i32 1
  %75 = load %struct._XcursorImage**, %struct._XcursorImage*** %images82, align 8
  %arrayidx83 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %75, i64 %idxprom81
  %76 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx83, align 8
  %size = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %76, i32 0, i32 1
  %77 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %77 to i64
  %78 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images85 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %78, i32 0, i32 1
  %79 = load %struct._XcursorImage**, %struct._XcursorImage*** %images85, align 8
  %arrayidx86 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %79, i64 %idxprom84
  %80 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx86, align 8
  %delay = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %80, i32 0, i32 6
  %81 = load %struct._GRegex*, %struct._GRegex** %re, align 8
  call void @set_size_and_delay(i8* %72, i32* %size, i32* %delay, %struct._GRegex* %81, i32* %size_warn)
  br label %for.inc.194

if.end.87:                                        ; preds = %lor.lhs.false.58
  %82 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %83 = load i32, i32* %layer_xoffset, align 4
  %sub88 = sub nsw i32 %82, %83
  %84 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  %85 = load i32, i32* %layer_yoffset, align 4
  %sub89 = sub nsw i32 %84, %85
  %call90 = call i32 @pix_in_region(i32 %sub88, i32 %sub89, %struct._GimpParamRegion* %save_rgn)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.95, label %if.then.92

if.then.92:                                       ; preds = %if.end.87
  %86 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.142, i32 0, i32 0)) #6
  %87 = load i8*, i8** %framename, align 8
  %call94 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %87, i64 -1, i8* null)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %86, i32 0, i32 0, i8* %call93, i8* %call94)
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.end.87
  br label %if.end.100

if.else:                                          ; preds = %if.end.51
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width96 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %88, i32 0, i32 1
  %89 = load i32, i32* %width96, align 4
  %width97 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 2
  store i32 %89, i32* %width97, align 4
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height98 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %90, i32 0, i32 2
  %91 = load i32, i32* %height98, align 4
  %height99 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 3
  store i32 %91, i32* %height99, align 4
  %x = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %y = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 1
  store i32 0, i32* %y, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else, %if.end.95
  %92 = load i32, i32* %dimension_warn, align 4
  %tobool101 = icmp ne i32 %92, 0
  br i1 %tobool101, label %if.end.110, label %if.then.102

if.then.102:                                      ; preds = %if.end.100
  %width103 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 2
  %93 = load i32, i32* %width103, align 4
  %cmp104 = icmp sgt i32 %93, 64
  br i1 %cmp104, label %if.then.108, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.then.102
  %height106 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 3
  %94 = load i32, i32* %height106, align 4
  %cmp107 = icmp sgt i32 %94, 64
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %lor.lhs.false.105, %if.then.102
  store i32 1, i32* %dimension_warn, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %lor.lhs.false.105
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.100
  %width111 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 2
  %95 = load i32, i32* %width111, align 4
  %height112 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 3
  %96 = load i32, i32* %height112, align 4
  %call113 = call %struct._XcursorImage* @XcursorImageCreate(i32 %95, i32 %96)
  %97 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %97 to i64
  %98 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images115 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %98, i32 0, i32 1
  %99 = load %struct._XcursorImage**, %struct._XcursorImage*** %images115, align 8
  %arrayidx116 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %99, i64 %idxprom114
  store %struct._XcursorImage* %call113, %struct._XcursorImage** %arrayidx116, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %100 to i64
  %101 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images118 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %101, i32 0, i32 1
  %102 = load %struct._XcursorImage**, %struct._XcursorImage*** %images118, align 8
  %arrayidx119 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %102, i64 %idxprom117
  %103 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx119, align 8
  %tobool120 = icmp ne %struct._XcursorImage* %103, null
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.end.110
  store i32 0, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.110
  %104 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %105 = load i32, i32* %layer_xoffset, align 4
  %sub123 = sub nsw i32 %104, %105
  %x124 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 0
  %106 = load i32, i32* %x124, align 4
  %sub125 = sub nsw i32 %sub123, %106
  %107 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %107 to i64
  %108 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images127 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %108, i32 0, i32 1
  %109 = load %struct._XcursorImage**, %struct._XcursorImage*** %images127, align 8
  %arrayidx128 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %109, i64 %idxprom126
  %110 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx128, align 8
  %xhot129 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %110, i32 0, i32 4
  store i32 %sub125, i32* %xhot129, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  %112 = load i32, i32* %layer_yoffset, align 4
  %sub130 = sub nsw i32 %111, %112
  %y131 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 1
  %113 = load i32, i32* %y131, align 4
  %sub132 = sub nsw i32 %sub130, %113
  %114 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %114 to i64
  %115 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images134 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %115, i32 0, i32 1
  %116 = load %struct._XcursorImage**, %struct._XcursorImage*** %images134, align 8
  %arrayidx135 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %116, i64 %idxprom133
  %117 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx135, align 8
  %yhot136 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %117, i32 0, i32 5
  store i32 %sub132, i32* %yhot136, align 4
  %arraydecay = getelementptr inbounds [65536 x i32], [65536 x i32]* %pixelbuf, i32 0, i32 0
  %118 = bitcast i32* %arraydecay to i8*
  %x137 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 0
  %119 = load i32, i32* %x137, align 4
  %y138 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 1
  %120 = load i32, i32* %y138, align 4
  %width139 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 2
  %121 = load i32, i32* %width139, align 4
  %height140 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 3
  %122 = load i32, i32* %height140, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %118, i32 %119, i32 %120, i32 %121, i32 %122)
  br label %do.body

do.body:                                          ; preds = %if.end.122
  %width141 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 2
  %123 = load i32, i32* %width141, align 4
  %height142 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 3
  %124 = load i32, i32* %height142, align 4
  %mul = mul nsw i32 %123, %124
  %cmp143 = icmp slt i32 %mul, 65536
  br i1 %cmp143, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body
  br label %if.end.146

if.else.145:                                      ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i32 1617, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.save_image, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.144, i32 0, i32 0)) #10
  unreachable

if.end.146:                                       ; preds = %if.then.144
  br label %do.end

do.end:                                           ; preds = %if.end.146
  store i32 0, i32* %j, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc, %do.end
  %125 = load i32, i32* %j, align 4
  %width148 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 2
  %126 = load i32, i32* %width148, align 4
  %height149 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %save_rgn, i32 0, i32 3
  %127 = load i32, i32* %height149, align 4
  %mul150 = mul nsw i32 %126, %127
  %cmp151 = icmp slt i32 %125, %mul150
  br i1 %cmp151, label %for.body.152, label %for.end

for.body.152:                                     ; preds = %for.cond.147
  %128 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %128 to i64
  %arrayidx154 = getelementptr inbounds [65536 x i32], [65536 x i32]* %pixelbuf, i32 0, i64 %idxprom153
  %129 = load i32, i32* %arrayidx154, align 4
  %call155 = call i32 @premultiply_alpha(i32 %129)
  %130 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %130 to i64
  %131 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %131 to i64
  %132 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images158 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %132, i32 0, i32 1
  %133 = load %struct._XcursorImage**, %struct._XcursorImage*** %images158, align 8
  %arrayidx159 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %133, i64 %idxprom157
  %134 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx159, align 8
  %pixels160 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %134, i32 0, i32 7
  %135 = load i32*, i32** %pixels160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %135, i64 %idxprom156
  store i32 %call155, i32* %arrayidx161, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.152
  %136 = load i32, i32* %j, align 4
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.147

for.end:                                          ; preds = %for.cond.147
  %137 = load i8*, i8** %framename, align 8
  %138 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %138 to i64
  %139 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images163 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %139, i32 0, i32 1
  %140 = load %struct._XcursorImage**, %struct._XcursorImage*** %images163, align 8
  %arrayidx164 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %140, i64 %idxprom162
  %141 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx164, align 8
  %size165 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %141, i32 0, i32 1
  %142 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %142 to i64
  %143 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images167 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %143, i32 0, i32 1
  %144 = load %struct._XcursorImage**, %struct._XcursorImage*** %images167, align 8
  %arrayidx168 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %144, i64 %idxprom166
  %145 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx168, align 8
  %delay169 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %145, i32 0, i32 6
  %146 = load %struct._GRegex*, %struct._GRegex** %re, align 8
  call void @set_size_and_delay(i8* %137, i32* %size165, i32* %delay169, %struct._GRegex* %146, i32* %size_warn)
  %147 = load i8*, i8** %framename, align 8
  call void @g_free(i8* %147)
  %148 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %148 to i64
  %149 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images171 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %149, i32 0, i32 1
  %150 = load %struct._XcursorImage**, %struct._XcursorImage*** %images171, align 8
  %arrayidx172 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %150, i64 %idxprom170
  %151 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx172, align 8
  %size173 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %151, i32 0, i32 1
  %152 = load i32, i32* %size173, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %153 to i64
  %154 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %images175 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %154, i32 0, i32 1
  %155 = load %struct._XcursorImage**, %struct._XcursorImage*** %images175, align 8
  %arrayidx176 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %155, i64 %idxprom174
  %156 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx176, align 8
  %delay177 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %156, i32 0, i32 6
  %157 = load i32, i32* %delay177, align 4
  %158 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage178 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %158, i32 0, i32 0
  %159 = load i32, i32* %nimage178, align 4
  %cmp179 = icmp sgt i32 %159, 100
  br i1 %cmp179, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %160 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage180 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %160, i32 0, i32 0
  %161 = load i32, i32* %nimage180, align 4
  %cmp181 = icmp sgt i32 %161, 10
  %cond = select i1 %cmp181, i32 2, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond182 = phi i32 [ 3, %cond.true ], [ %cond, %cond.false ]
  %162 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call183 = call i8* @make_framename(i32 %152, i32 %157, i32 %cond182, %struct._GError** %162)
  store i8* %call183, i8** %framename, align 8
  %163 = load i8*, i8** %framename, align 8
  %tobool184 = icmp ne i8* %163, null
  br i1 %tobool184, label %if.end.186, label %if.then.185

if.then.185:                                      ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.186:                                       ; preds = %cond.end
  %164 = load i32, i32* %nlayers, align 4
  %sub187 = sub nsw i32 %164, 1
  %165 = load i32, i32* %i, align 4
  %sub188 = sub nsw i32 %sub187, %165
  %idxprom189 = sext i32 %sub188 to i64
  %166 = load i32*, i32** %orig_layers, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %166, i64 %idxprom189
  %167 = load i32, i32* %arrayidx190, align 4
  %168 = load i8*, i8** %framename, align 8
  %call191 = call i32 @gimp_item_set_name(i32 %167, i8* %168)
  %169 = load i8*, i8** %framename, align 8
  call void @g_free(i8* %169)
  %170 = load i32, i32* %i, align 4
  %add = add nsw i32 %170, 1
  %171 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %nimage192 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %171, i32 0, i32 0
  %172 = load i32, i32* %nimage192, align 4
  %div = sdiv i32 %add, %172
  %conv = sitofp i32 %div to double
  %call193 = call i32 @gimp_progress_update(double %conv)
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.186, %if.end.70
  %173 = load i32, i32* %i, align 4
  %inc195 = add nsw i32 %173, 1
  store i32 %inc195, i32* %i, align 4
  br label %for.cond

for.end.196:                                      ; preds = %for.cond
  %call197 = call i32 @gimp_progress_update(double 1.000000e+00)
  %call198 = call %struct._XcursorComments* @set_cursor_comments()
  store %struct._XcursorComments* %call198, %struct._XcursorComments** %commentsp, align 8
  %174 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  %tobool199 = icmp ne %struct._XcursorComments* %174, null
  br i1 %tobool199, label %if.then.200, label %if.else.205

if.then.200:                                      ; preds = %for.end.196
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %176 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  %177 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %call201 = call i32 @XcursorFileSave(%struct._IO_FILE* %175, %struct._XcursorComments* %176, %struct._XcursorImages* %177)
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.end.204, label %if.then.203

if.then.203:                                      ; preds = %if.then.200
  store i32 0, i32* %retval
  br label %return

if.end.204:                                       ; preds = %if.then.200
  br label %if.end.210

if.else.205:                                      ; preds = %for.end.196
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %179 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  %call206 = call i32 @XcursorFileSaveImages(%struct._IO_FILE* %178, %struct._XcursorImages* %179)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.end.209, label %if.then.208

if.then.208:                                      ; preds = %if.else.205
  store i32 0, i32* %retval
  br label %return

if.end.209:                                       ; preds = %if.else.205
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.204
  %180 = load i32, i32* %dimension_warn, align 4
  %tobool211 = icmp ne i32 %180, 0
  br i1 %tobool211, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %if.end.210
  %call213 = call i8* @gettext(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.145, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call213, i32 64)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.212, %if.end.210
  %181 = load i32, i32* %size_warn, align 4
  %tobool215 = icmp ne i32 %181, 0
  br i1 %tobool215, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %if.end.214
  %call217 = call i8* @gettext(i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.146, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call217)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %if.end.214
  %182 = load %struct._GRegex*, %struct._GRegex** %re, align 8
  call void @g_regex_unref(%struct._GRegex* %182)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call219 = call i32 @fclose(%struct._IO_FILE* %183)
  %184 = load %struct._XcursorImages*, %struct._XcursorImages** %imagesp, align 8
  call void @XcursorImagesDestroy(%struct._XcursorImages* %184)
  %185 = load %struct._XcursorComments*, %struct._XcursorComments** %commentsp, align 8
  call void @XcursorCommentsDestroy(%struct._XcursorComments* %185)
  %call220 = call i32 @gimp_progress_end()
  store i32 0, i32* %i, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.241, %if.end.218
  %186 = load i32, i32* %i, align 4
  %cmp222 = icmp slt i32 %186, 3
  br i1 %cmp222, label %for.body.224, label %for.end.243

for.body.224:                                     ; preds = %for.cond.221
  %187 = load i32, i32* %orig_image_ID.addr, align 4
  %188 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %188 to i64
  %arrayidx226 = getelementptr inbounds [3 x i8*], [3 x i8*]* @parasiteName, i32 0, i64 %idxprom225
  %189 = load i8*, i8** %arrayidx226, align 8
  %call227 = call i32 @gimp_image_detach_parasite(i32 %187, i8* %189)
  %190 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %190 to i64
  %arrayidx229 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom228
  %191 = load i8*, i8** %arrayidx229, align 8
  %tobool230 = icmp ne i8* %191, null
  br i1 %tobool230, label %if.then.231, label %if.end.240

if.then.231:                                      ; preds = %for.body.224
  %192 = load i32, i32* %orig_image_ID.addr, align 4
  %193 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %193 to i64
  %arrayidx233 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom232
  %194 = load i8*, i8** %arrayidx233, align 8
  %195 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %195 to i64
  %arrayidx235 = getelementptr inbounds [3 x i8*], [3 x i8*]* @parasiteName, i32 0, i64 %idxprom234
  %196 = load i8*, i8** %arrayidx235, align 8
  %call236 = call i32 @set_comment_to_pname(i32 %192, i8* %194, i8* %196)
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.end.239, label %if.then.238

if.then.238:                                      ; preds = %if.then.231
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %if.then.231
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %for.body.224
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.240
  %197 = load i32, i32* %i, align 4
  %inc242 = add nsw i32 %197, 1
  store i32 %inc242, i32* %i, align 4
  br label %for.cond.221

for.end.243:                                      ; preds = %for.cond.221
  %198 = load i32, i32* %orig_image_ID.addr, align 4
  %call244 = call i32 @set_hotspot_to_parasite(i32 %198)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.243, %if.then.208, %if.then.203, %if.then.185, %if.then.121, %if.then.92, %if.then.69, %if.then.48, %if.then.40, %if.then.35, %if.then.21, %if.then.15, %if.then
  %199 = load i32, i32* %retval
  ret i32 %199
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

declare void @g_free(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare i32 @XcursorFileLoad(%struct._IO_FILE*, %struct._XcursorComments**, %struct._XcursorImages**) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @find_hotspots_and_dimensions(%struct._XcursorImages* %xcIs, i32* %xhotp, i32* %yhotp, i32* %widthp, i32* %heightp) #0 {
entry:
  %xcIs.addr = alloca %struct._XcursorImages*, align 8
  %xhotp.addr = alloca i32*, align 8
  %yhotp.addr = alloca i32*, align 8
  %widthp.addr = alloca i32*, align 8
  %heightp.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %dw = alloca i32, align 4
  %dh = alloca i32, align 4
  %max_xhot = alloca i32, align 4
  %max_yhot = alloca i32, align 4
  store %struct._XcursorImages* %xcIs, %struct._XcursorImages** %xcIs.addr, align 8
  store i32* %xhotp, i32** %xhotp.addr, align 8
  store i32* %yhotp, i32** %yhotp.addr, align 8
  store i32* %widthp, i32** %widthp.addr, align 8
  store i32* %heightp, i32** %heightp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %tobool = icmp ne %struct._XcursorImages* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.find_hotspots_and_dimensions, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.73

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %dh, align 4
  store i32 0, i32* %dw, align 4
  store i32 0, i32* %max_yhot, align 4
  store i32 0, i32* %max_xhot, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %nimage = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %2, i32 0, i32 0
  %3 = load i32, i32* %nimage, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %5, i32 0, i32 1
  %6 = load %struct._XcursorImage**, %struct._XcursorImage*** %images, align 8
  %arrayidx = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %6, i64 %idxprom
  %7 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx, align 8
  %xhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %7, i32 0, i32 4
  %8 = load i32, i32* %xhot, align 4
  %9 = load i32, i32* %max_xhot, align 4
  %cmp1 = icmp ugt i32 %8, %9
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images3 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %11, i32 0, i32 1
  %12 = load %struct._XcursorImage**, %struct._XcursorImage*** %images3, align 8
  %arrayidx4 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %12, i64 %idxprom2
  %13 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx4, align 8
  %xhot5 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %13, i32 0, i32 4
  %14 = load i32, i32* %xhot5, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i32, i32* %max_xhot, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %max_xhot, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images7 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %17, i32 0, i32 1
  %18 = load %struct._XcursorImage**, %struct._XcursorImage*** %images7, align 8
  %arrayidx8 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %18, i64 %idxprom6
  %19 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx8, align 8
  %yhot = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %19, i32 0, i32 5
  %20 = load i32, i32* %yhot, align 4
  %21 = load i32, i32* %max_yhot, align 4
  %cmp9 = icmp ugt i32 %20, %21
  br i1 %cmp9, label %cond.true.10, label %cond.false.15

cond.true.10:                                     ; preds = %cond.end
  %22 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images12 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %23, i32 0, i32 1
  %24 = load %struct._XcursorImage**, %struct._XcursorImage*** %images12, align 8
  %arrayidx13 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %24, i64 %idxprom11
  %25 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx13, align 8
  %yhot14 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %25, i32 0, i32 5
  %26 = load i32, i32* %yhot14, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %27 = load i32, i32* %max_yhot, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.10
  %cond17 = phi i32 [ %26, %cond.true.10 ], [ %27, %cond.false.15 ]
  store i32 %cond17, i32* %max_yhot, align 4
  %28 = load i32, i32* %dw, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images19 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %30, i32 0, i32 1
  %31 = load %struct._XcursorImage**, %struct._XcursorImage*** %images19, align 8
  %arrayidx20 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %31, i64 %idxprom18
  %32 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx20, align 8
  %width = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %32, i32 0, i32 2
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images22 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %35, i32 0, i32 1
  %36 = load %struct._XcursorImage**, %struct._XcursorImage*** %images22, align 8
  %arrayidx23 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %36, i64 %idxprom21
  %37 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx23, align 8
  %xhot24 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %37, i32 0, i32 4
  %38 = load i32, i32* %xhot24, align 4
  %sub = sub i32 %33, %38
  %cmp25 = icmp ugt i32 %28, %sub
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.16
  %39 = load i32, i32* %dw, align 4
  br label %cond.end.37

cond.false.27:                                    ; preds = %cond.end.16
  %40 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %40 to i64
  %41 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images29 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %41, i32 0, i32 1
  %42 = load %struct._XcursorImage**, %struct._XcursorImage*** %images29, align 8
  %arrayidx30 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %42, i64 %idxprom28
  %43 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx30, align 8
  %width31 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %43, i32 0, i32 2
  %44 = load i32, i32* %width31, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %45 to i64
  %46 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images33 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %46, i32 0, i32 1
  %47 = load %struct._XcursorImage**, %struct._XcursorImage*** %images33, align 8
  %arrayidx34 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %47, i64 %idxprom32
  %48 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx34, align 8
  %xhot35 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %48, i32 0, i32 4
  %49 = load i32, i32* %xhot35, align 4
  %sub36 = sub i32 %44, %49
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.27, %cond.true.26
  %cond38 = phi i32 [ %39, %cond.true.26 ], [ %sub36, %cond.false.27 ]
  store i32 %cond38, i32* %dw, align 4
  %50 = load i32, i32* %dh, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images40 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %52, i32 0, i32 1
  %53 = load %struct._XcursorImage**, %struct._XcursorImage*** %images40, align 8
  %arrayidx41 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %53, i64 %idxprom39
  %54 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx41, align 8
  %height = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %54, i32 0, i32 3
  %55 = load i32, i32* %height, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %56 to i64
  %57 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images43 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %57, i32 0, i32 1
  %58 = load %struct._XcursorImage**, %struct._XcursorImage*** %images43, align 8
  %arrayidx44 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %58, i64 %idxprom42
  %59 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx44, align 8
  %yhot45 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %59, i32 0, i32 5
  %60 = load i32, i32* %yhot45, align 4
  %sub46 = sub i32 %55, %60
  %cmp47 = icmp ugt i32 %50, %sub46
  br i1 %cmp47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.end.37
  %61 = load i32, i32* %dh, align 4
  br label %cond.end.59

cond.false.49:                                    ; preds = %cond.end.37
  %62 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %62 to i64
  %63 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images51 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %63, i32 0, i32 1
  %64 = load %struct._XcursorImage**, %struct._XcursorImage*** %images51, align 8
  %arrayidx52 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %64, i64 %idxprom50
  %65 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx52, align 8
  %height53 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %65, i32 0, i32 3
  %66 = load i32, i32* %height53, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %67 to i64
  %68 = load %struct._XcursorImages*, %struct._XcursorImages** %xcIs.addr, align 8
  %images55 = getelementptr inbounds %struct._XcursorImages, %struct._XcursorImages* %68, i32 0, i32 1
  %69 = load %struct._XcursorImage**, %struct._XcursorImage*** %images55, align 8
  %arrayidx56 = getelementptr inbounds %struct._XcursorImage*, %struct._XcursorImage** %69, i64 %idxprom54
  %70 = load %struct._XcursorImage*, %struct._XcursorImage** %arrayidx56, align 8
  %yhot57 = getelementptr inbounds %struct._XcursorImage, %struct._XcursorImage* %70, i32 0, i32 5
  %71 = load i32, i32* %yhot57, align 4
  %sub58 = sub i32 %66, %71
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.49, %cond.true.48
  %cond60 = phi i32 [ %61, %cond.true.48 ], [ %sub58, %cond.false.49 ]
  store i32 %cond60, i32* %dh, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.59
  %72 = load i32, i32* %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i32*, i32** %xhotp.addr, align 8
  %tobool61 = icmp ne i32* %73, null
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.end
  %74 = load i32, i32* %max_xhot, align 4
  %75 = load i32*, i32** %xhotp.addr, align 8
  store i32 %74, i32* %75, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %for.end
  %76 = load i32*, i32** %yhotp.addr, align 8
  %tobool64 = icmp ne i32* %76, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  %77 = load i32, i32* %max_yhot, align 4
  %78 = load i32*, i32** %yhotp.addr, align 8
  store i32 %77, i32* %78, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  %79 = load i32*, i32** %widthp.addr, align 8
  %tobool67 = icmp ne i32* %79, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.66
  %80 = load i32, i32* %dw, align 4
  %81 = load i32, i32* %max_xhot, align 4
  %add = add nsw i32 %80, %81
  %82 = load i32*, i32** %widthp.addr, align 8
  store i32 %add, i32* %82, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.66
  %83 = load i32*, i32** %heightp.addr, align 8
  %tobool70 = icmp ne i32* %83, null
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.69
  %84 = load i32, i32* %dh, align 4
  %85 = load i32, i32* %max_yhot, align 4
  %add72 = add nsw i32 %84, %85
  %86 = load i32*, i32** %heightp.addr, align 8
  store i32 %add72, i32* %86, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.71, %if.end.69
  ret void
}

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_hotspot_to_parasite(i32 %image_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmpstr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %image_ID.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.set_hotspot_to_parasite, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1), align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 %1, i32 %2)
  store i8* %call, i8** %tmpstr, align 8
  %3 = load i8*, i8** %tmpstr, align 8
  %call1 = call i64 @strlen(i8* %3) #9
  %add = add i64 %call1, 1
  %conv = trunc i64 %add to i32
  %4 = load i8*, i8** %tmpstr, align 8
  %call2 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i32 1, i32 %conv, i8* %4)
  store %struct._GimpParasite* %call2, %struct._GimpParasite** %parasite, align 8
  %5 = load i8*, i8** %tmpstr, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %6, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %do.end
  %7 = load i32, i32* %image_ID.addr, align 4
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call4 = call i32 @gimp_image_attach_parasite(i32 %7, %struct._GimpParasite* %8)
  store i32 %call4, i32* %ret, align 4
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %do.end
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.else
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @make_framename(i32 %size, i32 %delay, i32 %indent, %struct._GError** %errorp) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %delay.addr = alloca i32, align 4
  %indent.addr = alloca i32, align 4
  %errorp.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %delay, i32* %delay.addr, align 4
  store i32 %indent, i32* %indent.addr, align 4
  store %struct._GError** %errorp, %struct._GError*** %errorp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.make_framename, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @make_framename.Counter, i32 0, i64 %idxprom
  %size1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %size1, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp ne i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @make_framename.Counter, i32 0, i64 %idxprom3
  %size5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx4, i32 0, i32 0
  %5 = load i32, i32* %size5, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %cmp8 = icmp sgt i32 %6, 8
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.7
  %7 = load %struct._GError**, %struct._GError*** %errorp.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.76, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 0, i32 0, i8* %call, i32 8)
  store i8* null, i8** %retval
  br label %return

if.else.10:                                       ; preds = %if.then.7
  %8 = load i32, i32* %size.addr, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @make_framename.Counter, i32 0, i64 %idxprom11
  %size13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx12, i32 0, i32 0
  store i32 %8, i32* %size13, align 4
  br label %for.end

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.10, %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @make_framename.Counter, i32 0, i64 %idxprom15
  %count = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx16, i32 0, i32 1
  %12 = load i32, i32* %count, align 4
  %add = add i32 %12, 1
  store i32 %add, i32* %count, align 4
  %13 = load i32, i32* %size.addr, align 4
  %14 = load i32, i32* %indent.addr, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @make_framename.Counter, i32 0, i64 %idxprom17
  %count19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx18, i32 0, i32 1
  %16 = load i32, i32* %count19, align 4
  %17 = load i32, i32* %delay.addr, align 4
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i32 %13, i32 %14, i32 %16, i32 %17)
  store i8* %call20, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.else
  %18 = load i8*, i8** %retval
  ret i8* %18
}

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_translate(i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @separate_alpha(i32 %pixel) #5 {
entry:
  %retval = alloca i32, align 4
  %pixel.addr = alloca i32, align 4
  %alpha = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 %pixel, i32* %pixel.addr, align 4
  %0 = load i32, i32* %pixel.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %blue, align 4
  %1 = load i32, i32* %pixel.addr, align 4
  %shr = lshr i32 %1, 8
  %and2 = and i32 %shr, 255
  store i32 %and2, i32* %green, align 4
  %2 = load i32, i32* %pixel.addr, align 4
  %shr3 = lshr i32 %2, 16
  %and4 = and i32 %shr3, 255
  store i32 %and4, i32* %red, align 4
  %3 = load i32, i32* %pixel.addr, align 4
  %shr5 = lshr i32 %3, 24
  %and6 = and i32 %shr5, 255
  store i32 %and6, i32* %alpha, align 4
  %4 = load i32, i32* %alpha, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %red, align 4
  %mul = mul i32 %5, 255
  %6 = load i32, i32* %alpha, align 4
  %div = udiv i32 %mul, %6
  %cmp7 = icmp ugt i32 %div, 255
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.15

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* %red, align 4
  %mul8 = mul i32 %7, 255
  %8 = load i32, i32* %alpha, align 4
  %div9 = udiv i32 %mul8, %8
  %cmp10 = icmp ult i32 %div9, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %9 = load i32, i32* %red, align 4
  %mul13 = mul i32 %9, 255
  %10 = load i32, i32* %alpha, align 4
  %div14 = udiv i32 %mul13, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi i32 [ 0, %cond.true.11 ], [ %div14, %cond.false.12 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond16, i32* %red, align 4
  %11 = load i32, i32* %blue, align 4
  %mul17 = mul i32 %11, 255
  %12 = load i32, i32* %alpha, align 4
  %div18 = udiv i32 %mul17, %12
  %cmp19 = icmp ugt i32 %div18, 255
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.15
  br label %cond.end.31

cond.false.21:                                    ; preds = %cond.end.15
  %13 = load i32, i32* %blue, align 4
  %mul22 = mul i32 %13, 255
  %14 = load i32, i32* %alpha, align 4
  %div23 = udiv i32 %mul22, %14
  %cmp24 = icmp ult i32 %div23, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.21
  br label %cond.end.29

cond.false.26:                                    ; preds = %cond.false.21
  %15 = load i32, i32* %blue, align 4
  %mul27 = mul i32 %15, 255
  %16 = load i32, i32* %alpha, align 4
  %div28 = udiv i32 %mul27, %16
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.26, %cond.true.25
  %cond30 = phi i32 [ 0, %cond.true.25 ], [ %div28, %cond.false.26 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.20
  %cond32 = phi i32 [ 255, %cond.true.20 ], [ %cond30, %cond.end.29 ]
  store i32 %cond32, i32* %blue, align 4
  %17 = load i32, i32* %green, align 4
  %mul33 = mul i32 %17, 255
  %18 = load i32, i32* %alpha, align 4
  %div34 = udiv i32 %mul33, %18
  %cmp35 = icmp ugt i32 %div34, 255
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end.31
  br label %cond.end.47

cond.false.37:                                    ; preds = %cond.end.31
  %19 = load i32, i32* %green, align 4
  %mul38 = mul i32 %19, 255
  %20 = load i32, i32* %alpha, align 4
  %div39 = udiv i32 %mul38, %20
  %cmp40 = icmp ult i32 %div39, 0
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false.37
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.false.37
  %21 = load i32, i32* %green, align 4
  %mul43 = mul i32 %21, 255
  %22 = load i32, i32* %alpha, align 4
  %div44 = udiv i32 %mul43, %22
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.41
  %cond46 = phi i32 [ 0, %cond.true.41 ], [ %div44, %cond.false.42 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.36
  %cond48 = phi i32 [ 255, %cond.true.36 ], [ %cond46, %cond.end.45 ]
  store i32 %cond48, i32* %green, align 4
  %23 = load i32, i32* %red, align 4
  %24 = load i32, i32* %green, align 4
  %shl = shl i32 %24, 8
  %add = add i32 %23, %shl
  %25 = load i32, i32* %blue, align 4
  %shl49 = shl i32 %25, 16
  %add50 = add i32 %add, %shl49
  %26 = load i32, i32* %alpha, align 4
  %shl51 = shl i32 %26, 24
  %add52 = add i32 %add50, %shl51
  store i32 %add52, i32* %retval1, align 4
  %27 = load i32, i32* %retval1, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.47, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_comment_to_pname(i32 %image_ID, i8* %content, i8* %pname) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %content.addr = alloca i8*, align 8
  %pname.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %tmpstring = alloca i8*, align 8
  %joind = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %content, i8** %content.addr, align 8
  store i8* %pname, i8** %pname.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %image_ID.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.set_comment_to_pname, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %content.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.set_comment_to_pname, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %2 = load i32, i32* %image_ID.addr, align 4
  %3 = load i8*, i8** %pname.addr, align 8
  %call = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %2, i8* %3)
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool6 = icmp ne %struct._GimpParasite* %4, null
  br i1 %tobool6, label %if.else.10, label %if.then.7

if.then.7:                                        ; preds = %do.end.5
  %5 = load i8*, i8** %pname.addr, align 8
  %6 = load i8*, i8** %content.addr, align 8
  %call8 = call i64 @strlen(i8* %6) #9
  %add = add i64 %call8, 1
  %conv = trunc i64 %add to i32
  %7 = load i8*, i8** %content.addr, align 8
  %call9 = call %struct._GimpParasite* @gimp_parasite_new(i8* %5, i32 1, i32 %conv, i8* %7)
  store %struct._GimpParasite* %call9, %struct._GimpParasite** %parasite, align 8
  br label %if.end.19

if.else.10:                                       ; preds = %do.end.5
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call11 = call i8* @gimp_parasite_data(%struct._GimpParasite* %8)
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call12 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %9)
  %call13 = call noalias i8* @g_strndup(i8* %call11, i64 %call12)
  store i8* %call13, i8** %tmpstring, align 8
  %10 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %10)
  %11 = load i8*, i8** %tmpstring, align 8
  %12 = load i8*, i8** %content.addr, align 8
  %call14 = call noalias i8* (i8*, ...) @g_strjoin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* %11, i8* %12, i8* null)
  store i8* %call14, i8** %joind, align 8
  %13 = load i8*, i8** %tmpstring, align 8
  call void @g_free(i8* %13)
  %14 = load i8*, i8** %pname.addr, align 8
  %15 = load i8*, i8** %joind, align 8
  %call15 = call i64 @strlen(i8* %15) #9
  %add16 = add i64 %call15, 1
  %conv17 = trunc i64 %add16 to i32
  %16 = load i8*, i8** %joind, align 8
  %call18 = call %struct._GimpParasite* @gimp_parasite_new(i8* %14, i32 1, i32 %conv17, i8* %16)
  store %struct._GimpParasite* %call18, %struct._GimpParasite** %parasite, align 8
  %17 = load i8*, i8** %joind, align 8
  call void @g_free(i8* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.10, %if.then.7
  %18 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool20 = icmp ne %struct._GimpParasite* %18, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %19 = load i32, i32* %image_ID.addr, align 4
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call22 = call i32 @gimp_image_attach_parasite(i32 %19, %struct._GimpParasite* %20)
  store i32 %call22, i32* %ret, align 4
  %21 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.19
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.else.3, %if.else
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @XcursorImagesDestroy(%struct._XcursorImages*) #1

declare void @XcursorCommentsDestroy(%struct._XcursorComments*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @gimp_progress_end() #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare noalias i8* @g_strjoin(i8*, ...) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @read32(%struct._IO_FILE* %f, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %p = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %p, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 4, %struct._IO_FILE* %0)
  %cmp = icmp ne i64 %call, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %1, i32 0, i32 0, i8* %call1)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %p, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %p, i32 0, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %shl = shl i32 %conv3, 8
  %add = add nsw i32 %conv, %shl
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %p, i32 0, i64 2
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %shl6 = shl i32 %conv5, 16
  %add7 = add nsw i32 %add, %shl6
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %p, i32 0, i64 3
  %5 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %shl10 = shl i32 %conv9, 24
  %add11 = add nsw i32 %add7, %shl10
  store i32 %add11, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare noalias i8* @g_malloc(i64) #1

declare %struct._XcursorImages* @XcursorImagesCreate(i32) #1

declare %struct._XcursorImage* @XcursorImageCreate(i32, i32) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_comment_from_pname(i32 %image_ID, i8* %pname) #0 {
entry:
  %retval = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %pname.addr = alloca i8*, align 8
  %string = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %length = alloca i64, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %pname, i8** %pname.addr, align 8
  store i8* null, i8** %string, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %image_ID.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_comment_from_pname, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %image_ID.addr, align 4
  %2 = load i8*, i8** %pname.addr, align 8
  %call = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %1, i8* %2)
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call1 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %3)
  store i64 %call1, i64* %length, align 8
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %do.end
  %5 = load i64, i64* %length, align 8
  %cmp3 = icmp sgt i64 %5, 1048576
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then.2
  store i64 1048576, i64* %length, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.90, i32 0, i32 0)) #6
  %6 = load i8*, i8** %pname.addr, align 8
  %call6 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %6, i64 -1, i8* null)
  call void (i8*, ...) @g_message(i8* %call5, i8* %call6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.then.2
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call8 = call i8* @gimp_parasite_data(%struct._GimpParasite* %7)
  %8 = load i64, i64* %length, align 8
  %call9 = call noalias i8* @g_strndup(i8* %call8, i64 %8)
  store i8* %call9, i8** %string, align 8
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.7, %do.end
  %10 = load i8*, i8** %string, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else
  %11 = load i8*, i8** %retval
  ret i8* %11
}

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

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define internal i32 @get_hotspot_from_parasite(i32 %image_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %image_ID.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.get_hotspot_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0))
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %2 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call3 = call i8* @gimp_parasite_data(%struct._GimpParasite* %3)
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 0), i32* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 1)) #6
  %cmp5 = icmp slt i32 %call4, 2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.1, %if.else
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare void @gtk_alignment_set_padding(%struct._GtkAlignment*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_alignment_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_max_length(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind uwtable
define internal void @comment_entry_callback(%struct._GtkWidget* %widget, i8** %commentp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %commentp.addr = alloca i8**, align 8
  %text = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8** %commentp, i8*** %commentp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %commentp.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.comment_entry_callback, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %3)
  store i8* %call2, i8** %text, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %4 = load i8*, i8** %text, align 8
  %call4 = call i64 @strlen(i8* %4) #9
  %cmp = icmp ule i64 %call4, 1048576
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.comment_entry_callback, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.130, i32 0, i32 0))
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %5 = load i8**, i8*** %commentp.addr, align 8
  %6 = load i8*, i8** %5, align 8
  call void @g_free(i8* %6)
  %7 = load i8*, i8** %text, align 8
  %call9 = call noalias i8* @g_strdup(i8* %7)
  %8 = load i8**, i8*** %commentp.addr, align 8
  store i8* %call9, i8** %8, align 8
  br label %return

return:                                           ; preds = %do.end.8, %if.else.6, %if.else
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @text_view_callback(%struct._GtkTextBuffer* %buffer, i8** %commentp) #0 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %commentp.addr = alloca i8**, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %end_iter = alloca %struct._GtkTextIter, align 8
  %text = alloca i8*, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  store i8** %commentp, i8*** %commentp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %commentp.addr, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.text_view_callback, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i32 0, i32 0))
  br label %if.end.7

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %1, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  %2 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %call = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %2, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter, i32 0)
  store i8* %call, i8** %text, align 8
  %3 = load i8*, i8** %text, align 8
  %call1 = call i64 @strlen(i8* %3) #9
  %cmp2 = icmp ugt i64 %call1, 1048576
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %do.end
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.132, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call4, i32 1048576)
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start_iter, i32 1048575)
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %end_iter)
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_delete(%struct._GtkTextBuffer* %6, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  br label %if.end.7

if.else.5:                                        ; preds = %do.end
  %7 = load i8**, i8*** %commentp.addr, align 8
  %8 = load i8*, i8** %7, align 8
  call void @g_free(i8* %8)
  %9 = load i8*, i8** %text, align 8
  %call6 = call noalias i8* @g_strdup(i8* %9)
  %10 = load i8**, i8*** %commentp.addr, align 8
  store i8* %call6, i8** %10, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.else.5, %if.then.3
  ret void
}

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #3

declare void @gtk_text_view_set_accepts_tab(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #3

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i32) #1

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_delete(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #1

declare i8* @gimp_item_get_name(i32) #1

; Function Attrs: nounwind uwtable
define internal void @get_cropped_region(%struct._GimpParamRegion* %return_rgn, %struct._GimpPixelRgn* %pr) #0 {
entry:
  %return_rgn.addr = alloca %struct._GimpParamRegion*, align 8
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf = alloca i32*, align 8
  store %struct._GimpParamRegion* %return_rgn, %struct._GimpParamRegion** %return_rgn.addr, align 8
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 6
  %1 = load i32, i32* %w, align 4
  %2 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %2, i32 0, i32 7
  %3 = load i32, i32* %h, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %4, i32 0, i32 6
  %5 = load i32, i32* %w1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %6, i32 0, i32 7
  %7 = load i32, i32* %h2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @g_malloc(i64 %mul)
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** %buf, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %tobool = icmp ne %struct._GimpPixelRgn* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_cropped_region, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w3 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %10, i32 0, i32 6
  %11 = load i32, i32* %w3, align 4
  %call4 = call i32 @gimp_tile_width() #8
  %div = udiv i32 %11, %call4
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h5 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 7
  %13 = load i32, i32* %h5, align 4
  %call6 = call i32 @gimp_tile_height() #8
  %div7 = udiv i32 %13, %call6
  %cmp8 = icmp ugt i32 %div, %div7
  br i1 %cmp8, label %cond.true.10, label %cond.false.14

cond.true.10:                                     ; preds = %do.end
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 6
  %15 = load i32, i32* %w11, align 4
  %call12 = call i32 @gimp_tile_width() #8
  %div13 = udiv i32 %15, %call12
  br label %cond.end.18

cond.false.14:                                    ; preds = %do.end
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 7
  %17 = load i32, i32* %h15, align 4
  %call16 = call i32 @gimp_tile_height() #8
  %div17 = udiv i32 %17, %call16
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.14, %cond.true.10
  %cond19 = phi i32 [ %div13, %cond.true.10 ], [ %div17, %cond.false.14 ]
  %add = add i32 %cond19, 1
  %conv20 = zext i32 %add to i64
  call void @gimp_tile_cache_ntiles(i64 %conv20)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %cond.end.18
  %18 = load i32, i32* %i, align 4
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 6
  %20 = load i32, i32* %w21, align 4
  %cmp22 = icmp ult i32 %18, %20
  br i1 %cmp22, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %22 = load i32*, i32** %buf, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %24, i32 0, i32 4
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %i, align 4
  %add24 = add i32 %25, %26
  %27 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %27, i32 0, i32 5
  %28 = load i32, i32* %y, align 4
  %29 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h25 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %29, i32 0, i32 7
  %30 = load i32, i32* %h25, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %21, i8* %23, i32 %add24, i32 %28, i32 %30)
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %31 = load i32, i32* %j, align 4
  %32 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h27 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %32, i32 0, i32 7
  %33 = load i32, i32* %h27, align 4
  %cmp28 = icmp ult i32 %31, %33
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.26
  %34 = load i32, i32* %j, align 4
  %idxprom = zext i32 %34 to i64
  %35 = load i32*, i32** %buf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %35, i64 %idxprom
  %36 = load i32, i32* %arrayidx, align 4
  %call31 = call i32 @pix_is_opaque(i32 %36)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %for.body.30
  %37 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x34 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %37, i32 0, i32 4
  %38 = load i32, i32* %x34, align 4
  %39 = load i32, i32* %i, align 4
  %add35 = add i32 %38, %39
  %40 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %return_rgn.addr, align 8
  %x36 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %40, i32 0, i32 0
  store i32 %add35, i32* %x36, align 4
  br label %find_right

if.end.37:                                        ; preds = %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %41 = load i32, i32* %j, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %42 = load i32, i32* %i, align 4
  %inc39 = add i32 %42, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %43 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %return_rgn.addr, align 8
  %width = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %43, i32 0, i32 2
  store i32 0, i32* %width, align 4
  br label %return

find_right:                                       ; preds = %if.then.33
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.73, %find_right
  %44 = load i32, i32* %i, align 4
  %45 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w42 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %45, i32 0, i32 6
  %46 = load i32, i32* %w42, align 4
  %cmp43 = icmp ult i32 %44, %46
  br i1 %cmp43, label %for.body.45, label %for.end.75

for.body.45:                                      ; preds = %for.cond.41
  %47 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %48 = load i32*, i32** %buf, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x46 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %50, i32 0, i32 4
  %51 = load i32, i32* %x46, align 4
  %52 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w47 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %52, i32 0, i32 6
  %53 = load i32, i32* %w47, align 4
  %add48 = add nsw i32 %51, %53
  %sub = sub nsw i32 %add48, 1
  %54 = load i32, i32* %i, align 4
  %sub49 = sub i32 %sub, %54
  %55 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y50 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %55, i32 0, i32 5
  %56 = load i32, i32* %y50, align 4
  %57 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h51 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %57, i32 0, i32 7
  %58 = load i32, i32* %h51, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %47, i8* %49, i32 %sub49, i32 %56, i32 %58)
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.70, %for.body.45
  %59 = load i32, i32* %j, align 4
  %60 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %60, i32 0, i32 7
  %61 = load i32, i32* %h53, align 4
  %cmp54 = icmp ult i32 %59, %61
  br i1 %cmp54, label %for.body.56, label %for.end.72

for.body.56:                                      ; preds = %for.cond.52
  %62 = load i32, i32* %j, align 4
  %idxprom57 = zext i32 %62 to i64
  %63 = load i32*, i32** %buf, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %63, i64 %idxprom57
  %64 = load i32, i32* %arrayidx58, align 4
  %call59 = call i32 @pix_is_opaque(i32 %64)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %for.body.56
  %65 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x62 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %65, i32 0, i32 4
  %66 = load i32, i32* %x62, align 4
  %67 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w63 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %67, i32 0, i32 6
  %68 = load i32, i32* %w63, align 4
  %add64 = add nsw i32 %66, %68
  %69 = load i32, i32* %i, align 4
  %sub65 = sub i32 %add64, %69
  %70 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %return_rgn.addr, align 8
  %x66 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %70, i32 0, i32 0
  %71 = load i32, i32* %x66, align 4
  %sub67 = sub i32 %sub65, %71
  %72 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %return_rgn.addr, align 8
  %width68 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %72, i32 0, i32 2
  store i32 %sub67, i32* %width68, align 4
  br label %find_top

if.end.69:                                        ; preds = %for.body.56
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %73 = load i32, i32* %j, align 4
  %inc71 = add i32 %73, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond.52

for.end.72:                                       ; preds = %for.cond.52
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72
  %74 = load i32, i32* %i, align 4
  %inc74 = add i32 %74, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.41

for.end.75:                                       ; preds = %for.cond.41
  br label %do.body.76

do.body.76:                                       ; preds = %for.end.75
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i32 2231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_cropped_region, i32 0, i32 0))
  br label %return

do.end.77:                                        ; No predecessors!
  br label %find_top

find_top:                                         ; preds = %do.end.77, %if.then.61
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.104, %find_top
  %75 = load i32, i32* %j, align 4
  %76 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h79 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %76, i32 0, i32 7
  %77 = load i32, i32* %h79, align 4
  %cmp80 = icmp ult i32 %75, %77
  br i1 %cmp80, label %for.body.82, label %for.end.106

for.body.82:                                      ; preds = %for.cond.78
  %78 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %79 = load i32*, i32** %buf, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x83 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %81, i32 0, i32 4
  %82 = load i32, i32* %x83, align 4
  %83 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y84 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %83, i32 0, i32 5
  %84 = load i32, i32* %y84, align 4
  %85 = load i32, i32* %j, align 4
  %add85 = add i32 %84, %85
  %86 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w86 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %86, i32 0, i32 6
  %87 = load i32, i32* %w86, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %78, i8* %80, i32 %82, i32 %add85, i32 %87)
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.101, %for.body.82
  %88 = load i32, i32* %i, align 4
  %89 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w88 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %89, i32 0, i32 6
  %90 = load i32, i32* %w88, align 4
  %cmp89 = icmp ult i32 %88, %90
  br i1 %cmp89, label %for.body.91, label %for.end.103

for.body.91:                                      ; preds = %for.cond.87
  %91 = load i32, i32* %i, align 4
  %idxprom92 = zext i32 %91 to i64
  %92 = load i32*, i32** %buf, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %92, i64 %idxprom92
  %93 = load i32, i32* %arrayidx93, align 4
  %call94 = call i32 @pix_is_opaque(i32 %93)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %for.body.91
  %94 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y97 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %94, i32 0, i32 5
  %95 = load i32, i32* %y97, align 4
  %96 = load i32, i32* %j, align 4
  %add98 = add i32 %95, %96
  %97 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %return_rgn.addr, align 8
  %y99 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %97, i32 0, i32 1
  store i32 %add98, i32* %y99, align 4
  br label %find_bottom

if.end.100:                                       ; preds = %for.body.91
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %98 = load i32, i32* %i, align 4
  %inc102 = add i32 %98, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.87

for.end.103:                                      ; preds = %for.cond.87
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end.103
  %99 = load i32, i32* %j, align 4
  %inc105 = add i32 %99, 1
  store i32 %inc105, i32* %j, align 4
  br label %for.cond.78

for.end.106:                                      ; preds = %for.cond.78
  br label %do.body.107

do.body.107:                                      ; preds = %for.end.106
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i32 2251, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_cropped_region, i32 0, i32 0))
  br label %return

do.end.108:                                       ; No predecessors!
  br label %find_bottom

find_bottom:                                      ; preds = %do.end.108, %if.then.96
  store i32 0, i32* %j, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.141, %find_bottom
  %100 = load i32, i32* %j, align 4
  %101 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h110 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %101, i32 0, i32 7
  %102 = load i32, i32* %h110, align 4
  %cmp111 = icmp ult i32 %100, %102
  br i1 %cmp111, label %for.body.113, label %for.end.143

for.body.113:                                     ; preds = %for.cond.109
  %103 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %104 = load i32*, i32** %buf, align 8
  %105 = bitcast i32* %104 to i8*
  %106 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x114 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %106, i32 0, i32 4
  %107 = load i32, i32* %x114, align 4
  %108 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y115 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %108, i32 0, i32 5
  %109 = load i32, i32* %y115, align 4
  %110 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h116 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %110, i32 0, i32 7
  %111 = load i32, i32* %h116, align 4
  %add117 = add nsw i32 %109, %111
  %sub118 = sub nsw i32 %add117, 1
  %112 = load i32, i32* %j, align 4
  %sub119 = sub i32 %sub118, %112
  %113 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w120 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %113, i32 0, i32 6
  %114 = load i32, i32* %w120, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %103, i8* %105, i32 %107, i32 %sub119, i32 %114)
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.138, %for.body.113
  %115 = load i32, i32* %i, align 4
  %116 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w122 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %116, i32 0, i32 6
  %117 = load i32, i32* %w122, align 4
  %cmp123 = icmp ult i32 %115, %117
  br i1 %cmp123, label %for.body.125, label %for.end.140

for.body.125:                                     ; preds = %for.cond.121
  %118 = load i32, i32* %i, align 4
  %idxprom126 = zext i32 %118 to i64
  %119 = load i32*, i32** %buf, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %119, i64 %idxprom126
  %120 = load i32, i32* %arrayidx127, align 4
  %call128 = call i32 @pix_is_opaque(i32 %120)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.137

if.then.130:                                      ; preds = %for.body.125
  %121 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y131 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %121, i32 0, i32 5
  %122 = load i32, i32* %y131, align 4
  %123 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h132 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %123, i32 0, i32 7
  %124 = load i32, i32* %h132, align 4
  %add133 = add nsw i32 %122, %124
  %125 = load i32, i32* %j, align 4
  %sub134 = sub i32 %add133, %125
  %126 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %return_rgn.addr, align 8
  %y135 = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %126, i32 0, i32 1
  %127 = load i32, i32* %y135, align 4
  %sub136 = sub i32 %sub134, %127
  %128 = load %struct._GimpParamRegion*, %struct._GimpParamRegion** %return_rgn.addr, align 8
  %height = getelementptr inbounds %struct._GimpParamRegion, %struct._GimpParamRegion* %128, i32 0, i32 3
  store i32 %sub136, i32* %height, align 4
  br label %end_trim

if.end.137:                                       ; preds = %for.body.125
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %129 = load i32, i32* %i, align 4
  %inc139 = add i32 %129, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond.121

for.end.140:                                      ; preds = %for.cond.121
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.end.140
  %130 = load i32, i32* %j, align 4
  %inc142 = add i32 %130, 1
  store i32 %inc142, i32* %j, align 4
  br label %for.cond.109

for.end.143:                                      ; preds = %for.cond.109
  br label %do.body.144

do.body.144:                                      ; preds = %for.end.143
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i32 2271, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_cropped_region, i32 0, i32 0))
  br label %return

do.end.145:                                       ; No predecessors!
  br label %end_trim

end_trim:                                         ; preds = %do.end.145, %if.then.130
  %131 = load i32*, i32** %buf, align 8
  %132 = bitcast i32* %131 to i8*
  call void @g_free(i8* %132)
  br label %return

return:                                           ; preds = %end_trim, %do.body.144, %do.body.107, %do.body.76, %for.end.40, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_size_and_delay(i8* %framename, i32* %sizep, i32* %delayp, %struct._GRegex* %re, i32* %size_warnp) #0 {
entry:
  %framename.addr = alloca i8*, align 8
  %sizep.addr = alloca i32*, align 8
  %delayp.addr = alloca i32*, align 8
  %re.addr = alloca %struct._GRegex*, align 8
  %size_warnp.addr = alloca i32*, align 8
  %size = alloca i32, align 4
  %delay = alloca i32, align 4
  %digits = alloca i8*, align 8
  %suffix = alloca i8*, align 8
  %info = alloca %struct._GMatchInfo*, align 8
  store i8* %framename, i8** %framename.addr, align 8
  store i32* %sizep, i32** %sizep.addr, align 8
  store i32* %delayp, i32** %delayp.addr, align 8
  store %struct._GRegex* %re, %struct._GRegex** %re.addr, align 8
  store i32* %size_warnp, i32** %size_warnp.addr, align 8
  store i32 0, i32* %size, align 4
  store i32 0, i32* %delay, align 4
  store i8* null, i8** %digits, align 8
  store i8* null, i8** %suffix, align 8
  store %struct._GMatchInfo* null, %struct._GMatchInfo** %info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %framename.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.set_size_and_delay, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %sizep.addr, align 8
  %tobool2 = icmp ne i32* %1, null
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.set_size_and_delay, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32*, i32** %delayp.addr, align 8
  %tobool8 = icmp ne i32* %2, null
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.set_size_and_delay, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %3 = load %struct._GRegex*, %struct._GRegex** %re.addr, align 8
  %tobool14 = icmp ne %struct._GRegex* %3, null
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.set_size_and_delay, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.152, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %4 = load %struct._GRegex*, %struct._GRegex** %re.addr, align 8
  %5 = load i8*, i8** %framename.addr, align 8
  %call = call i32 @g_regex_match(%struct._GRegex* %4, i8* %5, i32 0, %struct._GMatchInfo** %info)
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %do.end.18
  %6 = load %struct._GMatchInfo*, %struct._GMatchInfo** %info, align 8
  %call19 = call i32 @g_match_info_matches(%struct._GMatchInfo* %6)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._GMatchInfo*, %struct._GMatchInfo** %info, align 8
  %call21 = call i8* @g_match_info_fetch(%struct._GMatchInfo* %7, i32 1)
  store i8* %call21, i8** %digits, align 8
  %8 = load %struct._GMatchInfo*, %struct._GMatchInfo** %info, align 8
  %call22 = call i8* @g_match_info_fetch(%struct._GMatchInfo* %8, i32 2)
  store i8* %call22, i8** %suffix, align 8
  %9 = load i8*, i8** %suffix, align 8
  %call23 = call i32 @g_ascii_strcasecmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i32 0, i32 0))
  %cmp = icmp eq i32 %call23, 0
  br i1 %cmp, label %if.then.24, label %if.else.36

if.then.24:                                       ; preds = %while.body
  %10 = load i32, i32* %size, align 4
  %tobool25 = icmp ne i32 %10, 0
  br i1 %tobool25, label %if.end.35, label %if.then.26

if.then.26:                                       ; preds = %if.then.24
  %11 = load i8*, i8** %digits, align 8
  %call27 = call i64 @strlen(i8* %11) #9
  %cmp28 = icmp ugt i64 %call27, 8
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.26
  store i32 64, i32* %size, align 4
  br label %if.end.34

if.else.30:                                       ; preds = %if.then.26
  %12 = load i8*, i8** %digits, align 8
  %call31 = call i32 @atoi(i8* %12) #9
  %cmp32 = icmp slt i32 64, %call31
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.30
  br label %cond.end

cond.false:                                       ; preds = %if.else.30
  %13 = load i8*, i8** %digits, align 8
  %call33 = call i32 @atoi(i8* %13) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 64, %cond.true ], [ %call33, %cond.false ]
  store i32 %cond, i32* %size, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end, %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.24
  br label %if.end.52

if.else.36:                                       ; preds = %while.body
  %14 = load i32, i32* %delay, align 4
  %tobool37 = icmp ne i32 %14, 0
  br i1 %tobool37, label %if.end.51, label %if.then.38

if.then.38:                                       ; preds = %if.else.36
  %15 = load i8*, i8** %digits, align 8
  %call39 = call i64 @strlen(i8* %15) #9
  %cmp40 = icmp ugt i64 %call39, 8
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.then.38
  store i32 100000000, i32* %delay, align 4
  br label %if.end.50

if.else.42:                                       ; preds = %if.then.38
  %16 = load i8*, i8** %digits, align 8
  %call43 = call i32 @atoi(i8* %16) #9
  %cmp44 = icmp slt i32 100000000, %call43
  br i1 %cmp44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.else.42
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.else.42
  %17 = load i8*, i8** %digits, align 8
  %call47 = call i32 @atoi(i8* %17) #9
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.45
  %cond49 = phi i32 [ 100000000, %cond.true.45 ], [ %call47, %cond.false.46 ]
  store i32 %cond49, i32* %delay, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end.48, %if.then.41
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.else.36
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.35
  %18 = load i8*, i8** %digits, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %suffix, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GMatchInfo*, %struct._GMatchInfo** %info, align 8
  %call53 = call i32 @g_match_info_next(%struct._GMatchInfo* %20, %struct._GError** null)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct._GMatchInfo*, %struct._GMatchInfo** %info, align 8
  call void @g_match_info_free(%struct._GMatchInfo* %21)
  %22 = load i32, i32* %size, align 4
  %cmp54 = icmp eq i32 %22, 0
  br i1 %cmp54, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %23 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 2), align 4
  %cmp55 = icmp eq i32 %23, 1
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %lor.lhs.false, %while.end
  %24 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 1), align 4
  store i32 %24, i32* %size, align 4
  br label %if.end.76

if.else.57:                                       ; preds = %lor.lhs.false
  %25 = load i32*, i32** %size_warnp.addr, align 8
  %26 = load i32, i32* %25, align 4
  %tobool58 = icmp ne i32 %26, 0
  br i1 %tobool58, label %if.end.75, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.57
  %27 = load i32, i32* %size, align 4
  %cmp59 = icmp ne i32 %27, 12
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.75

land.lhs.true.60:                                 ; preds = %land.lhs.true
  %28 = load i32, i32* %size, align 4
  %cmp61 = icmp ne i32 %28, 16
  br i1 %cmp61, label %land.lhs.true.62, label %if.end.75

land.lhs.true.62:                                 ; preds = %land.lhs.true.60
  %29 = load i32, i32* %size, align 4
  %cmp63 = icmp ne i32 %29, 24
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.75

land.lhs.true.64:                                 ; preds = %land.lhs.true.62
  %30 = load i32, i32* %size, align 4
  %cmp65 = icmp ne i32 %30, 32
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.75

land.lhs.true.66:                                 ; preds = %land.lhs.true.64
  %31 = load i32, i32* %size, align 4
  %cmp67 = icmp ne i32 %31, 36
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.75

land.lhs.true.68:                                 ; preds = %land.lhs.true.66
  %32 = load i32, i32* %size, align 4
  %cmp69 = icmp ne i32 %32, 40
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.75

land.lhs.true.70:                                 ; preds = %land.lhs.true.68
  %33 = load i32, i32* %size, align 4
  %cmp71 = icmp ne i32 %33, 48
  br i1 %cmp71, label %land.lhs.true.72, label %if.end.75

land.lhs.true.72:                                 ; preds = %land.lhs.true.70
  %34 = load i32, i32* %size, align 4
  %cmp73 = icmp ne i32 %34, 64
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %land.lhs.true.72
  %35 = load i32*, i32** %size_warnp.addr, align 8
  store i32 1, i32* %35, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %land.lhs.true.72, %land.lhs.true.70, %land.lhs.true.68, %land.lhs.true.66, %land.lhs.true.64, %land.lhs.true.62, %land.lhs.true.60, %land.lhs.true, %if.else.57
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.56
  %36 = load i32, i32* %size, align 4
  %37 = load i32*, i32** %sizep.addr, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %delay, align 4
  %cmp77 = icmp eq i32 %38, 0
  br i1 %cmp77, label %if.then.80, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.76
  %39 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 4), align 4
  %cmp79 = icmp eq i32 %39, 1
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false.78, %if.end.76
  %40 = load i32, i32* getelementptr inbounds (%struct.XmcSaveVals, %struct.XmcSaveVals* @xmcvals, i32 0, i32 3), align 4
  store i32 %40, i32* %delay, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %lor.lhs.false.78
  %41 = load i32, i32* %delay, align 4
  %42 = load i32*, i32** %delayp.addr, align 8
  store i32 %41, i32* %42, align 4
  br label %return

return:                                           ; preds = %if.end.81, %if.else.16, %if.else.10, %if.else.4, %if.else
  ret void
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @premultiply_alpha(i32 %pixel) #5 {
entry:
  %pixel.addr = alloca i32, align 4
  %alpha = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 %pixel, i32* %pixel.addr, align 4
  %0 = load i32, i32* %pixel.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %red, align 4
  %1 = load i32, i32* %pixel.addr, align 4
  %shr = lshr i32 %1, 8
  %and2 = and i32 %shr, 255
  store i32 %and2, i32* %green, align 4
  %2 = load i32, i32* %pixel.addr, align 4
  %shr3 = lshr i32 %2, 16
  %and4 = and i32 %shr3, 255
  store i32 %and4, i32* %blue, align 4
  %3 = load i32, i32* %pixel.addr, align 4
  %shr5 = lshr i32 %3, 24
  %and6 = and i32 %shr5, 255
  store i32 %and6, i32* %alpha, align 4
  %4 = load i32, i32* %red, align 4
  %5 = load i32, i32* %alpha, align 4
  %mul = mul i32 %4, %5
  %add = add i32 %mul, 128
  %6 = load i32, i32* %red, align 4
  %7 = load i32, i32* %alpha, align 4
  %mul7 = mul i32 %6, %7
  %add8 = add i32 %mul7, 128
  %shr9 = lshr i32 %add8, 8
  %add10 = add i32 %add, %shr9
  %shr11 = lshr i32 %add10, 8
  store i32 %shr11, i32* %red, align 4
  %8 = load i32, i32* %green, align 4
  %9 = load i32, i32* %alpha, align 4
  %mul12 = mul i32 %8, %9
  %add13 = add i32 %mul12, 128
  %10 = load i32, i32* %green, align 4
  %11 = load i32, i32* %alpha, align 4
  %mul14 = mul i32 %10, %11
  %add15 = add i32 %mul14, 128
  %shr16 = lshr i32 %add15, 8
  %add17 = add i32 %add13, %shr16
  %shr18 = lshr i32 %add17, 8
  store i32 %shr18, i32* %green, align 4
  %12 = load i32, i32* %blue, align 4
  %13 = load i32, i32* %alpha, align 4
  %mul19 = mul i32 %12, %13
  %add20 = add i32 %mul19, 128
  %14 = load i32, i32* %blue, align 4
  %15 = load i32, i32* %alpha, align 4
  %mul21 = mul i32 %14, %15
  %add22 = add i32 %mul21, 128
  %shr23 = lshr i32 %add22, 8
  %add24 = add i32 %add20, %shr23
  %shr25 = lshr i32 %add24, 8
  store i32 %shr25, i32* %blue, align 4
  %16 = load i32, i32* %blue, align 4
  %17 = load i32, i32* %green, align 4
  %shl = shl i32 %17, 8
  %add26 = add i32 %16, %shl
  %18 = load i32, i32* %red, align 4
  %shl27 = shl i32 %18, 16
  %add28 = add i32 %add26, %shl27
  %19 = load i32, i32* %alpha, align 4
  %shl29 = shl i32 %19, 24
  %add30 = add i32 %add28, %shl29
  store i32 %add30, i32* %retval1, align 4
  %20 = load i32, i32* %retval1, align 4
  ret i32 %20
}

declare i32 @gimp_item_set_name(i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._XcursorComments* @set_cursor_comments() #0 {
entry:
  %retval = alloca %struct._XcursorComments*, align 8
  %i = alloca i32, align 4
  %gcomlen = alloca i32, align 4
  %arraylen = alloca i32, align 4
  %xcCommentsArray = alloca %struct._GArray*, align 8
  %xcCommentp = alloca [3 x %struct._XcursorComment*], align 16
  %xcCommentsp = alloca %struct._XcursorComments*, align 8
  %0 = bitcast [3 x %struct._XcursorComment*]* %xcCommentp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false)
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 8)
  store %struct._GArray* %call, %struct._GArray** %xcCommentsArray, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i64 @strlen(i8* %5) #9
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %gcomlen, align 4
  %6 = load i32, i32* %gcomlen, align 4
  %cmp4 = icmp ugt i32 %6, 0
  br i1 %cmp4, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %if.then
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %gcomlen, align 4
  %call7 = call %struct._XcursorComment* @XcursorCommentCreate(i32 %add, i32 %8)
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [3 x %struct._XcursorComment*], [3 x %struct._XcursorComment*]* %xcCommentp, i32 0, i64 %idxprom8
  store %struct._XcursorComment* %call7, %struct._XcursorComment** %arrayidx9, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct._XcursorComment*], [3 x %struct._XcursorComment*]* %xcCommentp, i32 0, i64 %idxprom10
  %11 = load %struct._XcursorComment*, %struct._XcursorComment** %arrayidx11, align 8
  %tobool12 = icmp ne %struct._XcursorComment* %11, null
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %if.then.6
  %12 = load i32, i32* %i, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.154, i32 0, i32 0), i32 %12)
  store %struct._XcursorComments* null, %struct._XcursorComments** %retval
  br label %return

if.else:                                          ; preds = %if.then.6
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct._XcursorComment*], [3 x %struct._XcursorComment*]* %xcCommentp, i32 0, i64 %idxprom14
  %14 = load %struct._XcursorComment*, %struct._XcursorComment** %arrayidx15, align 8
  %comment = getelementptr inbounds %struct._XcursorComment, %struct._XcursorComment* %14, i32 0, i32 2
  %15 = load i8*, i8** %comment, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [3 x i8*], [3 x i8*]* getelementptr inbounds (%struct.anon, %struct.anon* @xmcparas, i32 0, i32 2), i32 0, i64 %idxprom16
  %17 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i8* @g_stpcpy(i8* %15, i8* %17)
  %18 = load %struct._GArray*, %struct._GArray** %xcCommentsArray, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [3 x %struct._XcursorComment*], [3 x %struct._XcursorComment*]* %xcCommentp, i32 0, i64 %idxprom19
  %20 = bitcast %struct._XcursorComment** %arrayidx20 to i8*
  %call21 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %18, i8* %20, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GArray*, %struct._GArray** %xcCommentsArray, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 1
  %23 = load i32, i32* %len, align 4
  store i32 %23, i32* %arraylen, align 4
  %24 = load i32, i32* %arraylen, align 4
  %cmp24 = icmp eq i32 %24, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.end
  store %struct._XcursorComments* null, %struct._XcursorComments** %retval
  br label %return

if.end.27:                                        ; preds = %for.end
  %25 = load i32, i32* %arraylen, align 4
  %call28 = call %struct._XcursorComments* @XcursorCommentsCreate(i32 %25)
  store %struct._XcursorComments* %call28, %struct._XcursorComments** %xcCommentsp, align 8
  %26 = load i32, i32* %arraylen, align 4
  %27 = load %struct._XcursorComments*, %struct._XcursorComments** %xcCommentsp, align 8
  %ncomment = getelementptr inbounds %struct._XcursorComments, %struct._XcursorComments* %27, i32 0, i32 0
  store i32 %26, i32* %ncomment, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %if.end.27
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %arraylen, align 4
  %cmp30 = icmp ult i32 %28, %29
  br i1 %cmp30, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.29
  %30 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load %struct._GArray*, %struct._GArray** %xcCommentsArray, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %31, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to %struct._XcursorComment**
  %arrayidx34 = getelementptr inbounds %struct._XcursorComment*, %struct._XcursorComment** %33, i64 %idxprom33
  %34 = load %struct._XcursorComment*, %struct._XcursorComment** %arrayidx34, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %35 to i64
  %36 = load %struct._XcursorComments*, %struct._XcursorComments** %xcCommentsp, align 8
  %comments = getelementptr inbounds %struct._XcursorComments, %struct._XcursorComments* %36, i32 0, i32 1
  %37 = load %struct._XcursorComment**, %struct._XcursorComment*** %comments, align 8
  %arrayidx36 = getelementptr inbounds %struct._XcursorComment*, %struct._XcursorComment** %37, i64 %idxprom35
  store %struct._XcursorComment* %34, %struct._XcursorComment** %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %38 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %38, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  %39 = load %struct._XcursorComments*, %struct._XcursorComments** %xcCommentsp, align 8
  store %struct._XcursorComments* %39, %struct._XcursorComments** %retval
  br label %return

return:                                           ; preds = %for.end.39, %if.then.26, %if.then.13
  %40 = load %struct._XcursorComments*, %struct._XcursorComments** %retval
  ret %struct._XcursorComments* %40
}

declare i32 @XcursorFileSave(%struct._IO_FILE*, %struct._XcursorComments*, %struct._XcursorImages*) #1

declare i32 @XcursorFileSaveImages(%struct._IO_FILE*, %struct._XcursorImages*) #1

declare void @g_regex_unref(%struct._GRegex*) #1

declare i32 @gimp_image_detach_parasite(i32, i8*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pix_is_opaque(i32 %pix) #5 {
entry:
  %pix.addr = alloca i32, align 4
  store i32 %pix, i32* %pix.addr, align 4
  %0 = load i32, i32* %pix.addr, align 4
  %shr = lshr i32 %0, 24
  %cmp = icmp ne i32 %shr, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #1

declare i32 @g_match_info_matches(%struct._GMatchInfo*) #1

declare i8* @g_match_info_fetch(%struct._GMatchInfo*, i32) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @g_match_info_next(%struct._GMatchInfo*, %struct._GError**) #1

declare void @g_match_info_free(%struct._GMatchInfo*) #1

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare %struct._XcursorComment* @XcursorCommentCreate(i32, i32) #1

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

declare i8* @g_stpcpy(i8*, i8*) #1

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare %struct._XcursorComments* @XcursorCommentsCreate(i32) #1

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
