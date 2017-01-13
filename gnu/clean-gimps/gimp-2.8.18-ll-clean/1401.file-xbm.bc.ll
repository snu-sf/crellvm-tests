; ModuleID = './plug-ins/common/file-xbm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._XBMSaveVals = type { [73 x i8], i32, i32, i32, i32, [65 x i8], i32, [33 x i8] }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GBinding = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.save_args = internal constant [12 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"The name of the file to save\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Image description (maximum 72 bytes)\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"x10\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Save in X10 format\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"x-hot\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"X coordinate of hotspot\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"y-hot\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Y coordinate of hotspot\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Identifier prefix [determined from filename]\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"write-mask\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"(0 = ignore, 1 = save as extra file)\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"mask-extension\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Extension of the mask file\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"file-xbm-load\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Load a file in X10 or X11 bitmap (XBM) file format\00", align 1
@.str.28 = private unnamed_addr constant [131 x i8] c"Load a file in X10 or X11 bitmap (XBM) file format.  XBM is a lossless format for flat black-and-white (two color indexed) images.\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Gordon Matzigkeit\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"X BitMap image\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"image/x-xbitmap\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"xbm,icon,bitmap\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"file-xbm-save\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"Save a file in X10 or X11 bitmap (XBM) file format\00", align 1
@.str.37 = private unnamed_addr constant [131 x i8] c"Save a file in X10 or X11 bitmap (XBM) file format.  XBM is a lossless format for flat black-and-white (two color indexed) images.\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"INDEXED\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@xsvals = internal global %struct._XBMSaveVals { [73 x i8] c"###\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, [65 x i8] c"bitmap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, [33 x i8] c"-mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str.41 = private unnamed_addr constant [18 x i8] c"Created with GIMP\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"file-xbm\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"XBM\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"hot-spot\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%i %i\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%s/%s%s.xbm\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"%s%s.xbm\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@load_image.cmap = internal constant [6 x i8] c"\00\00\00\FF\FF\FF", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"x_hot\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"y_hot\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"'%s':\0ACould not read header (ftell == %ld)\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"'%s':\0ANo image width specified\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"'%s':\0AImage width is larger than GIMP can handle\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"'%s':\0ANo image height specified\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"'%s':\0AImage height is larger than GIMP can handle\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"'%s':\0ANo image data type specified\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"0123456789abcdefABCDEF\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"XBM Options\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"_X10 format bitmap\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"_Identifier prefix:\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"_Write hot spot values\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Hot spot _X:\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Hot spot _Y:\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"Mask File\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"W_rite extra mask file\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"_Mask file extension:\00", align 1
@.str.82 = private unnamed_addr constant [157 x i8] c"The image which you are trying to save as an XBM contains more than two colors.\0A\0APlease convert it to a black and white (1-bit) indexed image and try again.\00", align 1
@.str.83 = private unnamed_addr constant [71 x i8] c"You cannot save a cursor mask for an image\0Awhich has no alpha channel.\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"#define %s_width %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"#define %s_height %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"#define %s_x_hot %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"#define %s_y_hot %d\0A\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c" 0x%04x\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"static %s %s_bits[] = {\0A  \00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" };\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0))
  %call1 = call i32 @gimp_register_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 1, i32 12, i32 0, %struct._GimpParamDef* getelementptr inbounds ([12 x %struct._GimpParamDef], [12 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0))
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
  %parasite = alloca %struct._GimpParasite*, align 8
  %mask_filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %export = alloca i32, align 4
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %temp = alloca i8*, align 8
  %mask_prefix = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite, align 8
  store i8* null, i8** %mask_filename, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %export, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %call4 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i64 72) #5
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %do.end
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data7 to i8**
  %6 = load i8*, i8** %d_string, align 8
  %call8 = call i32 @load_image(i8* %6, %struct._GError** %error)
  store i32 %call8, i32* %image_ID, align 4
  %7 = load i32, i32* %image_ID, align 4
  %cmp9 = icmp ne i32 %7, -1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %8 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %8, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %9 = load i32, i32* %image_ID, align 4
  store i32 %9, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.190

if.else.11:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.188

if.then.14:                                       ; preds = %if.else.11
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int3217 = bitcast %union._GimpParamData* %data16 to i32*
  %12 = load i32, i32* %d_int3217, align 4
  store i32 %12, i32* %image_ID, align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 2
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_int3220 = bitcast %union._GimpParamData* %data19 to i32*
  %14 = load i32, i32* %d_int3220, align 4
  store i32 %14, i32* %drawable_ID, align 4
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.14, %if.then.14
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 0)
  %call21 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 24)
  store i32 %call21, i32* %export, align 4
  %16 = load i32, i32* %export, align 4
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.24:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.24
  %17 = load i32, i32* %run_mode, align 4
  switch i32 %17, label %sw.default.94 [
    i32 0, label %sw.bb.25
    i32 2, label %sw.bb.25
    i32 1, label %sw.bb.32
  ]

sw.bb.25:                                         ; preds = %sw.epilog, %sw.epilog
  %call26 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0))
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_string29 = bitcast %union._GimpParamData* %data28 to i8**
  %19 = load i8*, i8** %d_string29, align 8
  %call30 = call i8* @init_prefix(i8* %19)
  %call31 = call noalias i8* @g_strdup(i8* %call30)
  store i8* %call31, i8** %mask_filename, align 8
  br label %sw.epilog.95

sw.bb.32:                                         ; preds = %sw.epilog
  %20 = load i32, i32* %nparams.addr, align 4
  %cmp33 = icmp slt i32 %20, 5
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %sw.bb.32
  store i32 1, i32* %status, align 4
  br label %if.end.93

if.else.35:                                       ; preds = %sw.bb.32
  store i32 5, i32* %i, align 4
  %21 = load i32, i32* %nparams.addr, align 4
  %22 = load i32, i32* %i, align 4
  %cmp36 = icmp sgt i32 %21, %22
  br i1 %cmp36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.else.35
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0), i8 0, i64 73, i32 4, i1 false)
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 %idxprom
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_string40 = bitcast %union._GimpParamData* %data39 to i8**
  %25 = load i8*, i8** %d_string40, align 8
  %call41 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0), i8* %25, i64 72) #5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.else.35
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  %27 = load i32, i32* %nparams.addr, align 4
  %28 = load i32, i32* %i, align 4
  %cmp43 = icmp sgt i32 %27, %28
  br i1 %cmp43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.end.42
  %29 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %29 to i64
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 %idxprom45
  %data47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx46, i32 0, i32 1
  %d_int3248 = bitcast %union._GimpParamData* %data47 to i32*
  %31 = load i32, i32* %d_int3248, align 4
  %tobool = icmp ne i32 %31, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 1), align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.end.42
  %32 = load i32, i32* %i, align 4
  %add = add nsw i32 %32, 2
  store i32 %add, i32* %i, align 4
  %33 = load i32, i32* %nparams.addr, align 4
  %34 = load i32, i32* %i, align 4
  %cmp50 = icmp sgt i32 %33, %34
  br i1 %cmp50, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %if.end.49
  store i32 1, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 2), align 4
  %35 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %35, 1
  %idxprom52 = sext i32 %sub to i64
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 %idxprom52
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_int3255 = bitcast %union._GimpParamData* %data54 to i32*
  %37 = load i32, i32* %d_int3255, align 4
  store i32 %37, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 3), align 4
  %38 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %38 to i64
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 %idxprom56
  %data58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx57, i32 0, i32 1
  %d_int3259 = bitcast %union._GimpParamData* %data58 to i32*
  %40 = load i32, i32* %d_int3259, align 4
  store i32 %40, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 4), align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.51, %if.end.49
  %41 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 3
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_string63 = bitcast %union._GimpParamData* %data62 to i8**
  %42 = load i8*, i8** %d_string63, align 8
  %call64 = call i8* @init_prefix(i8* %42)
  %call65 = call noalias i8* @g_strdup(i8* %call64)
  store i8* %call65, i8** %mask_filename, align 8
  %43 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %43, 1
  store i32 %inc66, i32* %i, align 4
  %44 = load i32, i32* %nparams.addr, align 4
  %45 = load i32, i32* %i, align 4
  %cmp67 = icmp sgt i32 %44, %45
  br i1 %cmp67, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %if.end.60
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8 0, i64 65, i32 4, i1 false)
  %46 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %46 to i64
  %47 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %47, i64 %idxprom69
  %data71 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx70, i32 0, i32 1
  %d_string72 = bitcast %union._GimpParamData* %data71 to i8**
  %48 = load i8*, i8** %d_string72, align 8
  %call73 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8* %48, i64 64) #5
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %if.end.60
  %49 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %49, 2
  store i32 %add75, i32* %i, align 4
  %50 = load i32, i32* %nparams.addr, align 4
  %51 = load i32, i32* %i, align 4
  %cmp76 = icmp sgt i32 %50, %51
  br i1 %cmp76, label %if.then.77, label %if.end.88

