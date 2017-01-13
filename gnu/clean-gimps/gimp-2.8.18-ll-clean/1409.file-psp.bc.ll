; ModuleID = './plug-ins/common/file-psp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.PSPSaveVals = type { i32 }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PSPimage = type { i32, i32, double, i8, i16, i16, i8, i32, i16 }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPixPipeParams = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, [4 x i32], [4 x i8*], i32 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

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
@.str.7 = private unnamed_addr constant [14 x i8] c"file-psp-load\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"loads images from the Paint Shop Pro PSP file format\00", align 1
@.str.9 = private unnamed_addr constant [135 x i8] c"This plug-in loads and saves images in Paint Shop Pro's native PSP format. Vector layers aren't handled. Saving isn't yet implemented.\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Tor Lillqvist\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Paint Shop Pro image\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"image/x-psp\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"psp,tub,pspimage\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"0,string,Paint\5C040Shop\5C040Pro\5C040Image\5C040File\0A\1A\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"file-psp-save\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"file-psp\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"PSP\00", align 1
@psvals = internal global %struct.PSPSaveVals { i32 2 }, align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@psp_ver_major = internal global i16 0, align 2
@psp_ver_minor = internal global i16 0, align 2
@.str.24 = private unnamed_addr constant [26 x i8] c"Error reading file header\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Paint Shop Pro Image File\0A\1A\00\00\00\00\00\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Incorrect file signature\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"Unsupported PSP file format version %d.%d, only knows 3.0 (and later?)\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Unsupported PSP file format version %d.%d\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"Duplicate General Image Attributes block\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Missing General Image Attributes block\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"Sub-block %s should not occur at main level of file\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Unrecognized block id %d\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Error reading block header\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"~BK\00\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Invalid block header\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"Invalid general image attribute chunk size\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Error reading general image attribute block\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Unknown compression type %d\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Unsupported bit depth %d\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Error reading creator keyword chunk\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"~FL\00\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"Invalid keyword chunk header\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"Error reading creator keyword data\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Copyright \00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"Invalid layer sub-block %s, should be LAYER\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"Error reading layer information chunk\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"Floating selection restored as normal layer\00", align 1
@.str.50 = private unnamed_addr constant [74 x i8] c"Unsupported PSP layer blend mode %s for layer %s, setting layer invisible\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"Invalid layer dimensions: %dx%d\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Error creating layer\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"Invalid layer sub-block %s, should be CHANNEL\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Error reading channel information chunk\00", align 1
@.str.55 = private unnamed_addr constant [52 x i8] c"Invalid bitmap type %d in channel information chunk\00", align 1
@.str.56 = private unnamed_addr constant [53 x i8] c"Invalid channel type %d in channel information chunk\00", align 1
@blend_mode_name.blend_mode_names = internal global [17 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0)], align 16
@.str.57 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"DARKEN\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"LIGHTEN\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"HUE\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"SATURATION\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"LUMINOSITY\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"DISSOLVE\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"OVERLAY\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"HARD_LIGHT\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"SOFT_LIGHT\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"DIFFERENCE\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"DODGE\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"BURN\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"EXCLUSION\00", align 1
@blend_mode_name.err_name = internal global i8* null, align 8
@.str.74 = private unnamed_addr constant [28 x i8] c"unknown layer blend mode %d\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"zlib error\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"Error reading tube data chunk\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"incremental\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"angular\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"gimp-brush-pipe-parameters\00", align 1
@block_name.block_names = internal global [19 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0)], align 16
@.str.86 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"CREATOR\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"LAYER_START\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"LAYER\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"SELECTION\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"ALPHA_BANK\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"ALPHA_CHANNEL\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"THUMBNAIL\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"EXTENDED_DATA\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"TUBE\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"ADJUSTMENT_EXTENSION\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"VECTOR_EXTENSION_BLOCK\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"SHAPE_BLOCK\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"PAINTSTYLE_BLOCK\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"COMPOSITE_IMAGE_BANK_BLOCK\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"COMPOSITE_ATTRIBUTES_BLOCK\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"JPEG_BLOCK\00", align 1
@block_name.err_name = internal global i8* null, align 8
@.str.104 = private unnamed_addr constant [6 x i8] c"id=%d\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"Seek error: %s\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"Data Compression\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"compression\04None\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"RLE\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"LZ77\00", align 1
@.str.110 = private unnamed_addr constant [27 x i8] c"Saving not implemented yet\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
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
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %do.end
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data6 to i8**
  %6 = load i8*, i8** %d_string, align 8
  %call7 = call i32 @load_image(i8* %6, %struct._GError** %error)
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
  br label %if.end.70

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0)) #8
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.68

if.then.13:                                       ; preds = %if.else.10
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %12 = load i32, i32* %d_int3216, align 4
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
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 55)
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
  %17 = load i32, i32* %run_mode, align 4
  switch i32 %17, label %sw.default.50 [
    i32 0, label %sw.bb.24
    i32 1, label %sw.bb.29
    i32 2, label %sw.bb.48
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  %call25 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* bitcast (%struct.PSPSaveVals* @psvals to i8*))
  %call26 = call i32 @save_dialog()
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb.24
  store i32 4, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %sw.bb.24
  br label %sw.epilog.51

sw.bb.29:                                         ; preds = %sw.epilog
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp30 = icmp ne i32 %18, 6
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %sw.bb.29
  store i32 1, i32* %status, align 4
  br label %if.end.47

if.else.32:                                       ; preds = %sw.bb.29
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_int3235 = bitcast %union._GimpParamData* %data34 to i32*
  %20 = load i32, i32* %d_int3235, align 4
  %tobool36 = icmp ne i32 %20, 0
  %cond = select i1 %tobool36, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.PSPSaveVals, %struct.PSPSaveVals* @psvals, i32 0, i32 0), align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 5
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int3239 = bitcast %union._GimpParamData* %data38 to i32*
  %22 = load i32, i32* %d_int3239, align 4
  %cmp40 = icmp slt i32 %22, 0
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.32
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 5
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_int3243 = bitcast %union._GimpParamData* %data42 to i32*
  %24 = load i32, i32* %d_int3243, align 4
  %cmp44 = icmp sgt i32 %24, 2
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false, %if.else.32
  store i32 1, i32* %status, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %lor.lhs.false
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.31
  br label %sw.bb.48

sw.bb.48:                                         ; preds = %sw.epilog, %if.end.47
  %call49 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* bitcast (%struct.PSPSaveVals* @psvals to i8*))
  br label %sw.epilog.51

sw.default.50:                                    ; preds = %sw.epilog
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.default.50, %sw.bb.48, %if.end.28
  %25 = load i32, i32* %status, align 4
  %cmp52 = icmp eq i32 %25, 3
  br i1 %cmp52, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %sw.epilog.51
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 3
  %data55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx54, i32 0, i32 1
  %d_string56 = bitcast %union._GimpParamData* %data55 to i8**
  %27 = load i8*, i8** %d_string56, align 8
  %28 = load i32, i32* %image_ID, align 4
  %29 = load i32, i32* %drawable_ID, align 4
  %call57 = call i32 @save_image(i8* %27, i32 %28, i32 %29, %struct._GError** %error)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.53
  %call60 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* bitcast (%struct.PSPSaveVals* @psvals to i8*), i32 4)
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.53
  store i32 0, i32* %status, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %sw.epilog.51
  %30 = load i32, i32* %export, align 4
  %cmp64 = icmp eq i32 %30, 2
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %31 = load i32, i32* %image_ID, align 4
  %call66 = call i32 @gimp_image_delete(i32 %31)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.63
  br label %if.end.69

if.else.68:                                       ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.67
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end
  %32 = load i32, i32* %status, align 4
  %cmp71 = icmp ne i32 %32, 3
  br i1 %cmp71, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %if.end.70
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool72 = icmp ne %struct._GError* %33, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true
  %34 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %34, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %35 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %35, i32 0, i32 2
  %36 = load i8*, i8** %message, align 8
  store i8* %36, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true, %if.end.70
  %37 = load i32, i32* %status, align 4
  store i32 %37, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.74, %if.then.22
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
  %f = alloca %struct._IO_FILE*, align 8
  %st = alloca %struct.stat, align 8
  %buf = alloca [32 x i8], align 16
  %ia = alloca %struct.PSPimage, align 8
  %block_init_len = alloca i32, align 4
  %block_total_len = alloca i32, align 4
  %block_start = alloca i64, align 8
  %id = alloca i32, align 4
  %block_number = alloca i32, align 4
  %image_ID = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 -1, i32* %id, align 4
  store i32 -1, i32* %image_ID, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %st) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %4)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0)) #5
  %5 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call9 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %6) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %3, i32 %call4, i32 %call6, i8* %call7, i8* %call8, i8* %call10)
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i64 @fread(i8* %arraydecay, i64 32, i64 1, %struct._IO_FILE* %7)
  %cmp13 = icmp ult i64 %call12, 1
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call14 = call i64 @fread(i8* bitcast (i16* @psp_ver_major to i8*), i64 2, i64 1, %struct._IO_FILE* %8)
  %cmp15 = icmp ult i64 %call14, 1
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call17 = call i64 @fread(i8* bitcast (i16* @psp_ver_minor to i8*), i64 2, i64 1, %struct._IO_FILE* %9)
  %cmp18 = icmp ult i64 %call17, 1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %if.end.11
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  br label %error.127

if.end.20:                                        ; preds = %lor.lhs.false.16
  %arraydecay21 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %call22 = call i32 @memcmp(i8* %arraydecay21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i64 32) #8
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0))
  br label %error.127

if.end.25:                                        ; preds = %if.end.20
  %10 = load i16, i16* @psp_ver_major, align 2
  store i16 %10, i16* @psp_ver_major, align 2
  %11 = load i16, i16* @psp_ver_minor, align 2
  store i16 %11, i16* @psp_ver_minor, align 2
  %12 = load i16, i16* @psp_ver_major, align 2
  %conv = zext i16 %12 to i32
  %cmp26 = icmp slt i32 %conv, 3
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.25
  %13 = load i16, i16* @psp_ver_major, align 2
  %conv29 = zext i16 %13 to i32
  %14 = load i16, i16* @psp_ver_minor, align 2
  %conv30 = zext i16 %14 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i32 0, i32 0), i32 %conv29, i32 %conv30)
  br label %error.127

if.else:                                          ; preds = %if.end.25
  %15 = load i16, i16* @psp_ver_major, align 2
  %conv31 = zext i16 %15 to i32
  %cmp32 = icmp eq i32 %conv31, 3
  br i1 %cmp32, label %if.then.46, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.else
  %16 = load i16, i16* @psp_ver_major, align 2
  %conv35 = zext i16 %16 to i32
  %cmp36 = icmp eq i32 %conv35, 4
  br i1 %cmp36, label %if.then.46, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.34
  %17 = load i16, i16* @psp_ver_major, align 2
  %conv39 = zext i16 %17 to i32
  %cmp40 = icmp eq i32 %conv39, 5
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.38
  %18 = load i16, i16* @psp_ver_major, align 2
  %conv43 = zext i16 %18 to i32
  %cmp44 = icmp eq i32 %conv43, 6
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.38, %lor.lhs.false.34, %if.else
  br label %if.end.50

if.else.47:                                       ; preds = %lor.lhs.false.42
  %19 = load i16, i16* @psp_ver_major, align 2
  %conv48 = zext i16 %19 to i32
  %20 = load i16, i16* @psp_ver_minor, align 2
  %conv49 = zext i16 %20 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i32 %conv48, i32 %conv49)
  br label %error.127

if.end.50:                                        ; preds = %if.then.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50
  store i32 0, i32* %block_number, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.123, %if.end.51
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call52 = call i64 @ftell(%struct._IO_FILE* %21)
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %22 = load i64, i64* %st_size, align 8
  %cmp53 = icmp ne i64 %call52, %22
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call55 = call i32 @read_block_header(%struct._IO_FILE* %23, i32* %block_init_len, i32* %block_total_len)
  store i32 %call55, i32* %id, align 4
  %cmp56 = icmp ne i32 %call55, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp56, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call58 = call i64 @ftell(%struct._IO_FILE* %25)
  store i64 %call58, i64* %block_start, align 8
  %26 = load i32, i32* %id, align 4
  %cmp59 = icmp eq i32 %26, 0
  br i1 %cmp59, label %if.then.61, label %if.else.80

if.then.61:                                       ; preds = %while.body
  %27 = load i32, i32* %block_number, align 4
  %cmp62 = icmp ne i32 %27, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.61
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i32 0, i32 0))
  br label %error.127

if.end.65:                                        ; preds = %if.then.61
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %29 = load i32, i32* %block_init_len, align 4
  %30 = load i32, i32* %block_total_len, align 4
  %call66 = call i32 @read_general_image_attribute_block(%struct._IO_FILE* %28, i32 %29, i32 %30, %struct.PSPimage* %ia)
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.65
  br label %error.127

