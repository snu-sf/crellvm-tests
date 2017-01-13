; ModuleID = './plug-ins/common/file-pnm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.PNMSaveVals = type { i32 }
%struct.struct_pnm_types = type { i8, i32, i32, i32, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* }
%struct._PNMScanner = type { i32, i8, i32, i8*, i32, i32, i32 }
%struct._PNMInfo = type { i32, i32, i32, i32, i32, [1 x %struct.__jmp_buf_tag], void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GError = type { i32, i32, i8* }
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
%struct._PNMRowInfo = type { i32, i8*, i32, i32, i8*, i8*, i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

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
@query.save_args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Specify non-zero for raw output, zero for ascii output\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"file-pnm-load\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Loads files in the PNM file format\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"This plug-in loads files in the various Netpbm portable file formats.\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Erik Nygren\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"PNM Image\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"image/x-portable-anymap\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"pnm,ppm,pgm,pbm\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"0,string,P1,0,string,P2,0,string,P3,0,string,P4,0,string,P5,0,string,P6\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"file-pnm-save\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Saves files in the PNM file format\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"PNM saving handles all image types without transparency.\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"PNM image\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"RGB, GRAY, INDEXED\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"file-pbm-save\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Saves files in the PBM file format\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"PBM saving produces mono images without transparency.\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Martin K Collins\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"PBM image\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"file-pgm-save\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"Saves files in the PGM file format\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"PGM saving produces grayscale images without transparency.\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"PGM image\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"file-ppm-save\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Saves files in the PPM file format\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"PPM saving handles RGB images without transparency.\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"PPM image\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"image/x-portable-bitmap\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"image/x-portable-graymap\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"image/x-portable-pixmap\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"file-pnm\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"PNM\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"PBM\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"PGM\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"PPM\00", align 1
@psvals = internal global %struct.PNMSaveVals { i32 1 }, align 4
@.str.56 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"Premature end of file.\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Invalid file.\00", align 1
@pnm_types = internal constant [7 x %struct.struct_pnm_types] [%struct.struct_pnm_types { i8 49, i32 0, i32 1, i32 1, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* @pnm_load_ascii }, %struct.struct_pnm_types { i8 50, i32 1, i32 1, i32 255, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* @pnm_load_ascii }, %struct.struct_pnm_types { i8 51, i32 3, i32 1, i32 255, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* @pnm_load_ascii }, %struct.struct_pnm_types { i8 52, i32 0, i32 0, i32 1, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* @pnm_load_rawpbm }, %struct.struct_pnm_types { i8 53, i32 1, i32 0, i32 255, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* @pnm_load_raw }, %struct.struct_pnm_types { i8 54, i32 3, i32 0, i32 255, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* @pnm_load_raw }, %struct.struct_pnm_types zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [32 x i8] c"File not in a supported format.\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.61 = private unnamed_addr constant [22 x i8] c"Invalid X resolution.\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"Image width is larger than GIMP can handle.\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Invalid Y resolution.\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"Image height is larger than GIMP can handle.\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"Unsupported maximum value.\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"Error reading file.\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Data formatting\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"Raw\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"Cannot save images with alpha channel.\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"P1\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"P2\0A\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"P3\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"PNM: Unknown drawable_type\0A\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"P4\0A\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"P6\0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"Images saved as PBM should be black/white\00", align 1
@.str.82 = private unnamed_addr constant [40 x i8] c"# CREATOR: GIMP PNM Filter Version 1.1\0A\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"%d %d\0A255\0A\00", align 1
@pnmsaverow_ascii_pbm.line_len = internal global i32 0, align 4
@.str.85 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.22, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  %call3 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0))
  %call4 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0))
  %call5 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0))
  %call6 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
  %call7 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
  %call8 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
  %call9 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
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
  %pbm = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %pbm, align 4
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i8* %call) #7
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0)) #7
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0)) #7
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #9
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
  br label %if.end.90

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #9
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.10
  %11 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #9
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0)) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %13 = load i8*, i8** %name.addr, align 8
  %call19 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0)) #9
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.88

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false, %if.else.10
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 1
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %15 = load i32, i32* %d_int3224, align 4
  store i32 %15, i32* %image_ID, align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 2
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_int3227 = bitcast %union._GimpParamData* %data26 to i32*
  %17 = load i32, i32* %d_int3227, align 4
  store i32 %17, i32* %drawable_ID, align 4
  %18 = load i32, i32* %run_mode, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.21, %if.then.21
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 0)
  %19 = load i8*, i8** %name.addr, align 8
  %call28 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #9
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %sw.bb
  %call31 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 7)
  store i32 %call31, i32* %export, align 4
  br label %if.end.46

if.else.32:                                       ; preds = %sw.bb
  %20 = load i8*, i8** %name.addr, align 8
  %call33 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #9
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.else.32
  %call36 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 8)
  store i32 %call36, i32* %export, align 4
  store i32 1, i32* %pbm, align 4
  br label %if.end.45

if.else.37:                                       ; preds = %if.else.32
  %21 = load i8*, i8** %name.addr, align 8
  %call38 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0)) #9
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.37
  %call41 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 2)
  store i32 %call41, i32* %export, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %if.else.37
  %call43 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 5)
  store i32 %call43, i32* %export, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.30
  %22 = load i32, i32* %export, align 4
  %cmp47 = icmp eq i32 %22, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.49:                                        ; preds = %if.end.46
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.49
  %23 = load i32, i32* %run_mode, align 4
  switch i32 %23, label %sw.default.68 [
    i32 0, label %sw.bb.50
    i32 1, label %sw.bb.55
    i32 2, label %sw.bb.66
  ]

sw.bb.50:                                         ; preds = %sw.epilog
  %24 = load i8*, i8** %name.addr, align 8
  %call51 = call i32 @gimp_procedural_db_get_data(i8* %24, i8* bitcast (%struct.PNMSaveVals* @psvals to i8*))
  %call52 = call i32 @save_dialog()
  %tobool = icmp ne i32 %call52, 0
  br i1 %tobool, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %sw.bb.50
  store i32 4, i32* %status, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %sw.bb.50
  br label %sw.epilog.69

sw.bb.55:                                         ; preds = %sw.epilog
  %25 = load i32, i32* %nparams.addr, align 4
  %cmp56 = icmp ne i32 %25, 6
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %sw.bb.55
  store i32 1, i32* %status, align 4
  br label %if.end.65

if.else.58:                                       ; preds = %sw.bb.55
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 5
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_int3261 = bitcast %union._GimpParamData* %data60 to i32*
  %27 = load i32, i32* %d_int3261, align 4
  %tobool62 = icmp ne i32 %27, 0
  %cond = select i1 %tobool62, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.PNMSaveVals, %struct.PNMSaveVals* @psvals, i32 0, i32 0), align 4
  %28 = load i8*, i8** %name.addr, align 8
  %call63 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #9
  %cmp64 = icmp eq i32 %call63, 0
  %conv = zext i1 %cmp64 to i32
  store i32 %conv, i32* %pbm, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.58, %if.then.57
  br label %sw.epilog.69

sw.bb.66:                                         ; preds = %sw.epilog
  %29 = load i8*, i8** %name.addr, align 8
  %call67 = call i32 @gimp_procedural_db_get_data(i8* %29, i8* bitcast (%struct.PNMSaveVals* @psvals to i8*))
  br label %sw.epilog.69

sw.default.68:                                    ; preds = %sw.epilog
  br label %sw.epilog.69

sw.epilog.69:                                     ; preds = %sw.default.68, %sw.bb.66, %if.end.65, %if.end.54
  %30 = load i32, i32* %status, align 4
  %cmp70 = icmp eq i32 %30, 3
  br i1 %cmp70, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %sw.epilog.69
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 3
  %data74 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx73, i32 0, i32 1
  %d_string75 = bitcast %union._GimpParamData* %data74 to i8**
  %32 = load i8*, i8** %d_string75, align 8
  %33 = load i32, i32* %image_ID, align 4
  %34 = load i32, i32* %drawable_ID, align 4
  %35 = load i32, i32* %pbm, align 4
  %call76 = call i32 @save_image(i8* %32, i32 %33, i32 %34, i32 %35, %struct._GError** %error)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.then.72
  %36 = load i8*, i8** %name.addr, align 8
  %call79 = call i32 @gimp_procedural_db_set_data(i8* %36, i8* bitcast (%struct.PNMSaveVals* @psvals to i8*), i32 4)
  br label %if.end.81

if.else.80:                                       ; preds = %if.then.72
  store i32 0, i32* %status, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.then.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %sw.epilog.69
  %37 = load i32, i32* %export, align 4
  %cmp83 = icmp eq i32 %37, 2
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.82
  %38 = load i32, i32* %image_ID, align 4
  %call86 = call i32 @gimp_image_delete(i32 %38)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.82
  br label %if.end.89

if.else.88:                                       ; preds = %lor.lhs.false.18
  store i32 1, i32* %status, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.end.87
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end
  %39 = load i32, i32* %status, align 4
  %cmp91 = icmp ne i32 %39, 3
  br i1 %cmp91, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %if.end.90
  %40 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool93 = icmp ne %struct._GError* %40, null
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %land.lhs.true
  %41 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %41, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %42 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %42, i32 0, i32 2
  %43 = load i8*, i8** %message, align 8
  store i8* %43, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %land.lhs.true, %if.end.90
  %44 = load i32, i32* %status, align 4
  store i32 %44, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.95, %if.then.48
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
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fd = alloca i32, align 4
  %buf = alloca [516 x i8], align 16
  %pnminfo = alloca %struct._PNMInfo*, align 8
  %scan = alloca %struct._PNMScanner*, align 8
  %ctr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store volatile i32 -1, i32* %image_ID, align 4
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
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i32 0, i32 0)) #7
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #8
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0)) #7
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %call11 = call noalias i8* @g_malloc_n(i64 1, i64 232)
  %7 = bitcast i8* %call11 to %struct._PNMInfo*
  store %struct._PNMInfo* %7, %struct._PNMInfo** %pnminfo, align 8
  store volatile %struct._PNMScanner* null, %struct._PNMScanner** %scan, align 8
  %8 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %8, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf, i32 0, i32 0
  %call12 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #10
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.end
  %9 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %tobool14 = icmp ne %struct._PNMScanner* %9, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %10 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  call void @pnmscanner_destroy(%struct._PNMScanner* %10)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  %11 = load i32, i32* %fd, align 4
  %call17 = call i32 @close(i32 %11)
  %12 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %13 = bitcast %struct._PNMInfo* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load volatile i32, i32* %image_ID, align 4
  %cmp18 = icmp ne i32 %14, -1
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %15 = load volatile i32, i32* %image_ID, align 4
  %call20 = call i32 @gimp_image_delete(i32 %15)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  %16 = load i32, i32* %fd, align 4
  %call23 = call %struct._PNMScanner* @pnmscanner_create(i32 %16)
  store volatile %struct._PNMScanner* %call23, %struct._PNMScanner** %scan, align 8
  %tobool24 = icmp ne %struct._PNMScanner* %call23, null
  br i1 %tobool24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %17 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf26 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %17, i32 0, i32 5
  %arraydecay27 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf26, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay27, i32 1) #11
  unreachable

if.end.28:                                        ; preds = %if.end.22
  %18 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %arraydecay29 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  call void @pnmscanner_gettoken(%struct._PNMScanner* %18, i8* %arraydecay29, i32 512)
  %19 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %eof = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %19, i32 0, i32 2
  %20 = load i32, i32* %eof, align 4
  %tobool30 = icmp ne i32 %20, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.28
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call32)
  %21 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf33 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %21, i32 0, i32 5
  %arraydecay34 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf33, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay34, i32 1) #11
  unreachable

if.end.35:                                        ; preds = %if.end.28
  %arrayidx = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i64 0
  %22 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %22 to i32
  %cmp36 = icmp ne i32 %conv, 80
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.35
  %arrayidx38 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i64 2
  %23 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %23 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %lor.lhs.false, %if.end.35
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call42)
  %24 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf43 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %24, i32 0, i32 5
  %arraydecay44 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf43, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay44, i32 1) #11
  unreachable

