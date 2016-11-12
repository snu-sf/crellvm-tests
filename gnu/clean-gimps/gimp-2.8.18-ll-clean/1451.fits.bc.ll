; ModuleID = './plug-ins/file-fits/fits.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.FITSLoadVals = type { i32, i32, i32 }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FITS_FILE = type { %struct._IO_FILE*, i8, i32, i32, i32, i32, %struct.fits_hdu_list* }
%struct.fits_hdu_list = type { i64, i64, i64, i64, i32, i32, i32, [128 x [80 x i8]], %struct.anon, double, double, i32, [999 x i32], i32, i64, double, double, [80 x i8], i64, i64, double, double, i32, i32, %struct.fits_record_list*, %struct.fits_hdu_list* }
%struct.anon = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.fits_record_list = type { [2880 x i8], %struct.fits_record_list* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.FITS_PIX_TRANSFORM = type { double, double, double, double, double, i8 }
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
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"file-fits-load\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"load file of the FITS file format\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"load file of the FITS file format (Flexible Image Transport System)\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Peter Kirchgessner\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Peter Kirchgessner (peter@kirchgessner.net)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Flexible Image Transport System\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"image/x-fits\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"fit,fits\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"0,string,SIMPLE\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"file-fits-save\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"save file in the FITS file format\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"FITS saving handles all image types except those with alpha channels.\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"RGB, GRAY, INDEXED\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@l_run_mode = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@plvals = internal global %struct.FITSLoadVals zeroinitializer, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"file-fits\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"FITS\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Load FITS File\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"gimp-file-fits\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Replacement for undefined pixels\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Pixel value scaling\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"By DATAMIN/DATAMAX\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Image Composing\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"composing\04None\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"NAXIS=3, NAXIS3=2,...,4\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Error during open of FITS file\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"FITS file keeps no displayable images\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"EOF encountered on reading\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"%s-img%ld\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"FITS save cannot handle images with alpha channels\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"Cannot operate on unknown image types.\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Write error occurred\00", align 1
@create_fits_header.ctype3_card = internal global [15 x i8*] [i8* null, i8* null, i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.67, i32 0, i32 0)], align 16
@.str.58 = private unnamed_addr constant [48 x i8] c"COMMENT Image type within GIMP: GIMP_GRAY_IMAGE\00", align 1
@.str.59 = private unnamed_addr constant [75 x i8] c"COMMENT Image type within GIMP: GIMP_GRAYA_IMAGE (gray with alpha channel)\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"COMMENT Sequence for NAXIS3   : GRAY, ALPHA\00", align 1
@.str.61 = private unnamed_addr constant [63 x i8] c"CTYPE3  = 'GRAYA   '           / GRAY IMAGE WITH ALPHA CHANNEL\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"COMMENT Image type within GIMP: GIMP_RGB_IMAGE\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"COMMENT Sequence for NAXIS3   : RED, GREEN, BLUE\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"CTYPE3  = 'RGB     '           / RGB IMAGE\00", align 1
@.str.65 = private unnamed_addr constant [73 x i8] c"COMMENT Image type within GIMP: GIMP_RGBA_IMAGE (rgb with alpha channel)\00", align 1
@.str.66 = private unnamed_addr constant [56 x i8] c"COMMENT Sequence for NAXIS3   : RED, GREEN, BLUE, ALPHA\00", align 1
@.str.67 = private unnamed_addr constant [62 x i8] c"CTYPE3  = 'RGBA    '           / RGB IMAGE WITH ALPHA CHANNEL\00", align 1
@.str.68 = private unnamed_addr constant [58 x i8] c"HISTORY THIS FITS FILE WAS GENERATED BY GIMP USING FITSRW\00", align 1
@.str.69 = private unnamed_addr constant [81 x i8] c"COMMENT FitsRW is (C) Peter Kirchgessner (peter@kirchgessner.net), but available\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"COMMENT under the GNU general public licence.\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"COMMENT For sources see http://www.kirchgessner.net\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
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
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 %1, i32* @l_run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.27

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.then
  %call5 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.FITSLoadVals* @plvals to i8*))
  %call6 = call i32 @load_dialog()
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %sw.bb
  store i32 4, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %6 = load i32, i32* %nparams.addr, align 4
  %cmp9 = icmp ne i32 %6, 3
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.8
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %call13 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.FITSLoadVals* @plvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.12, %if.end.11, %if.end
  %7 = load i32, i32* %status, align 4
  %cmp14 = icmp eq i32 %7, 3
  br i1 %cmp14, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %sw.epilog
  call void @check_load_vals()
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data17 to i8**
  %9 = load i8*, i8** %d_string, align 8
  %call18 = call i32 @load_image(i8* %9, %struct._GError** %error)
  store i32 %call18, i32* %image_ID, align 4
  call void @show_fits_errors()
  %10 = load i32, i32* %image_ID, align 4
  %cmp19 = icmp ne i32 %10, -1
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.15
  %11 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %11, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %12 = load i32, i32* %image_ID, align 4
  store i32 %12, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then.15
  store i32 0, i32* %status, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %13 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %13, 3
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %call24 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.FITSLoadVals* @plvals to i8*), i32 12)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %sw.epilog
  br label %if.end.68

if.else.27:                                       ; preds = %do.end
  %14 = load i8*, i8** %name.addr, align 8
  %call28 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.66

if.then.30:                                       ; preds = %if.else.27
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 1
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int3233 = bitcast %union._GimpParamData* %data32 to i32*
  %16 = load i32, i32* %d_int3233, align 4
  store i32 %16, i32* %image_ID, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 2
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_int3236 = bitcast %union._GimpParamData* %data35 to i32*
  %18 = load i32, i32* %d_int3236, align 4
  store i32 %18, i32* %drawable_ID, align 4
  %19 = load i32, i32* %run_mode, align 4
  switch i32 %19, label %sw.default.42 [
    i32 0, label %sw.bb.37
    i32 2, label %sw.bb.37
  ]

sw.bb.37:                                         ; preds = %if.then.30, %if.then.30
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %call38 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 7)
  store i32 %call38, i32* %export, align 4
  %20 = load i32, i32* %export, align 4
  %cmp39 = icmp eq i32 %20, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.37
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.41:                                        ; preds = %sw.bb.37
  br label %sw.epilog.43

sw.default.42:                                    ; preds = %if.then.30
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %sw.default.42, %if.end.41
  %21 = load i32, i32* %run_mode, align 4
  switch i32 %21, label %sw.default.50 [
    i32 0, label %sw.bb.44
    i32 1, label %sw.bb.45
    i32 2, label %sw.bb.49
  ]

sw.bb.44:                                         ; preds = %sw.epilog.43
  br label %sw.epilog.51

sw.bb.45:                                         ; preds = %sw.epilog.43
  %22 = load i32, i32* %nparams.addr, align 4
  %cmp46 = icmp ne i32 %22, 5
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %sw.bb.45
  store i32 1, i32* %status, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %sw.bb.45
  br label %sw.epilog.51

sw.bb.49:                                         ; preds = %sw.epilog.43
  br label %sw.epilog.51

sw.default.50:                                    ; preds = %sw.epilog.43
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.default.50, %sw.bb.49, %if.end.48, %sw.bb.44
  %23 = load i32, i32* %status, align 4
  %cmp52 = icmp eq i32 %23, 3
  br i1 %cmp52, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %sw.epilog.51
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 3
  %data55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx54, i32 0, i32 1
  %d_string56 = bitcast %union._GimpParamData* %data55 to i8**
  %25 = load i8*, i8** %d_string56, align 8
  %26 = load i32, i32* %image_ID, align 4
  %27 = load i32, i32* %drawable_ID, align 4
  %call57 = call i32 @save_image(i8* %25, i32 %26, i32 %27, %struct._GError** %error)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.53
  store i32 0, i32* %status, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.53
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %sw.epilog.51
  %28 = load i32, i32* %export, align 4
  %cmp62 = icmp eq i32 %28, 2
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.61
  %29 = load i32, i32* %image_ID, align 4
  %call64 = call i32 @gimp_image_delete(i32 %29)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  br label %if.end.67