if.then.77:                                       ; preds = %if.end.74
  %52 = load i32, i32* %i, align 4
  %sub78 = sub nsw i32 %52, 1
  %idxprom79 = sext i32 %sub78 to i64
  %53 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %53, i64 %idxprom79
  %data81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx80, i32 0, i32 1
  %d_int3282 = bitcast %union._GimpParamData* %data81 to i32*
  %54 = load i32, i32* %d_int3282, align 4
  store i32 %54, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 6), align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0), i8 0, i64 33, i32 4, i1 false)
  %55 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %55 to i64
  %56 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %56, i64 %idxprom83
  %data85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx84, i32 0, i32 1
  %d_string86 = bitcast %union._GimpParamData* %data85 to i8**
  %57 = load i8*, i8** %d_string86, align 8
  %call87 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0), i8* %57, i64 32) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.77, %if.end.74
  %58 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %58, 1
  store i32 %inc89, i32* %i, align 4
  %59 = load i32, i32* %nparams.addr, align 4
  %60 = load i32, i32* %i, align 4
  %cmp90 = icmp sgt i32 %59, %60
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  store i32 1, i32* %status, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.88
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.34
  br label %sw.epilog.95

sw.default.94:                                    ; preds = %sw.epilog
  br label %sw.epilog.95

sw.epilog.95:                                     ; preds = %sw.default.94, %if.end.93, %sw.bb.25
  %61 = load i32, i32* %run_mode, align 4
  %cmp96 = icmp eq i32 %61, 0
  br i1 %cmp96, label %if.then.97, label %if.end.132

if.then.97:                                       ; preds = %sw.epilog.95
  %62 = load i32, i32* %image_ID, align 4
  %call98 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0))
  store %struct._GimpParasite* %call98, %struct._GimpParasite** %parasite, align 8
  %63 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool99 = icmp ne %struct._GimpParasite* %63, null
  br i1 %tobool99, label %if.then.100, label %if.end.117

if.then.100:                                      ; preds = %if.then.97
  %64 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call101 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %64)
  %conv = trunc i64 %call101 to i32
  store i32 %conv, i32* %size, align 4
  %65 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call102 = call i8* @gimp_parasite_data(%struct._GimpParasite* %65)
  %66 = load i32, i32* %size, align 4
  %cmp103 = icmp slt i32 %66, 72
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.100
  %67 = load i32, i32* %size, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.100
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond105 = phi i32 [ %67, %cond.true ], [ 72, %cond.false ]
  %conv106 = sext i32 %cond105 to i64
  %call107 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0), i8* %call102, i64 %conv106) #5
  %68 = load i32, i32* %size, align 4
  %cmp108 = icmp slt i32 %68, 72
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.end
  %69 = load i32, i32* %size, align 4
  br label %cond.end.112

cond.false.111:                                   ; preds = %cond.end
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.110
  %cond113 = phi i32 [ %69, %cond.true.110 ], [ 72, %cond.false.111 ]
  %add114 = add nsw i32 %cond113, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [73 x i8], [73 x i8]* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0), i32 0, i64 %idxprom115
  store i8 0, i8* %arrayidx116, align 1
  %70 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %70)
  br label %if.end.117

if.end.117:                                       ; preds = %cond.end.112, %if.then.97
  %71 = load i32, i32* %image_ID, align 4
  %call118 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0))
  store %struct._GimpParasite* %call118, %struct._GimpParasite** %parasite, align 8
  %72 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool119 = icmp ne %struct._GimpParasite* %72, null
  br i1 %tobool119, label %if.then.120, label %if.end.127

if.then.120:                                      ; preds = %if.end.117
  %73 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call121 = call i8* @gimp_parasite_data(%struct._GimpParasite* %73)
  %call122 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %call121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32* %x, i32* %y) #5
  %cmp123 = icmp eq i32 %call122, 2
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.then.120
  store i32 1, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 2), align 4
  %74 = load i32, i32* %x, align 4
  store i32 %74, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 3), align 4
  %75 = load i32, i32* %y, align 4
  store i32 %75, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 4), align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.then.120
  %76 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %76)
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.117
  %77 = load i32, i32* %drawable_ID, align 4
  %call128 = call i32 @save_dialog(i32 %77)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %if.end.127
  store i32 4, i32* %status, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.127
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %sw.epilog.95
  %78 = load i32, i32* %status, align 4
  %cmp133 = icmp eq i32 %78, 3
  br i1 %cmp133, label %if.then.135, label %if.end.182

if.then.135:                                      ; preds = %if.end.132
  %79 = load i8*, i8** %mask_filename, align 8
  store i8* %79, i8** %temp, align 8
  %80 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %80, i64 3
  %data137 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx136, i32 0, i32 1
  %d_string138 = bitcast %union._GimpParamData* %data137 to i8**
  %81 = load i8*, i8** %d_string138, align 8
  %call139 = call noalias i8* @g_path_get_dirname(i8* %81)
  store i8* %call139, i8** %dirname, align 8
  %cmp140 = icmp ne i8* %call139, null
  br i1 %cmp140, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.then.135
  %82 = load i8*, i8** %dirname, align 8
  %83 = load i8*, i8** %temp, align 8
  %call143 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* %82, i8* %83, i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0))
  store i8* %call143, i8** %mask_filename, align 8
  %84 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %84)
  br label %if.end.146

if.else.144:                                      ; preds = %if.then.135
  %85 = load i8*, i8** %temp, align 8
  %call145 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* %85, i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0))
  store i8* %call145, i8** %mask_filename, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.then.142
  %86 = load i8*, i8** %temp, align 8
  call void @g_free(i8* %86)
  store i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.146
  %87 = load i8*, i8** %temp, align 8
  %88 = load i8, i8* %87, align 1
  %tobool147 = icmp ne i8 %88, 0
  br i1 %tobool147, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i8*, i8** %temp, align 8
  %90 = load i8, i8* %89, align 1
  %idxprom148 = zext i8 %90 to i64
  %91 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx149 = getelementptr inbounds i16, i16* %91, i64 %idxprom148
  %92 = load i16, i16* %arrayidx149, align 2
  %conv150 = zext i16 %92 to i32
  %and = and i32 %conv150, 1
  %cmp151 = icmp ne i32 %and, 0
  br i1 %cmp151, label %if.end.154, label %if.then.153

if.then.153:                                      ; preds = %for.body
  %93 = load i8*, i8** %temp, align 8
  store i8 95, i8* %93, align 1
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.154
  %94 = load i8*, i8** %temp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr, i8** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call155 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0))
  store i8* %call155, i8** %mask_prefix, align 8
  %95 = load i8*, i8** %mask_prefix, align 8
  store i8* %95, i8** %temp, align 8
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.167, %for.end
  %96 = load i8*, i8** %temp, align 8
  %97 = load i8, i8* %96, align 1
  %tobool157 = icmp ne i8 %97, 0
  br i1 %tobool157, label %for.body.158, label %for.end.169

for.body.158:                                     ; preds = %for.cond.156
  %98 = load i8*, i8** %temp, align 8
  %99 = load i8, i8* %98, align 1
  %idxprom159 = zext i8 %99 to i64
  %100 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %100, i64 %idxprom159
  %101 = load i16, i16* %arrayidx160, align 2
  %conv161 = zext i16 %101 to i32
  %and162 = and i32 %conv161, 1
  %cmp163 = icmp ne i32 %and162, 0
  br i1 %cmp163, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %for.body.158
  %102 = load i8*, i8** %temp, align 8
  store i8 95, i8* %102, align 1
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %for.body.158
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %103 = load i8*, i8** %temp, align 8
  %incdec.ptr168 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr168, i8** %temp, align 8
  br label %for.cond.156

for.end.169:                                      ; preds = %for.cond.156
  %104 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx170 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %104, i64 3
  %data171 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx170, i32 0, i32 1
  %d_string172 = bitcast %union._GimpParamData* %data171 to i8**
  %105 = load i8*, i8** %d_string172, align 8
  %106 = load i32, i32* %image_ID, align 4
  %107 = load i32, i32* %drawable_ID, align 4
  %call173 = call i32 @save_image(i8* %105, i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0), i32 0, i32 %106, i32 %107, %struct._GError** %error)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %land.lhs.true, label %if.else.180