if.end.45:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.45
  %25 = load i32, i32* %ctr, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [7 x %struct.struct_pnm_types], [7 x %struct.struct_pnm_types]* @pnm_types, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.struct_pnm_types, %struct.struct_pnm_types* %arrayidx46, i32 0, i32 0
  %26 = load i8, i8* %name, align 1
  %tobool47 = icmp ne i8 %26, 0
  br i1 %tobool47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx48 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i64 1
  %27 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %27 to i32
  %28 = load i32, i32* %ctr, align 4
  %idxprom50 = sext i32 %28 to i64
  %arrayidx51 = getelementptr inbounds [7 x %struct.struct_pnm_types], [7 x %struct.struct_pnm_types]* @pnm_types, i32 0, i64 %idxprom50
  %name52 = getelementptr inbounds %struct.struct_pnm_types, %struct.struct_pnm_types* %arrayidx51, i32 0, i32 0
  %29 = load i8, i8* %name52, align 1
  %conv53 = sext i8 %29 to i32
  %cmp54 = icmp eq i32 %conv49, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.69

if.then.56:                                       ; preds = %for.body
  %30 = load i32, i32* %ctr, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr inbounds [7 x %struct.struct_pnm_types], [7 x %struct.struct_pnm_types]* @pnm_types, i32 0, i64 %idxprom57
  %np = getelementptr inbounds %struct.struct_pnm_types, %struct.struct_pnm_types* %arrayidx58, i32 0, i32 1
  %31 = load i32, i32* %np, align 4
  %32 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %np59 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %32, i32 0, i32 3
  store i32 %31, i32* %np59, align 4
  %33 = load i32, i32* %ctr, align 4
  %idxprom60 = sext i32 %33 to i64
  %arrayidx61 = getelementptr inbounds [7 x %struct.struct_pnm_types], [7 x %struct.struct_pnm_types]* @pnm_types, i32 0, i64 %idxprom60
  %asciibody = getelementptr inbounds %struct.struct_pnm_types, %struct.struct_pnm_types* %arrayidx61, i32 0, i32 2
  %34 = load i32, i32* %asciibody, align 4
  %35 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %asciibody62 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %35, i32 0, i32 4
  store i32 %34, i32* %asciibody62, align 4
  %36 = load i32, i32* %ctr, align 4
  %idxprom63 = sext i32 %36 to i64
  %arrayidx64 = getelementptr inbounds [7 x %struct.struct_pnm_types], [7 x %struct.struct_pnm_types]* @pnm_types, i32 0, i64 %idxprom63
  %maxval = getelementptr inbounds %struct.struct_pnm_types, %struct.struct_pnm_types* %arrayidx64, i32 0, i32 3
  %37 = load i32, i32* %maxval, align 4
  %38 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %maxval65 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %38, i32 0, i32 2
  store i32 %37, i32* %maxval65, align 4
  %39 = load i32, i32* %ctr, align 4
  %idxprom66 = sext i32 %39 to i64
  %arrayidx67 = getelementptr inbounds [7 x %struct.struct_pnm_types], [7 x %struct.struct_pnm_types]* @pnm_types, i32 0, i64 %idxprom66
  %loader = getelementptr inbounds %struct.struct_pnm_types, %struct.struct_pnm_types* %arrayidx67, i32 0, i32 4
  %40 = load void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)*, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)** %loader, align 8
  %41 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %loader68 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %41, i32 0, i32 6
  store void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* %40, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)** %loader68, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.56, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %42 = load i32, i32* %ctr, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %loader70 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %43, i32 0, i32 6
  %44 = load void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)*, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)** %loader70, align 8
  %tobool71 = icmp ne void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)* %44, null
  br i1 %tobool71, label %if.end.76, label %if.then.72

if.then.72:                                       ; preds = %for.end
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call73)
  %45 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf74 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %45, i32 0, i32 5
  %arraydecay75 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf74, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay75, i32 1) #11
  unreachable

if.end.76:                                        ; preds = %for.end
  %46 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %arraydecay77 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  call void @pnmscanner_gettoken(%struct._PNMScanner* %46, i8* %arraydecay77, i32 512)
  %47 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %eof78 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %47, i32 0, i32 2
  %48 = load i32, i32* %eof78, align 4
  %tobool79 = icmp ne i32 %48, 0
  br i1 %tobool79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.end.76
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call81)
  %49 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf82 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %49, i32 0, i32 5
  %arraydecay83 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf82, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay83, i32 1) #11
  unreachable

if.end.84:                                        ; preds = %if.end.76
  %arraydecay85 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  %50 = load i8, i8* %arraydecay85, align 1
  %idxprom86 = zext i8 %50 to i64
  %51 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %51, i64 %idxprom86
  %52 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %52 to i32
  %and = and i32 %conv88, 8
  %cmp89 = icmp ne i32 %and, 0
  br i1 %cmp89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.84
  %arraydecay91 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  %call92 = call i32 @atoi(i8* %arraydecay91) #9
  br label %cond.end

cond.false:                                       ; preds = %if.end.84
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call92, %cond.true ], [ 0, %cond.false ]
  %53 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %xres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %53, i32 0, i32 0
  store i32 %cond, i32* %xres, align 4
  %54 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %xres93 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %54, i32 0, i32 0
  %55 = load i32, i32* %xres93, align 4
  %cmp94 = icmp sle i32 %55, 0
  br i1 %cmp94, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %cond.end
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call97)
  %56 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf98 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %56, i32 0, i32 5
  %arraydecay99 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf98, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay99, i32 1) #11
  unreachable

if.end.100:                                       ; preds = %cond.end
  %57 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %xres101 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %57, i32 0, i32 0
  %58 = load i32, i32* %xres101, align 4
  %cmp102 = icmp sgt i32 %58, 262144
  br i1 %cmp102, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %if.end.100
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.62, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call105)
  %59 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf106 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %59, i32 0, i32 5
  %arraydecay107 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf106, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay107, i32 1) #11
  unreachable

if.end.108:                                       ; preds = %if.end.100
  %60 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %arraydecay109 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  call void @pnmscanner_gettoken(%struct._PNMScanner* %60, i8* %arraydecay109, i32 512)
  %61 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %eof110 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %61, i32 0, i32 2
  %62 = load i32, i32* %eof110, align 4
  %tobool111 = icmp ne i32 %62, 0
  br i1 %tobool111, label %if.then.112, label %if.end.116

if.then.112:                                      ; preds = %if.end.108
  %call113 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call113)
  %63 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf114 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %63, i32 0, i32 5
  %arraydecay115 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf114, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay115, i32 1) #11
  unreachable

if.end.116:                                       ; preds = %if.end.108
  %arraydecay117 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  %64 = load i8, i8* %arraydecay117, align 1
  %idxprom118 = zext i8 %64 to i64
  %65 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %65, i64 %idxprom118
  %66 = load i16, i16* %arrayidx119, align 2
  %conv120 = zext i16 %66 to i32
  %and121 = and i32 %conv120, 8
  %cmp122 = icmp ne i32 %and121, 0
  br i1 %cmp122, label %cond.true.124, label %cond.false.127

cond.true.124:                                    ; preds = %if.end.116
  %arraydecay125 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  %call126 = call i32 @atoi(i8* %arraydecay125) #9
  br label %cond.end.128

cond.false.127:                                   ; preds = %if.end.116
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.124
  %cond129 = phi i32 [ %call126, %cond.true.124 ], [ 0, %cond.false.127 ]
  %67 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %yres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %67, i32 0, i32 1
  store i32 %cond129, i32* %yres, align 4
  %68 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %yres130 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %68, i32 0, i32 1
  %69 = load i32, i32* %yres130, align 4
  %cmp131 = icmp sle i32 %69, 0
  br i1 %cmp131, label %if.then.133, label %if.end.137

if.then.133:                                      ; preds = %cond.end.128
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call134)
  %70 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf135 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %70, i32 0, i32 5
  %arraydecay136 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf135, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay136, i32 1) #11
  unreachable

if.end.137:                                       ; preds = %cond.end.128
  %71 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %yres138 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %71, i32 0, i32 1
  %72 = load i32, i32* %yres138, align 4
  %cmp139 = icmp sgt i32 %72, 262144
  br i1 %cmp139, label %if.then.141, label %if.end.145

if.then.141:                                      ; preds = %if.end.137
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.64, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call142)
  %73 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf143 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %73, i32 0, i32 5
  %arraydecay144 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf143, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay144, i32 1) #11
  unreachable

if.end.145:                                       ; preds = %if.end.137
  %74 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %np146 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %74, i32 0, i32 3
  %75 = load i32, i32* %np146, align 4
  %cmp147 = icmp ne i32 %75, 0
  br i1 %cmp147, label %if.then.149, label %if.end.184

if.then.149:                                      ; preds = %if.end.145
  %76 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %arraydecay150 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  call void @pnmscanner_gettoken(%struct._PNMScanner* %76, i8* %arraydecay150, i32 512)
  %77 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %eof151 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %77, i32 0, i32 2
  %78 = load i32, i32* %eof151, align 4
  %tobool152 = icmp ne i32 %78, 0
  br i1 %tobool152, label %if.then.153, label %if.end.157

if.then.153:                                      ; preds = %if.then.149
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call154)
  %79 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf155 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %79, i32 0, i32 5
  %arraydecay156 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf155, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay156, i32 1) #11
  unreachable

if.end.157:                                       ; preds = %if.then.149
  %arraydecay158 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  %80 = load i8, i8* %arraydecay158, align 1
  %idxprom159 = zext i8 %80 to i64
  %81 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %81, i64 %idxprom159
  %82 = load i16, i16* %arrayidx160, align 2
  %conv161 = zext i16 %82 to i32
  %and162 = and i32 %conv161, 8
  %cmp163 = icmp ne i32 %and162, 0
  br i1 %cmp163, label %cond.true.165, label %cond.false.168

cond.true.165:                                    ; preds = %if.end.157
  %arraydecay166 = getelementptr inbounds [516 x i8], [516 x i8]* %buf, i32 0, i32 0
  %call167 = call i32 @atoi(i8* %arraydecay166) #9
  br label %cond.end.169

cond.false.168:                                   ; preds = %if.end.157
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.165
  %cond170 = phi i32 [ %call167, %cond.true.165 ], [ 0, %cond.false.168 ]
  %83 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %maxval171 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %83, i32 0, i32 2
  store i32 %cond170, i32* %maxval171, align 4
  %84 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %maxval172 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %84, i32 0, i32 2
  %85 = load i32, i32* %maxval172, align 4
  %cmp173 = icmp sle i32 %85, 0
  br i1 %cmp173, label %if.then.179, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %cond.end.169
  %86 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %maxval176 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %86, i32 0, i32 2
  %87 = load i32, i32* %maxval176, align 4
  %cmp177 = icmp sgt i32 %87, 65535
  br i1 %cmp177, label %if.then.179, label %if.end.183

if.then.179:                                      ; preds = %lor.lhs.false.175, %cond.end.169
  %call180 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call180)
  %88 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %jmpbuf181 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %88, i32 0, i32 5
  %arraydecay182 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf181, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay182, i32 1) #11
  unreachable