if.else.66:                                       ; preds = %if.else.27
  store i32 1, i32* %status, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.end.65
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.26
  %30 = load i32, i32* %status, align 4
  %cmp69 = icmp ne i32 %30, 3
  br i1 %cmp69, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %if.end.68
  %31 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool70 = icmp ne %struct._GError* %31, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true
  %32 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %32, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 2
  %34 = load i8*, i8** %message, align 8
  store i8* %34, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true, %if.end.68
  %35 = load i32, i32* %status, align 4
  store i32 %35, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.72, %if.then.40
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %5, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %8)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %vbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %14)
  %15 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 1, i32 1, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0)) #5
  %19 = load i32, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 0), align 4
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #5
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #5
  %call19 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call16, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (%struct.FITSLoadVals* @plvals to i8*), i32 %19, i8* %call17, i32 0, i8* null, i8* %call18, i32 255, i8* null, i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call20)
  %22 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0)) #5
  %25 = load i32, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 1), align 4
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0)) #5
  %call25 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call22, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 1) to i8*), i32 %25, i8* %call23, i32 0, i8* null, i8* %call24, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %frame, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0)) #5
  %31 = load i32, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 2), align 4
  %call29 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i64 10)
  %call30 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call28, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 2) to i8*), i32 %31, i8* %call29, i32 0, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %frame, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call31)
  %34 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_dialog_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call33)
  %40 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpDialog*
  %call35 = call i32 @gimp_dialog_run(%struct._GimpDialog* %40)
  %cmp = icmp eq i32 %call35, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %41)
  %42 = load i32, i32* %run, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal void @check_load_vals() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 0), align 4
  %cmp = icmp sgt i32 %0, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 255, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image_ID = alloca i32, align 4
  %image_list = alloca i32*, align 8
  %nl = alloca i32*, align 8
  %picnum = alloca i32, align 4
  %k = alloca i32, align 4
  %n_images = alloca i32, align 4
  %max_images = alloca i32, align 4
  %hdu_picnum = alloca i32, align 4
  %compose = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %ifp = alloca %struct.FITS_FILE*, align 8
  %hdu = alloca %struct.fits_hdu_list*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %6)
  %7 = load i8*, i8** %filename.addr, align 8
  %call9 = call %struct.FITS_FILE* @fits_open(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  store %struct.FITS_FILE* %call9, %struct.FITS_FILE** %ifp, align 8
  %8 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp, align 8
  %cmp = icmp eq %struct.FITS_FILE* %8, null
  br i1 %cmp, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @g_file_error_quark()
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call11, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %call12)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %10 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp, align 8
  %n_pic = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %10, i32 0, i32 3
  %11 = load i32, i32* %n_pic, align 4
  %cmp14 = icmp sle i32 %11, 0
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_error_quark()
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %call16, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %call17)
  %13 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp, align 8
  call void @fits_close(%struct.FITS_FILE* %13)
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %call19 = call noalias i8* @g_malloc_n(i64 10, i64 4)
  %14 = bitcast i8* %call19 to i32*
  store i32* %14, i32** %image_list, align 8
  store i32 0, i32* %n_images, align 4
  store i32 10, i32* %max_images, align 4
  store i32 1, i32* %picnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.52, %if.end.18
  %15 = load i32, i32* %picnum, align 4
  %16 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp, align 8
  %n_pic20 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %16, i32 0, i32 3
  %17 = load i32, i32* %n_pic20, align 4
  %cmp21 = icmp ule i32 %15, %17
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp, align 8
  %19 = load i32, i32* %picnum, align 4
  %call22 = call %struct.fits_hdu_list* @fits_image_info(%struct.FITS_FILE* %18, i32 %19, i32* %hdu_picnum)
  store %struct.fits_hdu_list* %call22, %struct.fits_hdu_list** %hdu, align 8
  %20 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %cmp23 = icmp eq %struct.fits_hdu_list* %20, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  br label %for.end