if.end.70:                                        ; preds = %if.end.65
  %width = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %ia, i32 0, i32 0
  %31 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %ia, i32 0, i32 1
  %32 = load i32, i32* %height, align 4
  %greyscale = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %ia, i32 0, i32 6
  %33 = load i8, i8* %greyscale, align 1
  %conv71 = zext i8 %33 to i32
  %tobool = icmp ne i32 %conv71, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %call72 = call i32 @gimp_image_new(i32 %31, i32 %32, i32 %cond)
  store i32 %call72, i32* %image_ID, align 4
  %34 = load i32, i32* %image_ID, align 4
  %cmp73 = icmp eq i32 %34, -1
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.70
  br label %error.127

if.end.76:                                        ; preds = %if.end.70
  %35 = load i32, i32* %image_ID, align 4
  %36 = load i8*, i8** %filename.addr, align 8
  %call77 = call i32 @gimp_image_set_filename(i32 %35, i8* %36)
  %37 = load i32, i32* %image_ID, align 4
  %resolution = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %ia, i32 0, i32 2
  %38 = load double, double* %resolution, align 8
  %resolution78 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %ia, i32 0, i32 2
  %39 = load double, double* %resolution78, align 8
  %call79 = call i32 @gimp_image_set_resolution(i32 %37, double %38, double %39)
  br label %if.end.110

if.else.80:                                       ; preds = %while.body
  %40 = load i32, i32* %block_number, align 4
  %cmp81 = icmp eq i32 %40, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.80
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0))
  br label %error.127

if.end.84:                                        ; preds = %if.else.80
  %41 = load i32, i32* %id, align 4
  switch i32 %41, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.90
    i32 3, label %sw.bb.91
    i32 6, label %sw.bb.97
    i32 7, label %sw.bb.98
    i32 9, label %sw.bb.99
    i32 10, label %sw.bb.100
    i32 11, label %sw.bb.101
    i32 16, label %sw.bb.107
    i32 4, label %sw.bb.108
    i32 5, label %sw.bb.108
    i32 8, label %sw.bb.108
    i32 12, label %sw.bb.108
    i32 13, label %sw.bb.108
    i32 14, label %sw.bb.108
    i32 15, label %sw.bb.108
    i32 17, label %sw.bb.108
    i32 18, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %if.end.84
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %43 = load i32, i32* %image_ID, align 4
  %44 = load i32, i32* %block_total_len, align 4
  %call85 = call i32 @read_creator_block(%struct._IO_FILE* %42, i32 %43, i32 %44, %struct.PSPimage* %ia)
  %cmp86 = icmp eq i32 %call85, -1
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %sw.bb
  br label %error.127

if.end.89:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.end.84
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.84
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %46 = load i32, i32* %image_ID, align 4
  %47 = load i32, i32* %block_total_len, align 4
  %call92 = call i32 @read_layer_block(%struct._IO_FILE* %45, i32 %46, i32 %47, %struct.PSPimage* %ia)
  %cmp93 = icmp eq i32 %call92, -1
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %sw.bb.91
  br label %error.127

if.end.96:                                        ; preds = %sw.bb.91
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.84
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.end.84
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.end.84
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.84
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.end.84
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %49 = load i32, i32* %image_ID, align 4
  %50 = load i32, i32* %block_total_len, align 4
  %call102 = call i32 @read_tube_block(%struct._IO_FILE* %48, i32 %49, i32 %50, %struct.PSPimage* %ia)
  %cmp103 = icmp eq i32 %call102, -1
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %sw.bb.101
  br label %error.127

if.end.106:                                       ; preds = %sw.bb.101
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end.84
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.84, %if.end.84, %if.end.84, %if.end.84, %if.end.84, %if.end.84, %if.end.84, %if.end.84, %if.end.84
  %51 = load i32, i32* %id, align 4
  %call109 = call i8* @block_name(i32 %51)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i32 0, i32 0), i8* %call109)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.84
  %52 = load i32, i32* %id, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 %52)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.108, %sw.bb.107, %if.end.106, %sw.bb.100, %sw.bb.99, %sw.bb.98, %sw.bb.97, %if.end.96, %sw.bb.90, %if.end.89
  br label %if.end.110

if.end.110:                                       ; preds = %sw.epilog, %if.end.76
  %53 = load i64, i64* %block_start, align 8
  %54 = load i32, i32* %block_total_len, align 4
  %conv111 = zext i32 %54 to i64
  %add = add nsw i64 %53, %conv111
  %st_size112 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %55 = load i64, i64* %st_size112, align 8
  %cmp113 = icmp sge i64 %add, %55
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.110
  br label %while.end

if.end.116:                                       ; preds = %if.end.110
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %57 = load i64, i64* %block_start, align 8
  %58 = load i32, i32* %block_total_len, align 4
  %conv117 = zext i32 %58 to i64
  %add118 = add nsw i64 %57, %conv117
  %call119 = call i32 @try_fseek(%struct._IO_FILE* %56, i64 %add118, i32 0)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.116
  br label %error.127

if.end.123:                                       ; preds = %if.end.116
  %59 = load i32, i32* %block_number, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %block_number, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.115, %land.end
  %60 = load i32, i32* %id, align 4
  %cmp124 = icmp eq i32 %60, -1
  br i1 %cmp124, label %if.then.126, label %if.end.134

if.then.126:                                      ; preds = %while.end
  br label %error.127

error.127:                                        ; preds = %if.then.126, %if.then.122, %if.then.105, %if.then.95, %if.then.88, %if.then.83, %if.then.75, %if.then.69, %if.then.64, %if.else.47, %if.then.28, %if.then.24, %if.then.19
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call128 = call i32 @fclose(%struct._IO_FILE* %61)
  %62 = load i32, i32* %image_ID, align 4
  %cmp129 = icmp ne i32 %62, -1
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %error.127
  %63 = load i32, i32* %image_ID, align 4
  %call132 = call i32 @gimp_image_delete(i32 %63)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %error.127
  store i32 -1, i32* %retval
  br label %return