land.lhs.true:                                    ; preds = %for.end.169
  %108 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 6), align 4
  %tobool175 = icmp ne i32 %108, 0
  br i1 %tobool175, label %lor.lhs.false, label %if.then.178

lor.lhs.false:                                    ; preds = %land.lhs.true
  %109 = load i8*, i8** %mask_filename, align 8
  %110 = load i8*, i8** %mask_prefix, align 8
  %111 = load i32, i32* %image_ID, align 4
  %112 = load i32, i32* %drawable_ID, align 4
  %call176 = call i32 @save_image(i8* %109, i8* %110, i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0), i32 1, i32 %111, i32 %112, %struct._GError** %error)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.then.178, label %if.else.180

if.then.178:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %call179 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 0, i32 0), i32 200)
  br label %if.end.181

if.else.180:                                      ; preds = %lor.lhs.false, %for.end.169
  store i32 0, i32* %status, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.180, %if.then.178
  %113 = load i8*, i8** %mask_prefix, align 8
  call void @g_free(i8* %113)
  %114 = load i8*, i8** %mask_filename, align 8
  call void @g_free(i8* %114)
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.132
  %115 = load i32, i32* %export, align 4
  %cmp183 = icmp eq i32 %115, 2
  br i1 %cmp183, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %if.end.182
  %116 = load i32, i32* %image_ID, align 4
  %call186 = call i32 @gimp_image_delete(i32 %116)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %if.end.182
  br label %if.end.189

if.else.188:                                      ; preds = %if.else.11
  store i32 1, i32* %status, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.188, %if.end.187
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end
  %117 = load i32, i32* %status, align 4
  %cmp191 = icmp ne i32 %117, 3
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.196

land.lhs.true.193:                                ; preds = %if.end.190
  %118 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool194 = icmp ne %struct._GError* %118, null
  br i1 %tobool194, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %land.lhs.true.193
  %119 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %119, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %120 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %120, i32 0, i32 2
  %121 = load i8*, i8** %message, align 8
  store i8* %121, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %land.lhs.true.193, %if.end.190
  %122 = load i32, i32* %status, align 4
  store i32 %122, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.196, %if.then.23
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

declare i32 @gimp_register_load_handler(i8*, i8*, i8*) #1

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %data = alloca i8*, align 8
  %intbits = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x_hot = alloca i32, align 4
  %y_hot = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tileheight = alloca i32, align 4
  %rowoffset = alloca i32, align 4
  %comment = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %parasite187 = alloca %struct._GimpParasite*, align 8
  %str = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %x_hot, align 4
  store i32 0, i32* %y_hot, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i8* @fgetcomment(%struct._IO_FILE* %7)
  store i8* %call11, i8** %comment, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %intbits, align 4
  store i32 32, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %8 = load i32, i32* %c, align 4
  %conv = trunc i32 %8 to i8
  %idxprom = zext i8 %conv to i64
  %9 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv12 = zext i16 %10 to i32
  %and = and i32 %conv12, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then.14, label %if.end.43

if.then.14:                                       ; preds = %do.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 @match(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.14
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i32 @fgetc(%struct._IO_FILE* %12)
  store i32 %call18, i32* %c, align 4
  %13 = load i32, i32* %c, align 4
  %conv19 = trunc i32 %13 to i8
  %idxprom20 = zext i8 %conv19 to i64
  %14 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %14, i64 %idxprom20
  %15 = load i16, i16* %arrayidx21, align 2
  %conv22 = zext i16 %15 to i32
  %and23 = and i32 %conv22, 256
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.17
  store i32 8, i32* %intbits, align 4
  br label %do.cond

if.end.27:                                        ; preds = %if.then.17
  br label %if.end.42

if.else:                                          ; preds = %if.then.14
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @match(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0))
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %if.else
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i32 @fgetc(%struct._IO_FILE* %17)
  store i32 %call31, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %conv32 = trunc i32 %18 to i8
  %idxprom33 = zext i8 %conv32 to i64
  %19 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %19, i64 %idxprom33
  %20 = load i16, i16* %arrayidx34, align 2
  %conv35 = zext i16 %20 to i32
  %and36 = and i32 %conv35, 256
  %cmp37 = icmp ne i32 %and36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.30
  store i32 16, i32* %intbits, align 4
  br label %do.cond

if.end.40:                                        ; preds = %if.then.30
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.27
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %do.body
  %21 = load i32, i32* %c, align 4
  %cmp44 = icmp eq i32 %21, 95
  br i1 %cmp44, label %if.then.46, label %if.end.110

if.then.46:                                       ; preds = %if.end.43
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call47 = call i32 @match(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.61

if.then.49:                                       ; preds = %if.then.46
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call50 = call i32 @fgetc(%struct._IO_FILE* %23)
  store i32 %call50, i32* %c, align 4
  %24 = load i32, i32* %c, align 4
  %conv51 = trunc i32 %24 to i8
  %idxprom52 = zext i8 %conv51 to i64
  %25 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %25, i64 %idxprom52
  %26 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %26 to i32
  %and55 = and i32 %conv54, 256
  %cmp56 = icmp ne i32 %and55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.49
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call59 = call i32 @get_int(%struct._IO_FILE* %27)
  store i32 %call59, i32* %width, align 4
  br label %do.cond

if.end.60:                                        ; preds = %if.then.49
  br label %if.end.109

if.else.61:                                       ; preds = %if.then.46
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call62 = call i32 @match(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0))
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.76

if.then.64:                                       ; preds = %if.else.61
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call65 = call i32 @fgetc(%struct._IO_FILE* %29)
  store i32 %call65, i32* %c, align 4
  %30 = load i32, i32* %c, align 4
  %conv66 = trunc i32 %30 to i8
  %idxprom67 = zext i8 %conv66 to i64
  %31 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %31, i64 %idxprom67
  %32 = load i16, i16* %arrayidx68, align 2
  %conv69 = zext i16 %32 to i32
  %and70 = and i32 %conv69, 256
  %cmp71 = icmp ne i32 %and70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.then.64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call74 = call i32 @get_int(%struct._IO_FILE* %33)
  store i32 %call74, i32* %height, align 4
  br label %do.cond

if.end.75:                                        ; preds = %if.then.64
  br label %if.end.108

if.else.76:                                       ; preds = %if.else.61
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call77 = call i32 @match(%struct._IO_FILE* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0))
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.91

if.then.79:                                       ; preds = %if.else.76
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call80 = call i32 @fgetc(%struct._IO_FILE* %35)
  store i32 %call80, i32* %c, align 4
  %36 = load i32, i32* %c, align 4
  %conv81 = trunc i32 %36 to i8
  %idxprom82 = zext i8 %conv81 to i64
  %37 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %37, i64 %idxprom82
  %38 = load i16, i16* %arrayidx83, align 2
  %conv84 = zext i16 %38 to i32
  %and85 = and i32 %conv84, 256
  %cmp86 = icmp ne i32 %and85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.then.79
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call89 = call i32 @get_int(%struct._IO_FILE* %39)
  store i32 %call89, i32* %x_hot, align 4
  br label %do.cond

if.end.90:                                        ; preds = %if.then.79
  br label %if.end.107

if.else.91:                                       ; preds = %if.else.76
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call92 = call i32 @match(%struct._IO_FILE* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0))
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.106

if.then.94:                                       ; preds = %if.else.91
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call95 = call i32 @fgetc(%struct._IO_FILE* %41)
  store i32 %call95, i32* %c, align 4
  %42 = load i32, i32* %c, align 4
  %conv96 = trunc i32 %42 to i8
  %idxprom97 = zext i8 %conv96 to i64
  %43 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %43, i64 %idxprom97
  %44 = load i16, i16* %arrayidx98, align 2
  %conv99 = zext i16 %44 to i32
  %and100 = and i32 %conv99, 256
  %cmp101 = icmp ne i32 %and100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.then.94
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call104 = call i32 @get_int(%struct._IO_FILE* %45)
  store i32 %call104, i32* %y_hot, align 4
  br label %do.cond