if.end.25:                                        ; preds = %for.body
  %21 = load i32, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 2), align 4
  %tobool26 = icmp ne i32 %21, 0
  br i1 %tobool26, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.25
  %22 = load i32, i32* %hdu_picnum, align 4
  %cmp27 = icmp eq i32 %22, 1
  br i1 %cmp27, label %land.lhs.true.28, label %land.end

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %23 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %naxis = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %23, i32 0, i32 11
  %24 = load i32, i32* %naxis, align 4
  %cmp29 = icmp eq i32 %24, 3
  br i1 %cmp29, label %land.lhs.true.30, label %land.end

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %25 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %naxisn = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %25, i32 0, i32 12
  %arrayidx = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn, i32 0, i64 2
  %26 = load i32, i32* %arrayidx, align 4
  %cmp31 = icmp sgt i32 %26, 1
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.30
  %27 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %naxisn32 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %27, i32 0, i32 12
  %arrayidx33 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn32, i32 0, i64 2
  %28 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp sle i32 %28, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.30, %land.lhs.true.28, %land.lhs.true, %if.end.25
  %29 = phi i1 [ false, %land.lhs.true.30 ], [ false, %land.lhs.true.28 ], [ false, %land.lhs.true ], [ false, %if.end.25 ], [ %cmp34, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  store i32 %land.ext, i32* %compose, align 4
  %30 = load i32, i32* %compose, align 4
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %land.end
  %31 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %naxisn37 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %31, i32 0, i32 12
  %arrayidx38 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn37, i32 0, i64 2
  %32 = load i32, i32* %arrayidx38, align 4
  store i32 %32, i32* %compose, align 4
  br label %if.end.39

if.else:                                          ; preds = %land.end
  store i32 1, i32* %compose, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.36
  %33 = load i8*, i8** %filename.addr, align 8
  %34 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp, align 8
  %35 = load i32, i32* %picnum, align 4
  %36 = load i32, i32* %compose, align 4
  %call40 = call i32 @load_fits(i8* %33, %struct.FITS_FILE* %34, i32 %35, i32 %36)
  store i32 %call40, i32* %image_ID, align 4
  call void @show_fits_errors()
  %37 = load i32, i32* %image_ID, align 4
  %cmp41 = icmp eq i32 %37, -1
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  br label %for.end

if.end.43:                                        ; preds = %if.end.39
  %38 = load i32, i32* %n_images, align 4
  %39 = load i32, i32* %max_images, align 4
  %cmp44 = icmp eq i32 %38, %39
  br i1 %cmp44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %if.end.43
  %40 = load i32*, i32** %image_list, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load i32, i32* %max_images, align 4
  %add = add nsw i32 %42, 10
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call46 = call i8* @g_realloc(i8* %41, i64 %mul)
  %43 = bitcast i8* %call46 to i32*
  store i32* %43, i32** %nl, align 8
  %44 = load i32*, i32** %nl, align 8
  %cmp47 = icmp eq i32* %44, null
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.45
  br label %for.end

if.end.50:                                        ; preds = %if.then.45
  %45 = load i32*, i32** %nl, align 8
  store i32* %45, i32** %image_list, align 8
  %46 = load i32, i32* %max_images, align 4
  %add51 = add nsw i32 %46, 10
  store i32 %add51, i32* %max_images, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %if.end.43
  %47 = load i32, i32* %image_ID, align 4
  %48 = load i32, i32* %n_images, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %n_images, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load i32*, i32** %image_list, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %49, i64 %idxprom
  store i32 %47, i32* %arrayidx53, align 4
  %50 = load i32, i32* %compose, align 4
  %51 = load i32, i32* %picnum, align 4
  %add54 = add i32 %51, %50
  store i32 %add54, i32* %picnum, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.49, %if.then.42, %if.then.24, %for.cond
  call void @show_fits_errors()
  %52 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp, align 8
  call void @fits_close(%struct.FITS_FILE* %52)
  %53 = load i32, i32* @l_run_mode, align 4
  %cmp55 = icmp ne i32 %53, 1
  br i1 %cmp55, label %if.then.57, label %if.end.72

if.then.57:                                       ; preds = %for.end
  %54 = load i32, i32* %n_images, align 4
  %sub = sub nsw i32 %54, 1
  store i32 %sub, i32* %k, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %if.then.57
  %55 = load i32, i32* %k, align 4
  %cmp59 = icmp sge i32 %55, 1
  br i1 %cmp59, label %for.body.61, label %for.end.71

for.body.61:                                      ; preds = %for.cond.58
  %56 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %56 to i64
  %57 = load i32*, i32** %image_list, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %57, i64 %idxprom62
  %58 = load i32, i32* %arrayidx63, align 4
  %call64 = call i32 @gimp_image_undo_enable(i32 %58)
  %59 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %59 to i64
  %60 = load i32*, i32** %image_list, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %60, i64 %idxprom65
  %61 = load i32, i32* %arrayidx66, align 4
  %call67 = call i32 @gimp_image_clean_all(i32 %61)
  %62 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %62 to i64
  %63 = load i32*, i32** %image_list, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %63, i64 %idxprom68
  %64 = load i32, i32* %arrayidx69, align 4
  %call70 = call i32 @gimp_display_new(i32 %64)
  br label %for.inc

for.inc:                                          ; preds = %for.body.61
  %65 = load i32, i32* %k, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.58

for.end.71:                                       ; preds = %for.cond.58
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %for.end
  %66 = load i32, i32* %n_images, align 4
  %cmp73 = icmp sgt i32 %66, 0
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.72
  %67 = load i32*, i32** %image_list, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %67, i64 0
  %68 = load i32, i32* %arrayidx75, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %68, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %image_ID, align 4
  %69 = load i32*, i32** %image_list, align 8
  %70 = bitcast i32* %69 to i8*
  call void @g_free(i8* %70)
  %71 = load i32, i32* %image_ID, align 4
  store i32 %71, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.15, %if.then.10, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal void @show_fits_errors() #0 {
entry:
  %msg = alloca i8*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i8* @fits_get_error()
  store i8* %call, i8** %msg, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %msg, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %ofp = alloca %struct.FITS_FILE*, align 8
  %drawable_type = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_drawable_type(i32 %0)
  store i32 %call, i32* %drawable_type, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @g_file_error_quark()
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call3, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %call4)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %drawable_type, align 4
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call5)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %4 = load i8*, i8** %filename.addr, align 8
  %call6 = call %struct.FITS_FILE* @fits_open(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  store %struct.FITS_FILE* %call6, %struct.FITS_FILE** %ofp, align 8
  %5 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp, align 8
  %tobool7 = icmp ne %struct.FITS_FILE* %5, null
  br i1 %tobool7, label %if.end.16, label %if.then.8

if.then.8:                                        ; preds = %sw.epilog
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @g_file_error_quark()
  %call10 = call i32* @__errno_location() #6
  %7 = load i32, i32* %call10, align 4
  %call11 = call i32 @g_file_error_from_errno(i32 %7)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0)) #5
  %8 = load i8*, i8** %filename.addr, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call14 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call14, align 4
  %call15 = call i8* @g_strerror(i32 %9) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %6, i32 %call9, i32 %call11, i8* %call12, i8* %call13, i8* %call15)
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.epilog
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0)) #5
  %10 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call19 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call17, i8* %call18)
  %11 = load i32, i32* %drawable_type, align 4
  %cmp = icmp eq i32 %11, 4
  br i1 %cmp, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %12 = load i32, i32* %drawable_type, align 4
  %cmp20 = icmp eq i32 %12, 5
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.16
  %13 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp, align 8
  %14 = load i32, i32* %image_ID.addr, align 4
  %15 = load i32, i32* %drawable_ID.addr, align 4
  %call22 = call i32 @save_index(%struct.FITS_FILE* %13, i32 %14, i32 %15)
  store i32 %call22, i32* %retval1, align 4
  br label %if.end.24

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp, align 8
  %17 = load i32, i32* %image_ID.addr, align 4
  %18 = load i32, i32* %drawable_ID.addr, align 4
  %call23 = call i32 @save_direct(%struct.FITS_FILE* %16, i32 %17, i32 %18)
  store i32 %call23, i32* %retval1, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.21
  %19 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp, align 8
  call void @fits_close(%struct.FITS_FILE* %19)
  %20 = load i32, i32* %retval1, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.8, %sw.default, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gimp_image_delete(i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct.FITS_FILE* @fits_open(i8*, i8*) #1

declare void @fits_close(%struct.FITS_FILE*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.fits_hdu_list* @fits_image_info(%struct.FITS_FILE*, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_fits(i8* %filename, %struct.FITS_FILE* %ifp, i32 %picnum, i32 %ncompose) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct.FITS_FILE*, align 8
  %picnum.addr = alloca i32, align 4
  %ncompose.addr = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %data = alloca i8*, align 8
  %data_end = alloca i8*, align 8
  %linebuf = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %channel = alloca i32, align 4
  %max_scan = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %itype = alloca i32, align 4
  %dtype = alloca i32, align 4
  %err = alloca i32, align 4
  %hdulist = alloca %struct.fits_hdu_list*, align 8
  %trans = alloca %struct.FITS_PIX_TRANSFORM, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.FITS_FILE* %ifp, %struct.FITS_FILE** %ifp.addr, align 8
  store i32 %picnum, i32* %picnum.addr, align 4
  store i32 %ncompose, i32* %ncompose.addr, align 4
  store i32 0, i32* %err, align 4
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp.addr, align 8
  %1 = load i32, i32* %picnum.addr, align 4
  %call = call %struct.fits_hdu_list* @fits_seek_image(%struct.FITS_FILE* %0, i32 %1)
  store %struct.fits_hdu_list* %call, %struct.fits_hdu_list** %hdulist, align 8
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %cmp = icmp eq %struct.fits_hdu_list* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %3, i32 0, i32 12
  %arrayidx = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn, i32 0, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %width, align 4
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn1 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 12
  %arrayidx2 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn1, i32 0, i64 1
  %6 = load i32, i32* %arrayidx2, align 4
  store i32 %6, i32* %height, align 4
  %7 = load i32, i32* %ncompose.addr, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %itype, align 4
  store i32 3, i32* %dtype, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %ncompose.addr, align 4
  %cmp5 = icmp eq i32 %8, 3
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %itype, align 4
  store i32 0, i32* %dtype, align 4
  br label %if.end.12

if.else.7:                                        ; preds = %if.else
  %9 = load i32, i32* %ncompose.addr, align 4
  %cmp8 = icmp eq i32 %9, 4
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.7
  store i32 0, i32* %itype, align 4
  store i32 1, i32* %dtype, align 4
  br label %if.end.11

if.else.10:                                       ; preds = %if.else.7
  store i32 1, i32* %ncompose.addr, align 4
  store i32 1, i32* %itype, align 4
  store i32 2, i32* %dtype, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.4
  %10 = load i8*, i8** %filename.addr, align 8
  %11 = load i32, i32* %picnum.addr, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %14 = load i32, i32* %itype, align 4
  %15 = load i32, i32* %dtype, align 4
  %call14 = call i32 @create_new_image(i8* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call14, i32* %image_ID, align 4
  %call15 = call i32 @gimp_tile_height() #6
  store i32 %call15, i32* %tile_height, align 4
  %16 = load i32, i32* %tile_height, align 4
  %17 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %16, %17
  %18 = load i32, i32* %ncompose.addr, align 4
  %mul16 = mul i32 %mul, %18
  %conv = zext i32 %mul16 to i64
  %call17 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call17, i8** %data, align 8
  %19 = load i8*, i8** %data, align 8
  %cmp18 = icmp eq i8* %19, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.13
  %20 = load i8*, i8** %data, align 8
  %21 = load i32, i32* %tile_height, align 4
  %22 = load i32, i32* %width, align 4
  %mul22 = mul nsw i32 %21, %22
  %23 = load i32, i32* %ncompose.addr, align 4
  %mul23 = mul i32 %mul22, %23
  %idx.ext = zext i32 %mul23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %data_end, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %if.end.21
  %25 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %25, i32 0, i32 8
  %datamin = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 3
  %26 = load i8, i8* %datamin, align 1
  %conv24 = sext i8 %26 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.54

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %27 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used27 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %27, i32 0, i32 8
  %datamax = getelementptr inbounds %struct.anon, %struct.anon* %used27, i32 0, i32 4
  %28 = load i8, i8* %datamax, align 1
  %conv28 = sext i8 %28 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.54

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %29 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used31 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %29, i32 0, i32 8
  %bzero = getelementptr inbounds %struct.anon, %struct.anon* %used31, i32 0, i32 9
  %30 = load i8, i8* %bzero, align 1
  %conv32 = sext i8 %30 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.54

land.lhs.true.34:                                 ; preds = %land.lhs.true.30
  %31 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used35 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %31, i32 0, i32 8
  %bscale = getelementptr inbounds %struct.anon, %struct.anon* %used35, i32 0, i32 10
  %32 = load i8, i8* %bscale, align 1
  %conv36 = sext i8 %32 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.54

if.then.38:                                       ; preds = %land.lhs.true.34
  %33 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %datamin39 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %33, i32 0, i32 15
  %34 = load double, double* %datamin39, align 8
  %35 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bzero40 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %35, i32 0, i32 20
  %36 = load double, double* %bzero40, align 8
  %sub = fsub double %34, %36
  %37 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bscale41 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %37, i32 0, i32 21
  %38 = load double, double* %bscale41, align 8
  %div = fdiv double %sub, %38
  store double %div, double* %a, align 8
  %39 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %datamax42 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %39, i32 0, i32 16
  %40 = load double, double* %datamax42, align 8
  %41 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bzero43 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %41, i32 0, i32 20
  %42 = load double, double* %bzero43, align 8
  %sub44 = fsub double %40, %42
  %43 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bscale45 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %43, i32 0, i32 21
  %44 = load double, double* %bscale45, align 8
  %div46 = fdiv double %sub44, %44
  store double %div46, double* %b, align 8
  %45 = load double, double* %a, align 8
  %46 = load double, double* %b, align 8
  %cmp47 = fcmp olt double %45, %46
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.then.38
  %47 = load double, double* %a, align 8
  %pixmin = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 0
  store double %47, double* %pixmin, align 8
  %48 = load double, double* %b, align 8
  %pixmax = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 1
  store double %48, double* %pixmax, align 8
  br label %if.end.53

if.else.50:                                       ; preds = %if.then.38
  %49 = load double, double* %b, align 8
  %pixmin51 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 0
  store double %49, double* %pixmin51, align 8
  %50 = load double, double* %a, align 8
  %pixmax52 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 1
  store double %50, double* %pixmax52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %if.end.59

if.else.54:                                       ; preds = %land.lhs.true.34, %land.lhs.true.30, %land.lhs.true.26, %land.lhs.true, %if.end.21
  %51 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %pixmin55 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %51, i32 0, i32 9
  %52 = load double, double* %pixmin55, align 8
  %pixmin56 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 0
  store double %52, double* %pixmin56, align 8
  %53 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %pixmax57 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %53, i32 0, i32 10
  %54 = load double, double* %pixmax57, align 8
  %pixmax58 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 1
  store double %54, double* %pixmax58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.54, %if.end.53
  %datamin60 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 2
  store double 0.000000e+00, double* %datamin60, align 8
  %datamax61 = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 3
  store double 2.550000e+02, double* %datamax61, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.FITSLoadVals, %struct.FITSLoadVals* @plvals, i32 0, i32 0), align 4
  %conv62 = sitofp i32 %55 to double
  %replacement = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 4
  store double %conv62, double* %replacement, align 8
  %dsttyp = getelementptr inbounds %struct.FITS_PIX_TRANSFORM, %struct.FITS_PIX_TRANSFORM* %trans, i32 0, i32 5
  store i8 99, i8* %dsttyp, align 1
  %56 = load i32, i32* %ncompose.addr, align 4
  %cmp63 = icmp eq i32 %56, 1
  br i1 %cmp63, label %if.then.65, label %if.else.102

if.then.65:                                       ; preds = %if.end.59
  %57 = load i8*, i8** %data, align 8
  %58 = load i32, i32* %tile_height, align 4
  %59 = load i32, i32* %width, align 4
  %mul66 = mul nsw i32 %58, %59
  %idx.ext67 = sext i32 %mul66 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %57, i64 %idx.ext67
  store i8* %add.ptr68, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.65
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %height, align 4
  %cmp69 = icmp slt i32 %60, %61
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %width, align 4
  %63 = load i8*, i8** %dest, align 8
  %idx.ext71 = sext i32 %62 to i64
  %idx.neg = sub i64 0, %idx.ext71
  %add.ptr72 = getelementptr inbounds i8, i8* %63, i64 %idx.neg
  store i8* %add.ptr72, i8** %dest, align 8
  %64 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp.addr, align 8
  %65 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %66 = load i32, i32* %width, align 4
  %67 = load i8*, i8** %dest, align 8
  %call73 = call i32 @fits_read_pixel(%struct.FITS_FILE* %64, %struct.fits_hdu_list* %65, i32 %66, %struct.FITS_PIX_TRANSFORM* %trans, i8* %67)
  %68 = load i32, i32* %width, align 4
  %cmp74 = icmp ne i32 %call73, %68
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.body
  store i32 1, i32* %err, align 4
  br label %for.end

if.end.77:                                        ; preds = %for.body
  %69 = load i32, i32* %scan_lines, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %scan_lines, align 4
  %70 = load i32, i32* %i, align 4
  %rem = srem i32 %70, 20
  %cmp78 = icmp eq i32 %rem, 0
  br i1 %cmp78, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %if.end.77
  %71 = load i32, i32* %i, align 4
  %add = add nsw i32 %71, 1
  %conv81 = sitofp i32 %add to double
  %72 = load i32, i32* %height, align 4
  %conv82 = sitofp i32 %72 to double
  %div83 = fdiv double %conv81, %conv82
  %call84 = call i32 @gimp_progress_update(double %div83)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.80, %if.end.77
  %73 = load i32, i32* %scan_lines, align 4
  %74 = load i32, i32* %tile_height, align 4
  %cmp86 = icmp eq i32 %73, %74
  br i1 %cmp86, label %if.then.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.85
  %75 = load i32, i32* %i, align 4
  %add88 = add nsw i32 %75, 1
  %76 = load i32, i32* %height, align 4
  %cmp89 = icmp eq i32 %add88, %76
  br i1 %cmp89, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %lor.lhs.false, %if.end.85
  %77 = load i8*, i8** %dest, align 8
  %78 = load i32, i32* %height, align 4
  %79 = load i32, i32* %i, align 4
  %sub92 = sub nsw i32 %78, %79
  %sub93 = sub nsw i32 %sub92, 1
  %80 = load i32, i32* %width, align 4
  %81 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %77, i32 0, i32 %sub93, i32 %80, i32 %81)
  store i32 0, i32* %scan_lines, align 4
  %82 = load i8*, i8** %data, align 8
  %83 = load i32, i32* %tile_height, align 4
  %84 = load i32, i32* %width, align 4
  %mul94 = mul nsw i32 %83, %84
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %82, i64 %idx.ext95
  store i8* %add.ptr96, i8** %dest, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %lor.lhs.false
  %85 = load i32, i32* %err, align 4
  %tobool98 = icmp ne i32 %85, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.97
  br label %for.end

if.end.100:                                       ; preds = %if.end.97
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %86 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %86, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.99, %if.then.76, %for.cond
  br label %if.end.202

if.else.102:                                      ; preds = %if.end.59
  %87 = load i32, i32* %width, align 4
  %conv103 = sext i32 %87 to i64
  %call104 = call noalias i8* @g_malloc(i64 %conv103)
  store i8* %call104, i8** %linebuf, align 8
  %88 = load i8*, i8** %linebuf, align 8
  %cmp105 = icmp eq i8* %88, null
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.else.102
  store i32 -1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.else.102
  store i32 0, i32* %channel, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.199, %if.end.108
  %89 = load i32, i32* %channel, align 4
  %90 = load i32, i32* %ncompose.addr, align 4
  %cmp110 = icmp ult i32 %89, %90
  br i1 %cmp110, label %for.body.112, label %for.end.201

for.body.112:                                     ; preds = %for.cond.109
  %91 = load i8*, i8** %data, align 8
  %92 = load i32, i32* %tile_height, align 4
  %93 = load i32, i32* %width, align 4
  %mul113 = mul nsw i32 %92, %93
  %94 = load i32, i32* %ncompose.addr, align 4
  %mul114 = mul i32 %mul113, %94
  %idx.ext115 = zext i32 %mul114 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %91, i64 %idx.ext115
  %95 = load i32, i32* %channel, align 4
  %idx.ext117 = sext i32 %95 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %add.ptr116, i64 %idx.ext117
  store i8* %add.ptr118, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.196, %for.body.112
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %height, align 4
  %cmp120 = icmp slt i32 %96, %97
  br i1 %cmp120, label %for.body.122, label %for.end.198

for.body.122:                                     ; preds = %for.cond.119
  %98 = load i32, i32* %channel, align 4
  %cmp123 = icmp sgt i32 %98, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.143

land.lhs.true.125:                                ; preds = %for.body.122
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %tile_height, align 4
  %rem126 = srem i32 %99, %100
  %cmp127 = icmp eq i32 %rem126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.143

if.then.129:                                      ; preds = %land.lhs.true.125
  %101 = load i32, i32* %tile_height, align 4
  store i32 %101, i32* %max_scan, align 4
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %tile_height, align 4
  %add130 = add nsw i32 %102, %103
  %104 = load i32, i32* %height, align 4
  %cmp131 = icmp sgt i32 %add130, %104
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.then.129
  %105 = load i32, i32* %height, align 4
  %106 = load i32, i32* %i, align 4
  %sub134 = sub nsw i32 %105, %106
  store i32 %sub134, i32* %max_scan, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.then.129
  %107 = load i8*, i8** %data_end, align 8
  %108 = load i32, i32* %max_scan, align 4
  %109 = load i32, i32* %width, align 4
  %mul136 = mul nsw i32 %108, %109
  %110 = load i32, i32* %ncompose.addr, align 4
  %mul137 = mul i32 %mul136, %110
  %idx.ext138 = zext i32 %mul137 to i64
  %idx.neg139 = sub i64 0, %idx.ext138
  %add.ptr140 = getelementptr inbounds i8, i8* %107, i64 %idx.neg139
  %111 = load i32, i32* %height, align 4
  %112 = load i32, i32* %i, align 4
  %sub141 = sub nsw i32 %111, %112
  %113 = load i32, i32* %max_scan, align 4
  %sub142 = sub nsw i32 %sub141, %113
  %114 = load i32, i32* %width, align 4
  %115 = load i32, i32* %max_scan, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %add.ptr140, i32 0, i32 %sub142, i32 %114, i32 %115)
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.135, %land.lhs.true.125, %for.body.122
  %116 = load i32, i32* %width, align 4
  %117 = load i32, i32* %ncompose.addr, align 4
  %mul144 = mul i32 %116, %117
  %118 = load i8*, i8** %dest, align 8
  %idx.ext145 = zext i32 %mul144 to i64
  %idx.neg146 = sub i64 0, %idx.ext145
  %add.ptr147 = getelementptr inbounds i8, i8* %118, i64 %idx.neg146
  store i8* %add.ptr147, i8** %dest, align 8
  %119 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ifp.addr, align 8
  %120 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %121 = load i32, i32* %width, align 4
  %122 = load i8*, i8** %linebuf, align 8
  %call148 = call i32 @fits_read_pixel(%struct.FITS_FILE* %119, %struct.fits_hdu_list* %120, i32 %121, %struct.FITS_PIX_TRANSFORM* %trans, i8* %122)
  %123 = load i32, i32* %width, align 4
  %cmp149 = icmp ne i32 %call148, %123
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.143
  store i32 1, i32* %err, align 4
  br label %for.end.198

if.end.152:                                       ; preds = %if.end.143
  %124 = load i32, i32* %width, align 4
  store i32 %124, i32* %j, align 4
  %125 = load i8*, i8** %linebuf, align 8
  store i8* %125, i8** %src, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.152
  %126 = load i32, i32* %j, align 4
  %dec = add nsw i32 %126, -1
  store i32 %dec, i32* %j, align 4
  %tobool153 = icmp ne i32 %126, 0
  br i1 %tobool153, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %127 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %dest, align 8
  store i8 %128, i8* %129, align 1
  %130 = load i32, i32* %ncompose.addr, align 4
  %131 = load i8*, i8** %dest, align 8
  %idx.ext154 = zext i32 %130 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %131, i64 %idx.ext154
  store i8* %add.ptr155, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %132 = load i32, i32* %width, align 4
  %133 = load i32, i32* %ncompose.addr, align 4
  %mul156 = mul i32 %132, %133
  %134 = load i8*, i8** %dest, align 8
  %idx.ext157 = zext i32 %mul156 to i64
  %idx.neg158 = sub i64 0, %idx.ext157
  %add.ptr159 = getelementptr inbounds i8, i8* %134, i64 %idx.neg158
  store i8* %add.ptr159, i8** %dest, align 8
  %135 = load i32, i32* %scan_lines, align 4
  %inc160 = add nsw i32 %135, 1
  store i32 %inc160, i32* %scan_lines, align 4
  %136 = load i32, i32* %i, align 4
  %rem161 = srem i32 %136, 20
  %cmp162 = icmp eq i32 %rem161, 0
  br i1 %cmp162, label %if.then.164, label %if.end.173

if.then.164:                                      ; preds = %while.end
  %137 = load i32, i32* %channel, align 4
  %138 = load i32, i32* %height, align 4
  %mul165 = mul nsw i32 %137, %138
  %139 = load i32, i32* %i, align 4
  %add166 = add nsw i32 %mul165, %139
  %add167 = add nsw i32 %add166, 1
  %conv168 = sitofp i32 %add167 to double
  %140 = load i32, i32* %height, align 4
  %141 = load i32, i32* %ncompose.addr, align 4
  %mul169 = mul i32 %140, %141
  %conv170 = uitofp i32 %mul169 to double
  %div171 = fdiv double %conv168, %conv170
  %call172 = call i32 @gimp_progress_update(double %div171)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.164, %while.end
  %142 = load i32, i32* %scan_lines, align 4
  %143 = load i32, i32* %tile_height, align 4
  %cmp174 = icmp eq i32 %142, %143
  br i1 %cmp174, label %if.then.180, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.end.173
  %144 = load i32, i32* %i, align 4
  %add177 = add nsw i32 %144, 1
  %145 = load i32, i32* %height, align 4
  %cmp178 = icmp eq i32 %add177, %145
  br i1 %cmp178, label %if.then.180, label %if.end.192

if.then.180:                                      ; preds = %lor.lhs.false.176, %if.end.173
  %146 = load i8*, i8** %dest, align 8
  %147 = load i32, i32* %channel, align 4
  %idx.ext181 = sext i32 %147 to i64
  %idx.neg182 = sub i64 0, %idx.ext181
  %add.ptr183 = getelementptr inbounds i8, i8* %146, i64 %idx.neg182
  %148 = load i32, i32* %height, align 4
  %149 = load i32, i32* %i, align 4
  %sub184 = sub nsw i32 %148, %149
  %sub185 = sub nsw i32 %sub184, 1
  %150 = load i32, i32* %width, align 4
  %151 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %add.ptr183, i32 0, i32 %sub185, i32 %150, i32 %151)
  store i32 0, i32* %scan_lines, align 4
  %152 = load i8*, i8** %data, align 8
  %153 = load i32, i32* %tile_height, align 4
  %154 = load i32, i32* %width, align 4
  %mul186 = mul nsw i32 %153, %154
  %155 = load i32, i32* %ncompose.addr, align 4
  %mul187 = mul i32 %mul186, %155
  %idx.ext188 = zext i32 %mul187 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %152, i64 %idx.ext188
  %156 = load i32, i32* %channel, align 4
  %idx.ext190 = sext i32 %156 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %add.ptr189, i64 %idx.ext190
  store i8* %add.ptr191, i8** %dest, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.180, %lor.lhs.false.176
  %157 = load i32, i32* %err, align 4
  %tobool193 = icmp ne i32 %157, 0
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.192
  br label %for.end.198