if.end.134:                                       ; preds = %while.end
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call135 = call i32 @fclose(%struct._IO_FILE* %64)
  %65 = load i32, i32* %image_ID, align 4
  store i32 %65, i32* %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.end.133, %if.then.3, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0)) #5
  %0 = load i32, i32* getelementptr inbounds (%struct.PSPSaveVals, %struct.PSPSaveVals* @psvals, i32 0, i32 0), align 4
  %call3 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.107, i32 0, i32 0), i64 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0)) #5
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0)) #5
  %call6 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call2, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (%struct.PSPSaveVals* @psvals to i8*), i32 %0, i8* %call3, i32 0, i8* null, i8* %call4, i32 1, i8* null, i8* %call5, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call7)
  %3 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %3, i32 12)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call9 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkWidget* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call10)
  %6 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 0, i32 1, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_dialog_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call12)
  %12 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDialog*
  %call14 = call i32 @gimp_dialog_run(%struct._GimpDialog* %12)
  %cmp = icmp eq i32 %call14, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %13)
  %14 = load i32, i32* %run, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.110, i32 0, i32 0))
  ret i32 0
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

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

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

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

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_block_header(%struct._IO_FILE* %f, i32* %init_len, i32* %total_len) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %init_len.addr = alloca i32*, align 8
  %total_len.addr = alloca i32*, align 8
  %buf = alloca [4 x i8], align 1
  %id = alloca i16, align 2
  %header_start = alloca i64, align 8
  %len = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32* %init_len, i32** %init_len.addr, align 8
  store i32* %total_len, i32** %total_len.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %0)
  %cmp = icmp ult i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = bitcast i16* %id to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i64 @fread(i8* %1, i64 2, i64 1, %struct._IO_FILE* %2)
  %cmp2 = icmp ult i64 %call1, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = bitcast i32* %len to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call i64 @fread(i8* %3, i64 4, i64 1, %struct._IO_FILE* %4)
  %cmp5 = icmp ult i64 %call4, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %5 = load i16, i16* @psp_ver_major, align 2
  %conv = zext i16 %5 to i32
  %cmp7 = icmp slt i32 %conv, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6
  %6 = load i32*, i32** %total_len.addr, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call9 = call i64 @fread(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  %cmp10 = icmp ult i64 %call9, 1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false.3, %lor.lhs.false, %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.6
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call13 = call i32 @memcmp(i8* %arraydecay12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i64 4) #8
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %9 = load i16, i16* @psp_ver_major, align 2
  %conv18 = zext i16 %9 to i32
  %cmp19 = icmp slt i32 %conv18, 4
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.17
  %10 = load i32, i32* %len, align 4
  %11 = load i32*, i32** %init_len.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %total_len.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %total_len.addr, align 8
  store i32 %13, i32* %14, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.17
  %15 = load i32*, i32** %init_len.addr, align 8
  store i32 -559038737, i32* %15, align 4
  %16 = load i32, i32* %len, align 4
  %17 = load i32*, i32** %total_len.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %18 = load i16, i16* %id, align 2
  %conv23 = zext i16 %18 to i32
  store i32 %conv23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.16, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @read_general_image_attribute_block(%struct._IO_FILE* %f, i32 %init_len, i32 %total_len, %struct.PSPimage* %ia) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %init_len.addr = alloca i32, align 4
  %total_len.addr = alloca i32, align 4
  %ia.addr = alloca %struct.PSPimage*, align 8
  %buf = alloca [6 x i8], align 1
  %res = alloca i64, align 8
  %graphics_content = alloca [4 x i8], align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %init_len, i32* %init_len.addr, align 4
  store i32 %total_len, i32* %total_len.addr, align 4
  store %struct.PSPimage* %ia, %struct.PSPimage** %ia.addr, align 8
  %0 = load i32, i32* %init_len.addr, align 4
  %cmp = icmp ult i32 %0, 38
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %total_len.addr, align 4
  %cmp1 = icmp ult i32 %1, 38
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i16, i16* @psp_ver_major, align 2
  %conv = zext i16 %2 to i32
  %cmp2 = icmp sge i32 %conv, 4
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %3, i64 4, i32 1)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %width = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %4, i32 0, i32 0
  %5 = bitcast i32* %width to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call6 = call i64 @fread(i8* %5, i64 4, i64 1, %struct._IO_FILE* %6)
  %cmp7 = icmp ult i64 %call6, 1
  br i1 %cmp7, label %if.then.58, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.5
  %7 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %height = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %7, i32 0, i32 1
  %8 = bitcast i32* %height to i8*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call10 = call i64 @fread(i8* %8, i64 4, i64 1, %struct._IO_FILE* %9)
  %cmp11 = icmp ult i64 %call10, 1
  br i1 %cmp11, label %if.then.58, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %10 = bitcast i64* %res to i8*
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call14 = call i64 @fread(i8* %10, i64 8, i64 1, %struct._IO_FILE* %11)
  %cmp15 = icmp ult i64 %call14, 1
  br i1 %cmp15, label %if.then.58, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %12 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %metric = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %12, i32 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call18 = call i64 @fread(i8* %metric, i64 1, i64 1, %struct._IO_FILE* %13)
  %cmp19 = icmp ult i64 %call18, 1
  br i1 %cmp19, label %if.then.58, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %14 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %compression = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %14, i32 0, i32 4
  %15 = bitcast i16* %compression to i8*
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call22 = call i64 @fread(i8* %15, i64 2, i64 1, %struct._IO_FILE* %16)
  %cmp23 = icmp ult i64 %call22, 1
  br i1 %cmp23, label %if.then.58, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %17 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %depth = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %17, i32 0, i32 5
  %18 = bitcast i16* %depth to i8*
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call26 = call i64 @fread(i8* %18, i64 2, i64 1, %struct._IO_FILE* %19)
  %cmp27 = icmp ult i64 %call26, 1
  br i1 %cmp27, label %if.then.58, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call30 = call i64 @fread(i8* %arraydecay, i64 6, i64 1, %struct._IO_FILE* %20)
  %cmp31 = icmp ult i64 %call30, 1
  br i1 %cmp31, label %if.then.58, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %21 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %greyscale = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %21, i32 0, i32 6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call34 = call i64 @fread(i8* %greyscale, i64 1, i64 1, %struct._IO_FILE* %22)
  %cmp35 = icmp ult i64 %call34, 1
  br i1 %cmp35, label %if.then.58, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %arraydecay38 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call39 = call i64 @fread(i8* %arraydecay38, i64 4, i64 1, %struct._IO_FILE* %23)
  %cmp40 = icmp ult i64 %call39, 1
  br i1 %cmp40, label %if.then.58, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.37
  %24 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %active_layer = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %24, i32 0, i32 7
  %25 = bitcast i32* %active_layer to i8*
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call43 = call i64 @fread(i8* %25, i64 4, i64 1, %struct._IO_FILE* %26)
  %cmp44 = icmp ult i64 %call43, 1
  br i1 %cmp44, label %if.then.58, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %27 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %layer_count = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %27, i32 0, i32 8
  %28 = bitcast i16* %layer_count to i8*
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call47 = call i64 @fread(i8* %28, i64 2, i64 1, %struct._IO_FILE* %29)
  %cmp48 = icmp ult i64 %call47, 1
  br i1 %cmp48, label %if.then.58, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %30 = load i16, i16* @psp_ver_major, align 2
  %conv51 = zext i16 %30 to i32
  %cmp52 = icmp sge i32 %conv51, 4
  br i1 %cmp52, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %lor.lhs.false.50
  %arraydecay54 = getelementptr inbounds [4 x i8], [4 x i8]* %graphics_content, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call55 = call i64 @fread(i8* %arraydecay54, i64 4, i64 1, %struct._IO_FILE* %31)
  %cmp56 = icmp ult i64 %call55, 1
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true, %lor.lhs.false.46, %lor.lhs.false.42, %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false.25, %lor.lhs.false.21, %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false.9, %if.end.5
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %land.lhs.true, %lor.lhs.false.50
  %32 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %width60 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %32, i32 0, i32 0
  %33 = load i32, i32* %width60, align 4
  %34 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %width61 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %34, i32 0, i32 0
  store i32 %33, i32* %width61, align 4
  %35 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %height62 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %35, i32 0, i32 1
  %36 = load i32, i32* %height62, align 4
  %37 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %height63 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %37, i32 0, i32 1
  store i32 %36, i32* %height63, align 4
  %38 = load i64, i64* %res, align 8
  store i64 %38, i64* %res, align 8
  %39 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %resolution = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %39, i32 0, i32 2
  %40 = bitcast double* %resolution to i8*
  %41 = bitcast i64* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 8, i32 8, i1 false)
  %42 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %metric64 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %42, i32 0, i32 3
  %43 = load i8, i8* %metric64, align 1
  %conv65 = zext i8 %43 to i32
  %cmp66 = icmp eq i32 %conv65, 2
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.59
  %44 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %resolution69 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %44, i32 0, i32 2
  %45 = load double, double* %resolution69, align 8
  %div = fdiv double %45, 2.540000e+00
  store double %div, double* %resolution69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.59
  %46 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %compression71 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %46, i32 0, i32 4
  %47 = load i16, i16* %compression71, align 2
  %48 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %compression72 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %48, i32 0, i32 4
  store i16 %47, i16* %compression72, align 2
  %49 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %compression73 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %49, i32 0, i32 4
  %50 = load i16, i16* %compression73, align 2
  %conv74 = zext i16 %50 to i32
  %cmp75 = icmp sgt i32 %conv74, 2
  br i1 %cmp75, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.70
  %51 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %compression78 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %51, i32 0, i32 4
  %52 = load i16, i16* %compression78, align 2
  %conv79 = zext i16 %52 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0), i32 %conv79)
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.70
  %53 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %depth81 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %53, i32 0, i32 5
  %54 = load i16, i16* %depth81, align 2
  %55 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %depth82 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %55, i32 0, i32 5
  store i16 %54, i16* %depth82, align 2
  %56 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %depth83 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %56, i32 0, i32 5
  %57 = load i16, i16* %depth83, align 2
  %conv84 = zext i16 %57 to i32
  %cmp85 = icmp ne i32 %conv84, 24
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.80
  %58 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %depth88 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %58, i32 0, i32 5
  %59 = load i16, i16* %depth88, align 2
  %conv89 = zext i16 %59 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i32 %conv89)
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.end.80
  %60 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %active_layer91 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %60, i32 0, i32 7
  %61 = load i32, i32* %active_layer91, align 4
  %62 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %active_layer92 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %62, i32 0, i32 7
  store i32 %61, i32* %active_layer92, align 4
  %63 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %layer_count93 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %63, i32 0, i32 8
  %64 = load i16, i16* %layer_count93, align 2
  %65 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %layer_count94 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %65, i32 0, i32 8
  store i16 %64, i16* %layer_count94, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.87, %if.then.77, %if.then.58, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_image_set_resolution(i32, double, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_creator_block(%struct._IO_FILE* %f, i32 %image_ID, i32 %total_len, %struct.PSPimage* %ia) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %total_len.addr = alloca i32, align 4
  %ia.addr = alloca %struct.PSPimage*, align 8
  %data_start = alloca i64, align 8
  %buf = alloca [4 x i8], align 1
  %keyword = alloca i16, align 2
  %length = alloca i32, align 4
  %string = alloca i8*, align 8
  %title = alloca i8*, align 8
  %artist = alloca i8*, align 8
  %copyright = alloca i8*, align 8
  %description = alloca i8*, align 8
  %dword = alloca i32, align 4
  %cdate = alloca i32, align 4
  %mdate = alloca i32, align 4
  %appid = alloca i32, align 4
  %appver = alloca i32, align 4
  %comment = alloca %struct._GString*, align 8
  %comment_parasite = alloca %struct._GimpParasite*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %total_len, i32* %total_len.addr, align 4
  store %struct.PSPimage* %ia, %struct.PSPimage** %ia.addr, align 8
  store i8* null, i8** %title, align 8
  store i8* null, i8** %artist, align 8
  store i8* null, i8** %copyright, align 8
  store i8* null, i8** %description, align 8
  store i32 0, i32* %cdate, align 4
  store i32 0, i32* %mdate, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %data_start, align 8
  %call1 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call1, %struct._GString** %comment, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.54, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* %1)
  %2 = load i64, i64* %data_start, align 8
  %3 = load i32, i32* %total_len.addr, align 4
  %conv = zext i32 %3 to i64
  %add = add nsw i64 %2, %conv
  %cmp = icmp slt i64 %call2, %add
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call i64 @fread(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %4)
  %cmp5 = icmp ult i64 %call4, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = bitcast i16* %keyword to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call7 = call i64 @fread(i8* %5, i64 2, i64 1, %struct._IO_FILE* %6)
  %cmp8 = icmp ult i64 %call7, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %7 = bitcast i32* %length to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call11 = call i64 @fread(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  %cmp12 = icmp ult i64 %call11, 1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %while.body
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.10
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 @memcmp(i8* %arraydecay14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i64 4) #8
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %9 = load i16, i16* %keyword, align 2
  store i16 %9, i16* %keyword, align 2
  %10 = load i32, i32* %length, align 4
  store i32 %10, i32* %length, align 4
  %11 = load i16, i16* %keyword, align 2
  %conv20 = zext i16 %11 to i32
  switch i32 %conv20, label %sw.default.47 [
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb.35
    i32 2, label %sw.bb.35
    i32 6, label %sw.bb.35
    i32 7, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19
  %12 = load i32, i32* %length, align 4
  %add21 = add i32 %12, 1
  %conv22 = zext i32 %add21 to i64
  %call23 = call noalias i8* @g_malloc(i64 %conv22)
  store i8* %call23, i8** %string, align 8
  %13 = load i8*, i8** %string, align 8
  %14 = load i32, i32* %length, align 4
  %conv24 = zext i32 %14 to i64
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call25 = call i64 @fread(i8* %13, i64 %conv24, i64 1, %struct._IO_FILE* %15)
  %cmp26 = icmp ult i64 %call25, 1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0))
  %16 = load i8*, i8** %string, align 8
  call void @g_free(i8* %16)
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb
  %17 = load i16, i16* %keyword, align 2
  %conv30 = zext i16 %17 to i32
  switch i32 %conv30, label %sw.default [
    i32 0, label %sw.bb.31
    i32 3, label %sw.bb.32
    i32 4, label %sw.bb.33
    i32 5, label %sw.bb.34
  ]

sw.bb.31:                                         ; preds = %if.end.29
  %18 = load i8*, i8** %title, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %string, align 8
  store i8* %19, i8** %title, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.29
  %20 = load i8*, i8** %artist, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %string, align 8
  store i8* %21, i8** %artist, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.29
  %22 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %22)
  %23 = load i8*, i8** %string, align 8
  store i8* %23, i8** %copyright, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.29
  %24 = load i8*, i8** %description, align 8
  call void @g_free(i8* %24)
  %25 = load i8*, i8** %string, align 8
  store i8* %25, i8** %description, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.29
  %26 = load i8*, i8** %string, align 8
  call void @g_free(i8* %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31
  br label %sw.epilog.54

sw.bb.35:                                         ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19
  %27 = bitcast i32* %dword to i8*
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call36 = call i64 @fread(i8* %27, i64 4, i64 1, %struct._IO_FILE* %28)
  %cmp37 = icmp ult i64 %call36, 1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.35
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %sw.bb.35
  %29 = load i16, i16* %keyword, align 2
  %conv41 = zext i16 %29 to i32
  switch i32 %conv41, label %sw.epilog.46 [
    i32 1, label %sw.bb.42
    i32 2, label %sw.bb.43
    i32 6, label %sw.bb.44
    i32 7, label %sw.bb.45
  ]

sw.bb.42:                                         ; preds = %if.end.40
  %30 = load i32, i32* %dword, align 4
  store i32 %30, i32* %cdate, align 4
  br label %sw.epilog.46

sw.bb.43:                                         ; preds = %if.end.40
  %31 = load i32, i32* %dword, align 4
  store i32 %31, i32* %mdate, align 4
  br label %sw.epilog.46

sw.bb.44:                                         ; preds = %if.end.40
  %32 = load i32, i32* %dword, align 4
  store i32 %32, i32* %appid, align 4
  br label %sw.epilog.46

sw.bb.45:                                         ; preds = %if.end.40
  %33 = load i32, i32* %dword, align 4
  store i32 %33, i32* %appver, align 4
  br label %sw.epilog.46

sw.epilog.46:                                     ; preds = %if.end.40, %sw.bb.45, %sw.bb.44, %sw.bb.43, %sw.bb.42
  br label %sw.epilog.54

sw.default.47:                                    ; preds = %if.end.19
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %35 = load i32, i32* %length, align 4
  %conv48 = zext i32 %35 to i64
  %call49 = call i32 @try_fseek(%struct._IO_FILE* %34, i64 %conv48, i32 1)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %sw.default.47
  store i32 -1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %sw.default.47
  br label %sw.epilog.54

sw.epilog.54:                                     ; preds = %if.end.53, %sw.epilog.46, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i8*, i8** %title, align 8
  %tobool = icmp ne i8* %36, null
  br i1 %tobool, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %while.end
  %37 = load %struct._GString*, %struct._GString** %comment, align 8
  %38 = load i8*, i8** %title, align 8
  %call56 = call %struct._GString* @g_string_append(%struct._GString* %37, i8* %38)
  %39 = load i8*, i8** %title, align 8
  call void @g_free(i8* %39)
  %40 = load %struct._GString*, %struct._GString** %comment, align 8
  %call57 = call %struct._GString* @g_string_append(%struct._GString* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %while.end
  %41 = load i8*, i8** %artist, align 8
  %tobool59 = icmp ne i8* %41, null
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.58
  %42 = load %struct._GString*, %struct._GString** %comment, align 8
  %43 = load i8*, i8** %artist, align 8
  %call61 = call %struct._GString* @g_string_append(%struct._GString* %42, i8* %43)
  %44 = load i8*, i8** %artist, align 8
  call void @g_free(i8* %44)
  %45 = load %struct._GString*, %struct._GString** %comment, align 8
  %call62 = call %struct._GString* @g_string_append(%struct._GString* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.58
  %46 = load i8*, i8** %copyright, align 8
  %tobool64 = icmp ne i8* %46, null
  br i1 %tobool64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.end.63
  %47 = load %struct._GString*, %struct._GString** %comment, align 8
  %call66 = call %struct._GString* @g_string_append(%struct._GString* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0))
  %48 = load %struct._GString*, %struct._GString** %comment, align 8
  %49 = load i8*, i8** %copyright, align 8
  %call67 = call %struct._GString* @g_string_append(%struct._GString* %48, i8* %49)
  %50 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %50)
  %51 = load %struct._GString*, %struct._GString** %comment, align 8
  %call68 = call %struct._GString* @g_string_append(%struct._GString* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.end.63
  %52 = load i8*, i8** %description, align 8
  %tobool70 = icmp ne i8* %52, null
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.69
  %53 = load %struct._GString*, %struct._GString** %comment, align 8
  %54 = load i8*, i8** %description, align 8
  %call72 = call %struct._GString* @g_string_append(%struct._GString* %53, i8* %54)
  %55 = load i8*, i8** %description, align 8
  call void @g_free(i8* %55)
  %56 = load %struct._GString*, %struct._GString** %comment, align 8
  %call73 = call %struct._GString* @g_string_append(%struct._GString* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.end.69
  %57 = load %struct._GString*, %struct._GString** %comment, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %57, i32 0, i32 1
  %58 = load i64, i64* %len, align 8
  %cmp75 = icmp ugt i64 %58, 0
  br i1 %cmp75, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %if.end.74
  %59 = load %struct._GString*, %struct._GString** %comment, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %59, i32 0, i32 0
  %60 = load i8*, i8** %str, align 8
  %call78 = call i64 @strlen(i8* %60) #8
  %add79 = add i64 %call78, 1
  %conv80 = trunc i64 %add79 to i32
  %61 = load %struct._GString*, %struct._GString** %comment, align 8
  %str81 = getelementptr inbounds %struct._GString, %struct._GString* %61, i32 0, i32 0
  %62 = load i8*, i8** %str81, align 8
  %call82 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 1, i32 %conv80, i8* %62)
  store %struct._GimpParasite* %call82, %struct._GimpParasite** %comment_parasite, align 8
  %63 = load i32, i32* %image_ID.addr, align 4
  %64 = load %struct._GimpParasite*, %struct._GimpParasite** %comment_parasite, align 8
  %call83 = call i32 @gimp_image_attach_parasite(i32 %63, %struct._GimpParasite* %64)
  %65 = load %struct._GimpParasite*, %struct._GimpParasite** %comment_parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %65)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.77, %if.end.74
  %66 = load %struct._GString*, %struct._GString** %comment, align 8
  %call85 = call i8* @g_string_free(%struct._GString* %66, i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.then.52, %if.then.39, %if.then.28, %if.then.18, %if.then
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @read_layer_block(%struct._IO_FILE* %f, i32 %image_ID, i32 %total_len, %struct.PSPimage* %ia) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %total_len.addr = alloca i32, align 4
  %ia.addr = alloca %struct.PSPimage*, align 8
  %i = alloca i32, align 4
  %block_start = alloca i64, align 8
  %sub_block_start = alloca i64, align 8
  %channel_start = alloca i64, align 8
  %sub_id = alloca i32, align 4
  %sub_init_len = alloca i32, align 4
  %sub_total_len = alloca i32, align 4
  %name = alloca i8*, align 8
  %namelen = alloca i16, align 2
  %type = alloca i8, align 1
  %opacity = alloca i8, align 1
  %blend_mode = alloca i8, align 1
  %visibility = alloca i8, align 1
  %transparency_protected = alloca i8, align 1
  %link_group_id = alloca i8, align 1
  %mask_linked = alloca i8, align 1
  %mask_disabled = alloca i8, align 1
  %image_rect = alloca [4 x i32], align 16
  %saved_image_rect = alloca [4 x i32], align 16
  %mask_rect = alloca [4 x i32], align 16
  %saved_mask_rect = alloca [4 x i32], align 16
  %null_layer = alloca i32, align 4
  %bitmap_count = alloca i16, align 2
  %channel_count = alloca i16, align 2
  %drawable_type = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %layer_mode = alloca i32, align 4
  %channel_init_len = alloca i32, align 4
  %channel_total_len = alloca i32, align 4
  %compressed_len = alloca i32, align 4
  %uncompressed_len = alloca i32, align 4
  %bitmap_type = alloca i16, align 2
  %channel_type = alloca i16, align 2
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytespp = alloca i32, align 4
  %offset = alloca i32, align 4
  %pixels = alloca i8**, align 8
  %pixel = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %total_len, i32* %total_len.addr, align 4
  store %struct.PSPimage* %ia, %struct.PSPimage** %ia.addr, align 8
  store i8* null, i8** %name, align 8
  store i32 0, i32* %null_layer, align 4
  store i32 0, i32* %layer_ID, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  store i64 %call, i64* %block_start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %1)
  %2 = load i64, i64* %block_start, align 8
  %3 = load i32, i32* %total_len.addr, align 4
  %conv = zext i32 %3 to i64
  %add = add nsw i64 %2, %conv
  %cmp = icmp slt i64 %call1, %add
  br i1 %cmp, label %while.body, label %while.end.384

while.body:                                       ; preds = %while.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call3 = call i32 @read_block_header(%struct._IO_FILE* %4, i32* %sub_init_len, i32* %sub_total_len)
  store i32 %call3, i32* %sub_id, align 4
  %5 = load i32, i32* %sub_id, align 4
  %cmp4 = icmp eq i32 %5, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %sub_id, align 4
  %cmp6 = icmp ne i32 %6, 4
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %7 = load i32, i32* %sub_id, align 4
  %call9 = call i8* @block_name(i32 %7)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.47, i32 0, i32 0), i8* %call9)
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call11 = call i64 @ftell(%struct._IO_FILE* %8)
  store i64 %call11, i64* %sub_block_start, align 8
  %9 = load i16, i16* @psp_ver_major, align 2
  %conv12 = zext i16 %9 to i32
  %cmp13 = icmp sge i32 %conv12, 4
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call16 = call i32 @fseek(%struct._IO_FILE* %10, i64 4, i32 1)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.15
  %11 = bitcast i16* %namelen to i8*
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call19 = call i64 @fread(i8* %11, i64 2, i64 1, %struct._IO_FILE* %12)
  %cmp20 = icmp ult i64 %call19, 1
  br i1 %cmp20, label %if.then.96, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %13 = load i16, i16* %namelen, align 2
  store i16 %13, i16* %namelen, align 2
  %conv23 = zext i16 %13 to i32
  %tobool = icmp ne i32 %conv23, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.24