if.end.183:                                       ; preds = %lor.lhs.false.175
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.145
  %89 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %xres185 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %89, i32 0, i32 0
  %90 = load i32, i32* %xres185, align 4
  %91 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %yres186 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %91, i32 0, i32 1
  %92 = load i32, i32* %yres186, align 4
  %93 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %np187 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %93, i32 0, i32 3
  %94 = load i32, i32* %np187, align 4
  %cmp188 = icmp sge i32 %94, 3
  %cond190 = select i1 %cmp188, i32 0, i32 1
  %call191 = call i32 @gimp_image_new(i32 %90, i32 %92, i32 %cond190)
  store volatile i32 %call191, i32* %image_ID, align 4
  %95 = load volatile i32, i32* %image_ID, align 4
  %96 = load i8*, i8** %filename.addr, align 8
  %call192 = call i32 @gimp_image_set_filename(i32 %95, i8* %96)
  %97 = load volatile i32, i32* %image_ID, align 4
  %call193 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0)) #7
  %98 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %xres194 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %98, i32 0, i32 0
  %99 = load i32, i32* %xres194, align 4
  %100 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %yres195 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %100, i32 0, i32 1
  %101 = load i32, i32* %yres195, align 4
  %102 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %np196 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %102, i32 0, i32 3
  %103 = load i32, i32* %np196, align 4
  %cmp197 = icmp sge i32 %103, 3
  %cond199 = select i1 %cmp197, i32 0, i32 2
  %call200 = call i32 @gimp_layer_new(i32 %97, i8* %call193, i32 %99, i32 %101, i32 %cond199, double 1.000000e+02, i32 0)
  store i32 %call200, i32* %layer_ID, align 4
  %104 = load volatile i32, i32* %image_ID, align 4
  %105 = load i32, i32* %layer_ID, align 4
  %call201 = call i32 @gimp_image_insert_layer(i32 %104, i32 %105, i32 -1, i32 0)
  %106 = load i32, i32* %layer_ID, align 4
  %call202 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %106)
  store %struct._GimpDrawable* %call202, %struct._GimpDrawable** %drawable, align 8
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %108 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %108, i32 0, i32 1
  %109 = load i32, i32* %width, align 4
  %110 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %110, i32 0, i32 2
  %111 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %107, i32 0, i32 0, i32 %109, i32 %111, i32 1, i32 0)
  %112 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %loader203 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %112, i32 0, i32 6
  %113 = load void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)*, void (%struct._PNMScanner*, %struct._PNMInfo*, %struct._GimpPixelRgn*)** %loader203, align 8
  %114 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  %115 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  call void %113(%struct._PNMScanner* %114, %struct._PNMInfo* %115, %struct._GimpPixelRgn* %pixel_rgn)
  %116 = load volatile %struct._PNMScanner*, %struct._PNMScanner** %scan, align 8
  call void @pnmscanner_destroy(%struct._PNMScanner* %116)
  %117 = load %struct._PNMInfo*, %struct._PNMInfo** %pnminfo, align 8
  %118 = bitcast %struct._PNMInfo* %117 to i8*
  call void @g_free(i8* %118)
  %119 = load i32, i32* %fd, align 4
  %call204 = call i32 @close(i32 %119)
  %120 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %120)
  %121 = load volatile i32, i32* %image_ID, align 4
  store i32 %121, i32* %retval
  br label %return

return:                                           ; preds = %if.end.184, %if.end.21, %if.then
  %122 = load i32, i32* %retval
  ret i32 %122
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
  %call = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0)) #7
  %0 = load i32, i32* getelementptr inbounds (%struct.PNMSaveVals, %struct.PNMSaveVals* @psvals, i32 0, i32 0), align 4
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0)) #7
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #7
  %call5 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call2, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (%struct.PNMSaveVals* @psvals to i8*), i32 %0, i8* %call3, i32 1, i8* null, i8* %call4, i32 0, i8* null, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call6)
  %3 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %3, i32 6)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call8 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkWidget* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call9)
  %6 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 0, i32 1, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dialog_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call11)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDialog*
  %call13 = call i32 @gimp_dialog_run(%struct._GimpDialog* %12)
  %cmp = icmp eq i32 %call13, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %13)
  %14 = load i32, i32* %run, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, i32 %pbm, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %pbm.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %drawable_type = alloca i32, align 4
  %rowinfo = alloca %struct._PNMRowInfo, align 8
  %saverow = alloca void (%struct._PNMRowInfo*, i8*)*, align 8
  %red = alloca [256 x i8], align 16
  %grn = alloca [256 x i8], align 16
  %blu = alloca [256 x i8], align 16
  %data = alloca i8*, align 8
  %d = alloca i8*, align 8
  %rowbuf = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %np = alloca i32, align 4
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %ypos = alloca i32, align 4
  %yend = alloca i32, align 4
  %rowbufsize = alloca i32, align 4
  %fd = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  %c = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %pbm, i32* %pbm.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store void (%struct._PNMRowInfo*, i8*)* null, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  store i32 0, i32* %np, align 4
  store i32 0, i32* %rowbufsize, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call1, i32* %drawable_type, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %2, i32 0, i32 0, i32 %4, i32 %6, i32 0, i32 0)
  %7 = load i32, i32* %drawable_ID.addr, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32 (i8*, i32, ...) @open(i8* %8, i32 577, i32 438)
  store i32 %call4, i32* %fd, align 4
  %9 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @g_file_error_quark()
  %call7 = call i32* @__errno_location() #8
  %11 = load i32, i32* %call7, align 4
  %call8 = call i32 @g_file_error_from_errno(i32 %11)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i32 0, i32 0)) #7
  %12 = load i8*, i8** %filename.addr, align 8
  %call10 = call i8* @gimp_filename_to_utf8(i8* %12)
  %call11 = call i32* @__errno_location() #8
  %13 = load i32, i32* %call11, align 4
  %call12 = call i8* @g_strerror(i32 %13) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %10, i32 %call6, i32 %call8, i8* %call9, i8* %call10, i8* %call12)
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0)) #7
  %14 = load i8*, i8** %filename.addr, align 8
  %call15 = call i8* @gimp_filename_to_utf8(i8* %14)
  %call16 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call14, i8* %call15)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width17, align 4
  store i32 %16, i32* %xres, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 2
  %18 = load i32, i32* %height18, align 4
  store i32 %18, i32* %yres, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.PNMSaveVals, %struct.PNMSaveVals* @psvals, i32 0, i32 0), align 4
  %tobool19 = icmp ne i32 %19, 0
  br i1 %tobool19, label %if.else.33, label %if.then.20

if.then.20:                                       ; preds = %if.end.13
  %20 = load i32, i32* %pbm.addr, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.20
  %21 = load i32, i32* %fd, align 4
  %call23 = call i64 @write(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i64 3)
  store i32 0, i32* %np, align 4
  %22 = load i32, i32* %xres, align 4
  %23 = load i32, i32* %xres, align 4
  %div = sdiv i32 %23, 70
  %add = add nsw i32 %22, %div
  %add24 = add nsw i32 %add, 1
  store i32 %add24, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_ascii_pbm, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.then.20
  %24 = load i32, i32* %drawable_type, align 4
  switch i32 %24, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.26
    i32 4, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.else
  %25 = load i32, i32* %fd, align 4
  %call25 = call i64 @write(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i64 3)
  store i32 1, i32* %np, align 4
  %26 = load i32, i32* %xres, align 4
  %mul = mul nsw i32 %26, 4
  store i32 %mul, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_ascii, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.else
  %27 = load i32, i32* %fd, align 4
  %call27 = call i64 @write(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i64 3)
  store i32 3, i32* %np, align 4
  %28 = load i32, i32* %xres, align 4
  %mul28 = mul nsw i32 %28, 12
  store i32 %mul28, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_ascii, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.else
  %29 = load i32, i32* %fd, align 4
  %call30 = call i64 @write(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i64 3)
  store i32 1, i32* %np, align 4
  %30 = load i32, i32* %xres, align 4
  %mul31 = mul nsw i32 %30, 12
  store i32 %mul31, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_ascii_indexed, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.29, %sw.bb.26, %sw.bb
  br label %if.end.32

if.end.32:                                        ; preds = %sw.epilog, %if.then.22
  br label %if.end.52

if.else.33:                                       ; preds = %if.end.13
  %31 = load i32, i32* %pbm.addr, align 4
  %tobool34 = icmp ne i32 %31, 0
  br i1 %tobool34, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.else.33
  %32 = load i32, i32* %fd, align 4
  %call36 = call i64 @write(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i64 3)
  store i32 0, i32* %np, align 4
  %33 = load i32, i32* %xres, align 4
  %conv = sitofp i32 %33 to double
  %div37 = fdiv double %conv, 8.000000e+00
  %call38 = call double @ceil(double %div37) #8
  %conv39 = fptosi double %call38 to i32
  store i32 %conv39, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_raw_pbm, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %if.end.51

if.else.40:                                       ; preds = %if.else.33
  %34 = load i32, i32* %drawable_type, align 4
  switch i32 %34, label %sw.default.49 [
    i32 2, label %sw.bb.41
    i32 0, label %sw.bb.43
    i32 4, label %sw.bb.46
  ]

sw.bb.41:                                         ; preds = %if.else.40
  %35 = load i32, i32* %fd, align 4
  %call42 = call i64 @write(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i64 3)
  store i32 1, i32* %np, align 4
  %36 = load i32, i32* %xres, align 4
  store i32 %36, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_raw, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %sw.epilog.50

sw.bb.43:                                         ; preds = %if.else.40
  %37 = load i32, i32* %fd, align 4
  %call44 = call i64 @write(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i64 3)
  store i32 3, i32* %np, align 4
  %38 = load i32, i32* %xres, align 4
  %mul45 = mul nsw i32 %38, 3
  store i32 %mul45, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_raw, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %sw.epilog.50

sw.bb.46:                                         ; preds = %if.else.40
  %39 = load i32, i32* %fd, align 4
  %call47 = call i64 @write(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i64 3)
  store i32 1, i32* %np, align 4
  %40 = load i32, i32* %xres, align 4
  %mul48 = mul nsw i32 %40, 3
  store i32 %mul48, i32* %rowbufsize, align 4
  store void (%struct._PNMRowInfo*, i8*)* @pnmsaverow_raw_indexed, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  br label %sw.epilog.50

sw.default.49:                                    ; preds = %if.else.40
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.epilog.50:                                     ; preds = %sw.bb.46, %sw.bb.43, %sw.bb.41
  br label %if.end.51

if.end.51:                                        ; preds = %sw.epilog.50, %if.then.35
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.32
  %zero_is_black = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 7
  store i32 0, i32* %zero_is_black, align 4
  %41 = load i32, i32* %drawable_type, align 4
  %cmp53 = icmp eq i32 %41, 4
  br i1 %cmp53, label %if.then.55, label %if.end.126

if.then.55:                                       ; preds = %if.end.52
  %42 = load i32, i32* %image_ID.addr, align 4
  %call56 = call i8* @gimp_image_get_colormap(i32 %42, i32* %num_colors)
  store i8* %call56, i8** %cmap, align 8
  %43 = load i32, i32* %pbm.addr, align 4
  %tobool57 = icmp ne i32 %43, 0
  br i1 %tobool57, label %if.then.58, label %if.else.110

if.then.58:                                       ; preds = %if.then.55
  %44 = load i32, i32* %num_colors, align 4
  switch i32 %44, label %sw.default.108 [
    i32 1, label %sw.bb.59
    i32 2, label %sw.bb.76
  ]

sw.bb.59:                                         ; preds = %if.then.58
  %45 = load i8*, i8** %cmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx, align 1
  %conv60 = zext i8 %46 to i32
  %conv61 = sitofp i32 %conv60 to double
  %mul62 = fmul double %conv61, 2.126000e-01
  %47 = load i8*, i8** %cmap, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %48 to i32
  %conv65 = sitofp i32 %conv64 to double
  %mul66 = fmul double %conv65, 7.152000e-01
  %add67 = fadd double %mul62, %mul66
  %49 = load i8*, i8** %cmap, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %49, i64 2
  %50 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %50 to i32
  %conv70 = sitofp i32 %conv69 to double
  %mul71 = fmul double %conv70, 7.220000e-02
  %add72 = fadd double %add67, %mul71
  %cmp73 = fcmp olt double %add72, 1.280000e+02
  %conv74 = zext i1 %cmp73 to i32
  %zero_is_black75 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 7
  store i32 %conv74, i32* %zero_is_black75, align 4
  br label %sw.epilog.109