if.end.195:                                       ; preds = %if.end.192
  br label %for.inc.196

for.inc.196:                                      ; preds = %if.end.195
  %158 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %158, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond.119

for.end.198:                                      ; preds = %if.then.194, %if.then.151, %for.cond.119
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.end.198
  %159 = load i32, i32* %channel, align 4
  %inc200 = add nsw i32 %159, 1
  store i32 %inc200, i32* %channel, align 4
  br label %for.cond.109

for.end.201:                                      ; preds = %for.cond.109
  %160 = load i8*, i8** %linebuf, align 8
  call void @g_free(i8* %160)
  br label %if.end.202

if.end.202:                                       ; preds = %for.end.201, %for.end
  %call203 = call i32 @gimp_progress_update(double 1.000000e+00)
  %161 = load i8*, i8** %data, align 8
  call void @g_free(i8* %161)
  %162 = load i32, i32* %err, align 4
  %tobool204 = icmp ne i32 %162, 0
  br i1 %tobool204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.end.202
  %call206 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call206)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %if.end.202
  %163 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %163)
  %164 = load i32, i32* %err, align 4
  %tobool208 = icmp ne i32 %164, 0
  br i1 %tobool208, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.207
  br label %cond.end

cond.false:                                       ; preds = %if.end.207
  %165 = load i32, i32* %image_ID, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %165, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.107, %if.then.20, %if.then
  %166 = load i32, i32* %retval
  ret i32 %166
}