if.end.105:                                       ; preds = %if.then.94
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.else.91
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.90
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.75
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.60
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.43
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call111 = call i32 @cpp_fgetc(%struct._IO_FILE* %46)
  store i32 %call111, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.110, %if.then.103, %if.then.88, %if.then.73, %if.then.58, %if.then.39, %if.then.26
  %47 = load i32, i32* %c, align 4
  %cmp112 = icmp ne i32 %47, 123
  br i1 %cmp112, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %48 = load i32, i32* %c, align 4
  %cmp114 = icmp ne i32 %48, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %49 = phi i1 [ false, %do.cond ], [ %cmp114, %land.rhs ]
  br i1 %49, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %50 = load i32, i32* %c, align 4
  %cmp116 = icmp eq i32 %50, -1
  br i1 %cmp116, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %do.end
  %call119 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0)) #5
  %51 = load i8*, i8** %filename.addr, align 8
  %call120 = call i8* @gimp_filename_to_utf8(i8* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call121 = call i64 @ftell(%struct._IO_FILE* %52)
  call void (i8*, ...) @g_message(i8* %call119, i8* %call120, i64 %call121)
  store i32 -1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %do.end
  %53 = load i32, i32* %width, align 4
  %cmp123 = icmp sle i32 %53, 0
  br i1 %cmp123, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %if.end.122
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i32 0, i32 0)) #5
  %54 = load i8*, i8** %filename.addr, align 8
  %call127 = call i8* @gimp_filename_to_utf8(i8* %54)
  call void (i8*, ...) @g_message(i8* %call126, i8* %call127)
  store i32 -1, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.122
  %55 = load i32, i32* %width, align 4
  %cmp129 = icmp sgt i32 %55, 262144
  br i1 %cmp129, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.128
  %call132 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.61, i32 0, i32 0)) #5
  %56 = load i8*, i8** %filename.addr, align 8
  %call133 = call i8* @gimp_filename_to_utf8(i8* %56)
  call void (i8*, ...) @g_message(i8* %call132, i8* %call133)
  store i32 -1, i32* %retval
  br label %return

if.end.134:                                       ; preds = %if.end.128
  %57 = load i32, i32* %height, align 4
  %cmp135 = icmp sle i32 %57, 0
  br i1 %cmp135, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.end.134
  %call138 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0)) #5
  %58 = load i8*, i8** %filename.addr, align 8
  %call139 = call i8* @gimp_filename_to_utf8(i8* %58)
  call void (i8*, ...) @g_message(i8* %call138, i8* %call139)
  store i32 -1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.end.134
  %59 = load i32, i32* %height, align 4
  %cmp141 = icmp sgt i32 %59, 262144
  br i1 %cmp141, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %if.end.140
  %call144 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i32 0, i32 0)) #5
  %60 = load i8*, i8** %filename.addr, align 8
  %call145 = call i8* @gimp_filename_to_utf8(i8* %60)
  call void (i8*, ...) @g_message(i8* %call144, i8* %call145)
  store i32 -1, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.end.140
  %61 = load i32, i32* %intbits, align 4
  %cmp147 = icmp eq i32 %61, 0
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.end.146
  %call150 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i32 0, i32 0)) #5
  %62 = load i8*, i8** %filename.addr, align 8
  %call151 = call i8* @gimp_filename_to_utf8(i8* %62)
  call void (i8*, ...) @g_message(i8* %call150, i8* %call151)
  store i32 -1, i32* %retval
  br label %return

if.end.152:                                       ; preds = %if.end.146
  %63 = load i32, i32* %width, align 4
  %64 = load i32, i32* %height, align 4
  %call153 = call i32 @gimp_image_new(i32 %63, i32 %64, i32 2)
  store i32 %call153, i32* %image_ID, align 4
  %65 = load i32, i32* %image_ID, align 4
  %66 = load i8*, i8** %filename.addr, align 8
  %call154 = call i32 @gimp_image_set_filename(i32 %65, i8* %66)
  %67 = load i8*, i8** %comment, align 8
  %tobool155 = icmp ne i8* %67, null
  br i1 %tobool155, label %if.then.156, label %if.end.161

if.then.156:                                      ; preds = %if.end.152
  %68 = load i8*, i8** %comment, align 8
  %call157 = call i64 @strlen(i8* %68) #8
  %add = add i64 %call157, 1
  %conv158 = trunc i64 %add to i32
  %69 = load i8*, i8** %comment, align 8
  %call159 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 %conv158, i8* %69)
  store %struct._GimpParasite* %call159, %struct._GimpParasite** %parasite, align 8
  %70 = load i32, i32* %image_ID, align 4
  %71 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call160 = call i32 @gimp_image_attach_parasite(i32 %70, %struct._GimpParasite* %71)
  %72 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %72)
  %73 = load i8*, i8** %comment, align 8
  call void @g_free(i8* %73)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.156, %if.end.152
  %74 = load i32, i32* %x_hot, align 4
  %75 = load i32, i32* %width, align 4
  %cmp162 = icmp sgt i32 %74, %75
  br i1 %cmp162, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.161
  %76 = load i32, i32* %width, align 4
  br label %cond.end.168

cond.false:                                       ; preds = %if.end.161
  %77 = load i32, i32* %x_hot, align 4
  %cmp164 = icmp slt i32 %77, 0
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.false
  br label %cond.end

cond.false.167:                                   ; preds = %cond.false
  %78 = load i32, i32* %x_hot, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.167, %cond.true.166
  %cond = phi i32 [ 0, %cond.true.166 ], [ %78, %cond.false.167 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end, %cond.true
  %cond169 = phi i32 [ %76, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond169, i32* %x_hot, align 4
  %79 = load i32, i32* %y_hot, align 4
  %80 = load i32, i32* %height, align 4
  %cmp170 = icmp sgt i32 %79, %80
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %cond.end.168
  %81 = load i32, i32* %height, align 4
  br label %cond.end.180

cond.false.173:                                   ; preds = %cond.end.168
  %82 = load i32, i32* %y_hot, align 4
  %cmp174 = icmp slt i32 %82, 0
  br i1 %cmp174, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %cond.false.173
  br label %cond.end.178

cond.false.177:                                   ; preds = %cond.false.173
  %83 = load i32, i32* %y_hot, align 4
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.177, %cond.true.176
  %cond179 = phi i32 [ 0, %cond.true.176 ], [ %83, %cond.false.177 ]
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.end.178, %cond.true.172
  %cond181 = phi i32 [ %81, %cond.true.172 ], [ %cond179, %cond.end.178 ]
  store i32 %cond181, i32* %y_hot, align 4
  %84 = load i32, i32* %x_hot, align 4
  %cmp182 = icmp sgt i32 %84, 0
  br i1 %cmp182, label %if.then.186, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.180
  %85 = load i32, i32* %y_hot, align 4
  %cmp184 = icmp sgt i32 %85, 0
  br i1 %cmp184, label %if.then.186, label %if.end.194

if.then.186:                                      ; preds = %lor.lhs.false, %cond.end.180
  %86 = load i32, i32* %x_hot, align 4
  %87 = load i32, i32* %y_hot, align 4
  %call188 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 %86, i32 %87)
  store i8* %call188, i8** %str, align 8
  %88 = load i8*, i8** %str, align 8
  %call189 = call i64 @strlen(i8* %88) #8
  %add190 = add i64 %call189, 1
  %conv191 = trunc i64 %add190 to i32
  %89 = load i8*, i8** %str, align 8
  %call192 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 1, i32 %conv191, i8* %89)
  store %struct._GimpParasite* %call192, %struct._GimpParasite** %parasite187, align 8
  %90 = load i8*, i8** %str, align 8
  call void @g_free(i8* %90)
  %91 = load i32, i32* %image_ID, align 4
  %92 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite187, align 8
  %call193 = call i32 @gimp_image_attach_parasite(i32 %91, %struct._GimpParasite* %92)
  %93 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite187, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %93)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.186, %lor.lhs.false
  %94 = load i32, i32* %image_ID, align 4
  %call195 = call i32 @gimp_image_set_colormap(i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @load_image.cmap, i32 0, i32 0), i32 2)
  %95 = load i32, i32* %image_ID, align 4
  %call196 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0)) #5
  %96 = load i32, i32* %width, align 4
  %97 = load i32, i32* %height, align 4
  %call197 = call i32 @gimp_layer_new(i32 %95, i8* %call196, i32 %96, i32 %97, i32 4, double 1.000000e+02, i32 0)
  store i32 %call197, i32* %layer_ID, align 4
  %98 = load i32, i32* %image_ID, align 4
  %99 = load i32, i32* %layer_ID, align 4
  %call198 = call i32 @gimp_image_insert_layer(i32 %98, i32 %99, i32 -1, i32 0)
  %100 = load i32, i32* %layer_ID, align 4
  %call199 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %100)
  store %struct._GimpDrawable* %call199, %struct._GimpDrawable** %drawable, align 8
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %102 = load i32, i32* %width, align 4
  %103 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %101, i32 0, i32 0, i32 %102, i32 %103, i32 1, i32 0)
  %call200 = call i32 @gimp_tile_height() #7
  store i32 %call200, i32* %tileheight, align 4
  %104 = load i32, i32* %width, align 4
  %105 = load i32, i32* %tileheight, align 4
  %mul = mul nsw i32 %104, %105
  %conv201 = sext i32 %mul to i64
  %call202 = call noalias i8* @g_malloc(i64 %conv201)
  store i8* %call202, i8** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.238, %if.end.194
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %height, align 4
  %cmp203 = icmp slt i32 %106, %107
  br i1 %cmp203, label %for.body, label %for.end.240