sw.bb.76:                                         ; preds = %if.then.58
  %51 = load i8*, i8** %cmap, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %52 to i32
  %conv79 = sitofp i32 %conv78 to double
  %mul80 = fmul double %conv79, 2.126000e-01
  %53 = load i8*, i8** %cmap, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %54 to i32
  %conv83 = sitofp i32 %conv82 to double
  %mul84 = fmul double %conv83, 7.152000e-01
  %add85 = fadd double %mul80, %mul84
  %55 = load i8*, i8** %cmap, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %55, i64 2
  %56 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %56 to i32
  %conv88 = sitofp i32 %conv87 to double
  %mul89 = fmul double %conv88, 7.220000e-02
  %add90 = fadd double %add85, %mul89
  %57 = load i8*, i8** %cmap, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %57, i64 3
  %58 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %58 to i32
  %conv93 = sitofp i32 %conv92 to double
  %mul94 = fmul double %conv93, 2.126000e-01
  %59 = load i8*, i8** %cmap, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %59, i64 4
  %60 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %60 to i32
  %conv97 = sitofp i32 %conv96 to double
  %mul98 = fmul double %conv97, 7.152000e-01
  %add99 = fadd double %mul94, %mul98
  %61 = load i8*, i8** %cmap, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %61, i64 5
  %62 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %62 to i32
  %conv102 = sitofp i32 %conv101 to double
  %mul103 = fmul double %conv102, 7.220000e-02
  %add104 = fadd double %add99, %mul103
  %cmp105 = fcmp olt double %add90, %add104
  %conv106 = zext i1 %cmp105 to i32
  %zero_is_black107 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 7
  store i32 %conv106, i32* %zero_is_black107, align 4
  br label %sw.epilog.109

sw.default.108:                                   ; preds = %if.then.58
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i32 0, i32 0))
  br label %sw.epilog.109

sw.epilog.109:                                    ; preds = %sw.default.108, %sw.bb.76, %sw.bb.59
  br label %if.end.125

if.else.110:                                      ; preds = %if.then.55
  %63 = load i8*, i8** %cmap, align 8
  store i8* %63, i8** %c, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.110
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %num_colors, align 4
  %cmp111 = icmp slt i32 %64, %65
  br i1 %cmp111, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %67 = load i8, i8* %66, align 1
  %68 = load i32, i32* %i, align 4
  %idxprom = sext i32 %68 to i64
  %arrayidx113 = getelementptr inbounds [256 x i8], [256 x i8]* %red, i32 0, i64 %idxprom
  store i8 %67, i8* %arrayidx113, align 1
  %69 = load i8*, i8** %c, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr114, i8** %c, align 8
  %70 = load i8, i8* %69, align 1
  %71 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %71 to i64
  %arrayidx116 = getelementptr inbounds [256 x i8], [256 x i8]* %grn, i32 0, i64 %idxprom115
  store i8 %70, i8* %arrayidx116, align 1
  %72 = load i8*, i8** %c, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr117, i8** %c, align 8
  %73 = load i8, i8* %72, align 1
  %74 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %74 to i64
  %arrayidx119 = getelementptr inbounds [256 x i8], [256 x i8]* %blu, i32 0, i64 %idxprom118
  store i8 %73, i8* %arrayidx119, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %red, i32 0, i32 0
  %red120 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 4
  store i8* %arraydecay, i8** %red120, align 8
  %arraydecay121 = getelementptr inbounds [256 x i8], [256 x i8]* %grn, i32 0, i32 0
  %grn122 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 5
  store i8* %arraydecay121, i8** %grn122, align 8
  %arraydecay123 = getelementptr inbounds [256 x i8], [256 x i8]* %blu, i32 0, i32 0
  %blu124 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 6
  store i8* %arraydecay123, i8** %blu124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %for.end, %sw.epilog.109
  %76 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %76)
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.52
  %call127 = call i32 @gimp_tile_height() #8
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width128 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %77, i32 0, i32 1
  %78 = load i32, i32* %width128, align 4
  %mul129 = mul i32 %call127, %78
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %79, i32 0, i32 3
  %80 = load i32, i32* %bpp, align 4
  %mul130 = mul i32 %mul129, %80
  %conv131 = zext i32 %mul130 to i64
  %call132 = call noalias i8* @g_malloc_n(i64 %conv131, i64 1)
  store i8* %call132, i8** %data, align 8
  %81 = load i32, i32* %fd, align 4
  %call133 = call i64 @write(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.82, i32 0, i32 0), i64 39)
  %82 = load i32, i32* %pbm.addr, align 4
  %tobool134 = icmp ne i32 %82, 0
  br i1 %tobool134, label %if.then.135, label %if.else.138

if.then.135:                                      ; preds = %if.end.126
  %arraydecay136 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %83 = load i32, i32* %xres, align 4
  %84 = load i32, i32* %yres, align 4
  %call137 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %83, i32 %84) #7
  br label %if.end.141

if.else.138:                                      ; preds = %if.end.126
  %arraydecay139 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %85 = load i32, i32* %xres, align 4
  %86 = load i32, i32* %yres, align 4
  %call140 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i32 %85, i32 %86) #7
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.135
  %87 = load i32, i32* %fd, align 4
  %arraydecay142 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay143 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call144 = call i64 @strlen(i8* %arraydecay143) #9
  %call145 = call i64 @write(i32 %87, i8* %arraydecay142, i64 %call144)
  %88 = load i32, i32* %rowbufsize, align 4
  %add146 = add nsw i32 %88, 1
  %conv147 = sext i32 %add146 to i64
  %call148 = call noalias i8* @g_malloc_n(i64 %conv147, i64 1)
  store i8* %call148, i8** %rowbuf, align 8
  %89 = load i32, i32* %fd, align 4
  %fd149 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 0
  store i32 %89, i32* %fd149, align 4
  %90 = load i8*, i8** %rowbuf, align 8
  %rowbuf150 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 1
  store i8* %90, i8** %rowbuf150, align 8
  %91 = load i32, i32* %xres, align 4
  %xres151 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 2
  store i32 %91, i32* %xres151, align 4
  %92 = load i32, i32* %np, align 4
  %np152 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %rowinfo, i32 0, i32 3
  store i32 %92, i32* %np152, align 4
  store i8* null, i8** %d, align 8
  store i32 0, i32* %ypos, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.181, %if.end.141
  %93 = load i32, i32* %ypos, align 4
  %94 = load i32, i32* %yres, align 4
  %cmp154 = icmp slt i32 %93, %94
  br i1 %cmp154, label %for.body.156, label %for.end.183

for.body.156:                                     ; preds = %for.cond.153
  %95 = load i32, i32* %ypos, align 4
  %call157 = call i32 @gimp_tile_height() #8
  %rem = urem i32 %95, %call157
  %cmp158 = icmp eq i32 %rem, 0
  br i1 %cmp158, label %if.then.160, label %if.end.165

if.then.160:                                      ; preds = %for.body.156
  %96 = load i32, i32* %ypos, align 4
  %call161 = call i32 @gimp_tile_height() #8
  %add162 = add i32 %96, %call161
  store i32 %add162, i32* %yend, align 4
  %97 = load i32, i32* %yend, align 4
  %98 = load i32, i32* %yres, align 4
  %cmp163 = icmp slt i32 %97, %98
  br i1 %cmp163, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.160
  %99 = load i32, i32* %yend, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.160
  %100 = load i32, i32* %yres, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %99, %cond.true ], [ %100, %cond.false ]
  store i32 %cond, i32* %yend, align 4
  %101 = load i8*, i8** %data, align 8
  %102 = load i32, i32* %ypos, align 4
  %103 = load i32, i32* %xres, align 4
  %104 = load i32, i32* %yend, align 4
  %105 = load i32, i32* %ypos, align 4
  %sub = sub nsw i32 %104, %105
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %101, i32 0, i32 %102, i32 %103, i32 %sub)
  %106 = load i8*, i8** %data, align 8
  store i8* %106, i8** %d, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %cond.end, %for.body.156
  %107 = load void (%struct._PNMRowInfo*, i8*)*, void (%struct._PNMRowInfo*, i8*)** %saverow, align 8
  %108 = load i8*, i8** %d, align 8
  call void %107(%struct._PNMRowInfo* %rowinfo, i8* %108)
  %109 = load i32, i32* %xres, align 4
  %110 = load i32, i32* %np, align 4
  %tobool166 = icmp ne i32 %110, 0
  br i1 %tobool166, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %if.end.165
  %111 = load i32, i32* %np, align 4
  br label %cond.end.169

cond.false.168:                                   ; preds = %if.end.165
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.167
  %cond170 = phi i32 [ %111, %cond.true.167 ], [ 1, %cond.false.168 ]
  %mul171 = mul nsw i32 %109, %cond170
  %112 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %mul171 to i64
  %add.ptr = getelementptr inbounds i8, i8* %112, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  %113 = load i32, i32* %ypos, align 4
  %rem172 = srem i32 %113, 20
  %cmp173 = icmp eq i32 %rem172, 0
  br i1 %cmp173, label %if.then.175, label %if.end.180

if.then.175:                                      ; preds = %cond.end.169
  %114 = load i32, i32* %ypos, align 4
  %conv176 = sitofp i32 %114 to double
  %115 = load i32, i32* %yres, align 4
  %conv177 = sitofp i32 %115 to double
  %div178 = fdiv double %conv176, %conv177
  %call179 = call i32 @gimp_progress_update(double %div178)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.175, %cond.end.169
  br label %for.inc.181

for.inc.181:                                      ; preds = %if.end.180
  %116 = load i32, i32* %ypos, align 4
  %inc182 = add nsw i32 %116, 1
  store i32 %inc182, i32* %ypos, align 4
  br label %for.cond.153

for.end.183:                                      ; preds = %for.cond.153
  %call184 = call i32 @gimp_progress_update(double 1.000000e+00)
  %117 = load i32, i32* %fd, align 4
  %call185 = call i32 @close(i32 %117)
  %118 = load i8*, i8** %rowbuf, align 8
  call void @g_free(i8* %118)
  %119 = load i8*, i8** %data, align 8
  call void @g_free(i8* %119)
  %120 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %120)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.183, %sw.default.49, %sw.default, %if.then.5, %if.then
  %121 = load i32, i32* %retval
  ret i32 %121
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

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #5

; Function Attrs: nounwind uwtable
define internal void @pnmscanner_destroy(%struct._PNMScanner* %s) #0 {
entry:
  %s.addr = alloca %struct._PNMScanner*, align 8
  store %struct._PNMScanner* %s, %struct._PNMScanner** %s.addr, align 8
  %0 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbuf = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %0, i32 0, i32 3
  %1 = load i8*, i8** %inbuf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbuf1 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %2, i32 0, i32 3
  %3 = load i8*, i8** %inbuf1, align 8
  call void @g_free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %5 = bitcast %struct._PNMScanner* %4 to i8*
  call void @g_free(i8* %5)
  ret void
}

declare i32 @close(i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._PNMScanner* @pnmscanner_create(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %s = alloca %struct._PNMScanner*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 40)
  %0 = bitcast i8* %call to %struct._PNMScanner*
  store %struct._PNMScanner* %0, %struct._PNMScanner** %s, align 8
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load %struct._PNMScanner*, %struct._PNMScanner** %s, align 8
  %fd1 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %2, i32 0, i32 0
  store i32 %1, i32* %fd1, align 4
  %3 = load %struct._PNMScanner*, %struct._PNMScanner** %s, align 8
  %inbuf = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %3, i32 0, i32 3
  store i8* null, i8** %inbuf, align 8
  %4 = load %struct._PNMScanner*, %struct._PNMScanner** %s, align 8
  %fd2 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %4, i32 0, i32 0
  %5 = load i32, i32* %fd2, align 4
  %6 = load %struct._PNMScanner*, %struct._PNMScanner** %s, align 8
  %cur = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %6, i32 0, i32 1
  %call3 = call i64 @read(i32 %5, i8* %cur, i64 1)
  %tobool = icmp ne i64 %call3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %7 = load %struct._PNMScanner*, %struct._PNMScanner** %s, align 8
  %eof = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %7, i32 0, i32 2
  store i32 %lnot.ext, i32* %eof, align 4
  %8 = load %struct._PNMScanner*, %struct._PNMScanner** %s, align 8
  ret %struct._PNMScanner* %8
}

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #6