declare i8* @g_realloc(i8*, i64) #1

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @gimp_image_clean_all(i32) #1

declare i32 @gimp_display_new(i32) #1

declare void @g_free(i8*) #1

declare %struct.fits_hdu_list* @fits_seek_image(%struct.FITS_FILE*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @create_new_image(i8* %filename, i32 %pagenum, i32 %width, i32 %height, i32 %itype, i32 %dtype, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %pagenum.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %itype.addr = alloca i32, align 4
  %dtype.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32*, align 8
  %drawable.addr = alloca %struct._GimpDrawable**, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %image_ID = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %pagenum, i32* %pagenum.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %itype, i32* %itype.addr, align 4
  store i32 %dtype, i32* %dtype.addr, align 4
  store i32* %layer_ID, i32** %layer_ID.addr, align 8
  store %struct._GimpDrawable** %drawable, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %2 = load i32, i32* %itype.addr, align 4
  %call = call i32 @gimp_image_new(i32 %0, i32 %1, i32 %2)
  store i32 %call, i32* %image_ID, align 4
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #7
  %add = add i64 %call1, 64
  %call2 = call noalias i8* @g_malloc(i64 %add)
  store i8* %call2, i8** %tmp, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %tmp, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %6 = load i32, i32* %pagenum.addr, align 4
  %conv = zext i32 %6 to i64
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* %5, i64 %conv) #5
  %7 = load i32, i32* %image_ID, align 4
  %8 = load i8*, i8** %tmp, align 8
  %call4 = call i32 @gimp_image_set_filename(i32 %7, i8* %8)
  %9 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %9)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %image_ID, align 4
  %11 = load i8*, i8** %filename.addr, align 8
  %call5 = call i32 @gimp_image_set_filename(i32 %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %image_ID, align 4
  %call6 = call i32 @gimp_image_undo_disable(i32 %12)
  %13 = load i32, i32* %image_ID, align 4
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #5
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  %16 = load i32, i32* %dtype.addr, align 4
  %call8 = call i32 @gimp_layer_new(i32 %13, i8* %call7, i32 %14, i32 %15, i32 %16, double 1.000000e+02, i32 0)
  %17 = load i32*, i32** %layer_ID.addr, align 8
  store i32 %call8, i32* %17, align 4
  %18 = load i32, i32* %image_ID, align 4
  %19 = load i32*, i32** %layer_ID.addr, align 8
  %20 = load i32, i32* %19, align 4
  %call9 = call i32 @gimp_image_insert_layer(i32 %18, i32 %20, i32 -1, i32 0)
  %21 = load i32*, i32** %layer_ID.addr, align 8
  %22 = load i32, i32* %21, align 4
  %call10 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %22)
  %23 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpDrawable* %call10, %struct._GimpDrawable** %23, align 8
  %24 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %25 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %25, align 8
  %27 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %27, align 8
  %width11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load i32, i32* %width11, align 4
  %30 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %30, align 8
  %height12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 2
  %32 = load i32, i32* %height12, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %24, %struct._GimpDrawable* %26, i32 0, i32 0, i32 %29, i32 %32, i32 1, i32 0)
  %33 = load i32, i32* %image_ID, align 4
  ret i32 %33
}

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_malloc(i64) #1

declare i32 @fits_read_pixel(%struct.FITS_FILE*, %struct.fits_hdu_list*, i32, %struct.FITS_PIX_TRANSFORM*, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

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

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @fits_get_error() #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_index(%struct.FITS_FILE* %ofp, i32 %image_ID, i32 %drawable_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %ofp.addr = alloca %struct.FITS_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %channel = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %bpsl = alloca i32, align 4
  %ncols = alloca i32, align 4
  %nbytes = alloca i64, align 8
  %data = alloca i8*, align 8
  %src = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %cmapptr = alloca i8*, align 8
  %red = alloca [256 x i8], align 16
  %green = alloca [256 x i8], align 16
  %blue = alloca [256 x i8], align 16
  %channels = alloca [3 x i8*], align 16
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %hdu = alloca %struct.fits_hdu_list*, align 8
  %scan_lines = alloca i32, align 4
  %scan_lines117 = alloca i32, align 4
  store %struct.FITS_FILE* %ofp, %struct.FITS_FILE** %ofp.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %red, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %channels, i32 0, i64 0
  store i8* %arraydecay, i8** %arrayidx, align 8
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %green, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i8*], [3 x i8*]* %channels, i32 0, i64 1
  store i8* %arraydecay1, i8** %arrayidx2, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %blue, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i8*], [3 x i8*]* %channels, i32 0, i64 2
  store i8* %arraydecay3, i8** %arrayidx4, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width5, align 4
  store i32 %2, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height6, align 4
  store i32 %4, i32* %height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp7, align 4
  store i32 %6, i32* %bpp, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %7, %8
  store i32 %mul, i32* %bpsl, align 4
  %call8 = call i32 @gimp_tile_height() #6
  store i32 %call8, i32* %tile_height, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %9, i32 0, i32 0, i32 %10, i32 %11, i32 0, i32 0)
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %mul9 = mul nsw i32 %12, %13
  %14 = load i32, i32* %bpp, align 4
  %mul10 = mul nsw i32 %mul9, %14
  %conv = sext i32 %mul10 to i64
  %call11 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call11, i8** %data, align 8
  store i8* %call11, i8** %src, align 8
  %15 = load i32, i32* %image_ID.addr, align 4
  %call12 = call i8* @gimp_image_get_colormap(i32 %15, i32* %ncols)
  store i8* %call12, i8** %cmap, align 8
  store i8* %call12, i8** %cmapptr, align 8
  %16 = load i32, i32* %ncols, align 4
  %conv13 = sext i32 %16 to i64
  %cmp = icmp ugt i64 %conv13, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 256, i32* %ncols, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %ncols, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %cmapptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %cmapptr, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* %red, i32 0, i64 %idxprom
  store i8 %20, i8* %arrayidx17, align 1
  %22 = load i8*, i8** %cmapptr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr18, i8** %cmapptr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %green, i32 0, i64 %idxprom19
  store i8 %23, i8* %arrayidx20, align 1
  %25 = load i8*, i8** %cmapptr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr21, i8** %cmapptr, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* %blue, i32 0, i64 %idxprom22
  store i8 %26, i8* %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %ncols, align 4
  store i32 %29, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.35, %for.end
  %30 = load i32, i32* %i, align 4
  %conv25 = sext i32 %30 to i64
  %cmp26 = icmp ult i64 %conv25, 256
  br i1 %cmp26, label %for.body.28, label %for.end.37