for.body:                                         ; preds = %for.cond
  %108 = load i32, i32* %tileheight, align 4
  %109 = load i32, i32* %height, align 4
  %110 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %109, %110
  %cmp205 = icmp slt i32 %108, %sub
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %for.body
  %111 = load i32, i32* %tileheight, align 4
  br label %cond.end.210

cond.false.208:                                   ; preds = %for.body
  %112 = load i32, i32* %height, align 4
  %113 = load i32, i32* %i, align 4
  %sub209 = sub nsw i32 %112, %113
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.207
  %cond211 = phi i32 [ %111, %cond.true.207 ], [ %sub209, %cond.false.208 ]
  store i32 %cond211, i32* %tileheight, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.231, %cond.end.210
  %114 = load i32, i32* %j, align 4
  %115 = load i32, i32* %tileheight, align 4
  %cmp213 = icmp slt i32 %114, %115
  br i1 %cmp213, label %for.body.215, label %for.end.233

for.body.215:                                     ; preds = %for.cond.212
  %116 = load i32, i32* %j, align 4
  %117 = load i32, i32* %width, align 4
  %mul216 = mul nsw i32 %116, %117
  store i32 %mul216, i32* %rowoffset, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc, %for.body.215
  %118 = load i32, i32* %k, align 4
  %119 = load i32, i32* %width, align 4
  %cmp218 = icmp slt i32 %118, %119
  br i1 %cmp218, label %for.body.220, label %for.end

for.body.220:                                     ; preds = %for.cond.217
  %120 = load i32, i32* %k, align 4
  %121 = load i32, i32* %intbits, align 4
  %rem = srem i32 %120, %121
  %cmp221 = icmp eq i32 %rem, 0
  br i1 %cmp221, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %for.body.220
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call224 = call i32 @get_int(%struct._IO_FILE* %122)
  store i32 %call224, i32* %c, align 4
  %123 = load i32, i32* %c, align 4
  %xor = xor i32 %123, 65535
  store i32 %xor, i32* %c, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %for.body.220
  %124 = load i32, i32* %c, align 4
  %and226 = and i32 %124, 1
  %conv227 = trunc i32 %and226 to i8
  %125 = load i32, i32* %rowoffset, align 4
  %126 = load i32, i32* %k, align 4
  %add228 = add nsw i32 %125, %126
  %idxprom229 = sext i32 %add228 to i64
  %127 = load i8*, i8** %data, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %127, i64 %idxprom229
  store i8 %conv227, i8* %arrayidx230, align 1
  %128 = load i32, i32* %c, align 4
  %shr = ashr i32 %128, 1
  store i32 %shr, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.225
  %129 = load i32, i32* %k, align 4
  %inc = add nsw i32 %129, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.217

for.end:                                          ; preds = %for.cond.217
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.end
  %130 = load i32, i32* %j, align 4
  %inc232 = add nsw i32 %130, 1
  store i32 %inc232, i32* %j, align 4
  br label %for.cond.212

for.end.233:                                      ; preds = %for.cond.212
  %131 = load i32, i32* %i, align 4
  %132 = load i32, i32* %tileheight, align 4
  %add234 = add nsw i32 %131, %132
  %conv235 = sitofp i32 %add234 to double
  %133 = load i32, i32* %height, align 4
  %conv236 = sitofp i32 %133 to double
  %div = fdiv double %conv235, %conv236
  %call237 = call i32 @gimp_progress_update(double %div)
  %134 = load i8*, i8** %data, align 8
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %width, align 4
  %137 = load i32, i32* %tileheight, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %134, i32 0, i32 %135, i32 %136, i32 %137)
  br label %for.inc.238

for.inc.238:                                      ; preds = %for.end.233
  %138 = load i32, i32* %tileheight, align 4
  %139 = load i32, i32* %i, align 4
  %add239 = add nsw i32 %139, %138
  store i32 %add239, i32* %i, align 4
  br label %for.cond

for.end.240:                                      ; preds = %for.cond
  %call241 = call i32 @gimp_progress_update(double 1.000000e+00)
  %140 = load i8*, i8** %data, align 8
  call void @g_free(i8* %140)
  %141 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %141)
  %142 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %142)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call242 = call i32 @fclose(%struct._IO_FILE* %143)
  %144 = load i32, i32* %image_ID, align 4
  store i32 %144, i32* %retval
  br label %return

return:                                           ; preds = %for.end.240, %if.then.149, %if.then.143, %if.then.137, %if.then.131, %if.then.125, %if.then.118, %if.then
  %145 = load i32, i32* %retval
  ret i32 %145
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @init_prefix(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* @g_path_get_basename(i8* %0)
  store i8* %call, i8** %prefix, align 8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8 0, i64 65, i32 4, i1 false)
  %1 = load i8*, i8** %prefix, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %prefix, align 8
  %call1 = call i8* @strrchr(i8* %2, i32 46) #8
  store i8* %call1, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %prefix, align 8
  %cmp = icmp ne i8* %4, %5
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %prefix, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp4 = icmp slt i64 64, %sub.ptr.sub
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %prefix, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %9 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 64, %cond.true ], [ %sub.ptr.sub7, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 64, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %10 = load i8*, i8** %prefix, align 8
  %11 = load i32, i32* %len, align 4
  %conv8 = sext i32 %11 to i64
  %call9 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8* %10, i64 %conv8) #5
  %12 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0)
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0)) #5
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call5)
  %2 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call7 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %3)
  %4 = bitcast %struct._GtkWidget* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call8)
  %5 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %vbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call11)
  %10 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0)) #5
  %call14 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %toggle, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call15)
  %14 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_toggle_button_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkToggleButton*
  %19 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %18, i32 %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call20 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %table, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %25, i32 6)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call27 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %entry1, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_entry_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call28)
  %36 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %36, i32 64)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_entry_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %39, i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0))
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0)) #5
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call35 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %42, i32 0, i32 0, i8* %call34, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %43, i32 1, i32 1)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @prefix_entry_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0)) #5
  %call38 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call37)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %toggle, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call39)
  %48 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_toggle_button_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call41)
  %52 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkToggleButton*
  %53 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %52, i32 %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call44 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %table, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call45)
  %59 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %59, i32 6)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call47)
  %62 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %62, i32 6)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call49)
  %65 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 0, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call51 = call %struct._GBinding* @g_object_bind_property(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 2)
  %72 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 3), align 4
  %conv = sitofp i32 %72 to double
  %73 = load i32, i32* %drawable_ID.addr, align 4
  %call52 = call i32 @gimp_drawable_width(i32 %73)
  %sub = sub nsw i32 %call52, 1
  %conv53 = sitofp i32 %sub to double
  %call54 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 0.000000e+00, double %conv53, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 0.000000e+00, i32 0)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %spinbutton, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call55)
  %76 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0)) #5
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call58 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %76, i32 0, i32 0, i8* %call57, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %77, i32 1, i32 1)
  %78 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %79 = bitcast %struct._GtkObject* %78 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %80 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 4), align 4
  %conv60 = sitofp i32 %80 to double
  %81 = load i32, i32* %drawable_ID.addr, align 4
  %call61 = call i32 @gimp_drawable_height(i32 %81)
  %sub62 = sub nsw i32 %call61, 1
  %conv63 = sitofp i32 %sub62 to double
  %call64 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv60, double 0.000000e+00, double %conv63, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 0.000000e+00, i32 0)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %spinbutton, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call65)
  %84 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0)) #5
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call68 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %84, i32 0, i32 1, i8* %call67, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %85, i32 1, i32 1)
  %86 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %87 = bitcast %struct._GtkObject* %86 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0)) #5
  %call71 = call %struct._GtkWidget* @gimp_frame_new(i8* %call70)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %frame, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_box_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call72)
  %90 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %call74 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %table, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call75)
  %95 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %95, i32 6)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call77)
  %98 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %98, i32 6)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_container_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call79)
  %101 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkContainer*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %101, %struct._GtkWidget* %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0)) #5
  %call82 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call81)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %toggle, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_table_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call83)
  %106 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTable*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %106, %struct._GtkWidget* %107, i32 0, i32 2, i32 0, i32 1)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_toggle_button_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call85)
  %110 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkToggleButton*
  %111 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 6), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %110, i32 %111)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %114 = bitcast %struct._GtkWidget* %113 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call88 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %entry1, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_entry_get_type() #7
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call89)
  %117 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkEntry*
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %117, i32 32)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_entry_get_type() #7
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call91)
  %120 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %120, i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0))
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call93)
  %123 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0)) #5
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call96 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %123, i32 0, i32 1, i8* %call95, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %124, i32 1, i32 1)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %call97 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mask_ext_entry_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %128 = bitcast %struct._GtkWidget* %127 to i8*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %130 = bitcast %struct._GtkWidget* %129 to i8*
  %call98 = call %struct._GBinding* @g_object_bind_property(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 2)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %132 = load i32, i32* %drawable_ID.addr, align 4
  %call99 = call i32 @gimp_drawable_has_alpha(i32 %132)
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %131, i32 %call99)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_dialog_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call100)
  %137 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpDialog*
  %call102 = call i32 @gimp_dialog_run(%struct._GimpDialog* %137)
  %cmp = icmp eq i32 %call102, -5
  %conv103 = zext i1 %cmp to i32
  store i32 %conv103, i32* %run, align 4
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %138)
  %139 = load i32, i32* %run, align 4
  ret i32 %139
}