; Function Attrs: nounwind uwtable
define internal void @pnmscanner_gettoken(%struct._PNMScanner* %s, i8* %buf, i32 %bufsize) #0 {
entry:
  %s.addr = alloca %struct._PNMScanner*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %ctr = alloca i32, align 4
  store %struct._PNMScanner* %s, %struct._PNMScanner** %s.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 0, i32* %ctr, align 4
  %0 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  call void @pnmscanner_eatwhitespace(%struct._PNMScanner* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %eof = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %1, i32 0, i32 2
  %2 = load i32, i32* %eof, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %3 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %3, i32 0, i32 1
  %4 = load i8, i8* %cur, align 1
  %idxprom = zext i8 %4 to i64
  %5 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur3 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %7, i32 0, i32 1
  %8 = load i8, i8* %cur3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 35
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %9 = load i32, i32* %ctr, align 4
  %10 = load i32, i32* %bufsize.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur9 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %12, i32 0, i32 1
  %13 = load i8, i8* %cur9, align 1
  %14 = load i32, i32* %ctr, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %ctr, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load i8*, i8** %buf.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 %idxprom10
  store i8 %13, i8* %arrayidx11, align 1
  %16 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  call void @pnmscanner_getchar(%struct._PNMScanner* %16)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %ctr, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i8*, i8** %buf.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 %idxprom12
  store i8 0, i8* %arrayidx13, align 1
  ret void
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

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @pnmscanner_eatwhitespace(%struct._PNMScanner* %s) #0 {
entry:
  %s.addr = alloca %struct._PNMScanner*, align 8
  %state = alloca i32, align 4
  store %struct._PNMScanner* %s, %struct._PNMScanner** %s.addr, align 8
  store i32 0, i32* %state, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %eof = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %0, i32 0, i32 2
  %1 = load i32, i32* %eof, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %2, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %state, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %while.body
  %5 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %5, i32 0, i32 1
  %6 = load i8, i8* %cur, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 35
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %state, align 4
  %7 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  call void @pnmscanner_getchar(%struct._PNMScanner* %7)
  br label %if.end.9

if.else:                                          ; preds = %sw.bb
  %8 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur3 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %8, i32 0, i32 1
  %9 = load i8, i8* %cur3, align 1
  %idxprom = zext i8 %9 to i64
  %10 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %11 to i32
  %and = and i32 %conv4, 256
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %if.else
  store i32 -1, i32* %state, align 4
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %12 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  call void @pnmscanner_getchar(%struct._PNMScanner* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  %13 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur11 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %13, i32 0, i32 1
  %14 = load i8, i8* %cur11, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 10
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.10
  store i32 0, i32* %state, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb.10
  %15 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  call void @pnmscanner_getchar(%struct._PNMScanner* %15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.16, %if.end.9
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnmscanner_getchar(%struct._PNMScanner* %s) #0 {
entry:
  %s.addr = alloca %struct._PNMScanner*, align 8
  store %struct._PNMScanner* %s, %struct._PNMScanner** %s.addr, align 8
  %0 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbuf = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %0, i32 0, i32 3
  %1 = load i8*, i8** %inbuf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %2 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufpos = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %2, i32 0, i32 6
  %3 = load i32, i32* %inbufpos, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %inbufpos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbuf1 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %4, i32 0, i32 3
  %5 = load i8*, i8** %inbuf1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %7, i32 0, i32 1
  store i8 %6, i8* %cur, align 1
  %8 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufpos2 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %8, i32 0, i32 6
  %9 = load i32, i32* %inbufpos2, align 4
  %10 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufvalidsize = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %10, i32 0, i32 5
  %11 = load i32, i32* %inbufvalidsize, align 4
  %cmp = icmp sge i32 %9, %11
  br i1 %cmp, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.then
  %12 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufpos4 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %12, i32 0, i32 6
  %13 = load i32, i32* %inbufpos4, align 4
  %14 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufvalidsize5 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %14, i32 0, i32 5
  %15 = load i32, i32* %inbufvalidsize5, align 4
  %cmp6 = icmp sgt i32 %13, %15
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %16 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %eof = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %16, i32 0, i32 2
  store i32 1, i32* %eof, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %17 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %fd = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %17, i32 0, i32 0
  %18 = load i32, i32* %fd, align 4
  %19 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbuf8 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %19, i32 0, i32 3
  %20 = load i8*, i8** %inbuf8, align 8
  %21 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufsize = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %21, i32 0, i32 4
  %22 = load i32, i32* %inbufsize, align 4
  %conv = sext i32 %22 to i64
  %call = call i64 @read(i32 %18, i8* %20, i64 %conv)
  %conv9 = trunc i64 %call to i32
  %23 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufvalidsize10 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %23, i32 0, i32 5
  store i32 %conv9, i32* %inbufvalidsize10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %24 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufpos11 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %24, i32 0, i32 6
  store i32 0, i32* %inbufpos11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  br label %if.end.19

if.else.13:                                       ; preds = %entry
  %25 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %fd14 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %25, i32 0, i32 0
  %26 = load i32, i32* %fd14, align 4
  %27 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur15 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %27, i32 0, i32 1
  %call16 = call i64 @read(i32 %26, i8* %cur15, i64 1)
  %tobool17 = icmp ne i64 %call16, 0
  %lnot = xor i1 %tobool17, true
  %lnot.ext = zext i1 %lnot to i32
  %28 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %eof18 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %28, i32 0, i32 2
  store i32 %lnot.ext, i32* %eof18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.13, %if.end.12
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define internal void @pnm_load_ascii(%struct._PNMScanner* %scan, %struct._PNMInfo* %info, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %scan.addr = alloca %struct._PNMScanner*, align 8
  %info.addr = alloca %struct._PNMInfo*, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %data = alloca i8*, align 8
  %d = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %scanlines = alloca i32, align 4
  %np = alloca i32, align 4
  %buf = alloca [512 x i8], align 16
  %aborted = alloca i32, align 4
  store %struct._PNMScanner* %scan, %struct._PNMScanner** %scan.addr, align 8
  store %struct._PNMInfo* %info, %struct._PNMInfo** %info.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i32 0, i32* %aborted, align 4
  %0 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np1 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %0, i32 0, i32 3
  %1 = load i32, i32* %np1, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np2 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %np2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %np, align 4
  %call = call i32 @gimp_tile_height() #8
  %4 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %xres, align 4
  %mul = mul i32 %call, %5
  %6 = load i32, i32* %np, align 4
  %mul3 = mul i32 %mul, %6
  %conv = zext i32 %mul3 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %data, align 8
  %7 = load %struct._PNMScanner*, %struct._PNMScanner** %scan.addr, align 8
  call void @pnmscanner_createbuffer(%struct._PNMScanner* %7, i32 4096)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.109, %cond.end
  %8 = load i32, i32* %y, align 4
  %9 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %yres, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.111

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %y, align 4
  store i32 %11, i32* %start, align 4
  %12 = load i32, i32* %y, align 4
  %call6 = call i32 @gimp_tile_height() #8
  %add = add i32 %12, %call6
  store i32 %add, i32* %end, align 4
  %13 = load i32, i32* %end, align 4
  %14 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres7 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %yres7, align 4
  %cmp8 = icmp slt i32 %13, %15
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %for.body
  %16 = load i32, i32* %end, align 4
  br label %cond.end.13

cond.false.11:                                    ; preds = %for.body
  %17 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres12 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %yres12, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.10
  %cond14 = phi i32 [ %16, %cond.true.10 ], [ %18, %cond.false.11 ]
  store i32 %cond14, i32* %end, align 4
  %19 = load i32, i32* %end, align 4
  %20 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %19, %20
  store i32 %sub, i32* %scanlines, align 4
  %21 = load i8*, i8** %data, align 8
  store i8* %21, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.100, %cond.end.13
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %scanlines, align 4
  %cmp16 = icmp slt i32 %22, %23
  br i1 %cmp16, label %for.body.18, label %for.end.102

for.body.18:                                      ; preds = %for.cond.15
  store i32 0, i32* %x, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.97, %for.body.18
  %24 = load i32, i32* %x, align 4
  %25 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres20 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %xres20, align 4
  %cmp21 = icmp slt i32 %24, %26
  br i1 %cmp21, label %for.body.23, label %for.end.99

for.body.23:                                      ; preds = %for.cond.19
  store i32 0, i32* %b, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body.23
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %np, align 4
  %cmp25 = icmp slt i32 %27, %28
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.24
  %29 = load i32, i32* %aborted, align 4
  %tobool28 = icmp ne i32 %29, 0
  br i1 %tobool28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.27
  %30 = load i32, i32* %b, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

if.end:                                           ; preds = %for.body.27
  %32 = load %struct._PNMScanner*, %struct._PNMScanner** %scan.addr, align 8
  %eof = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %32, i32 0, i32 2
  %33 = load i32, i32* %eof, align 4
  %tobool29 = icmp ne i32 %33, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call31)
  store i32 1, i32* %aborted, align 4
  %34 = load i32, i32* %b, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = load i8*, i8** %d, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %35, i64 %idxprom32
  store i8 0, i8* %arrayidx33, align 1
  br label %for.inc

if.end.34:                                        ; preds = %if.end
  %36 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np35 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %36, i32 0, i32 3
  %37 = load i32, i32* %np35, align 4
  %tobool36 = icmp ne i32 %37, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.34
  %38 = load %struct._PNMScanner*, %struct._PNMScanner** %scan.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  call void @pnmscanner_gettoken(%struct._PNMScanner* %38, i8* %arraydecay, i32 512)
  br label %if.end.39

if.else:                                          ; preds = %if.end.34
  %39 = load %struct._PNMScanner*, %struct._PNMScanner** %scan.addr, align 8
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  call void @pnmscanner_getsmalltoken(%struct._PNMScanner* %39, i8* %arraydecay38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.37
  %40 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %40, i32 0, i32 2
  %41 = load i32, i32* %maxval, align 4
  switch i32 %41, label %sw.default [
    i32 255, label %sw.bb
    i32 1, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.end.39
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %42 = load i8, i8* %arraydecay40, align 1
  %idxprom41 = zext i8 %42 to i64
  %43 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %43, i64 %idxprom41
  %44 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %44 to i32
  %and = and i32 %conv43, 8
  %cmp44 = icmp ne i32 %and, 0
  br i1 %cmp44, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %sw.bb
  %arraydecay47 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call48 = call i32 @atoi(i8* %arraydecay47) #9
  br label %cond.end.50

cond.false.49:                                    ; preds = %sw.bb
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.46
  %cond51 = phi i32 [ %call48, %cond.true.46 ], [ 0, %cond.false.49 ]
  %conv52 = trunc i32 %cond51 to i8
  %45 = load i32, i32* %b, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load i8*, i8** %d, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %46, i64 %idxprom53
  store i8 %conv52, i8* %arrayidx54, align 1
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.39
  %47 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np56 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %47, i32 0, i32 3
  %48 = load i32, i32* %np56, align 4
  %tobool57 = icmp ne i32 %48, 0
  br i1 %tobool57, label %if.then.58, label %if.else.67

if.then.58:                                       ; preds = %sw.bb.55
  %arraydecay59 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %49 = load i8, i8* %arraydecay59, align 1
  %conv60 = sext i8 %49 to i32
  %cmp61 = icmp eq i32 %conv60, 48
  %cond63 = select i1 %cmp61, i32 0, i32 255
  %conv64 = trunc i32 %cond63 to i8
  %50 = load i32, i32* %b, align 4
  %idxprom65 = sext i32 %50 to i64
  %51 = load i8*, i8** %d, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %51, i64 %idxprom65
  store i8 %conv64, i8* %arrayidx66, align 1
  br label %if.end.76

if.else.67:                                       ; preds = %sw.bb.55
  %arraydecay68 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %52 = load i8, i8* %arraydecay68, align 1
  %conv69 = sext i8 %52 to i32
  %cmp70 = icmp eq i32 %conv69, 48
  %cond72 = select i1 %cmp70, i32 255, i32 0
  %conv73 = trunc i32 %cond72 to i8
  %53 = load i32, i32* %b, align 4
  %idxprom74 = sext i32 %53 to i64
  %54 = load i8*, i8** %d, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %54, i64 %idxprom74
  store i8 %conv73, i8* %arrayidx75, align 1
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.67, %if.then.58
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.39
  %arraydecay77 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %55 = load i8, i8* %arraydecay77, align 1
  %idxprom78 = zext i8 %55 to i64
  %56 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx79 = getelementptr inbounds i16, i16* %56, i64 %idxprom78
  %57 = load i16, i16* %arrayidx79, align 2
  %conv80 = zext i16 %57 to i32
  %and81 = and i32 %conv80, 8
  %cmp82 = icmp ne i32 %and81, 0
  br i1 %cmp82, label %cond.true.84, label %cond.false.87

cond.true.84:                                     ; preds = %sw.default
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call86 = call i32 @atoi(i8* %arraydecay85) #9
  br label %cond.end.88

cond.false.87:                                    ; preds = %sw.default
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.84
  %cond89 = phi i32 [ %call86, %cond.true.84 ], [ 0, %cond.false.87 ]
  %conv90 = sitofp i32 %cond89 to double
  %58 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval91 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %58, i32 0, i32 2
  %59 = load i32, i32* %maxval91, align 4
  %conv92 = sitofp i32 %59 to double
  %div = fdiv double %conv90, %conv92
  %mul93 = fmul double 2.550000e+02, %div
  %conv94 = fptoui double %mul93 to i8
  %60 = load i32, i32* %b, align 4
  %idxprom95 = sext i32 %60 to i64
  %61 = load i8*, i8** %d, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %61, i64 %idxprom95
  store i8 %conv94, i8* %arrayidx96, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.88, %if.end.76, %cond.end.50
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.30, %if.then
  %62 = load i32, i32* %b, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %63 = load i32, i32* %np, align 4
  %64 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end
  %65 = load i32, i32* %x, align 4
  %inc98 = add nsw i32 %65, 1
  store i32 %inc98, i32* %x, align 4
  br label %for.cond.19

for.end.99:                                       ; preds = %for.cond.19
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %66 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %66, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.15

for.end.102:                                      ; preds = %for.cond.15
  %67 = load i32, i32* %y, align 4
  %conv103 = sitofp i32 %67 to double
  %68 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres104 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %68, i32 0, i32 1
  %69 = load i32, i32* %yres104, align 4
  %conv105 = sitofp i32 %69 to double
  %div106 = fdiv double %conv103, %conv105
  %call107 = call i32 @gimp_progress_update(double %div106)
  %70 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %71 = load i8*, i8** %data, align 8
  %72 = load i32, i32* %y, align 4
  %73 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres108 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %73, i32 0, i32 0
  %74 = load i32, i32* %xres108, align 4
  %75 = load i32, i32* %scanlines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %70, i8* %71, i32 0, i32 %72, i32 %74, i32 %75)
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.102
  %76 = load i32, i32* %scanlines, align 4
  %77 = load i32, i32* %y, align 4
  %add110 = add nsw i32 %77, %76
  store i32 %add110, i32* %y, align 4
  br label %for.cond

for.end.111:                                      ; preds = %for.cond
  %call112 = call i32 @gimp_progress_update(double 1.000000e+00)
  %78 = load i8*, i8** %data, align 8
  call void @g_free(i8* %78)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnm_load_rawpbm(%struct._PNMScanner* %scan, %struct._PNMInfo* %info, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %scan.addr = alloca %struct._PNMScanner*, align 8
  %info.addr = alloca %struct._PNMInfo*, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf = alloca i8*, align 8
  %curbyte = alloca i8, align 1
  %data = alloca i8*, align 8
  %d = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %scanlines = alloca i32, align 4
  %fd = alloca i32, align 4
  %rowlen = alloca i32, align 4
  %bufpos = alloca i32, align 4
  store %struct._PNMScanner* %scan, %struct._PNMScanner** %scan.addr, align 8
  store %struct._PNMInfo* %info, %struct._PNMInfo** %info.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load %struct._PNMScanner*, %struct._PNMScanner** %scan.addr, align 8
  %fd1 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %0, i32 0, i32 0
  %1 = load i32, i32* %fd1, align 4
  store i32 %1, i32* %fd, align 4
  %2 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %xres, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %conv, 8.000000e+00
  %call = call double @ceil(double %div) #8
  %conv2 = fptosi double %call to i32
  store i32 %conv2, i32* %rowlen, align 4
  %call3 = call i32 @gimp_tile_height() #8
  %4 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres4 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %xres4, align 4
  %mul = mul i32 %call3, %5
  %conv5 = zext i32 %mul to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv5, i64 1)
  store i8* %call6, i8** %data, align 8
  %6 = load i32, i32* %rowlen, align 4
  %conv7 = sext i32 %6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 1)
  store i8* %call8, i8** %buf, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end.46, %entry
  %7 = load i32, i32* %y, align 4
  %8 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %8, i32 0, i32 1
  %9 = load i32, i32* %yres, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %y, align 4
  store i32 %10, i32* %start, align 4
  %11 = load i32, i32* %y, align 4
  %call10 = call i32 @gimp_tile_height() #8
  %add = add i32 %11, %call10
  store i32 %add, i32* %end, align 4
  %12 = load i32, i32* %end, align 4
  %13 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres11 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %yres11, align 4
  %cmp12 = icmp slt i32 %12, %14
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load i32, i32* %end, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres14 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %16, i32 0, i32 1
  %17 = load i32, i32* %yres14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, i32* %end, align 4
  %18 = load i32, i32* %end, align 4
  %19 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %18, %19
  store i32 %sub, i32* %scanlines, align 4
  %20 = load i8*, i8** %data, align 8
  store i8* %20, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.44, %cond.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %scanlines, align 4
  %cmp16 = icmp slt i32 %21, %22
  br i1 %cmp16, label %for.body.18, label %for.end.46

for.body.18:                                      ; preds = %for.cond.15
  %23 = load i32, i32* %rowlen, align 4
  %conv19 = sext i32 %23 to i64
  %24 = load i32, i32* %fd, align 4
  %25 = load i8*, i8** %buf, align 8
  %26 = load i32, i32* %rowlen, align 4
  %conv20 = sext i32 %26 to i64
  %call21 = call i64 @read(i32 %24, i8* %25, i64 %conv20)
  %cmp22 = icmp ne i64 %conv19, %call21
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.18
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call24)
  %27 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %jmpbuf = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %27, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay, i32 1) #11
  unreachable

if.end:                                           ; preds = %for.body.18
  store i32 0, i32* %bufpos, align 4
  %28 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1
  store i8 %29, i8* %curbyte, align 1
  store i32 0, i32* %x, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.end
  %30 = load i32, i32* %x, align 4
  %31 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres26 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %xres26, align 4
  %cmp27 = icmp slt i32 %30, %32
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.25
  %33 = load i32, i32* %x, align 4
  %rem = srem i32 %33, 8
  %cmp30 = icmp eq i32 %rem, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.body.29
  %34 = load i32, i32* %bufpos, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %bufpos, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i8*, i8** %buf, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %35, i64 %idxprom
  %36 = load i8, i8* %arrayidx33, align 1
  store i8 %36, i8* %curbyte, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.body.29
  %37 = load i8, i8* %curbyte, align 1
  %conv35 = zext i8 %37 to i32
  %and = and i32 %conv35, 128
  %tobool = icmp ne i32 %and, 0
  %cond36 = select i1 %tobool, i32 0, i32 255
  %conv37 = trunc i32 %cond36 to i8
  %38 = load i32, i32* %x, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load i8*, i8** %d, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %39, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  %40 = load i8, i8* %curbyte, align 1
  %conv40 = zext i8 %40 to i32
  %shl = shl i32 %conv40, 1
  %conv41 = trunc i32 %shl to i8
  store i8 %conv41, i8* %curbyte, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %41 = load i32, i32* %x, align 4
  %inc42 = add nsw i32 %41, 1
  store i32 %inc42, i32* %x, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %42 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres43 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %42, i32 0, i32 0
  %43 = load i32, i32* %xres43, align 4
  %44 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %45 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %45, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.15

for.end.46:                                       ; preds = %for.cond.15
  %46 = load i32, i32* %y, align 4
  %conv47 = sitofp i32 %46 to double
  %47 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres48 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %47, i32 0, i32 1
  %48 = load i32, i32* %yres48, align 4
  %conv49 = sitofp i32 %48 to double
  %div50 = fdiv double %conv47, %conv49
  %call51 = call i32 @gimp_progress_update(double %div50)
  %49 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %50 = load i8*, i8** %data, align 8
  %51 = load i32, i32* %y, align 4
  %52 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres52 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %52, i32 0, i32 0
  %53 = load i32, i32* %xres52, align 4
  %54 = load i32, i32* %scanlines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %49, i8* %50, i32 0, i32 %51, i32 %53, i32 %54)
  %55 = load i32, i32* %scanlines, align 4
  %56 = load i32, i32* %y, align 4
  %add53 = add nsw i32 %56, %55
  store i32 %add53, i32* %y, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  %call55 = call i32 @gimp_progress_update(double 1.000000e+00)
  %57 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %57)
  %58 = load i8*, i8** %data, align 8
  call void @g_free(i8* %58)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnm_load_raw(%struct._PNMScanner* %scan, %struct._PNMInfo* %info, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %scan.addr = alloca %struct._PNMScanner*, align 8
  %info.addr = alloca %struct._PNMInfo*, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %bpc = alloca i32, align 4
  %data = alloca i8*, align 8
  %bdata = alloca i8*, align 8
  %d = alloca i8*, align 8
  %b = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %scanlines = alloca i32, align 4
  %fd = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct._PNMScanner* %scan, %struct._PNMScanner** %scan.addr, align 8
  store %struct._PNMInfo* %info, %struct._PNMInfo** %info.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %0, i32 0, i32 2
  %1 = load i32, i32* %maxval, align 4
  %cmp = icmp sgt i32 %1, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %bpc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %bpc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call i32 @gimp_tile_height() #8
  %2 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %xres, align 4
  %mul = mul i32 %call, %3
  %4 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %4, i32 0, i32 3
  %5 = load i32, i32* %np, align 4
  %mul1 = mul i32 %mul, %5
  %6 = load i32, i32* %bpc, align 4
  %mul2 = mul i32 %mul1, %6
  %conv = zext i32 %mul2 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** %data, align 8
  store i8* null, i8** %bdata, align 8
  %7 = load i32, i32* %bpc, align 4
  %cmp4 = icmp sgt i32 %7, 1
  br i1 %cmp4, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  %call7 = call i32 @gimp_tile_height() #8
  %8 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres8 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %xres8, align 4
  %mul9 = mul i32 %call7, %9
  %10 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np10 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %np10, align 4
  %mul11 = mul i32 %mul9, %11
  %conv12 = zext i32 %mul11 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  store i8* %call13, i8** %bdata, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.6, %if.end
  %12 = load %struct._PNMScanner*, %struct._PNMScanner** %scan.addr, align 8
  %fd15 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %12, i32 0, i32 0
  %13 = load i32, i32* %fd15, align 4
  store i32 %13, i32* %fd, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.139, %if.end.14
  %14 = load i32, i32* %y, align 4
  %15 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %15, i32 0, i32 1
  %16 = load i32, i32* %yres, align 4
  %cmp16 = icmp slt i32 %14, %16
  br i1 %cmp16, label %for.body, label %for.end.141

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %y, align 4
  store i32 %17, i32* %start, align 4
  %18 = load i32, i32* %y, align 4
  %call18 = call i32 @gimp_tile_height() #8
  %add = add i32 %18, %call18
  store i32 %add, i32* %end, align 4
  %19 = load i32, i32* %end, align 4
  %20 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres19 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %20, i32 0, i32 1
  %21 = load i32, i32* %yres19, align 4
  %cmp20 = icmp slt i32 %19, %21
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %22 = load i32, i32* %end, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %23 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres22 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %yres22, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, i32* %end, align 4
  %25 = load i32, i32* %end, align 4
  %26 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %25, %26
  store i32 %sub, i32* %scanlines, align 4
  %27 = load i8*, i8** %data, align 8
  store i8* %27, i8** %d, align 8
  %28 = load i8*, i8** %bdata, align 8
  store i8* %28, i8** %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.125, %cond.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %scanlines, align 4
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body.26, label %for.end.127

for.body.26:                                      ; preds = %for.cond.23
  %31 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres27 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %xres27, align 4
  %33 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np28 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %33, i32 0, i32 3
  %34 = load i32, i32* %np28, align 4
  %mul29 = mul nsw i32 %32, %34
  %35 = load i32, i32* %bpc, align 4
  %mul30 = mul nsw i32 %mul29, %35
  %conv31 = sext i32 %mul30 to i64
  %36 = load i32, i32* %fd, align 4
  %37 = load i8*, i8** %d, align 8
  %38 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres32 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %38, i32 0, i32 0
  %39 = load i32, i32* %xres32, align 4
  %40 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np33 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %40, i32 0, i32 3
  %41 = load i32, i32* %np33, align 4
  %mul34 = mul nsw i32 %39, %41
  %42 = load i32, i32* %bpc, align 4
  %mul35 = mul nsw i32 %mul34, %42
  %conv36 = sext i32 %mul35 to i64
  %call37 = call i64 @read(i32 %36, i8* %37, i64 %conv36)
  %cmp38 = icmp ne i64 %conv31, %call37
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %for.body.26
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call41)
  %43 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %jmpbuf = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %43, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmpbuf, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay, i32 1) #11
  unreachable