for.body.28:                                      ; preds = %for.cond.24
  %31 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* %blue, i32 0, i64 %idxprom29
  store i8 0, i8* %arrayidx30, align 1
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* %green, i32 0, i64 %idxprom31
  store i8 0, i8* %arrayidx32, align 1
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* %red, i32 0, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.28
  %34 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %34, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.24

for.end.37:                                       ; preds = %for.cond.24
  %35 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  %38 = load i32, i32* %bpp, align 4
  %add = add nsw i32 %38, 2
  %call38 = call %struct.fits_hdu_list* @create_fits_header(%struct.FITS_FILE* %35, i32 %36, i32 %37, i32 %add)
  store %struct.fits_hdu_list* %call38, %struct.fits_hdu_list** %hdu, align 8
  %39 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %cmp39 = icmp eq %struct.fits_hdu_list* %39, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end.37
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.end.37
  %40 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %41 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %call43 = call i32 @fits_write_header(%struct.FITS_FILE* %40, %struct.fits_hdu_list* %41)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.42
  store i64 0, i64* %nbytes, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.103, %if.end.47
  %42 = load i32, i32* %channel, align 4
  %cmp49 = icmp slt i32 %42, 3
  br i1 %cmp49, label %for.body.51, label %for.end.105

for.body.51:                                      ; preds = %for.cond.48
  %43 = load i32, i32* %channel, align 4
  %idxprom52 = sext i32 %43 to i64
  %arrayidx53 = getelementptr inbounds [3 x i8*], [3 x i8*]* %channels, i32 0, i64 %idxprom52
  %44 = load i8*, i8** %arrayidx53, align 8
  store i8* %44, i8** %cmapptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.88, %for.body.51
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %height, align 4
  %cmp55 = icmp slt i32 %45, %46
  br i1 %cmp55, label %for.body.57, label %for.end.90

for.body.57:                                      ; preds = %for.cond.54
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %tile_height, align 4
  %rem = srem i32 %47, %48
  %cmp58 = icmp eq i32 %rem, 0
  br i1 %cmp58, label %if.then.60, label %if.end.69

if.then.60:                                       ; preds = %for.body.57
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %tile_height, align 4
  %add61 = add nsw i32 %49, %50
  %sub = sub nsw i32 %add61, 1
  %51 = load i32, i32* %height, align 4
  %cmp62 = icmp slt i32 %sub, %51
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.60
  %52 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.60
  %53 = load i32, i32* %height, align 4
  %54 = load i32, i32* %i, align 4
  %sub64 = sub nsw i32 %53, %54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %sub64, %cond.false ]
  store i32 %cond, i32* %scan_lines, align 4
  %55 = load i8*, i8** %data, align 8
  %56 = load i32, i32* %height, align 4
  %57 = load i32, i32* %i, align 4
  %sub65 = sub nsw i32 %56, %57
  %58 = load i32, i32* %scan_lines, align 4
  %sub66 = sub nsw i32 %sub65, %58
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %55, i32 0, i32 %sub66, i32 %59, i32 %60)
  %61 = load i8*, i8** %data, align 8
  %62 = load i32, i32* %bpsl, align 4
  %63 = load i32, i32* %scan_lines, align 4
  %sub67 = sub nsw i32 %63, 1
  %mul68 = mul nsw i32 %62, %sub67
  %idx.ext = sext i32 %mul68 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end, %for.body.57
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.80, %if.end.69
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %width, align 4
  %cmp71 = icmp slt i32 %64, %65
  br i1 %cmp71, label %for.body.73, label %for.end.82

for.body.73:                                      ; preds = %for.cond.70
  %66 = load i8*, i8** %src, align 8
  %67 = load i8, i8* %66, align 1
  %idxprom74 = zext i8 %67 to i64
  %68 = load i8*, i8** %cmapptr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %68, i64 %idxprom74
  %69 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %69 to i32
  %70 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %70, i32 0, i32 0
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call77 = call i32 @_IO_putc(i32 %conv76, %struct._IO_FILE* %71)
  %72 = load i32, i32* %bpp, align 4
  %73 = load i8*, i8** %src, align 8
  %idx.ext78 = sext i32 %72 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %73, i64 %idx.ext78
  store i8* %add.ptr79, i8** %src, align 8
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.73
  %74 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %74, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond.70

for.end.82:                                       ; preds = %for.cond.70
  %75 = load i32, i32* %width, align 4
  %conv83 = sext i32 %75 to i64
  %76 = load i64, i64* %nbytes, align 8
  %add84 = add nsw i64 %76, %conv83
  store i64 %add84, i64* %nbytes, align 8
  %77 = load i32, i32* %bpsl, align 4
  %mul85 = mul nsw i32 2, %77
  %78 = load i8*, i8** %src, align 8
  %idx.ext86 = sext i32 %mul85 to i64
  %idx.neg = sub i64 0, %idx.ext86
  %add.ptr87 = getelementptr inbounds i8, i8* %78, i64 %idx.neg
  store i8* %add.ptr87, i8** %src, align 8
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.82
  %79 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %79, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.54

for.end.90:                                       ; preds = %for.cond.54
  %80 = load i32, i32* %i, align 4
  %rem91 = srem i32 %80, 20
  %cmp92 = icmp eq i32 %rem91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.102

if.then.94:                                       ; preds = %for.end.90
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %channel, align 4
  %83 = load i32, i32* %height, align 4
  %mul95 = mul nsw i32 %82, %83
  %add96 = add nsw i32 %81, %mul95
  %conv97 = sitofp i32 %add96 to double
  %84 = load i32, i32* %height, align 4
  %85 = load i32, i32* %bpp, align 4
  %add98 = add nsw i32 %85, 2
  %mul99 = mul nsw i32 %84, %add98
  %conv100 = sitofp i32 %mul99 to double
  %div = fdiv double %conv97, %conv100
  %call101 = call i32 @gimp_progress_update(double %div)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.94, %for.end.90
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %86 = load i32, i32* %channel, align 4
  %inc104 = add nsw i32 %86, 1
  store i32 %inc104, i32* %channel, align 4
  br label %for.cond.48

for.end.105:                                      ; preds = %for.cond.48
  %87 = load i32, i32* %bpp, align 4
  %cmp106 = icmp sgt i32 %87, 1
  br i1 %cmp106, label %if.then.108, label %if.end.169

if.then.108:                                      ; preds = %for.end.105
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.153, %if.then.108
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %height, align 4
  %cmp110 = icmp slt i32 %88, %89
  br i1 %cmp110, label %for.body.112, label %for.end.155

for.body.112:                                     ; preds = %for.cond.109
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %tile_height, align 4
  %rem113 = srem i32 %90, %91
  %cmp114 = icmp eq i32 %rem113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.134

if.then.116:                                      ; preds = %for.body.112
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %tile_height, align 4
  %add118 = add nsw i32 %92, %93
  %sub119 = sub nsw i32 %add118, 1
  %94 = load i32, i32* %height, align 4
  %cmp120 = icmp slt i32 %sub119, %94
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %if.then.116
  %95 = load i32, i32* %tile_height, align 4
  br label %cond.end.125

cond.false.123:                                   ; preds = %if.then.116
  %96 = load i32, i32* %height, align 4
  %97 = load i32, i32* %i, align 4
  %sub124 = sub nsw i32 %96, %97
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.122
  %cond126 = phi i32 [ %95, %cond.true.122 ], [ %sub124, %cond.false.123 ]
  store i32 %cond126, i32* %scan_lines117, align 4
  %98 = load i8*, i8** %data, align 8
  %99 = load i32, i32* %height, align 4
  %100 = load i32, i32* %i, align 4
  %sub127 = sub nsw i32 %99, %100
  %101 = load i32, i32* %scan_lines117, align 4
  %sub128 = sub nsw i32 %sub127, %101
  %102 = load i32, i32* %width, align 4
  %103 = load i32, i32* %scan_lines117, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %98, i32 0, i32 %sub128, i32 %102, i32 %103)
  %104 = load i8*, i8** %data, align 8
  %105 = load i32, i32* %bpsl, align 4
  %106 = load i32, i32* %scan_lines117, align 4
  %sub129 = sub nsw i32 %106, 1
  %mul130 = mul nsw i32 %105, %sub129
  %idx.ext131 = sext i32 %mul130 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %104, i64 %idx.ext131
  store i8* %add.ptr132, i8** %src, align 8
  %107 = load i8*, i8** %src, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr133, i8** %src, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %cond.end.125, %for.body.112
  store i32 0, i32* %j, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.144, %if.end.134
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %width, align 4
  %cmp136 = icmp slt i32 %108, %109
  br i1 %cmp136, label %for.body.138, label %for.end.146