land.lhs.true:                                    ; preds = %lor.lhs.false.22
  br i1 false, label %if.then.96, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true, %lor.lhs.false.22
  %14 = load i16, i16* %namelen, align 2
  %conv25 = zext i16 %14 to i32
  %add26 = add nsw i32 %conv25, 1
  %conv27 = sext i32 %add26 to i64
  %call28 = call noalias i8* @g_malloc(i64 %conv27)
  store i8* %call28, i8** %name, align 8
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %if.then.96, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.24
  %15 = load i8*, i8** %name, align 8
  %16 = load i16, i16* %namelen, align 2
  %conv32 = zext i16 %16 to i64
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call33 = call i64 @fread(i8* %15, i64 %conv32, i64 1, %struct._IO_FILE* %17)
  %cmp34 = icmp ult i64 %call33, 1
  br i1 %cmp34, label %if.then.96, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.31
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call37 = call i64 @fread(i8* %type, i64 1, i64 1, %struct._IO_FILE* %18)
  %cmp38 = icmp ult i64 %call37, 1
  br i1 %cmp38, label %if.then.96, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %19 = bitcast [4 x i32]* %image_rect to i8*
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call41 = call i64 @fread(i8* %19, i64 16, i64 1, %struct._IO_FILE* %20)
  %cmp42 = icmp ult i64 %call41, 1
  br i1 %cmp42, label %if.then.96, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.40
  %21 = bitcast [4 x i32]* %saved_image_rect to i8*
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call45 = call i64 @fread(i8* %21, i64 16, i64 1, %struct._IO_FILE* %22)
  %cmp46 = icmp ult i64 %call45, 1
  br i1 %cmp46, label %if.then.96, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.44
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call49 = call i64 @fread(i8* %opacity, i64 1, i64 1, %struct._IO_FILE* %23)
  %cmp50 = icmp ult i64 %call49, 1
  br i1 %cmp50, label %if.then.96, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.48
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call53 = call i64 @fread(i8* %blend_mode, i64 1, i64 1, %struct._IO_FILE* %24)
  %cmp54 = icmp ult i64 %call53, 1
  br i1 %cmp54, label %if.then.96, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.52
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call57 = call i64 @fread(i8* %visibility, i64 1, i64 1, %struct._IO_FILE* %25)
  %cmp58 = icmp ult i64 %call57, 1
  br i1 %cmp58, label %if.then.96, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.56
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call61 = call i64 @fread(i8* %transparency_protected, i64 1, i64 1, %struct._IO_FILE* %26)
  %cmp62 = icmp ult i64 %call61, 1
  br i1 %cmp62, label %if.then.96, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.60
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call65 = call i64 @fread(i8* %link_group_id, i64 1, i64 1, %struct._IO_FILE* %27)
  %cmp66 = icmp ult i64 %call65, 1
  br i1 %cmp66, label %if.then.96, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.64
  %28 = bitcast [4 x i32]* %mask_rect to i8*
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call69 = call i64 @fread(i8* %28, i64 16, i64 1, %struct._IO_FILE* %29)
  %cmp70 = icmp ult i64 %call69, 1
  br i1 %cmp70, label %if.then.96, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.68
  %30 = bitcast [4 x i32]* %saved_mask_rect to i8*
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call73 = call i64 @fread(i8* %30, i64 16, i64 1, %struct._IO_FILE* %31)
  %cmp74 = icmp ult i64 %call73, 1
  br i1 %cmp74, label %if.then.96, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.72
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call77 = call i64 @fread(i8* %mask_linked, i64 1, i64 1, %struct._IO_FILE* %32)
  %cmp78 = icmp ult i64 %call77, 1
  br i1 %cmp78, label %if.then.96, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.76
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call81 = call i64 @fread(i8* %mask_disabled, i64 1, i64 1, %struct._IO_FILE* %33)
  %cmp82 = icmp ult i64 %call81, 1
  br i1 %cmp82, label %if.then.96, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.80
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call85 = call i32 @fseek(%struct._IO_FILE* %34, i64 47, i32 1)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then.96, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.84
  %35 = bitcast i16* %bitmap_count to i8*
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call89 = call i64 @fread(i8* %35, i64 2, i64 1, %struct._IO_FILE* %36)
  %cmp90 = icmp ult i64 %call89, 1
  br i1 %cmp90, label %if.then.96, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.88
  %37 = bitcast i16* %channel_count to i8*
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call93 = call i64 @fread(i8* %37, i64 2, i64 1, %struct._IO_FILE* %38)
  %cmp94 = icmp ult i64 %call93, 1
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false.92, %lor.lhs.false.88, %lor.lhs.false.84, %lor.lhs.false.80, %lor.lhs.false.76, %lor.lhs.false.72, %lor.lhs.false.68, %lor.lhs.false.64, %lor.lhs.false.60, %lor.lhs.false.56, %lor.lhs.false.52, %lor.lhs.false.48, %lor.lhs.false.44, %lor.lhs.false.40, %lor.lhs.false.36, %lor.lhs.false.31, %lor.lhs.false.24, %land.lhs.true, %lor.lhs.false, %if.then.15
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0))
  %39 = load i8*, i8** %name, align 8
  call void @g_free(i8* %39)
  store i32 -1, i32* %retval
  br label %return

if.end.97:                                        ; preds = %lor.lhs.false.92
  %40 = load i16, i16* %namelen, align 2
  %idxprom = zext i16 %40 to i64
  %41 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i8 0, i8* %type, align 1
  br label %if.end.165