if.end.42:                                        ; preds = %for.body.26
  %44 = load i32, i32* %bpc, align 4
  %cmp43 = icmp sgt i32 %44, 1
  br i1 %cmp43, label %if.then.45, label %if.else.76

if.then.45:                                       ; preds = %if.end.42
  store i32 0, i32* %x, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.then.45
  %45 = load i32, i32* %x, align 4
  %46 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres47 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %46, i32 0, i32 0
  %47 = load i32, i32* %xres47, align 4
  %48 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np48 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %48, i32 0, i32 3
  %49 = load i32, i32* %np48, align 4
  %mul49 = mul nsw i32 %47, %49
  %cmp50 = icmp slt i32 %45, %mul49
  br i1 %cmp50, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.46
  %50 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  %51 = load i8, i8* %50, align 1
  %conv53 = zext i8 %51 to i32
  %shl = shl i32 %conv53, 8
  store i32 %shl, i32* %v, align 4
  %52 = load i8*, i8** %d, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr54, i8** %d, align 8
  %53 = load i8, i8* %52, align 1
  %conv55 = zext i8 %53 to i32
  %54 = load i32, i32* %v, align 4
  %add56 = add nsw i32 %54, %conv55
  store i32 %add56, i32* %v, align 4
  %55 = load i32, i32* %v, align 4
  %56 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval57 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %56, i32 0, i32 2
  %57 = load i32, i32* %maxval57, align 4
  %cmp58 = icmp slt i32 %55, %57
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %for.body.52
  %58 = load i32, i32* %v, align 4
  br label %cond.end.63