for.body.138:                                     ; preds = %for.cond.135
  %110 = load i8*, i8** %src, align 8
  %111 = load i8, i8* %110, align 1
  %conv139 = zext i8 %111 to i32
  %112 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp140 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %112, i32 0, i32 0
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %fp140, align 8
  %call141 = call i32 @_IO_putc(i32 %conv139, %struct._IO_FILE* %113)
  %114 = load i32, i32* %bpp, align 4
  %115 = load i8*, i8** %src, align 8
  %idx.ext142 = sext i32 %114 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %115, i64 %idx.ext142
  store i8* %add.ptr143, i8** %src, align 8
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.138
  %116 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %116, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond.135

for.end.146:                                      ; preds = %for.cond.135
  %117 = load i32, i32* %width, align 4
  %conv147 = sext i32 %117 to i64
  %118 = load i64, i64* %nbytes, align 8
  %add148 = add nsw i64 %118, %conv147
  store i64 %add148, i64* %nbytes, align 8
  %119 = load i32, i32* %bpsl, align 4
  %mul149 = mul nsw i32 2, %119
  %120 = load i8*, i8** %src, align 8
  %idx.ext150 = sext i32 %mul149 to i64
  %idx.neg151 = sub i64 0, %idx.ext150
  %add.ptr152 = getelementptr inbounds i8, i8* %120, i64 %idx.neg151
  store i8* %add.ptr152, i8** %src, align 8
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.end.146
  %121 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %121, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.109

for.end.155:                                      ; preds = %for.cond.109
  %122 = load i32, i32* %i, align 4
  %rem156 = srem i32 %122, 20
  %cmp157 = icmp eq i32 %rem156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.168

if.then.159:                                      ; preds = %for.end.155
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %channel, align 4
  %125 = load i32, i32* %height, align 4
  %mul160 = mul nsw i32 %124, %125
  %add161 = add nsw i32 %123, %mul160
  %conv162 = sitofp i32 %add161 to double
  %126 = load i32, i32* %height, align 4
  %127 = load i32, i32* %bpp, align 4
  %add163 = add nsw i32 %127, 2
  %mul164 = mul nsw i32 %126, %add163
  %conv165 = sitofp i32 %mul164 to double
  %div166 = fdiv double %conv162, %conv165
  %call167 = call i32 @gimp_progress_update(double %div166)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.159, %for.end.155
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.end.105
  %call170 = call i32 @gimp_progress_update(double 1.000000e+00)
  %128 = load i64, i64* %nbytes, align 8
  %rem171 = srem i64 %128, 2880
  store i64 %rem171, i64* %nbytes, align 8
  %129 = load i64, i64* %nbytes, align 8
  %tobool = icmp ne i64 %129, 0
  br i1 %tobool, label %if.then.172, label %if.end.178

if.then.172:                                      ; preds = %if.end.169
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.172
  %130 = load i64, i64* %nbytes, align 8
  %inc173 = add nsw i64 %130, 1
  store i64 %inc173, i64* %nbytes, align 8
  %cmp174 = icmp slt i64 %130, 2880
  br i1 %cmp174, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %131 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp176 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %131, i32 0, i32 0
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %fp176, align 8
  %call177 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %132)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.178

if.end.178:                                       ; preds = %while.end, %if.end.169
  %133 = load i8*, i8** %data, align 8
  call void @g_free(i8* %133)
  %134 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %134)
  %135 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp179 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %135, i32 0, i32 0
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp179, align 8
  %call180 = call i32 @ferror(%struct._IO_FILE* %136) #5
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.end.178
  %call183 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call183)
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.end.178
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.184, %if.then.182, %if.then.46, %if.then.41
  %137 = load i32, i32* %retval
  ret i32 %137
}

; Function Attrs: nounwind uwtable
define internal i32 @save_direct(%struct.FITS_FILE* %ofp, i32 %image_ID, i32 %drawable_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %ofp.addr = alloca %struct.FITS_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %channel = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %bpsl = alloca i32, align 4
  %nbytes = alloca i64, align 8
  %data = alloca i8*, align 8
  %src = alloca i8*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %hdu = alloca %struct.fits_hdu_list*, align 8
  %scan_lines = alloca i32, align 4
  store %struct.FITS_FILE* %ofp, %struct.FITS_FILE** %ofp.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
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
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp3, align 4
  store i32 %6, i32* %bpp, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %7, %8
  store i32 %mul, i32* %bpsl, align 4
  %call4 = call i32 @gimp_tile_height() #6
  store i32 %call4, i32* %tile_height, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %9, i32 0, i32 0, i32 %10, i32 %11, i32 0, i32 0)
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %mul5 = mul nsw i32 %12, %13
  %14 = load i32, i32* %bpp, align 4
  %mul6 = mul nsw i32 %mul5, %14
  %conv = sext i32 %mul6 to i64
  %call7 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call7, i8** %data, align 8
  store i8* %call7, i8** %src, align 8
  %15 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  %18 = load i32, i32* %bpp, align 4
  %call8 = call %struct.fits_hdu_list* @create_fits_header(%struct.FITS_FILE* %15, i32 %16, i32 %17, i32 %18)
  store %struct.fits_hdu_list* %call8, %struct.fits_hdu_list** %hdu, align 8
  %19 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %cmp = icmp eq %struct.fits_hdu_list* %19, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %20 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %21 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdu, align 8
  %call10 = call i32 @fits_write_header(%struct.FITS_FILE* %20, %struct.fits_hdu_list* %21)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store i64 0, i64* %nbytes, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end.14
  %22 = load i32, i32* %channel, align 4
  %23 = load i32, i32* %bpp, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.67, %for.body
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %height, align 4
  %cmp18 = icmp slt i32 %24, %25
  br i1 %cmp18, label %for.body.20, label %for.end.69

for.body.20:                                      ; preds = %for.cond.17
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %tile_height, align 4
  %rem = srem i32 %26, %27
  %cmp21 = icmp eq i32 %rem, 0
  br i1 %cmp21, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %for.body.20
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %tile_height, align 4
  %add = add nsw i32 %28, %29
  %sub = sub nsw i32 %add, 1
  %30 = load i32, i32* %height, align 4
  %cmp24 = icmp slt i32 %sub, %30
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %31 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  %32 = load i32, i32* %height, align 4
  %33 = load i32, i32* %i, align 4
  %sub26 = sub nsw i32 %32, %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %sub26, %cond.false ]
  store i32 %cond, i32* %scan_lines, align 4
  %34 = load i8*, i8** %data, align 8
  %35 = load i32, i32* %height, align 4
  %36 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 %35, %36
  %37 = load i32, i32* %scan_lines, align 4
  %sub28 = sub nsw i32 %sub27, %37
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %34, i32 0, i32 %sub28, i32 %38, i32 %39)
  %40 = load i8*, i8** %data, align 8
  %41 = load i32, i32* %bpsl, align 4
  %42 = load i32, i32* %scan_lines, align 4
  %sub29 = sub nsw i32 %42, 1
  %mul30 = mul nsw i32 %41, %sub29
  %idx.ext = sext i32 %mul30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  %43 = load i32, i32* %channel, align 4
  %idx.ext31 = sext i32 %43 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext31
  store i8* %add.ptr32, i8** %src, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end, %for.body.20
  %44 = load i32, i32* %bpp, align 4
  %cmp34 = icmp eq i32 %44, 1
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.33
  %45 = load i8*, i8** %src, align 8
  %46 = load i32, i32* %width, align 4
  %conv37 = sext i32 %46 to i64
  %47 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %47, i32 0, i32 0
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i64 @fwrite(i8* %45, i64 1, i64 %conv37, %struct._IO_FILE* %48)
  %49 = load i32, i32* %bpsl, align 4
  %50 = load i8*, i8** %src, align 8
  %idx.ext39 = sext i32 %49 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %50, i64 %idx.ext39
  store i8* %add.ptr40, i8** %src, align 8
  br label %if.end.50

if.else:                                          ; preds = %if.end.33
  store i32 0, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %if.else
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %width, align 4
  %cmp42 = icmp slt i32 %51, %52
  br i1 %cmp42, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.41
  %53 = load i8*, i8** %src, align 8
  %54 = load i8, i8* %53, align 1
  %conv45 = zext i8 %54 to i32
  %55 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp46 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %55, i32 0, i32 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp46, align 8
  %call47 = call i32 @_IO_putc(i32 %conv45, %struct._IO_FILE* %56)
  %57 = load i32, i32* %bpp, align 4
  %58 = load i8*, i8** %src, align 8
  %idx.ext48 = sext i32 %57 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %58, i64 %idx.ext48
  store i8* %add.ptr49, i8** %src, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.44
  %59 = load i32, i32* %j, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %if.then.36
  %60 = load i32, i32* %width, align 4
  %conv51 = sext i32 %60 to i64
  %61 = load i64, i64* %nbytes, align 8
  %add52 = add nsw i64 %61, %conv51
  store i64 %add52, i64* %nbytes, align 8
  %62 = load i32, i32* %bpsl, align 4
  %mul53 = mul nsw i32 2, %62
  %63 = load i8*, i8** %src, align 8
  %idx.ext54 = sext i32 %mul53 to i64
  %idx.neg = sub i64 0, %idx.ext54
  %add.ptr55 = getelementptr inbounds i8, i8* %63, i64 %idx.neg
  store i8* %add.ptr55, i8** %src, align 8
  %64 = load i32, i32* %i, align 4
  %rem56 = srem i32 %64, 20
  %cmp57 = icmp eq i32 %rem56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.end.50
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %channel, align 4
  %67 = load i32, i32* %height, align 4
  %mul60 = mul nsw i32 %66, %67
  %add61 = add nsw i32 %65, %mul60
  %conv62 = sitofp i32 %add61 to double
  %68 = load i32, i32* %height, align 4
  %69 = load i32, i32* %bpp, align 4
  %mul63 = mul nsw i32 %68, %69
  %conv64 = sitofp i32 %mul63 to double
  %div = fdiv double %conv62, %conv64
  %call65 = call i32 @gimp_progress_update(double %div)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.end.50
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %70 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %70, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.17