declare noalias i8* @g_path_get_dirname(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i8* %prefix, i8* %comment, i32 %save_mask, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %save_mask.addr = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %colors = alloca i32, align 4
  %dark = alloca i32, align 4
  %intbits = alloca i32, align 4
  %lineints = alloca i32, align 4
  %need_comma = alloca i32, align 4
  %nints = alloca i32, align 4
  %rowoffset = alloca i32, align 4
  %tileheight = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %thisbit = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %bpp = alloca i32, align 4
  %data = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %intfmt = alloca i8*, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  store i32 %save_mask, i32* %save_mask.addr, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width1, align 4
  store i32 %2, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height2, align 4
  store i32 %4, i32* %height, align 4
  %5 = load i32, i32* %image_ID.addr, align 4
  %call3 = call i8* @gimp_image_get_colormap(i32 %5, i32* %colors)
  store i8* %call3, i8** %cmap, align 8
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %call4 = call i32 @gimp_drawable_is_indexed(i32 %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %colors, align 4
  %cmp = icmp sgt i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.82, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %drawable_ID.addr, align 4
  %call6 = call i32 @gimp_drawable_has_alpha(i32 %8)
  store i32 %call6, i32* %has_alpha, align 4
  %9 = load i32, i32* %has_alpha, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.end.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %save_mask.addr, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.83, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call10)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  %11 = load i32, i32* %drawable_ID.addr, align 4
  %call12 = call i32 @gimp_drawable_bpp(i32 %11)
  store i32 %call12, i32* %bpp, align 4
  store i32 0, i32* %dark, align 4
  %12 = load i32, i32* %colors, align 4
  %cmp13 = icmp sgt i32 %12, 1
  br i1 %cmp13, label %if.then.14, label %if.end.49

if.then.14:                                       ; preds = %if.end.11
  %13 = load i8*, i8** %cmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %15 = load i8*, i8** %cmap, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %mul = mul nsw i32 %conv, %conv16
  %17 = load i8*, i8** %cmap, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %19 = load i8*, i8** %cmap, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %20 to i32
  %mul21 = mul nsw i32 %conv18, %conv20
  %add = add nsw i32 %mul, %mul21
  %21 = load i8*, i8** %cmap, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %22 to i32
  %23 = load i8*, i8** %cmap, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %24 to i32
  %mul26 = mul nsw i32 %conv23, %conv25
  %add27 = add nsw i32 %add, %mul26
  store i32 %add27, i32* %first, align 4
  %25 = load i8*, i8** %cmap, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %26 to i32
  %27 = load i8*, i8** %cmap, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %28 to i32
  %mul32 = mul nsw i32 %conv29, %conv31
  %29 = load i8*, i8** %cmap, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 4
  %30 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %30 to i32
  %31 = load i8*, i8** %cmap, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 4
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %32 to i32
  %mul37 = mul nsw i32 %conv34, %conv36
  %add38 = add nsw i32 %mul32, %mul37
  %33 = load i8*, i8** %cmap, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %33, i64 5
  %34 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %34 to i32
  %35 = load i8*, i8** %cmap, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %35, i64 5
  %36 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %36 to i32
  %mul43 = mul nsw i32 %conv40, %conv42
  %add44 = add nsw i32 %add38, %mul43
  store i32 %add44, i32* %second, align 4
  %37 = load i32, i32* %second, align 4
  %38 = load i32, i32* %first, align 4
  %cmp45 = icmp slt i32 %37, %38
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.14
  store i32 1, i32* %dark, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.14
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.11
  %39 = load i8*, i8** %filename.addr, align 8
  %call50 = call %struct._IO_FILE* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  store %struct._IO_FILE* %call50, %struct._IO_FILE** %fp, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool51 = icmp ne %struct._IO_FILE* %40, null
  br i1 %tobool51, label %if.end.60, label %if.then.52

if.then.52:                                       ; preds = %if.end.49
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call53 = call i32 @g_file_error_quark()
  %call54 = call i32* @__errno_location() #7
  %42 = load i32, i32* %call54, align 4
  %call55 = call i32 @g_file_error_from_errno(i32 %42)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.85, i32 0, i32 0)) #5
  %43 = load i8*, i8** %filename.addr, align 8
  %call57 = call i8* @gimp_filename_to_utf8(i8* %43)
  %call58 = call i32* @__errno_location() #7
  %44 = load i32, i32* %call58, align 4
  %call59 = call i8* @g_strerror(i32 %44) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %41, i32 %call53, i32 %call55, i8* %call56, i8* %call57, i8* %call59)
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.49
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0)) #5
  %45 = load i8*, i8** %filename.addr, align 8
  %call62 = call i8* @gimp_filename_to_utf8(i8* %45)
  %call63 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call61, i8* %call62)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %47 = load i8*, i8** %prefix.addr, align 8
  %48 = load i32, i32* %width, align 4
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i8* %47, i32 %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %50 = load i8*, i8** %prefix.addr, align 8
  %51 = load i32, i32* %height, align 4
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0), i8* %50, i32 %51)
  %52 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 2), align 4
  %tobool66 = icmp ne i32 %52, 0
  br i1 %tobool66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.60
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %54 = load i8*, i8** %prefix.addr, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 3), align 4
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0), i8* %54, i32 %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %57 = load i8*, i8** %prefix.addr, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 4), align 4
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.90, i32 0, i32 0), i8* %57, i32 %58)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.end.60
  %59 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 1), align 4
  %tobool71 = icmp ne i32 %59, 0
  br i1 %tobool71, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.end.70
  store i32 9, i32* %lineints, align 4
  store i32 16, i32* %intbits, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8** %intfmt, align 8
  br label %if.end.73

if.else:                                          ; preds = %if.end.70
  store i32 12, i32* %lineints, align 4
  store i32 8, i32* %intbits, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i8** %intfmt, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.72
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 1), align 4
  %tobool74 = icmp ne i32 %61, 0
  %cond = select i1 %tobool74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0)
  %62 = load i8*, i8** %prefix.addr, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i32 0, i32 0), i8* %cond, i8* %62)
  %call76 = call i32 @gimp_tile_height() #7
  store i32 %call76, i32* %tileheight, align 4
  %63 = load i32, i32* %width, align 4
  %64 = load i32, i32* %tileheight, align 4
  %mul77 = mul nsw i32 %63, %64
  %65 = load i32, i32* %bpp, align 4
  %mul78 = mul nsw i32 %mul77, %65
  %conv79 = sext i32 %mul78 to i64
  %call80 = call noalias i8* @g_malloc(i64 %conv79)
  store i8* %call80, i8** %data, align 8
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %67 = load i32, i32* %width, align 4
  %68 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %66, i32 0, i32 0, i32 %67, i32 %68, i32 0, i32 0)
  store i32 0, i32* %need_comma, align 4
  store i32 0, i32* %nints, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.175, %if.end.73
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %height, align 4
  %cmp81 = icmp slt i32 %69, %70
  br i1 %cmp81, label %for.body, label %for.end.177