if.else:                                          ; preds = %if.end.10
  %call98 = call noalias i8* @g_malloc(i64 257)
  store i8* %call98, i8** %name, align 8
  %42 = load i8*, i8** %name, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %42, i64 256
  store i8 0, i8* %arrayidx99, align 1
  %43 = load i8*, i8** %name, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call100 = call i64 @fread(i8* %43, i64 256, i64 1, %struct._IO_FILE* %44)
  %cmp101 = icmp ult i64 %call100, 1
  br i1 %cmp101, label %if.then.163, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.else
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call104 = call i64 @fread(i8* %type, i64 1, i64 1, %struct._IO_FILE* %45)
  %cmp105 = icmp ult i64 %call104, 1
  br i1 %cmp105, label %if.then.163, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.103
  %46 = bitcast [4 x i32]* %image_rect to i8*
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call108 = call i64 @fread(i8* %46, i64 16, i64 1, %struct._IO_FILE* %47)
  %cmp109 = icmp ult i64 %call108, 1
  br i1 %cmp109, label %if.then.163, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.107
  %48 = bitcast [4 x i32]* %saved_image_rect to i8*
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call112 = call i64 @fread(i8* %48, i64 16, i64 1, %struct._IO_FILE* %49)
  %cmp113 = icmp ult i64 %call112, 1
  br i1 %cmp113, label %if.then.163, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.111
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call116 = call i64 @fread(i8* %opacity, i64 1, i64 1, %struct._IO_FILE* %50)
  %cmp117 = icmp ult i64 %call116, 1
  br i1 %cmp117, label %if.then.163, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.115
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call120 = call i64 @fread(i8* %blend_mode, i64 1, i64 1, %struct._IO_FILE* %51)
  %cmp121 = icmp ult i64 %call120, 1
  br i1 %cmp121, label %if.then.163, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.119
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call124 = call i64 @fread(i8* %visibility, i64 1, i64 1, %struct._IO_FILE* %52)
  %cmp125 = icmp ult i64 %call124, 1
  br i1 %cmp125, label %if.then.163, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.123
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call128 = call i64 @fread(i8* %transparency_protected, i64 1, i64 1, %struct._IO_FILE* %53)
  %cmp129 = icmp ult i64 %call128, 1
  br i1 %cmp129, label %if.then.163, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %lor.lhs.false.127
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call132 = call i64 @fread(i8* %link_group_id, i64 1, i64 1, %struct._IO_FILE* %54)
  %cmp133 = icmp ult i64 %call132, 1
  br i1 %cmp133, label %if.then.163, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false.131
  %55 = bitcast [4 x i32]* %mask_rect to i8*
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call136 = call i64 @fread(i8* %55, i64 16, i64 1, %struct._IO_FILE* %56)
  %cmp137 = icmp ult i64 %call136, 1
  br i1 %cmp137, label %if.then.163, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %lor.lhs.false.135
  %57 = bitcast [4 x i32]* %saved_mask_rect to i8*
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call140 = call i64 @fread(i8* %57, i64 16, i64 1, %struct._IO_FILE* %58)
  %cmp141 = icmp ult i64 %call140, 1
  br i1 %cmp141, label %if.then.163, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.139
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call144 = call i64 @fread(i8* %mask_linked, i64 1, i64 1, %struct._IO_FILE* %59)
  %cmp145 = icmp ult i64 %call144, 1
  br i1 %cmp145, label %if.then.163, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.143
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call148 = call i64 @fread(i8* %mask_disabled, i64 1, i64 1, %struct._IO_FILE* %60)
  %cmp149 = icmp ult i64 %call148, 1
  br i1 %cmp149, label %if.then.163, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %lor.lhs.false.147
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call152 = call i32 @fseek(%struct._IO_FILE* %61, i64 43, i32 1)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.then.163, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.151
  %62 = bitcast i16* %bitmap_count to i8*
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call156 = call i64 @fread(i8* %62, i64 2, i64 1, %struct._IO_FILE* %63)
  %cmp157 = icmp ult i64 %call156, 1
  br i1 %cmp157, label %if.then.163, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.155
  %64 = bitcast i16* %channel_count to i8*
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call160 = call i64 @fread(i8* %64, i64 2, i64 1, %struct._IO_FILE* %65)
  %cmp161 = icmp ult i64 %call160, 1
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %lor.lhs.false.159, %lor.lhs.false.155, %lor.lhs.false.151, %lor.lhs.false.147, %lor.lhs.false.143, %lor.lhs.false.139, %lor.lhs.false.135, %lor.lhs.false.131, %lor.lhs.false.127, %lor.lhs.false.123, %lor.lhs.false.119, %lor.lhs.false.115, %lor.lhs.false.111, %lor.lhs.false.107, %lor.lhs.false.103, %if.else
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0))
  %66 = load i8*, i8** %name, align 8
  call void @g_free(i8* %66)
  store i32 -1, i32* %retval
  br label %return

if.end.164:                                       ; preds = %lor.lhs.false.159
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.97
  %67 = load i8, i8* %type, align 1
  %conv166 = zext i8 %67 to i32
  %cmp167 = icmp eq i32 %conv166, 1
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.165
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %if.end.165
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %image_rect, i32 0, i32 0
  call void @swab_rect(i32* %arraydecay)
  %arraydecay171 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i32 0
  call void @swab_rect(i32* %arraydecay171)
  %arraydecay172 = getelementptr inbounds [4 x i32], [4 x i32]* %mask_rect, i32 0, i32 0
  call void @swab_rect(i32* %arraydecay172)
  %arraydecay173 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_mask_rect, i32 0, i32 0
  call void @swab_rect(i32* %arraydecay173)
  %68 = load i16, i16* %bitmap_count, align 2
  store i16 %68, i16* %bitmap_count, align 2
  %69 = load i16, i16* %channel_count, align 2
  store i16 %69, i16* %channel_count, align 2
  %70 = load i8, i8* %blend_mode, align 1
  %conv174 = zext i8 %70 to i32
  %call175 = call i32 @gimp_layer_mode_from_psp_blend_mode(i32 %conv174)
  store i32 %call175, i32* %layer_mode, align 4
  %71 = load i32, i32* %layer_mode, align 4
  %cmp176 = icmp eq i32 %71, -1
  br i1 %cmp176, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %if.end.170
  %72 = load i8, i8* %blend_mode, align 1
  %conv179 = zext i8 %72 to i32
  %call180 = call i8* @blend_mode_name(i32 %conv179)
  %73 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.50, i32 0, i32 0), i8* %call180, i8* %73)
  store i32 0, i32* %layer_mode, align 4
  store i8 0, i8* %visibility, align 1
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.178, %if.end.170
  %arrayidx182 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 2
  %74 = load i32, i32* %arrayidx182, align 4
  %arrayidx183 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 0
  %75 = load i32, i32* %arrayidx183, align 4
  %sub = sub i32 %74, %75
  store i32 %sub, i32* %width, align 4
  %arrayidx184 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 3
  %76 = load i32, i32* %arrayidx184, align 4
  %arrayidx185 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 1
  %77 = load i32, i32* %arrayidx185, align 4
  %sub186 = sub i32 %76, %77
  store i32 %sub186, i32* %height, align 4
  %78 = load i32, i32* %width, align 4
  %cmp187 = icmp slt i32 %78, 0
  br i1 %cmp187, label %if.then.202, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %if.end.181
  %79 = load i32, i32* %width, align 4
  %cmp190 = icmp sgt i32 %79, 262144
  br i1 %cmp190, label %if.then.202, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %lor.lhs.false.189
  %80 = load i32, i32* %height, align 4
  %cmp193 = icmp slt i32 %80, 0
  br i1 %cmp193, label %if.then.202, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %lor.lhs.false.192
  %81 = load i32, i32* %height, align 4
  %cmp196 = icmp sgt i32 %81, 262144
  br i1 %cmp196, label %if.then.202, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %lor.lhs.false.195
  %82 = load i32, i32* %width, align 4
  %div = sdiv i32 %82, 256
  %83 = load i32, i32* %height, align 4
  %div199 = sdiv i32 %83, 256
  %mul = mul nsw i32 %div, %div199
  %cmp200 = icmp sge i32 %mul, 8192
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %lor.lhs.false.198, %lor.lhs.false.195, %lor.lhs.false.192, %lor.lhs.false.189, %if.end.181
  %84 = load i32, i32* %width, align 4
  %85 = load i32, i32* %height, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0), i32 %84, i32 %85)
  store i32 -1, i32* %retval
  br label %return

if.end.203:                                       ; preds = %lor.lhs.false.198
  %86 = load i32, i32* %width, align 4
  %cmp204 = icmp eq i32 %86, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.203
  %87 = load i32, i32* %width, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %width, align 4
  store i32 1, i32* %null_layer, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.end.203
  %88 = load i32, i32* %height, align 4
  %cmp208 = icmp eq i32 %88, 0
  br i1 %cmp208, label %if.then.210, label %if.end.212

if.then.210:                                      ; preds = %if.end.207
  %89 = load i32, i32* %height, align 4
  %inc211 = add nsw i32 %89, 1
  store i32 %inc211, i32* %height, align 4
  store i32 1, i32* %null_layer, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.210, %if.end.207
  %90 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %greyscale = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %90, i32 0, i32 6
  %91 = load i8, i8* %greyscale, align 1
  %tobool213 = icmp ne i8 %91, 0
  br i1 %tobool213, label %if.then.214, label %if.else.223

if.then.214:                                      ; preds = %if.end.212
  %92 = load i32, i32* %null_layer, align 4
  %tobool215 = icmp ne i32 %92, 0
  br i1 %tobool215, label %if.else.221, label %land.lhs.true.216

land.lhs.true.216:                                ; preds = %if.then.214
  %93 = load i16, i16* %bitmap_count, align 2
  %conv217 = zext i16 %93 to i32
  %cmp218 = icmp eq i32 %conv217, 1
  br i1 %cmp218, label %if.then.220, label %if.else.221

if.then.220:                                      ; preds = %land.lhs.true.216
  store i32 2, i32* %drawable_type, align 4
  store i32 1, i32* %bytespp, align 4
  br label %if.end.222

if.else.221:                                      ; preds = %land.lhs.true.216, %if.then.214
  store i32 3, i32* %drawable_type, align 4
  store i32 1, i32* %bytespp, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.then.220
  br label %if.end.232

if.else.223:                                      ; preds = %if.end.212
  %94 = load i32, i32* %null_layer, align 4
  %tobool224 = icmp ne i32 %94, 0
  br i1 %tobool224, label %if.else.230, label %land.lhs.true.225

land.lhs.true.225:                                ; preds = %if.else.223
  %95 = load i16, i16* %bitmap_count, align 2
  %conv226 = zext i16 %95 to i32
  %cmp227 = icmp eq i32 %conv226, 1
  br i1 %cmp227, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %land.lhs.true.225
  store i32 0, i32* %drawable_type, align 4
  store i32 3, i32* %bytespp, align 4
  br label %if.end.231

if.else.230:                                      ; preds = %land.lhs.true.225, %if.else.223
  store i32 1, i32* %drawable_type, align 4
  store i32 4, i32* %bytespp, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.230, %if.then.229
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.222
  %96 = load i32, i32* %image_ID.addr, align 4
  %97 = load i8*, i8** %name, align 8
  %98 = load i32, i32* %width, align 4
  %99 = load i32, i32* %height, align 4
  %100 = load i32, i32* %drawable_type, align 4
  %101 = load i8, i8* %opacity, align 1
  %conv233 = zext i8 %101 to i32
  %conv234 = sitofp i32 %conv233 to double
  %mul235 = fmul double 1.000000e+02, %conv234
  %div236 = fdiv double %mul235, 2.550000e+02
  %102 = load i32, i32* %layer_mode, align 4
  %call237 = call i32 @gimp_layer_new(i32 %96, i8* %97, i32 %98, i32 %99, i32 %100, double %div236, i32 %102)
  store i32 %call237, i32* %layer_ID, align 4
  %103 = load i32, i32* %layer_ID, align 4
  %cmp238 = icmp eq i32 %103, -1
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end.232
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.241:                                       ; preds = %if.end.232
  %104 = load i8*, i8** %name, align 8
  call void @g_free(i8* %104)
  %105 = load i32, i32* %image_ID.addr, align 4
  %106 = load i32, i32* %layer_ID, align 4
  %call242 = call i32 @gimp_image_insert_layer(i32 %105, i32 %106, i32 -1, i32 -1)
  %arrayidx243 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 0
  %107 = load i32, i32* %arrayidx243, align 4
  %cmp244 = icmp ne i32 %107, 0
  br i1 %cmp244, label %if.then.250, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %if.end.241
  %arrayidx247 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 1
  %108 = load i32, i32* %arrayidx247, align 4
  %cmp248 = icmp ne i32 %108, 0
  br i1 %cmp248, label %if.then.250, label %if.end.254

if.then.250:                                      ; preds = %lor.lhs.false.246, %if.end.241
  %109 = load i32, i32* %layer_ID, align 4
  %arrayidx251 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 0
  %110 = load i32, i32* %arrayidx251, align 4
  %arrayidx252 = getelementptr inbounds [4 x i32], [4 x i32]* %saved_image_rect, i32 0, i64 1
  %111 = load i32, i32* %arrayidx252, align 4
  %call253 = call i32 @gimp_layer_set_offsets(i32 %109, i32 %110, i32 %111)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.250, %lor.lhs.false.246
  %112 = load i8, i8* %visibility, align 1
  %tobool255 = icmp ne i8 %112, 0
  br i1 %tobool255, label %if.end.258, label %if.then.256

if.then.256:                                      ; preds = %if.end.254
  %113 = load i32, i32* %layer_ID, align 4
  %call257 = call i32 @gimp_item_set_visible(i32 %113, i32 0)
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.256, %if.end.254
  %114 = load i32, i32* %layer_ID, align 4
  %115 = load i8, i8* %transparency_protected, align 1
  %conv259 = zext i8 %115 to i32
  %call260 = call i32 @gimp_layer_set_lock_alpha(i32 %114, i32 %conv259)
  %116 = load i16, i16* @psp_ver_major, align 2
  %conv261 = zext i16 %116 to i32
  %cmp262 = icmp slt i32 %conv261, 4
  br i1 %cmp262, label %if.then.264, label %if.end.272

if.then.264:                                      ; preds = %if.end.258
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %118 = load i64, i64* %sub_block_start, align 8
  %119 = load i32, i32* %sub_init_len, align 4
  %conv265 = zext i32 %119 to i64
  %add266 = add nsw i64 %118, %conv265
  %call267 = call i32 @try_fseek(%struct._IO_FILE* %117, i64 %add266, i32 0)
  %cmp268 = icmp slt i32 %call267, 0
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.then.264
  store i32 -1, i32* %retval
  br label %return

if.end.271:                                       ; preds = %if.then.264
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.258
  %120 = load i32, i32* %height, align 4
  %121 = load i32, i32* %width, align 4
  %mul273 = mul nsw i32 %120, %121
  %122 = load i32, i32* %bytespp, align 4
  %mul274 = mul nsw i32 %mul273, %122
  %conv275 = sext i32 %mul274 to i64
  %call276 = call noalias i8* @g_malloc0(i64 %conv275)
  store i8* %call276, i8** %pixel, align 8
  %123 = load i32, i32* %null_layer, align 4
  %tobool277 = icmp ne i32 %123, 0
  br i1 %tobool277, label %if.then.278, label %if.else.279