for.end.69:                                       ; preds = %for.cond.17
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %71 = load i32, i32* %channel, align 4
  %inc71 = add nsw i32 %71, 1
  store i32 %inc71, i32* %channel, align 4
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  %call73 = call i32 @gimp_progress_update(double 1.000000e+00)
  %72 = load i64, i64* %nbytes, align 8
  %rem74 = srem i64 %72, 2880
  store i64 %rem74, i64* %nbytes, align 8
  %73 = load i64, i64* %nbytes, align 8
  %tobool = icmp ne i64 %73, 0
  br i1 %tobool, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %for.end.72
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.75
  %74 = load i64, i64* %nbytes, align 8
  %inc76 = add nsw i64 %74, 1
  store i64 %inc76, i64* %nbytes, align 8
  %cmp77 = icmp slt i64 %74, 2880
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %75 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp79 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %75, i32 0, i32 0
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp79, align 8
  %call80 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %76)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.81

if.end.81:                                        ; preds = %while.end, %for.end.72
  %77 = load i8*, i8** %data, align 8
  call void @g_free(i8* %77)
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %78)
  %79 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %fp82 = getelementptr inbounds %struct.FITS_FILE, %struct.FITS_FILE* %79, i32 0, i32 0
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp82, align 8
  %call83 = call i32 @ferror(%struct._IO_FILE* %80) #5
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.81
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call86)
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.end.81
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.then.85, %if.then.13, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct.fits_hdu_list* @create_fits_header(%struct.FITS_FILE* %ofp, i32 %width, i32 %height, i32 %bpp) #0 {
entry:
  %retval = alloca %struct.fits_hdu_list*, align 8
  %ofp.addr = alloca %struct.FITS_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %hdulist = alloca %struct.fits_hdu_list*, align 8
  %print_ctype3 = alloca i32, align 4
  store %struct.FITS_FILE* %ofp, %struct.FITS_FILE** %ofp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 0, i32* %print_ctype3, align 4
  %0 = load %struct.FITS_FILE*, %struct.FITS_FILE** %ofp.addr, align 8
  %call = call %struct.fits_hdu_list* @fits_add_hdu(%struct.FITS_FILE* %0)
  store %struct.fits_hdu_list* %call, %struct.fits_hdu_list** %hdulist, align 8
  %1 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %cmp = icmp eq %struct.fits_hdu_list* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.fits_hdu_list* null, %struct.fits_hdu_list** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %2, i32 0, i32 8
  %simple = getelementptr inbounds %struct.anon, %struct.anon* %used, i32 0, i32 5
  store i8 1, i8* %simple, align 1
  %3 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bitpix = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %3, i32 0, i32 13
  store i32 8, i32* %bitpix, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  %cond = select i1 %cmp1, i32 2, i32 3
  %5 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxis = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %5, i32 0, i32 11
  store i32 %cond, i32* %naxis, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %7, i32 0, i32 12
  %arrayidx = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn2 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %9, i32 0, i32 12
  %arrayidx3 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn2, i32 0, i64 1
  store i32 %8, i32* %arrayidx3, align 4
  %10 = load i32, i32* %bpp.addr, align 4
  %11 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %naxisn4 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %11, i32 0, i32 12
  %arrayidx5 = getelementptr inbounds [999 x i32], [999 x i32]* %naxisn4, i32 0, i64 2
  store i32 %10, i32* %arrayidx5, align 4
  %12 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used6 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %12, i32 0, i32 8
  %datamin = getelementptr inbounds %struct.anon, %struct.anon* %used6, i32 0, i32 3
  store i8 1, i8* %datamin, align 1
  %13 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %datamin7 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %13, i32 0, i32 15
  store double 0.000000e+00, double* %datamin7, align 8
  %14 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used8 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %14, i32 0, i32 8
  %datamax = getelementptr inbounds %struct.anon, %struct.anon* %used8, i32 0, i32 4
  store i8 1, i8* %datamax, align 1
  %15 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %datamax9 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %15, i32 0, i32 16
  store double 2.550000e+02, double* %datamax9, align 8
  %16 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used10 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %16, i32 0, i32 8
  %bzero = getelementptr inbounds %struct.anon, %struct.anon* %used10, i32 0, i32 9
  store i8 1, i8* %bzero, align 1
  %17 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bzero11 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %17, i32 0, i32 20
  store double 0.000000e+00, double* %bzero11, align 8
  %18 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %used12 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %18, i32 0, i32 8
  %bscale = getelementptr inbounds %struct.anon, %struct.anon* %used12, i32 0, i32 10
  store i8 1, i8* %bscale, align 1
  %19 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %bscale13 = getelementptr inbounds %struct.fits_hdu_list, %struct.fits_hdu_list* %19, i32 0, i32 21
  store double 1.000000e+00, double* %bscale13, align 8
  %20 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call14 = call i32 @fits_add_card(%struct.fits_hdu_list* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  %21 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call15 = call i32 @fits_add_card(%struct.fits_hdu_list* %21, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.68, i32 0, i32 0))
  %22 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call16 = call i32 @fits_add_card(%struct.fits_hdu_list* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  %23 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call17 = call i32 @fits_add_card(%struct.fits_hdu_list* %23, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.69, i32 0, i32 0))
  %24 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call18 = call i32 @fits_add_card(%struct.fits_hdu_list* %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0))
  %25 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call19 = call i32 @fits_add_card(%struct.fits_hdu_list* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i32 0, i32 0))
  %26 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call20 = call i32 @fits_add_card(%struct.fits_hdu_list* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  %27 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %28 = load i32, i32* %bpp.addr, align 4
  %mul = mul i32 %28, 3
  %idxprom = zext i32 %mul to i64
  %arrayidx21 = getelementptr inbounds [15 x i8*], [15 x i8*]* @create_fits_header.ctype3_card, i32 0, i64 %idxprom
  %29 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 @fits_add_card(%struct.fits_hdu_list* %27, i8* %29)
  %30 = load i32, i32* %bpp.addr, align 4
  %mul23 = mul i32 %30, 3
  %add = add i32 %mul23, 1
  %idxprom24 = zext i32 %add to i64
  %arrayidx25 = getelementptr inbounds [15 x i8*], [15 x i8*]* @create_fits_header.ctype3_card, i32 0, i64 %idxprom24
  %31 = load i8*, i8** %arrayidx25, align 8
  %cmp26 = icmp ne i8* %31, null
  br i1 %cmp26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end
  %32 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %33 = load i32, i32* %bpp.addr, align 4
  %mul28 = mul i32 %33, 3
  %add29 = add i32 %mul28, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [15 x i8*], [15 x i8*]* @create_fits_header.ctype3_card, i32 0, i64 %idxprom30
  %34 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i32 @fits_add_card(%struct.fits_hdu_list* %32, i8* %34)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %if.end
  %35 = load i32, i32* %print_ctype3, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.33
  %36 = load i32, i32* %bpp.addr, align 4
  %mul34 = mul i32 %36, 3
  %add35 = add i32 %mul34, 2
  %idxprom36 = zext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds [15 x i8*], [15 x i8*]* @create_fits_header.ctype3_card, i32 0, i64 %idxprom36
  %37 = load i8*, i8** %arrayidx37, align 8
  %cmp38 = icmp ne i8* %37, null
  br i1 %cmp38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %land.lhs.true
  %38 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %39 = load i32, i32* %bpp.addr, align 4
  %mul40 = mul i32 %39, 3
  %add41 = add i32 %mul40, 2
  %idxprom42 = zext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [15 x i8*], [15 x i8*]* @create_fits_header.ctype3_card, i32 0, i64 %idxprom42
  %40 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i32 @fits_add_card(%struct.fits_hdu_list* %38, i8* %40)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %land.lhs.true, %if.end.33
  %41 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  %call46 = call i32 @fits_add_card(%struct.fits_hdu_list* %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  %42 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %hdulist, align 8
  store %struct.fits_hdu_list* %42, %struct.fits_hdu_list** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then
  %43 = load %struct.fits_hdu_list*, %struct.fits_hdu_list** %retval
  ret %struct.fits_hdu_list* %43
}

declare i32 @fits_write_header(%struct.FITS_FILE*, %struct.fits_hdu_list*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare %struct.fits_hdu_list* @fits_add_hdu(%struct.FITS_FILE*) #1

declare i32 @fits_add_card(%struct.fits_hdu_list*, i8*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