for.body:                                         ; preds = %for.cond
  %71 = load i32, i32* %tileheight, align 4
  %72 = load i32, i32* %height, align 4
  %73 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %72, %73
  %cmp83 = icmp slt i32 %71, %sub
  br i1 %cmp83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %74 = load i32, i32* %tileheight, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %75 = load i32, i32* %height, align 4
  %76 = load i32, i32* %i, align 4
  %sub85 = sub nsw i32 %75, %76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond86 = phi i32 [ %74, %cond.true ], [ %sub85, %cond.false ]
  store i32 %cond86, i32* %tileheight, align 4
  %77 = load i8*, i8** %data, align 8
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %tileheight, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %77, i32 0, i32 %78, i32 %79, i32 %80)
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.168, %cond.end
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %tileheight, align 4
  %cmp88 = icmp slt i32 %81, %82
  br i1 %cmp88, label %for.body.90, label %for.end.170

for.body.90:                                      ; preds = %for.cond.87
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %width, align 4
  %mul91 = mul nsw i32 %83, %84
  %85 = load i32, i32* %bpp, align 4
  %mul92 = mul nsw i32 %mul91, %85
  store i32 %mul92, i32* %rowoffset, align 4
  store i32 0, i32* %c, align 4
  store i32 0, i32* %thisbit, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %for.body.90
  %86 = load i32, i32* %k, align 4
  %87 = load i32, i32* %width, align 4
  %88 = load i32, i32* %bpp, align 4
  %mul94 = mul nsw i32 %87, %88
  %cmp95 = icmp slt i32 %86, %mul94
  br i1 %cmp95, label %for.body.97, label %for.end

for.body.97:                                      ; preds = %for.cond.93
  %89 = load i32, i32* %k, align 4
  %cmp98 = icmp ne i32 %89, 0
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.114

land.lhs.true.100:                                ; preds = %for.body.97
  %90 = load i32, i32* %thisbit, align 4
  %91 = load i32, i32* %intbits, align 4
  %cmp101 = icmp eq i32 %90, %91
  br i1 %cmp101, label %if.then.103, label %if.end.114

if.then.103:                                      ; preds = %land.lhs.true.100
  %92 = load i32, i32* %need_comma, align 4
  %tobool104 = icmp ne i32 %92, 0
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.then.103
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call106 = call i32 @fputc(i32 44, %struct._IO_FILE* %93)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.then.103
  store i32 1, i32* %need_comma, align 4
  %94 = load i32, i32* %nints, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %nints, align 4
  %95 = load i32, i32* %lineints, align 4
  %cmp108 = icmp sge i32 %94, %95
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.107
  store i32 1, i32* %nints, align 4
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call111 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %96)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.107
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %98 = load i8*, i8** %intfmt, align 8
  %99 = load i32, i32* %c, align 4
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* %98, i32 %99)
  store i32 0, i32* %c, align 4
  store i32 0, i32* %thisbit, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.112, %land.lhs.true.100, %for.body.97
  %100 = load i32, i32* %save_mask.addr, align 4
  %tobool115 = icmp ne i32 %100, 0
  br i1 %tobool115, label %if.then.116, label %if.else.125

if.then.116:                                      ; preds = %if.end.114
  %101 = load i32, i32* %rowoffset, align 4
  %102 = load i32, i32* %k, align 4
  %add117 = add nsw i32 %101, %102
  %add118 = add nsw i32 %add117, 1
  %idxprom = sext i32 %add118 to i64
  %103 = load i8*, i8** %data, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %103, i64 %idxprom
  %104 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %104 to i32
  %cmp121 = icmp slt i32 %conv120, 128
  %cond123 = select i1 %cmp121, i32 0, i32 1
  %105 = load i32, i32* %thisbit, align 4
  %inc124 = add nsw i32 %105, 1
  store i32 %inc124, i32* %thisbit, align 4
  %shl = shl i32 %cond123, %105
  %106 = load i32, i32* %c, align 4
  %or = or i32 %106, %shl
  store i32 %or, i32* %c, align 4
  br label %if.end.151

if.else.125:                                      ; preds = %if.end.114
  %107 = load i32, i32* %has_alpha, align 4
  %tobool126 = icmp ne i32 %107, 0
  br i1 %tobool126, label %land.lhs.true.127, label %if.else.139

land.lhs.true.127:                                ; preds = %if.else.125
  %108 = load i32, i32* %rowoffset, align 4
  %109 = load i32, i32* %k, align 4
  %add128 = add nsw i32 %108, %109
  %add129 = add nsw i32 %add128, 1
  %idxprom130 = sext i32 %add129 to i64
  %110 = load i8*, i8** %data, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %110, i64 %idxprom130
  %111 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %111 to i32
  %cmp133 = icmp slt i32 %conv132, 128
  br i1 %cmp133, label %if.then.135, label %if.else.139

if.then.135:                                      ; preds = %land.lhs.true.127
  %112 = load i32, i32* %thisbit, align 4
  %inc136 = add nsw i32 %112, 1
  store i32 %inc136, i32* %thisbit, align 4
  %shl137 = shl i32 0, %112
  %113 = load i32, i32* %c, align 4
  %or138 = or i32 %113, %shl137
  store i32 %or138, i32* %c, align 4
  br label %if.end.150

if.else.139:                                      ; preds = %land.lhs.true.127, %if.else.125
  %114 = load i32, i32* %rowoffset, align 4
  %115 = load i32, i32* %k, align 4
  %add140 = add nsw i32 %114, %115
  %idxprom141 = sext i32 %add140 to i64
  %116 = load i8*, i8** %data, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %116, i64 %idxprom141
  %117 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %117 to i32
  %118 = load i32, i32* %dark, align 4
  %cmp144 = icmp eq i32 %conv143, %118
  %cond146 = select i1 %cmp144, i32 1, i32 0
  %119 = load i32, i32* %thisbit, align 4
  %inc147 = add nsw i32 %119, 1
  store i32 %inc147, i32* %thisbit, align 4
  %shl148 = shl i32 %cond146, %119
  %120 = load i32, i32* %c, align 4
  %or149 = or i32 %120, %shl148
  store i32 %or149, i32* %c, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.139, %if.then.135
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.116
  br label %for.inc

for.inc:                                          ; preds = %if.end.151
  %121 = load i32, i32* %bpp, align 4
  %122 = load i32, i32* %k, align 4
  %add152 = add nsw i32 %122, %121
  store i32 %add152, i32* %k, align 4
  br label %for.cond.93

for.end:                                          ; preds = %for.cond.93
  %123 = load i32, i32* %thisbit, align 4
  %cmp153 = icmp ne i32 %123, 0
  br i1 %cmp153, label %if.then.155, label %if.end.167

if.then.155:                                      ; preds = %for.end
  %124 = load i32, i32* %need_comma, align 4
  %tobool156 = icmp ne i32 %124, 0
  br i1 %tobool156, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %if.then.155
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call158 = call i32 @fputc(i32 44, %struct._IO_FILE* %125)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %if.then.155
  store i32 1, i32* %need_comma, align 4
  %126 = load i32, i32* %nints, align 4
  %inc160 = add nsw i32 %126, 1
  store i32 %inc160, i32* %nints, align 4
  %127 = load i32, i32* %lineints, align 4
  %cmp161 = icmp eq i32 %126, %127
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.end.159
  store i32 1, i32* %nints, align 4
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call164 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %128)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.end.159
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %130 = load i8*, i8** %intfmt, align 8
  %131 = load i32, i32* %c, align 4
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* %130, i32 %131)
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.165, %for.end
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %132 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %132, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.87

for.end.170:                                      ; preds = %for.cond.87
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %tileheight, align 4
  %add171 = add nsw i32 %133, %134
  %conv172 = sitofp i32 %add171 to double
  %135 = load i32, i32* %height, align 4
  %conv173 = sitofp i32 %135 to double
  %div = fdiv double %conv172, %conv173
  %call174 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.end.170
  %136 = load i32, i32* %tileheight, align 4
  %137 = load i32, i32* %i, align 4
  %add176 = add nsw i32 %137, %136
  store i32 %add176, i32* %i, align 4
  br label %for.cond

for.end.177:                                      ; preds = %for.cond
  %call178 = call i32 @gimp_progress_update(double 1.000000e+00)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0))
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call180 = call i32 @fclose(%struct._IO_FILE* %139)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.177, %if.then.52, %if.then.9, %if.then
  %140 = load i32, i32* %retval
  ret i32 %140
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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