cond.false.61:                                    ; preds = %for.body.52
  %59 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval62 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %59, i32 0, i32 2
  %60 = load i32, i32* %maxval62, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.60
  %cond64 = phi i32 [ %58, %cond.true.60 ], [ %60, %cond.false.61 ]
  %conv65 = trunc i32 %cond64 to i8
  %61 = load i32, i32* %x, align 4
  %idxprom = sext i32 %61 to i64
  %62 = load i8*, i8** %b, align 8
  %arrayidx = getelementptr inbounds i8, i8* %62, i64 %idxprom
  store i8 %conv65, i8* %arrayidx, align 1
  %63 = load i32, i32* %v, align 4
  %conv66 = sitofp i32 %63 to double
  %mul67 = fmul double 2.550000e+02, %conv66
  %64 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval68 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %64, i32 0, i32 2
  %65 = load i32, i32* %maxval68, align 4
  %conv69 = sitofp i32 %65 to double
  %div = fdiv double %mul67, %conv69
  %conv70 = fptoui double %div to i8
  %66 = load i32, i32* %x, align 4
  %idxprom71 = sext i32 %66 to i64
  %67 = load i8*, i8** %b, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %67, i64 %idxprom71
  store i8 %conv70, i8* %arrayidx72, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.63
  %68 = load i32, i32* %x, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %69 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres73 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %69, i32 0, i32 0
  %70 = load i32, i32* %xres73, align 4
  %71 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np74 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %71, i32 0, i32 3
  %72 = load i32, i32* %np74, align 4
  %mul75 = mul nsw i32 %70, %72
  %73 = load i8*, i8** %b, align 8
  %idx.ext = sext i32 %mul75 to i64
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %idx.ext
  store i8* %add.ptr, i8** %b, align 8
  br label %if.end.124

if.else.76:                                       ; preds = %if.end.42
  %74 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval77 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %74, i32 0, i32 2
  %75 = load i32, i32* %maxval77, align 4
  %cmp78 = icmp ne i32 %75, 255
  br i1 %cmp78, label %if.then.80, label %if.end.118

if.then.80:                                       ; preds = %if.else.76
  store i32 0, i32* %x, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.115, %if.then.80
  %76 = load i32, i32* %x, align 4
  %77 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres82 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %77, i32 0, i32 0
  %78 = load i32, i32* %xres82, align 4
  %79 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np83 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %79, i32 0, i32 3
  %80 = load i32, i32* %np83, align 4
  %mul84 = mul nsw i32 %78, %80
  %cmp85 = icmp slt i32 %76, %mul84
  br i1 %cmp85, label %for.body.87, label %for.end.117

for.body.87:                                      ; preds = %for.cond.81
  %81 = load i32, i32* %x, align 4
  %idxprom88 = sext i32 %81 to i64
  %82 = load i8*, i8** %d, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %82, i64 %idxprom88
  %83 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %83 to i32
  %84 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval91 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %84, i32 0, i32 2
  %85 = load i32, i32* %maxval91, align 4
  %cmp92 = icmp slt i32 %conv90, %85
  br i1 %cmp92, label %cond.true.94, label %cond.false.98

cond.true.94:                                     ; preds = %for.body.87
  %86 = load i32, i32* %x, align 4
  %idxprom95 = sext i32 %86 to i64
  %87 = load i8*, i8** %d, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %87, i64 %idxprom95
  %88 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %88 to i32
  br label %cond.end.100

cond.false.98:                                    ; preds = %for.body.87
  %89 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval99 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %89, i32 0, i32 2
  %90 = load i32, i32* %maxval99, align 4
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.94
  %cond101 = phi i32 [ %conv97, %cond.true.94 ], [ %90, %cond.false.98 ]
  %conv102 = trunc i32 %cond101 to i8
  %91 = load i32, i32* %x, align 4
  %idxprom103 = sext i32 %91 to i64
  %92 = load i8*, i8** %d, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %92, i64 %idxprom103
  store i8 %conv102, i8* %arrayidx104, align 1
  %93 = load i32, i32* %x, align 4
  %idxprom105 = sext i32 %93 to i64
  %94 = load i8*, i8** %d, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %94, i64 %idxprom105
  %95 = load i8, i8* %arrayidx106, align 1
  %conv107 = uitofp i8 %95 to double
  %mul108 = fmul double 2.550000e+02, %conv107
  %96 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %maxval109 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %96, i32 0, i32 2
  %97 = load i32, i32* %maxval109, align 4
  %conv110 = sitofp i32 %97 to double
  %div111 = fdiv double %mul108, %conv110
  %conv112 = fptoui double %div111 to i8
  %98 = load i32, i32* %x, align 4
  %idxprom113 = sext i32 %98 to i64
  %99 = load i8*, i8** %d, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %99, i64 %idxprom113
  store i8 %conv112, i8* %arrayidx114, align 1
  br label %for.inc.115

for.inc.115:                                      ; preds = %cond.end.100
  %100 = load i32, i32* %x, align 4
  %inc116 = add nsw i32 %100, 1
  store i32 %inc116, i32* %x, align 4
  br label %for.cond.81

for.end.117:                                      ; preds = %for.cond.81
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %if.else.76
  %101 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres119 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %101, i32 0, i32 0
  %102 = load i32, i32* %xres119, align 4
  %103 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %np120 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %103, i32 0, i32 3
  %104 = load i32, i32* %np120, align 4
  %mul121 = mul nsw i32 %102, %104
  %105 = load i8*, i8** %d, align 8
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %105, i64 %idx.ext122
  store i8* %add.ptr123, i8** %d, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.118, %for.end
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %106 = load i32, i32* %i, align 4
  %inc126 = add nsw i32 %106, 1
  store i32 %inc126, i32* %i, align 4
  br label %for.cond.23

for.end.127:                                      ; preds = %for.cond.23
  %107 = load i32, i32* %y, align 4
  %conv128 = sitofp i32 %107 to double
  %108 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %yres129 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %108, i32 0, i32 1
  %109 = load i32, i32* %yres129, align 4
  %conv130 = sitofp i32 %109 to double
  %div131 = fdiv double %conv128, %conv130
  %call132 = call i32 @gimp_progress_update(double %div131)
  %110 = load i32, i32* %bpc, align 4
  %cmp133 = icmp sgt i32 %110, 1
  br i1 %cmp133, label %if.then.135, label %if.else.137

if.then.135:                                      ; preds = %for.end.127
  %111 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %112 = load i8*, i8** %bdata, align 8
  %113 = load i32, i32* %y, align 4
  %114 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres136 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %114, i32 0, i32 0
  %115 = load i32, i32* %xres136, align 4
  %116 = load i32, i32* %scanlines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %111, i8* %112, i32 0, i32 %113, i32 %115, i32 %116)
  br label %if.end.139

if.else.137:                                      ; preds = %for.end.127
  %117 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %118 = load i8*, i8** %data, align 8
  %119 = load i32, i32* %y, align 4
  %120 = load %struct._PNMInfo*, %struct._PNMInfo** %info.addr, align 8
  %xres138 = getelementptr inbounds %struct._PNMInfo, %struct._PNMInfo* %120, i32 0, i32 0
  %121 = load i32, i32* %xres138, align 4
  %122 = load i32, i32* %scanlines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %117, i8* %118, i32 0, i32 %119, i32 %121, i32 %122)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.137, %if.then.135
  %123 = load i32, i32* %scanlines, align 4
  %124 = load i32, i32* %y, align 4
  %add140 = add nsw i32 %124, %123
  store i32 %add140, i32* %y, align 4
  br label %for.cond

for.end.141:                                      ; preds = %for.cond
  %call142 = call i32 @gimp_progress_update(double 1.000000e+00)
  %125 = load i8*, i8** %data, align 8
  call void @g_free(i8* %125)
  %126 = load i8*, i8** %bdata, align 8
  call void @g_free(i8* %126)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

; Function Attrs: nounwind uwtable
define internal void @pnmscanner_createbuffer(%struct._PNMScanner* %s, i32 %bufsize) #0 {
entry:
  %s.addr = alloca %struct._PNMScanner*, align 8
  %bufsize.addr = alloca i32, align 4
  store %struct._PNMScanner* %s, %struct._PNMScanner** %s.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  %0 = load i32, i32* %bufsize.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %1 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbuf = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %1, i32 0, i32 3
  store i8* %call, i8** %inbuf, align 8
  %2 = load i32, i32* %bufsize.addr, align 4
  %3 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufsize = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %3, i32 0, i32 4
  store i32 %2, i32* %inbufsize, align 4
  %4 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufpos = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %4, i32 0, i32 6
  store i32 0, i32* %inbufpos, align 4
  %5 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %fd = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %5, i32 0, i32 0
  %6 = load i32, i32* %fd, align 4
  %7 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbuf1 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %7, i32 0, i32 3
  %8 = load i8*, i8** %inbuf1, align 8
  %9 = load i32, i32* %bufsize.addr, align 4
  %conv2 = sext i32 %9 to i64
  %call3 = call i64 @read(i32 %6, i8* %8, i64 %conv2)
  %conv4 = trunc i64 %call3 to i32
  %10 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %inbufvalidsize = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %10, i32 0, i32 5
  store i32 %conv4, i32* %inbufvalidsize, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnmscanner_getsmalltoken(%struct._PNMScanner* %s, i8* %buf) #0 {