if.then.278:                                      ; preds = %if.end.272
  store i8** null, i8*** %pixels, align 8
  br label %if.end.289

if.else.279:                                      ; preds = %if.end.272
  %124 = load i32, i32* %height, align 4
  %conv280 = sext i32 %124 to i64
  %call281 = call noalias i8* @g_malloc_n(i64 %conv280, i64 8)
  %125 = bitcast i8* %call281 to i8**
  store i8** %125, i8*** %pixels, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.279
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %height, align 4
  %cmp282 = icmp slt i32 %126, %127
  br i1 %cmp282, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %128 = load i8*, i8** %pixel, align 8
  %129 = load i32, i32* %width, align 4
  %130 = load i32, i32* %bytespp, align 4
  %mul284 = mul nsw i32 %129, %130
  %131 = load i32, i32* %i, align 4
  %mul285 = mul nsw i32 %mul284, %131
  %idx.ext = sext i32 %mul285 to i64
  %add.ptr = getelementptr inbounds i8, i8* %128, i64 %idx.ext
  %132 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %132 to i64
  %133 = load i8**, i8*** %pixels, align 8
  %arrayidx287 = getelementptr inbounds i8*, i8** %133, i64 %idxprom286
  store i8* %add.ptr, i8** %arrayidx287, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %134 = load i32, i32* %i, align 4
  %inc288 = add nsw i32 %134, 1
  store i32 %inc288, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.289

if.end.289:                                       ; preds = %for.end, %if.then.278
  %135 = load i32, i32* %layer_ID, align 4
  %call290 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %135)
  store %struct._GimpDrawable* %call290, %struct._GimpDrawable** %drawable, align 8
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %137 = load i32, i32* %width, align 4
  %138 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %136, i32 0, i32 0, i32 %137, i32 %138, i32 1, i32 0)
  %call291 = call i32 @gimp_tile_height() #7
  %139 = load i32, i32* %width, align 4
  %mul292 = mul i32 %call291, %139
  %140 = load i32, i32* %bytespp, align 4
  %mul293 = mul i32 %mul292, %140
  %conv294 = zext i32 %mul293 to i64
  call void @gimp_tile_cache_size(i64 %conv294)
  br label %while.cond.295

while.cond.295:                                   ; preds = %if.end.383, %if.end.289
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call296 = call i64 @ftell(%struct._IO_FILE* %141)
  %142 = load i64, i64* %sub_block_start, align 8
  %143 = load i32, i32* %sub_total_len, align 4
  %conv297 = zext i32 %143 to i64
  %add298 = add nsw i64 %142, %conv297
  %cmp299 = icmp slt i64 %call296, %add298
  br i1 %cmp299, label %while.body.301, label %while.end

while.body.301:                                   ; preds = %while.cond.295
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call302 = call i32 @read_block_header(%struct._IO_FILE* %144, i32* %channel_init_len, i32* %channel_total_len)
  store i32 %call302, i32* %sub_id, align 4
  %145 = load i32, i32* %sub_id, align 4
  %cmp303 = icmp eq i32 %145, -1
  br i1 %cmp303, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %while.body.301
  %146 = load i32, i32* %image_ID.addr, align 4
  %call306 = call i32 @gimp_image_delete(i32 %146)
  store i32 -1, i32* %retval
  br label %return

if.end.307:                                       ; preds = %while.body.301
  %147 = load i32, i32* %sub_id, align 4
  %cmp308 = icmp ne i32 %147, 5
  br i1 %cmp308, label %if.then.310, label %if.end.312

if.then.310:                                      ; preds = %if.end.307
  %148 = load i32, i32* %sub_id, align 4
  %call311 = call i8* @block_name(i32 %148)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i32 0, i32 0), i8* %call311)
  store i32 -1, i32* %retval
  br label %return

if.end.312:                                       ; preds = %if.end.307
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call313 = call i64 @ftell(%struct._IO_FILE* %149)
  store i64 %call313, i64* %channel_start, align 8
  %150 = load i16, i16* @psp_ver_major, align 2
  %conv314 = zext i16 %150 to i32
  %cmp315 = icmp eq i32 %conv314, 4
  br i1 %cmp315, label %if.then.317, label %if.end.319

if.then.317:                                      ; preds = %if.end.312
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call318 = call i32 @fseek(%struct._IO_FILE* %151, i64 4, i32 1)
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.317, %if.end.312
  %152 = bitcast i32* %compressed_len to i8*
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call320 = call i64 @fread(i8* %152, i64 4, i64 1, %struct._IO_FILE* %153)
  %cmp321 = icmp ult i64 %call320, 1
  br i1 %cmp321, label %if.then.335, label %lor.lhs.false.323

lor.lhs.false.323:                                ; preds = %if.end.319
  %154 = bitcast i32* %uncompressed_len to i8*
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call324 = call i64 @fread(i8* %154, i64 4, i64 1, %struct._IO_FILE* %155)
  %cmp325 = icmp ult i64 %call324, 1
  br i1 %cmp325, label %if.then.335, label %lor.lhs.false.327

lor.lhs.false.327:                                ; preds = %lor.lhs.false.323
  %156 = bitcast i16* %bitmap_type to i8*
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call328 = call i64 @fread(i8* %156, i64 2, i64 1, %struct._IO_FILE* %157)
  %cmp329 = icmp ult i64 %call328, 1
  br i1 %cmp329, label %if.then.335, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %lor.lhs.false.327
  %158 = bitcast i16* %channel_type to i8*
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call332 = call i64 @fread(i8* %158, i64 2, i64 1, %struct._IO_FILE* %159)
  %cmp333 = icmp ult i64 %call332, 1
  br i1 %cmp333, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %lor.lhs.false.331, %lor.lhs.false.327, %lor.lhs.false.323, %if.end.319
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.336:                                       ; preds = %lor.lhs.false.331
  %160 = load i32, i32* %compressed_len, align 4
  store i32 %160, i32* %compressed_len, align 4
  %161 = load i32, i32* %uncompressed_len, align 4
  store i32 %161, i32* %uncompressed_len, align 4
  %162 = load i16, i16* %bitmap_type, align 2
  store i16 %162, i16* %bitmap_type, align 2
  %163 = load i16, i16* %channel_type, align 2
  store i16 %163, i16* %channel_type, align 2
  %164 = load i16, i16* %bitmap_type, align 2
  %conv337 = zext i16 %164 to i32
  %cmp338 = icmp sgt i32 %conv337, 2
  br i1 %cmp338, label %if.then.340, label %if.end.342

if.then.340:                                      ; preds = %if.end.336
  %165 = load i16, i16* %bitmap_type, align 2
  %conv341 = zext i16 %165 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.55, i32 0, i32 0), i32 %conv341)
  store i32 -1, i32* %retval
  br label %return

if.end.342:                                       ; preds = %if.end.336
  %166 = load i16, i16* %channel_type, align 2
  %conv343 = zext i16 %166 to i32
  %cmp344 = icmp sgt i32 %conv343, 3
  br i1 %cmp344, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %if.end.342
  %167 = load i16, i16* %channel_type, align 2
  %conv347 = zext i16 %167 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.56, i32 0, i32 0), i32 %conv347)
  store i32 -1, i32* %retval
  br label %return

if.end.348:                                       ; preds = %if.end.342
  %168 = load i16, i16* %bitmap_type, align 2
  %conv349 = zext i16 %168 to i32
  %cmp350 = icmp eq i32 %conv349, 1
  br i1 %cmp350, label %if.then.352, label %if.else.353

if.then.352:                                      ; preds = %if.end.348
  store i32 3, i32* %offset, align 4
  br label %if.end.356

if.else.353:                                      ; preds = %if.end.348
  %169 = load i16, i16* %channel_type, align 2
  %conv354 = zext i16 %169 to i32
  %sub355 = sub nsw i32 %conv354, 1
  store i32 %sub355, i32* %offset, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.else.353, %if.then.352
  %170 = load i16, i16* @psp_ver_major, align 2
  %conv357 = zext i16 %170 to i32
  %cmp358 = icmp slt i32 %conv357, 4
  br i1 %cmp358, label %if.then.360, label %if.end.368

if.then.360:                                      ; preds = %if.end.356
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %172 = load i64, i64* %channel_start, align 8
  %173 = load i32, i32* %channel_init_len, align 4
  %conv361 = zext i32 %173 to i64
  %add362 = add nsw i64 %172, %conv361
  %call363 = call i32 @try_fseek(%struct._IO_FILE* %171, i64 %add362, i32 0)
  %cmp364 = icmp slt i32 %call363, 0
  br i1 %cmp364, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.then.360
  store i32 -1, i32* %retval
  br label %return

if.end.367:                                       ; preds = %if.then.360
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.end.356
  %174 = load i32, i32* %null_layer, align 4
  %tobool369 = icmp ne i32 %174, 0
  br i1 %tobool369, label %if.end.376, label %if.then.370

if.then.370:                                      ; preds = %if.end.368
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %176 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %177 = load i8**, i8*** %pixels, align 8
  %178 = load i32, i32* %bytespp, align 4
  %179 = load i32, i32* %offset, align 4
  %180 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %181 = load i32, i32* %compressed_len, align 4
  %call371 = call i32 @read_channel_data(%struct._IO_FILE* %175, %struct.PSPimage* %176, i8** %177, i32 %178, i32 %179, %struct._GimpDrawable* %180, i32 %181)
  %cmp372 = icmp eq i32 %call371, -1
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.then.370
  store i32 -1, i32* %retval
  br label %return

if.end.375:                                       ; preds = %if.then.370
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.end.368
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %183 = load i64, i64* %channel_start, align 8
  %184 = load i32, i32* %channel_total_len, align 4
  %conv377 = zext i32 %184 to i64
  %add378 = add nsw i64 %183, %conv377
  %call379 = call i32 @try_fseek(%struct._IO_FILE* %182, i64 %add378, i32 0)
  %cmp380 = icmp slt i32 %call379, 0
  br i1 %cmp380, label %if.then.382, label %if.end.383

if.then.382:                                      ; preds = %if.end.376
  store i32 -1, i32* %retval
  br label %return

if.end.383:                                       ; preds = %if.end.376
  br label %while.cond.295

while.end:                                        ; preds = %while.cond.295
  %185 = load i8*, i8** %pixel, align 8
  %186 = load i32, i32* %width, align 4
  %187 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %185, i32 0, i32 0, i32 %186, i32 %187)
  %188 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %188)
  %189 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %189)
  %190 = load i8**, i8*** %pixels, align 8
  %191 = bitcast i8** %190 to i8*
  call void @g_free(i8* %191)
  %192 = load i8*, i8** %pixel, align 8
  call void @g_free(i8* %192)
  br label %while.cond

while.end.384:                                    ; preds = %while.cond
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %194 = load i64, i64* %block_start, align 8
  %195 = load i32, i32* %total_len.addr, align 4
  %conv385 = zext i32 %195 to i64
  %add386 = add nsw i64 %194, %conv385
  %call387 = call i32 @try_fseek(%struct._IO_FILE* %193, i64 %add386, i32 0)
  %cmp388 = icmp slt i32 %call387, 0
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %while.end.384
  store i32 -1, i32* %retval
  br label %return

if.end.391:                                       ; preds = %while.end.384
  %196 = load i32, i32* %layer_ID, align 4
  store i32 %196, i32* %retval
  br label %return

return:                                           ; preds = %if.end.391, %if.then.390, %if.then.382, %if.then.374, %if.then.366, %if.then.346, %if.then.340, %if.then.335, %if.then.310, %if.then.305, %if.then.270, %if.then.240, %if.then.202, %if.then.163, %if.then.96, %if.then.8, %if.then
  %197 = load i32, i32* %retval
  ret i32 %197
}