; Function Attrs: nounwind uwtable
define internal i8* @fgetcomment(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %str = alloca %struct._GString*, align 8
  %comment = alloca i32, align 4
  %c = alloca i32, align 4
  %retval5 = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._GString* null, %struct._GString** %str, align 8
  store i32 0, i32* %comment, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %comment, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.14

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %2, 42
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 1, i32* %comment, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %3 = load i32, i32* %comment, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %4, 47
  br i1 %cmp3, label %if.then.4, label %if.else.11

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %comment, align 4
  %5 = load %struct._GString*, %struct._GString** %str, align 8
  %str6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 0
  %6 = load i8*, i8** %str6, align 8
  %call7 = call noalias i8* @g_strdup(i8* %6)
  %call8 = call i8* @g_strchug(i8* %call7)
  %call9 = call i8* @g_strchomp(i8* %call8)
  store i8* %call9, i8** %retval5, align 8
  %7 = load %struct._GString*, %struct._GString** %str, align 8
  %call10 = call i8* @g_string_free(%struct._GString* %7, i32 1)
  %8 = load i8*, i8** %retval5, align 8
  store i8* %8, i8** %retval
  br label %return

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  store i32 2, i32* %comment, align 4
  %9 = load %struct._GString*, %struct._GString** %str, align 8
  %10 = load i32, i32* %c, align 4
  %conv = trunc i32 %10 to i8
  %call12 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %9, i8 signext %conv)
  br label %if.end

if.end:                                           ; preds = %if.else.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.1
  br label %if.end.38

if.else.14:                                       ; preds = %do.body
  %11 = load i32, i32* %c, align 4
  %cmp15 = icmp eq i32 %11, 47
  br i1 %cmp15, label %if.then.17, label %if.else.27

if.then.17:                                       ; preds = %if.else.14
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call18 = call i32 @fgetc(%struct._IO_FILE* %12)
  store i32 %call18, i32* %c, align 4
  %13 = load i32, i32* %c, align 4
  %cmp19 = icmp eq i32 %13, 42
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.then.17
  store i32 2, i32* %comment, align 4
  %call22 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call22, %struct._GString** %str, align 8
  br label %if.end.26

if.else.23:                                       ; preds = %if.then.17
  %14 = load i32, i32* %c, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call24 = call i32 @ungetc(i32 %14, %struct._IO_FILE* %15)
  store i32 47, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call25 = call i32 @ungetc(i32 %16, %struct._IO_FILE* %17)
  store i8* null, i8** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.37

if.else.27:                                       ; preds = %if.else.14
  %18 = load i32, i32* %c, align 4
  %cmp28 = icmp ne i32 %18, -1
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.36

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load i32, i32* %c, align 4
  %conv31 = trunc i32 %19 to i8
  %idxprom = zext i8 %conv31 to i64
  %20 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %20, i64 %idxprom
  %21 = load i16, i16* %arrayidx, align 2
  %conv32 = zext i16 %21 to i32
  %and = and i32 %conv32, 256
  %cmp33 = icmp ne i32 %and, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.30
  br label %do.cond

if.end.36:                                        ; preds = %land.lhs.true.30, %if.else.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.26
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.38, %if.then.35
  %22 = load i32, i32* %comment, align 4
  %tobool39 = icmp ne i32 %22, 0
  br i1 %tobool39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %23 = load i32, i32* %c, align 4
  %cmp40 = icmp ne i32 %23, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %24 = phi i1 [ false, %do.cond ], [ %cmp40, %land.rhs ]
  br i1 %24, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %25 = load %struct._GString*, %struct._GString** %str, align 8
  %tobool42 = icmp ne %struct._GString* %25, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %do.end
  %26 = load %struct._GString*, %struct._GString** %str, align 8
  %call44 = call i8* @g_string_free(%struct._GString* %26, i32 1)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.else.23, %if.then.4
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define internal i32 @match(%struct._IO_FILE* %fp, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %5, -1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %do.body, label %do.end

do.end:                                           ; preds = %land.end, %if.else
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool5 = icmp ne i8 %10, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  %11 = load i32, i32* %c, align 4
  %cmp8 = icmp ne i32 %11, -1
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %12 = load i32, i32* %c, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @ungetc(i32 %12, %struct._IO_FILE* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.6
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_int(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %digval = alloca i32, align 4
  %base = alloca i32, align 4
  %val = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @cpp_fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %2 = load i32, i32* %c, align 4
  %conv = trunc i32 %2 to i8
  %idxprom = zext i8 %conv to i64
  %3 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 8
  %cmp2 = icmp ne i32 %and, 0
  %lnot = xor i1 %cmp2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %5 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %6 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %6, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %7 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %7, 48
  br i1 %cmp6, label %if.then.8, label %if.else.28

if.then.8:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @fgetc(%struct._IO_FILE* %8)
  store i32 %call9, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %9, 120
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %10 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %10, 88
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 @fgetc(%struct._IO_FILE* %11)
  store i32 %call15, i32* %c, align 4
  store i32 16, i32* %base, align 4
  br label %if.end.27

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i32, i32* %c, align 4
  %conv16 = trunc i32 %12 to i8
  %idxprom17 = zext i8 %conv16 to i64
  %13 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %13, i64 %idxprom17
  %14 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %14 to i32
  %and20 = and i32 %conv19, 8
  %cmp21 = icmp ne i32 %and20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  store i32 8, i32* %base, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %if.else
  %15 = load i32, i32* %c, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call25 = call i32 @ungetc(i32 %15, %struct._IO_FILE* %16)
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.14
  br label %if.end.29

if.else.28:                                       ; preds = %if.end
  store i32 10, i32* %base, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  store i32 0, i32* %val, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.35, %if.end.29
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %base, align 4
  %call30 = call i32 @getval(i32 %17, i32 %18)
  store i32 %call30, i32* %digval, align 4
  %19 = load i32, i32* %digval, align 4
  %cmp31 = icmp eq i32 %19, -1
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.cond
  %20 = load i32, i32* %c, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call34 = call i32 @ungetc(i32 %20, %struct._IO_FILE* %21)
  br label %for.end

if.end.35:                                        ; preds = %for.cond
  %22 = load i32, i32* %base, align 4
  %23 = load i32, i32* %val, align 4
  %mul = mul nsw i32 %23, %22
  store i32 %mul, i32* %val, align 4
  %24 = load i32, i32* %digval, align 4
  %25 = load i32, i32* %val, align 4
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %val, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @fgetc(%struct._IO_FILE* %26)
  store i32 %call36, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.33
  %27 = load i32, i32* %val, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.24, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @cpp_fgetc(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %comment = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %comment, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %comment, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.7

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %2, 42
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 1, i32* %comment, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.then
  %3 = load i32, i32* %comment, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %4, 47
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %comment, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  store i32 2, i32* %comment, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then.1
  br label %if.end.17

if.else.7:                                        ; preds = %do.body
  %5 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %5, 47
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.else.7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @fgetc(%struct._IO_FILE* %6)
  store i32 %call10, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %7, 42
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.9
  store i32 2, i32* %comment, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %if.then.9
  %8 = load i32, i32* %c, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 @ungetc(i32 %8, %struct._IO_FILE* %9)
  store i32 47, i32* %c, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.else.7
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.6
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  %10 = load i32, i32* %comment, align 4
  %tobool18 = icmp ne i32 %10, 0
  br i1 %tobool18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %11 = load i32, i32* %c, align 4
  %cmp19 = icmp ne i32 %11, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %cmp19, %land.rhs ]
  br i1 %12, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %13 = load i32, i32* %c, align 4
  ret i32 %13
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

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_malloc(i64) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #6 {
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

declare %struct._GString* @g_string_new(i8*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal i32 @getval(i32 %c, i32 %base) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %digits = alloca i8*, align 8
  %val = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0), i8** %digits, align 8
  %0 = load i32, i32* %base.addr, align 4
  %cmp = icmp eq i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 22, i32* %base.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %val, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %val, align 4
  %2 = load i32, i32* %base.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c.addr, align 4
  %4 = load i32, i32* %val, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %digits, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %3, %conv
  br i1 %cmp2, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %for.body
  %7 = load i32, i32* %val, align 4
  %cmp5 = icmp slt i32 %7, 16
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %8 = load i32, i32* %val, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %9 = load i32, i32* %val, align 4
  %sub = sub nsw i32 %9, 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %10 = load i32, i32* %val, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %val, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %cond.end
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare noalias i8* @g_path_get_basename(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

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

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_max_length(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @prefix_entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8 0, i64 65, i32 4, i1 false)
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 5, i32 0), i8* %call2, i64 64) #5
  ret void
}

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_drawable_height(i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mask_ext_entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0), i8 0, i64 33, i32 4, i1 false)
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct._XBMSaveVals, %struct._XBMSaveVals* @xsvals, i32 0, i32 7, i32 0), i8* %call2, i64 32) #5
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

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