entry:
  %s.addr = alloca %struct._PNMScanner*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct._PNMScanner* %s, %struct._PNMScanner** %s.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  call void @pnmscanner_eatwhitespace(%struct._PNMScanner* %0)
  %1 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %eof = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %1, i32 0, i32 2
  %2 = load i32, i32* %eof, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %3, i32 0, i32 1
  %4 = load i8, i8* %cur, align 1
  %idxprom = zext i8 %4 to i64
  %5 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur3 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %7, i32 0, i32 1
  %8 = load i8, i8* %cur3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 35
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %9 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  %cur7 = getelementptr inbounds %struct._PNMScanner, %struct._PNMScanner* %9, i32 0, i32 1
  %10 = load i8, i8* %cur7, align 1
  %11 = load i8*, i8** %buf.addr, align 8
  store i8 %10, i8* %11, align 1
  %12 = load %struct._PNMScanner*, %struct._PNMScanner** %s.addr, align 8
  call void @pnmscanner_getchar(%struct._PNMScanner* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

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

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @pnmsaverow_ascii_pbm(%struct._PNMRowInfo* %ri, i8* %data) #0 {
entry:
  %ri.addr = alloca %struct._PNMRowInfo*, align 8
  %data.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %rbcur = alloca i8*, align 8
  store %struct._PNMRowInfo* %ri, %struct._PNMRowInfo** %ri.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %0, i32 0, i32 1
  %1 = load i8*, i8** %rowbuf, align 8
  store i8* %1, i8** %rbcur, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %3, i32 0, i32 2
  %4 = load i32, i32* %xres, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @pnmsaverow_ascii_pbm.line_len, align 4
  %cmp1 = icmp sgt i32 %5, 69
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %rbcur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 10, i8* %arrayidx, align 1
  store i32 0, i32* @pnmsaverow_ascii_pbm.line_len, align 4
  %8 = load i32, i32* %len, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %len, align 4
  %9 = load i8*, i8** %rbcur, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %rbcur, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 %idxprom2
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %12 to i32
  %13 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %zero_is_black = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %13, i32 0, i32 7
  %14 = load i32, i32* %zero_is_black, align 4
  %cmp4 = icmp eq i32 %conv, %14
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i8*, i8** %rbcur, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %idxprom7
  store i8 48, i8* %arrayidx8, align 1
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i8*, i8** %rbcur, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %idxprom9
  store i8 49, i8* %arrayidx10, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.6
  %19 = load i32, i32* @pnmsaverow_ascii_pbm.line_len, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* @pnmsaverow_ascii_pbm.line_len, align 4
  %20 = load i32, i32* %len, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %rbcur, align 8
  %23 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8 10, i8* %add.ptr, align 1
  %24 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %fd = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %fd, align 4
  %26 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf15 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %26, i32 0, i32 1
  %27 = load i8*, i8** %rowbuf15, align 8
  %28 = load i32, i32* %len, align 4
  %conv16 = sext i32 %28 to i64
  %call = call i64 @write(i32 %25, i8* %27, i64 %conv16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnmsaverow_ascii(%struct._PNMRowInfo* %ri, i8* %data) #0 {
entry:
  %ri.addr = alloca %struct._PNMRowInfo*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rbcur = alloca i8*, align 8
  store %struct._PNMRowInfo* %ri, %struct._PNMRowInfo** %ri.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %0, i32 0, i32 1
  %1 = load i8*, i8** %rowbuf, align 8
  store i8* %1, i8** %rbcur, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %3, i32 0, i32 2
  %4 = load i32, i32* %xres, align 4
  %5 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %np = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %5, i32 0, i32 3
  %6 = load i32, i32* %np, align 4
  %mul = mul nsw i32 %4, %6
  %cmp = icmp slt i32 %2, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %rbcur, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 255, %conv
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i32 %and) #7
  %10 = load i8*, i8** %rbcur, align 8
  %call1 = call i64 @strlen(i8* %10) #9
  %11 = load i8*, i8** %rbcur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %call1
  store i8* %add.ptr, i8** %rbcur, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %fd = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %fd, align 4
  %15 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf2 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %15, i32 0, i32 1
  %16 = load i8*, i8** %rowbuf2, align 8
  %17 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf3 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %17, i32 0, i32 1
  %18 = load i8*, i8** %rowbuf3, align 8
  %call4 = call i64 @strlen(i8* %18) #9
  %call5 = call i64 @write(i32 %14, i8* %16, i64 %call4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnmsaverow_ascii_indexed(%struct._PNMRowInfo* %ri, i8* %data) #0 {
entry:
  %ri.addr = alloca %struct._PNMRowInfo*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rbcur = alloca i8*, align 8
  store %struct._PNMRowInfo* %ri, %struct._PNMRowInfo** %ri.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %0, i32 0, i32 1
  %1 = load i8*, i8** %rowbuf, align 8
  store i8* %1, i8** %rbcur, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %3, i32 0, i32 2
  %4 = load i32, i32* %xres, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %rbcur, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %red = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %8, i32 0, i32 4
  %9 = load i8*, i8** %red, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 255, %conv
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i32 %and) #7
  %11 = load i8*, i8** %rbcur, align 8
  %call1 = call i64 @strlen(i8* %11) #9
  %12 = load i8*, i8** %rbcur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %call1
  store i8* %add.ptr, i8** %rbcur, align 8
  %13 = load i8*, i8** %rbcur, align 8
  %14 = load i8*, i8** %data.addr, align 8
  %15 = load i8, i8* %14, align 1
  %idxprom2 = zext i8 %15 to i64
  %16 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %grn = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %16, i32 0, i32 5
  %17 = load i8*, i8** %grn, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 %idxprom2
  %18 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %18 to i32
  %and5 = and i32 255, %conv4
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i32 %and5) #7
  %19 = load i8*, i8** %rbcur, align 8
  %call7 = call i64 @strlen(i8* %19) #9
  %20 = load i8*, i8** %rbcur, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %20, i64 %call7
  store i8* %add.ptr8, i8** %rbcur, align 8
  %21 = load i8*, i8** %rbcur, align 8
  %22 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %23 = load i8, i8* %22, align 1
  %idxprom9 = zext i8 %23 to i64
  %24 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %blu = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %24, i32 0, i32 6
  %25 = load i8*, i8** %blu, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %25, i64 %idxprom9
  %26 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %26 to i32
  %and12 = and i32 255, %conv11
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i32 %and12) #7
  %27 = load i8*, i8** %rbcur, align 8
  %call14 = call i64 @strlen(i8* %27) #9
  %28 = load i8*, i8** %rbcur, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %28, i64 %call14
  store i8* %add.ptr15, i8** %rbcur, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %fd = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %30, i32 0, i32 0
  %31 = load i32, i32* %fd, align 4
  %32 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf16 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %32, i32 0, i32 1
  %33 = load i8*, i8** %rowbuf16, align 8
  %34 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf17 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %34, i32 0, i32 1
  %35 = load i8*, i8** %rowbuf17, align 8
  %call18 = call i64 @strlen(i8* %35) #9
  %call19 = call i64 @write(i32 %31, i8* %33, i64 %call18)
  ret void
}

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

; Function Attrs: nounwind uwtable
define internal void @pnmsaverow_raw_pbm(%struct._PNMRowInfo* %ri, i8* %data) #0 {
entry:
  %ri.addr = alloca %struct._PNMRowInfo*, align 8
  %data.addr = alloca i8*, align 8
  %b = alloca i32, align 4
  %p = alloca i32, align 4
  %rbcur = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._PNMRowInfo* %ri, %struct._PNMRowInfo** %ri.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %p, align 4
  %0 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %0, i32 0, i32 1
  %1 = load i8*, i8** %rowbuf, align 8
  store i8* %1, i8** %rbcur, align 8
  %2 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %2, i32 0, i32 2
  %3 = load i32, i32* %xres, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %conv, 8.000000e+00
  %call = call double @ceil(double %div) #8
  %conv1 = fptosi double %call to i32
  store i32 %conv1, i32* %len, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %b, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %rbcur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %8, 8
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %p, align 4
  %10 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres7 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %10, i32 0, i32 2
  %11 = load i32, i32* %xres7, align 4
  %cmp8 = icmp sge i32 %9, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  br label %for.end

if.end:                                           ; preds = %for.body.6
  %12 = load i32, i32* %p, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8*, i8** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %15 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %zero_is_black = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %15, i32 0, i32 7
  %16 = load i32, i32* %zero_is_black, align 4
  %cmp13 = icmp ne i32 %conv12, %16
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %sub = sub nsw i32 7, %17
  %shl = shl i32 1, %sub
  %conv16 = trunc i32 %shl to i8
  %conv17 = sext i8 %conv16 to i32
  %18 = load i32, i32* %b, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i8*, i8** %rbcur, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %20 to i32
  %or = or i32 %conv20, %conv17
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx19, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %if.end
  %21 = load i32, i32* %p, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %p, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %22 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then, %for.cond.3
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %23 = load i32, i32* %b, align 4
  %inc25 = add nsw i32 %23, 1
  store i32 %inc25, i32* %b, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %24 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %fd = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %fd, align 4
  %26 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf27 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %26, i32 0, i32 1
  %27 = load i8*, i8** %rowbuf27, align 8
  %28 = load i32, i32* %len, align 4
  %conv28 = sext i32 %28 to i64
  %call29 = call i64 @write(i32 %25, i8* %27, i64 %conv28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnmsaverow_raw(%struct._PNMRowInfo* %ri, i8* %data) #0 {
entry:
  %ri.addr = alloca %struct._PNMRowInfo*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._PNMRowInfo* %ri, %struct._PNMRowInfo** %ri.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %fd = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %3, i32 0, i32 2
  %4 = load i32, i32* %xres, align 4
  %5 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %np = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %5, i32 0, i32 3
  %6 = load i32, i32* %np, align 4
  %mul = mul nsw i32 %4, %6
  %conv = sext i32 %mul to i64
  %call = call i64 @write(i32 %1, i8* %2, i64 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pnmsaverow_raw_indexed(%struct._PNMRowInfo* %ri, i8* %data) #0 {
entry:
  %ri.addr = alloca %struct._PNMRowInfo*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rbcur = alloca i8*, align 8
  store %struct._PNMRowInfo* %ri, %struct._PNMRowInfo** %ri.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %0, i32 0, i32 1
  %1 = load i8*, i8** %rowbuf, align 8
  store i8* %1, i8** %rbcur, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %3, i32 0, i32 2
  %4 = load i32, i32* %xres, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %7 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %red = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %7, i32 0, i32 4
  %8 = load i8*, i8** %red, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i8*, i8** %rbcur, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %rbcur, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** %data.addr, align 8
  %12 = load i8, i8* %11, align 1
  %idxprom1 = zext i8 %12 to i64
  %13 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %grn = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %13, i32 0, i32 5
  %14 = load i8*, i8** %grn, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %14, i64 %idxprom1
  %15 = load i8, i8* %arrayidx2, align 1
  %16 = load i8*, i8** %rbcur, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr3, i8** %rbcur, align 8
  store i8 %15, i8* %16, align 1
  %17 = load i8*, i8** %data.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr4, i8** %data.addr, align 8
  %18 = load i8, i8* %17, align 1
  %idxprom5 = zext i8 %18 to i64
  %19 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %blu = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %19, i32 0, i32 6
  %20 = load i8*, i8** %blu, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %20, i64 %idxprom5
  %21 = load i8, i8* %arrayidx6, align 1
  %22 = load i8*, i8** %rbcur, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr7, i8** %rbcur, align 8
  store i8 %21, i8* %22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %fd = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %fd, align 4
  %26 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %rowbuf8 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %26, i32 0, i32 1
  %27 = load i8*, i8** %rowbuf8, align 8
  %28 = load %struct._PNMRowInfo*, %struct._PNMRowInfo** %ri.addr, align 8
  %xres9 = getelementptr inbounds %struct._PNMRowInfo, %struct._PNMRowInfo* %28, i32 0, i32 2
  %29 = load i32, i32* %xres9, align 4
  %mul = mul nsw i32 %29, 3
  %conv = sext i32 %mul to i64
  %call = call i64 @write(i32 %25, i8* %27, i64 %conv)
  ret void
}

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind returns_twice }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