; Function Attrs: nounwind uwtable
define internal i32 @read_tube_block(%struct._IO_FILE* %f, i32 %image_ID, i32 %total_len, %struct.PSPimage* %ia) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %total_len.addr = alloca i32, align 4
  %ia.addr = alloca %struct.PSPimage*, align 8
  %version = alloca i16, align 2
  %name = alloca [514 x i8], align 16
  %step_size = alloca i32, align 4
  %column_count = alloca i32, align 4
  %row_count = alloca i32, align 4
  %cell_count = alloca i32, align 4
  %placement_mode = alloca i32, align 4
  %selection_mode = alloca i32, align 4
  %i = alloca i32, align 4
  %params = alloca %struct._GimpPixPipeParams, align 8
  %pipe_parasite = alloca %struct._GimpParasite*, align 8
  %parasite_text = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %total_len, i32* %total_len.addr, align 4
  store %struct.PSPimage* %ia, %struct.PSPimage** %ia.addr, align 8
  call void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams* %params)
  %0 = bitcast i16* %version to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %0, i64 2, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ult i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [514 x i8], [514 x i8]* %name, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 513, i64 1, %struct._IO_FILE* %2)
  %cmp2 = icmp ult i64 %call1, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = bitcast i32* %step_size to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call i64 @fread(i8* %3, i64 4, i64 1, %struct._IO_FILE* %4)
  %cmp5 = icmp ult i64 %call4, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %5 = bitcast i32* %column_count to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call7 = call i64 @fread(i8* %5, i64 4, i64 1, %struct._IO_FILE* %6)
  %cmp8 = icmp ult i64 %call7, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %7 = bitcast i32* %row_count to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call10 = call i64 @fread(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  %cmp11 = icmp ult i64 %call10, 1
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %9 = bitcast i32* %cell_count to i8*
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call13 = call i64 @fread(i8* %9, i64 4, i64 1, %struct._IO_FILE* %10)
  %cmp14 = icmp ult i64 %call13, 1
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %11 = bitcast i32* %placement_mode to i8*
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call16 = call i64 @fread(i8* %11, i64 4, i64 1, %struct._IO_FILE* %12)
  %cmp17 = icmp ult i64 %call16, 1
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %13 = bitcast i32* %selection_mode to i8*
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call19 = call i64 @fread(i8* %13, i64 4, i64 1, %struct._IO_FILE* %14)
  %cmp20 = icmp ult i64 %call19, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.18
  %arrayidx = getelementptr inbounds [514 x i8], [514 x i8]* %name, i32 0, i64 513
  store i8 0, i8* %arrayidx, align 1
  %15 = load i16, i16* %version, align 2
  store i16 %15, i16* %version, align 2
  %16 = load i32, i32* %step_size, align 4
  %step = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 0
  store i32 %16, i32* %step, align 4
  %17 = load i32, i32* %column_count, align 4
  %cols = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 3
  store i32 %17, i32* %cols, align 4
  %18 = load i32, i32* %row_count, align 4
  %rows = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 4
  store i32 %18, i32* %rows, align 4
  %19 = load i32, i32* %cell_count, align 4
  %ncells = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 1
  store i32 %19, i32* %ncells, align 4
  %20 = load i32, i32* %placement_mode, align 4
  store i32 %20, i32* %placement_mode, align 4
  %21 = load i32, i32* %selection_mode, align 4
  store i32 %21, i32* %selection_mode, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, i32* %i, align 4
  %cols21 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 3
  %23 = load i32, i32* %cols21, align 4
  %cmp22 = icmp slt i32 %22, %23
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %image_ID.addr, align 4
  %25 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %width = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %25, i32 0, i32 0
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %i, align 4
  %mul = mul i32 %26, %27
  %cols23 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 3
  %28 = load i32, i32* %cols23, align 4
  %div = udiv i32 %mul, %28
  %call24 = call i32 @gimp_image_add_vguide(i32 %24, i32 %div)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.end
  %30 = load i32, i32* %i, align 4
  %rows26 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 4
  %31 = load i32, i32* %rows26, align 4
  %cmp27 = icmp slt i32 %30, %31
  br i1 %cmp27, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.25
  %32 = load i32, i32* %image_ID.addr, align 4
  %33 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %height = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %33, i32 0, i32 1
  %34 = load i32, i32* %height, align 4
  %35 = load i32, i32* %i, align 4
  %mul29 = mul i32 %34, %35
  %rows30 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 4
  %36 = load i32, i32* %rows30, align 4
  %div31 = udiv i32 %mul29, %36
  %call32 = call i32 @gimp_image_add_hguide(i32 %32, i32 %div31)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %37 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %37, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  %dim = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 2
  store i32 1, i32* %dim, align 4
  %38 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %width36 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %38, i32 0, i32 0
  %39 = load i32, i32* %width36, align 4
  %cols37 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 3
  %40 = load i32, i32* %cols37, align 4
  %div38 = udiv i32 %39, %40
  %cellwidth = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 5
  store i32 %div38, i32* %cellwidth, align 4
  %41 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %height39 = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %41, i32 0, i32 1
  %42 = load i32, i32* %height39, align 4
  %rows40 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 4
  %43 = load i32, i32* %rows40, align 4
  %div41 = udiv i32 %42, %43
  %cellheight = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 6
  store i32 %div41, i32* %cellheight, align 4
  %44 = load i32, i32* %placement_mode, align 4
  %cmp42 = icmp eq i32 %44, 0
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.35
  br label %cond.end

cond.false:                                       ; preds = %for.end.35
  %45 = load i32, i32* %placement_mode, align 4
  %cmp43 = icmp eq i32 %45, 1
  %cond = select i1 %cmp43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond44 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %placement = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 7
  store i8* %cond44, i8** %placement, align 8
  %ncells45 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 1
  %46 = load i32, i32* %ncells45, align 4
  %rank = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 9
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %rank, i32 0, i64 0
  store i32 %46, i32* %arrayidx46, align 4
  %47 = load i32, i32* %selection_mode, align 4
  %cmp47 = icmp eq i32 %47, 0
  br i1 %cmp47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.end
  br label %cond.end.67

cond.false.49:                                    ; preds = %cond.end
  %48 = load i32, i32* %selection_mode, align 4
  %cmp50 = icmp eq i32 %48, 1
  br i1 %cmp50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.false.49
  br label %cond.end.65

cond.false.52:                                    ; preds = %cond.false.49
  %49 = load i32, i32* %selection_mode, align 4
  %cmp53 = icmp eq i32 %49, 2
  br i1 %cmp53, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false.52
  br label %cond.end.63

cond.false.55:                                    ; preds = %cond.false.52
  %50 = load i32, i32* %selection_mode, align 4
  %cmp56 = icmp eq i32 %50, 3
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.55
  br label %cond.end.61

cond.false.58:                                    ; preds = %cond.false.55
  %51 = load i32, i32* %selection_mode, align 4
  %cmp59 = icmp eq i32 %51, 4
  %cond60 = select i1 %cmp59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0)
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.true.57
  %cond62 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), %cond.true.57 ], [ %cond60, %cond.false.58 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.54
  %cond64 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), %cond.true.54 ], [ %cond62, %cond.end.61 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %cond.true.51
  %cond66 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), %cond.true.51 ], [ %cond64, %cond.end.63 ]
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.end.65, %cond.true.48
  %cond68 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), %cond.true.48 ], [ %cond66, %cond.end.65 ]
  %selection = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx69 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection, i32 0, i64 0
  store i8* %cond68, i8** %arrayidx69, align 8
  %call70 = call noalias i8* @gimp_pixpipe_params_build(%struct._GimpPixPipeParams* %params)
  store i8* %call70, i8** %parasite_text, align 8
  %52 = load i8*, i8** %parasite_text, align 8
  %call71 = call i64 @strlen(i8* %52) #8
  %add = add i64 %call71, 1
  %conv = trunc i64 %add to i32
  %53 = load i8*, i8** %parasite_text, align 8
  %call72 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0), i32 1, i32 %conv, i8* %53)
  store %struct._GimpParasite* %call72, %struct._GimpParasite** %pipe_parasite, align 8
  %54 = load i32, i32* %image_ID.addr, align 4
  %55 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  %call73 = call i32 @gimp_image_attach_parasite(i32 %54, %struct._GimpParasite* %55)
  %56 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %56)
  %57 = load i8*, i8** %parasite_text, align 8
  call void @g_free(i8* %57)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.67, %if.then
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i8* @block_name(i32 %id) #0 {
entry:
  %retval = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %id.addr, align 4
  %cmp1 = icmp sle i32 %1, 18
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [19 x i8*], [19 x i8*]* @block_name.block_names, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** @block_name.err_name, align 8
  call void @g_free(i8* %4)
  %5 = load i32, i32* %id.addr, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i32 %5)
  store i8* %call, i8** @block_name.err_name, align 8
  %6 = load i8*, i8** @block_name.err_name, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i32 @try_fseek(%struct._IO_FILE* %f, i64 %pos, i32 %whence) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %pos.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load i64, i64* %pos.addr, align 8
  %2 = load i32, i32* %whence.addr, align 4
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %1, i32 %2)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call1, align 4
  %call2 = call i8* @g_strerror(i32 %3) #7
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i32 0, i32 0), i8* %call2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call3 = call i32 @fclose(%struct._IO_FILE* %4)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GString* @g_string_new(i8*) #1

declare noalias i8* @g_malloc(i64) #1

declare void @g_free(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @swab_rect(i32* %rect) #6 {
entry:
  %rect.addr = alloca i32*, align 8
  store i32* %rect, i32** %rect.addr, align 8
  %0 = load i32*, i32** %rect.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %rect.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  store i32 %1, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %rect.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32*, i32** %rect.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %4, i32* %arrayidx3, align 4
  %6 = load i32*, i32** %rect.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 2
  %7 = load i32, i32* %arrayidx4, align 4
  %8 = load i32*, i32** %rect.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %7, i32* %arrayidx5, align 4
  %9 = load i32*, i32** %rect.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 3
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32*, i32** %rect.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %10, i32* %arrayidx7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_mode_from_psp_blend_mode(i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 255, label %sw.bb.17
    i32 17, label %sw.bb.18
    i32 18, label %sw.bb.19
    i32 19, label %sw.bb.20
    i32 20, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 13, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 14, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 18, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 19, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i32 16, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i8* @blend_mode_name(i32 %mode) #0 {
entry:
  %retval = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp uge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ule i32 %1, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [17 x i8*], [17 x i8*]* @blend_mode_name.blend_mode_names, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** @blend_mode_name.err_name, align 8
  call void @g_free(i8* %4)
  %5 = load i32, i32* %mode.addr, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0), i32 %5)
  store i8* %call, i8** @blend_mode_name.err_name, align 8
  %6 = load i8*, i8** @blend_mode_name.err_name, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare i32 @gimp_item_set_visible(i32, i32) #1

declare i32 @gimp_layer_set_lock_alpha(i32, i32) #1

declare noalias i8* @g_malloc0(i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_tile_cache_size(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

; Function Attrs: nounwind uwtable
define internal i32 @read_channel_data(%struct._IO_FILE* %f, %struct.PSPimage* %ia, i8** %pixels, i32 %bytespp, i32 %offset, %struct._GimpDrawable* %drawable, i32 %compressed_len) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %ia.addr = alloca %struct.PSPimage*, align 8
  %pixels.addr = alloca i8**, align 8
  %bytespp.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %compressed_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %npixels = alloca i32, align 4
  %buf = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %runcount = alloca i8, align 1
  %byte = alloca i8, align 1
  %zstream = alloca %struct.z_stream_s, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %q49 = alloca i8*, align 8
  %endq = alloca i8*, align 8
  %p93 = alloca i8*, align 8
  %p135 = alloca i8*, align 8
  %q136 = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.PSPimage* %ia, %struct.PSPimage** %ia.addr, align 8
  store i8** %pixels, i8*** %pixels.addr, align 8
  store i32 %bytespp, i32* %bytespp.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %compressed_len, i32* %compressed_len.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height2, align 4
  store i32 %3, i32* %height, align 4
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %npixels, align 4
  store i8* null, i8** %buf2, align 8
  %6 = load %struct.PSPimage*, %struct.PSPimage** %ia.addr, align 8
  %compression = getelementptr inbounds %struct.PSPimage, %struct.PSPimage* %6, i32 0, i32 4
  %7 = load i16, i16* %compression, align 2
  %conv = zext i16 %7 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.48
    i32 2, label %sw.bb.106
  ]

sw.bb:                                            ; preds = %entry
  %8 = load i32, i32* %bytespp.addr, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else.17

if.then:                                          ; preds = %sw.bb
  %9 = load i32, i32* %width, align 4
  %rem = srem i32 %9, 4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load i8**, i8*** %pixels.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx, align 8
  %12 = load i32, i32* %height, align 4
  %13 = load i32, i32* %width, align 4
  %mul7 = mul nsw i32 %12, %13
  %conv8 = sext i32 %mul7 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fread(i8* %11, i64 %conv8, i64 1, %struct._IO_FILE* %14)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %height, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %y, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %pixels.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx11, align 8
  %20 = load i32, i32* %width, align 4
  %conv12 = sext i32 %20 to i64
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call13 = call i64 @fread(i8* %19, i64 %conv12, i64 1, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %23 = load i32, i32* %width, align 4
  %rem14 = srem i32 %23, 4
  %sub = sub nsw i32 4, %rem14
  %conv15 = sext i32 %sub to i64
  %call16 = call i32 @fseek(%struct._IO_FILE* %22, i64 %conv15, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %y, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.6
  br label %if.end.47

if.else.17:                                       ; preds = %sw.bb
  %25 = load i32, i32* %width, align 4
  %conv18 = sext i32 %25 to i64
  %call19 = call noalias i8* @g_malloc(i64 %conv18)
  store i8* %call19, i8** %buf, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.44, %if.else.17
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %height, align 4
  %cmp21 = icmp slt i32 %26, %27
  br i1 %cmp21, label %for.body.23, label %for.end.46

for.body.23:                                      ; preds = %for.cond.20
  %28 = load i8*, i8** %buf, align 8
  %29 = load i32, i32* %width, align 4
  %conv24 = sext i32 %29 to i64
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call25 = call i64 @fread(i8* %28, i64 %conv24, i64 1, %struct._IO_FILE* %30)
  %31 = load i32, i32* %width, align 4
  %rem26 = srem i32 %31, 4
  %tobool = icmp ne i32 %rem26, 0
  br i1 %tobool, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %for.body.23
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %33 = load i32, i32* %width, align 4
  %rem28 = srem i32 %33, 4
  %sub29 = sub nsw i32 4, %rem28
  %conv30 = sext i32 %sub29 to i64
  %call31 = call i32 @fseek(%struct._IO_FILE* %32, i64 %conv30, i32 1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %for.body.23
  %34 = load i8*, i8** %buf, align 8
  store i8* %34, i8** %p, align 8
  %35 = load i32, i32* %y, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load i8**, i8*** %pixels.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %36, i64 %idxprom33
  %37 = load i8*, i8** %arrayidx34, align 8
  %38 = load i32, i32* %offset.addr, align 4
  %idx.ext = zext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %if.end.32
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %width, align 4
  %cmp36 = icmp slt i32 %39, %40
  br i1 %cmp36, label %for.body.38, label %for.end.43

for.body.38:                                      ; preds = %for.cond.35
  %41 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %q, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %bytespp.addr, align 4
  %45 = load i8*, i8** %q, align 8
  %idx.ext39 = zext i32 %44 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %45, i64 %idx.ext39
  store i8* %add.ptr40, i8** %q, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.38
  %46 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.35

for.end.43:                                       ; preds = %for.cond.35
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %47 = load i32, i32* %y, align 4
  %inc45 = add nsw i32 %47, 1
  store i32 %inc45, i32* %y, align 4
  br label %for.cond.20

for.end.46:                                       ; preds = %for.cond.20
  %48 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %48)
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %if.end
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %49 = load i8**, i8*** %pixels.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx50, align 8
  %51 = load i32, i32* %offset.addr, align 4
  %idx.ext51 = zext i32 %51 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %50, i64 %idx.ext51
  store i8* %add.ptr52, i8** %q49, align 8
  %52 = load i8*, i8** %q49, align 8
  %53 = load i32, i32* %npixels, align 4
  %54 = load i32, i32* %bytespp.addr, align 4
  %mul53 = mul i32 %53, %54
  %idx.ext54 = zext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %52, i64 %idx.ext54
  store i8* %add.ptr55, i8** %endq, align 8
  %call56 = call noalias i8* @g_malloc(i64 127)
  store i8* %call56, i8** %buf, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.105, %sw.bb.48
  %55 = load i8*, i8** %q49, align 8
  %56 = load i8*, i8** %endq, align 8
  %cmp57 = icmp ult i8* %55, %56
  br i1 %cmp57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call59 = call i64 @fread(i8* %runcount, i64 1, i64 1, %struct._IO_FILE* %57)
  %58 = load i8, i8* %runcount, align 1
  %conv60 = zext i8 %58 to i32
  %cmp61 = icmp sgt i32 %conv60, 128
  br i1 %cmp61, label %if.then.63, label %if.else.70

if.then.63:                                       ; preds = %while.body
  %59 = load i8, i8* %runcount, align 1
  %conv64 = zext i8 %59 to i32
  %sub65 = sub nsw i32 %conv64, 128
  %conv66 = trunc i32 %sub65 to i8
  store i8 %conv66, i8* %runcount, align 1
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call67 = call i64 @fread(i8* %byte, i64 1, i64 1, %struct._IO_FILE* %60)
  %61 = load i8*, i8** %buf, align 8
  %62 = load i8, i8* %byte, align 1
  %conv68 = zext i8 %62 to i32
  %63 = trunc i32 %conv68 to i8
  %64 = load i8, i8* %runcount, align 1
  %conv69 = zext i8 %64 to i64
  call void @llvm.memset.p0i8.i64(i8* %61, i8 %63, i64 %conv69, i32 1, i1 false)
  br label %if.end.73

if.else.70:                                       ; preds = %while.body
  %65 = load i8*, i8** %buf, align 8
  %66 = load i8, i8* %runcount, align 1
  %conv71 = zext i8 %66 to i64
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call72 = call i64 @fread(i8* %65, i64 %conv71, i64 1, %struct._IO_FILE* %67)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.63
  %68 = load i8, i8* %runcount, align 1
  %conv74 = zext i8 %68 to i64
  %69 = load i8*, i8** %endq, align 8
  %70 = load i8*, i8** %q49, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %71 = load i32, i32* %bytespp.addr, align 4
  %conv75 = zext i32 %71 to i64
  %div = sdiv i64 %sub.ptr.sub, %conv75
  %cmp76 = icmp slt i64 %conv74, %div
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.73
  %72 = load i8, i8* %runcount, align 1
  %conv78 = zext i8 %72 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end.73
  %73 = load i8*, i8** %endq, align 8
  %74 = load i8*, i8** %q49, align 8
  %sub.ptr.lhs.cast79 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast80 = ptrtoint i8* %74 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %75 = load i32, i32* %bytespp.addr, align 4
  %conv82 = zext i32 %75 to i64
  %div83 = sdiv i64 %sub.ptr.sub81, %conv82
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv78, %cond.true ], [ %div83, %cond.false ]
  %conv84 = trunc i64 %cond to i8
  store i8 %conv84, i8* %runcount, align 1
  %76 = load i32, i32* %bytespp.addr, align 4
  %cmp85 = icmp eq i32 %76, 1
  br i1 %cmp85, label %if.then.87, label %if.else.92

if.then.87:                                       ; preds = %cond.end
  %77 = load i8*, i8** %q49, align 8
  %78 = load i8*, i8** %buf, align 8
  %79 = load i8, i8* %runcount, align 1
  %conv88 = zext i8 %79 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %conv88, i32 1, i1 false)
  %80 = load i8, i8* %runcount, align 1
  %conv89 = zext i8 %80 to i32
  %81 = load i8*, i8** %q49, align 8
  %idx.ext90 = sext i32 %conv89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %81, i64 %idx.ext90
  store i8* %add.ptr91, i8** %q49, align 8
  br label %if.end.105

if.else.92:                                       ; preds = %cond.end
  %82 = load i8*, i8** %buf, align 8
  store i8* %82, i8** %p93, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.102, %if.else.92
  %83 = load i32, i32* %i, align 4
  %84 = load i8, i8* %runcount, align 1
  %conv95 = zext i8 %84 to i32
  %cmp96 = icmp slt i32 %83, %conv95
  br i1 %cmp96, label %for.body.98, label %for.end.104

for.body.98:                                      ; preds = %for.cond.94
  %85 = load i8*, i8** %p93, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr99, i8** %p93, align 8
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %q49, align 8
  store i8 %86, i8* %87, align 1
  %88 = load i32, i32* %bytespp.addr, align 4
  %89 = load i8*, i8** %q49, align 8
  %idx.ext100 = zext i32 %88 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %89, i64 %idx.ext100
  store i8* %add.ptr101, i8** %q49, align 8
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.98
  %90 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %90, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.94

for.end.104:                                      ; preds = %for.cond.94
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %if.then.87
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %91 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %91)
  br label %sw.epilog

sw.bb.106:                                        ; preds = %entry
  %92 = load i32, i32* %compressed_len.addr, align 4
  %conv107 = zext i32 %92 to i64
  %call108 = call noalias i8* @g_malloc(i64 %conv107)
  store i8* %call108, i8** %buf, align 8
  %93 = load i8*, i8** %buf, align 8
  %94 = load i32, i32* %compressed_len.addr, align 4
  %conv109 = zext i32 %94 to i64
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call110 = call i64 @fread(i8* %93, i64 %conv109, i64 1, %struct._IO_FILE* %95)
  %96 = load i8*, i8** %buf, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 0
  store i8* %96, i8** %next_in, align 8
  %97 = load i32, i32* %compressed_len.addr, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 1
  store i32 %97, i32* %avail_in, align 4
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 8
  store i8* (i8*, i32, i32)* @psp_zalloc, i8* (i8*, i32, i32)** %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 9
  store void (i8*, i8*)* @psp_zfree, void (i8*, i8*)** %zfree, align 8
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %99 = bitcast %struct._IO_FILE* %98 to i8*
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 10
  store i8* %99, i8** %opaque, align 8
  %call111 = call i32 @inflateInit_(%struct.z_stream_s* %zstream, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 112)
  %cmp112 = icmp ne i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %sw.bb.106
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.115:                                       ; preds = %sw.bb.106
  %100 = load i32, i32* %bytespp.addr, align 4
  %cmp116 = icmp eq i32 %100, 1
  br i1 %cmp116, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.end.115
  %101 = load i8**, i8*** %pixels.addr, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %101, i64 0
  %102 = load i8*, i8** %arrayidx119, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 3
  store i8* %102, i8** %next_out, align 8
  br label %if.end.124

if.else.120:                                      ; preds = %if.end.115
  %103 = load i32, i32* %npixels, align 4
  %conv121 = sext i32 %103 to i64
  %call122 = call noalias i8* @g_malloc(i64 %conv121)
  store i8* %call122, i8** %buf2, align 8
  %104 = load i8*, i8** %buf2, align 8
  %next_out123 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 3
  store i8* %104, i8** %next_out123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.120, %if.then.118
  %105 = load i32, i32* %npixels, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zstream, i32 0, i32 4
  store i32 %105, i32* %avail_out, align 4
  %call125 = call i32 @inflate(%struct.z_stream_s* %zstream, i32 4)
  %cmp126 = icmp ne i32 %call125, 1
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.end.124
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0))
  %call129 = call i32 @inflateEnd(%struct.z_stream_s* %zstream)
  store i32 -1, i32* %retval
  br label %return

if.end.130:                                       ; preds = %if.end.124
  %call131 = call i32 @inflateEnd(%struct.z_stream_s* %zstream)
  %106 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %106)
  %107 = load i32, i32* %bytespp.addr, align 4
  %cmp132 = icmp ugt i32 %107, 1
  br i1 %cmp132, label %if.then.134, label %if.end.150

if.then.134:                                      ; preds = %if.end.130
  %108 = load i8*, i8** %buf2, align 8
  store i8* %108, i8** %p135, align 8
  %109 = load i8**, i8*** %pixels.addr, align 8
  %arrayidx137 = getelementptr inbounds i8*, i8** %109, i64 0
  %110 = load i8*, i8** %arrayidx137, align 8
  %111 = load i32, i32* %offset.addr, align 4
  %idx.ext138 = zext i32 %111 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %110, i64 %idx.ext138
  store i8* %add.ptr139, i8** %q136, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.147, %if.then.134
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* %npixels, align 4
  %cmp141 = icmp slt i32 %112, %113
  br i1 %cmp141, label %for.body.143, label %for.end.149

for.body.143:                                     ; preds = %for.cond.140
  %114 = load i8*, i8** %p135, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr144, i8** %p135, align 8
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %q136, align 8
  store i8 %115, i8* %116, align 1
  %117 = load i32, i32* %bytespp.addr, align 4
  %118 = load i8*, i8** %q136, align 8
  %idx.ext145 = zext i32 %117 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %118, i64 %idx.ext145
  store i8* %add.ptr146, i8** %q136, align 8
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.143
  %119 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %119, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond.140

for.end.149:                                      ; preds = %for.cond.140
  %120 = load i8*, i8** %buf2, align 8
  call void @g_free(i8* %120)
  br label %if.end.150

if.end.150:                                       ; preds = %for.end.149, %if.end.130
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.150, %while.end, %if.end.47
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.128, %if.then.114
  %121 = load i32, i32* %retval
  ret i32 %121
}

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i8* @psp_zalloc(i8* %opaque, i32 %items, i32 %size) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i8* %opaque, i8** %opaque.addr, align 8
  store i32 %items, i32* %items.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %items.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul i32 %0, %1
  %conv = zext i32 %mul to i64
  %call = call noalias i8* @g_malloc(i64 %conv)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @psp_zfree(i8* %opaque, i8* %ptr) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @g_free(i8* %0)
  ret void
}

declare i32 @inflateInit_(%struct.z_stream_s*, i8*, i32) #1

declare i32 @inflate(%struct.z_stream_s*, i32) #1

declare i32 @inflateEnd(%struct.z_stream_s*) #1

declare void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams*) #1

declare i32 @gimp_image_add_vguide(i32, i32) #1

declare i32 @gimp_image_add_hguide(i32, i32) #1

declare noalias i8* @gimp_pixpipe_params_build(%struct._GimpPixPipeParams*) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

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
