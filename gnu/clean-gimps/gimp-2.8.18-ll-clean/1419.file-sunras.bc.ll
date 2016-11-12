; ModuleID = './plug-ins/common/file-sunras.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SUNRASSaveVals = type { i32 }
%struct.RLEBUF = type { i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.L_SUNFILEHEADER = type { i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

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
@query.save_args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"Specify non-zero for rle output, zero for standard output\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"file-sunras-load\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"load file of the SunRaster file format\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Peter Kirchgessner\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"SUN Rasterfile image\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"image/x-sun-raster\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"im1,im8,im24,im32,rs,ras\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"0,long,0x59a66a95\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"file-sunras-save\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"save file in the SunRaster file format\00", align 1
@.str.24 = private unnamed_addr constant [72 x i8] c"SUNRAS saving handles all image types except those with alpha channels.\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"RGB, GRAY, INDEXED\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@l_run_mode = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"file-sunras\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"SUNRAS\00", align 1
@psvals = internal global %struct.SUNRASSaveVals { i32 1 }, align 4
@.str.30 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@read_msb_first = internal global i32 1, align 4
@.str.32 = private unnamed_addr constant [39 x i8] c"Could not open '%s' as SUN-raster-file\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"The type of this SUN-rasterfile is not supported\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"Map lengths greater than 256 entries are unsupported by GIMP.\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Could not read color entries from '%s'\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Type of colormap not supported\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"'%s':\0ANo image width specified\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"'%s':\0AImage width is larger than GIMP can handle\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"'%s':\0ANo image height specified\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"'%s':\0AImage height is larger than GIMP can handle\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"This image depth is not supported\00", align 1
@load_sun_d1.sun_bwcolmap = private unnamed_addr constant [6 x i8] c"\FF\00\FF\00\FF\00", align 1
@rlebuf = internal global %struct.RLEBUF zeroinitializer, align 4
@.str.44 = private unnamed_addr constant [27 x i8] c"EOF encountered on reading\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Unsupported image type\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"Data Formatting\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"RunLength Encoded\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"SUNRAS save cannot handle images with alpha channels\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"Can't operate on unknown image types\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@save_index.sun_bwmap = internal global [6 x i8] c"\00\FF\00\FF\00\FF", align 1
@save_index.sun_wbmap = internal global [6 x i8] c"\FF\00\FF\00\FF\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"Write error occurred\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #8
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
  br label %if.end.60

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0)) #8
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.58

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
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 7)
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
  switch i32 %17, label %sw.default.40 [
    i32 0, label %sw.bb.24
    i32 1, label %sw.bb.29
    i32 2, label %sw.bb.38
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  %call25 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (%struct.SUNRASSaveVals* @psvals to i8*))
  %call26 = call i32 @save_dialog()
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb.24
  store i32 4, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %sw.bb.24
  br label %sw.epilog.41

sw.bb.29:                                         ; preds = %sw.epilog
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp30 = icmp ne i32 %18, 6
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %sw.bb.29
  store i32 1, i32* %status, align 4
  br label %if.end.37

if.else.32:                                       ; preds = %sw.bb.29
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_int3235 = bitcast %union._GimpParamData* %data34 to i32*
  %20 = load i32, i32* %d_int3235, align 4
  %tobool36 = icmp ne i32 %20, 0
  %cond = select i1 %tobool36, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.SUNRASSaveVals, %struct.SUNRASSaveVals* @psvals, i32 0, i32 0), align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.32, %if.then.31
  br label %sw.epilog.41

sw.bb.38:                                         ; preds = %sw.epilog
  %call39 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (%struct.SUNRASSaveVals* @psvals to i8*))
  br label %sw.epilog.41

sw.default.40:                                    ; preds = %sw.epilog
  br label %sw.epilog.41

sw.epilog.41:                                     ; preds = %sw.default.40, %sw.bb.38, %if.end.37, %if.end.28
  %21 = load i32, i32* %status, align 4
  %cmp42 = icmp eq i32 %21, 3
  br i1 %cmp42, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %sw.epilog.41
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 3
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_string46 = bitcast %union._GimpParamData* %data45 to i8**
  %23 = load i8*, i8** %d_string46, align 8
  %24 = load i32, i32* %image_ID, align 4
  %25 = load i32, i32* %drawable_ID, align 4
  %call47 = call i32 @save_image(i8* %23, i32 %24, i32 %25, %struct._GError** %error)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.then.43
  %call50 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (%struct.SUNRASSaveVals* @psvals to i8*), i32 4)
  br label %if.end.52

if.else.51:                                       ; preds = %if.then.43
  store i32 0, i32* %status, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.49
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %sw.epilog.41
  %26 = load i32, i32* %export, align 4
  %cmp54 = icmp eq i32 %26, 2
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.53
  %27 = load i32, i32* %image_ID, align 4
  %call56 = call i32 @gimp_image_delete(i32 %27)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.53
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.end.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end
  %28 = load i32, i32* %status, align 4
  %cmp61 = icmp ne i32 %28, 3
  br i1 %cmp61, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.end.60
  %29 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool62 = icmp ne %struct._GError* %29, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true
  %30 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %30, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %31 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %31, i32 0, i32 2
  %32 = load i8*, i8** %message, align 8
  store i8* %32, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true, %if.end.60
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.64, %if.then.22
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
  %image_ID = alloca i32, align 4
  %ifp = alloca %struct._IO_FILE*, align 8
  %sunhdr = alloca %struct.L_SUNFILEHEADER, align 8
  %suncolmap = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %suncolmap, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %ifp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0)) #6
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @read_msb_first, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  call void @read_sun_header(%struct._IO_FILE* %6, %struct.L_SUNFILEHEADER* %sunhdr)
  %l_ras_magic = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 0
  %7 = load i64, i64* %l_ras_magic, align 8
  %cmp = icmp ne i64 %7, 1504078485
  br i1 %cmp, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @g_file_error_quark()
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0)) #6
  %9 = load i8*, i8** %filename.addr, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %9)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call9, i32 24, i8* %call10, i8* %call11)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %10)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %l_ras_type = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 5
  %11 = load i64, i64* %l_ras_type, align 8
  %cmp14 = icmp ult i64 %11, 0
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %l_ras_type15 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 5
  %12 = load i64, i64* %l_ras_type15, align 8
  %cmp16 = icmp ugt i64 %12, 5
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.13
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @g_file_error_quark()
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %13, i32 %call18, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* %call19)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  %15 = load i64, i64* %l_ras_maplength, align 8
  %cmp22 = icmp ult i64 %15, 0
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.end.21
  %l_ras_maplength24 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  %16 = load i64, i64* %l_ras_maplength24, align 8
  %cmp25 = icmp ugt i64 %16, 768
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.23, %if.end.21
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.35, i32 0, i32 0))
  call void @gimp_quit() #9
  unreachable

if.end.27:                                        ; preds = %lor.lhs.false.23
  %l_ras_maptype = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 6
  %17 = load i64, i64* %l_ras_maptype, align 8
  %cmp28 = icmp eq i64 %17, 1
  br i1 %cmp28, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.27
  %l_ras_maplength29 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  %18 = load i64, i64* %l_ras_maplength29, align 8
  %cmp30 = icmp ugt i64 %18, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %land.lhs.true
  %l_ras_maplength32 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  %19 = load i64, i64* %l_ras_maplength32, align 8
  %call33 = call noalias i8* @g_malloc_n(i64 %19, i64 1)
  store i8* %call33, i8** %suncolmap, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %21 = load i8*, i8** %suncolmap, align 8
  call void @read_sun_cols(%struct._IO_FILE* %20, %struct.L_SUNFILEHEADER* %sunhdr, i8* %21)
  %l_ras_magic34 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 0
  %22 = load i64, i64* %l_ras_magic34, align 8
  %cmp35 = icmp ne i64 %22, 1504078485
  br i1 %cmp35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.then.31
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0)) #6
  %23 = load i8*, i8** %filename.addr, align 8
  %call38 = call i8* @gimp_filename_to_utf8(i8* %23)
  call void (i8*, ...) @g_message(i8* %call37, i8* %call38)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call39 = call i32 @fclose(%struct._IO_FILE* %24)
  %25 = load i8*, i8** %suncolmap, align 8
  call void @g_free(i8* %25)
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.31
  br label %if.end.48

if.else:                                          ; preds = %land.lhs.true, %if.end.27
  %l_ras_maplength41 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  %26 = load i64, i64* %l_ras_maplength41, align 8
  %cmp42 = icmp ugt i64 %26, 0
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.else
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call44)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %l_ras_maplength45 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  %28 = load i64, i64* %l_ras_maplength45, align 8
  %add = add i64 32, %28
  %call46 = call i32 @fseek(%struct._IO_FILE* %27, i64 %add, i32 0)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.40
  %l_ras_width = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 1
  %29 = load i64, i64* %l_ras_width, align 8
  %cmp49 = icmp ule i64 %29, 0
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.48
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0)) #6
  %30 = load i8*, i8** %filename.addr, align 8
  %call52 = call i8* @gimp_filename_to_utf8(i8* %30)
  call void (i8*, ...) @g_message(i8* %call51, i8* %call52)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call53 = call i32 @fclose(%struct._IO_FILE* %31)
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.48
  %l_ras_width55 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 1
  %32 = load i64, i64* %l_ras_width55, align 8
  %cmp56 = icmp ugt i64 %32, 262144
  br i1 %cmp56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.54
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0)) #6
  %33 = load i8*, i8** %filename.addr, align 8
  %call59 = call i8* @gimp_filename_to_utf8(i8* %33)
  call void (i8*, ...) @g_message(i8* %call58, i8* %call59)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* %34)
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.54
  %l_ras_height = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 2
  %35 = load i64, i64* %l_ras_height, align 8
  %cmp62 = icmp ule i64 %35, 0
  br i1 %cmp62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.61
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0)) #6
  %36 = load i8*, i8** %filename.addr, align 8
  %call65 = call i8* @gimp_filename_to_utf8(i8* %36)
  call void (i8*, ...) @g_message(i8* %call64, i8* %call65)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call66 = call i32 @fclose(%struct._IO_FILE* %37)
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.61
  %l_ras_height68 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 2
  %38 = load i64, i64* %l_ras_height68, align 8
  %cmp69 = icmp ugt i64 %38, 262144
  br i1 %cmp69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.end.67
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0)) #6
  %39 = load i8*, i8** %filename.addr, align 8
  %call72 = call i8* @gimp_filename_to_utf8(i8* %39)
  call void (i8*, ...) @g_message(i8* %call71, i8* %call72)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call73 = call i32 @fclose(%struct._IO_FILE* %40)
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.67
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)) #6
  %41 = load i8*, i8** %filename.addr, align 8
  %call76 = call i8* @gimp_filename_to_utf8(i8* %41)
  %call77 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call75, i8* %call76)
  %l_ras_depth = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 3
  %42 = load i64, i64* %l_ras_depth, align 8
  switch i64 %42, label %sw.default [
    i64 1, label %sw.bb
    i64 8, label %sw.bb.79
    i64 24, label %sw.bb.81
    i64 32, label %sw.bb.83
  ]

sw.bb:                                            ; preds = %if.end.74
  %43 = load i8*, i8** %filename.addr, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %45 = load i8*, i8** %suncolmap, align 8
  %call78 = call i32 @load_sun_d1(i8* %43, %struct._IO_FILE* %44, %struct.L_SUNFILEHEADER* %sunhdr, i8* %45)
  store i32 %call78, i32* %image_ID, align 4
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.74
  %46 = load i8*, i8** %filename.addr, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %48 = load i8*, i8** %suncolmap, align 8
  %call80 = call i32 @load_sun_d8(i8* %46, %struct._IO_FILE* %47, %struct.L_SUNFILEHEADER* %sunhdr, i8* %48)
  store i32 %call80, i32* %image_ID, align 4
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.74
  %49 = load i8*, i8** %filename.addr, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %51 = load i8*, i8** %suncolmap, align 8
  %call82 = call i32 @load_sun_d24(i8* %49, %struct._IO_FILE* %50, %struct.L_SUNFILEHEADER* %sunhdr, i8* %51)
  store i32 %call82, i32* %image_ID, align 4
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.74
  %52 = load i8*, i8** %filename.addr, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %54 = load i8*, i8** %suncolmap, align 8
  %call84 = call i32 @load_sun_d32(i8* %52, %struct._IO_FILE* %53, %struct.L_SUNFILEHEADER* %sunhdr, i8* %54)
  store i32 %call84, i32* %image_ID, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.74
  store i32 -1, i32* %image_ID, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.83, %sw.bb.81, %sw.bb.79, %sw.bb
  %call85 = call i32 @gimp_progress_update(double 1.000000e+00)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call86 = call i32 @fclose(%struct._IO_FILE* %55)
  %56 = load i8*, i8** %suncolmap, align 8
  call void @g_free(i8* %56)
  %57 = load i32, i32* %image_ID, align 4
  %cmp87 = icmp eq i32 %57, -1
  br i1 %cmp87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %sw.epilog
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call89)
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %sw.epilog
  %58 = load i32, i32* %image_ID, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.88, %if.then.70, %if.then.63, %if.then.57, %if.then.50, %if.then.36, %if.then.17, %if.then.8, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
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
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0)) #6
  %0 = load i32, i32* getelementptr inbounds (%struct.SUNRASSaveVals, %struct.SUNRASSaveVals* @psvals, i32 0, i32 0), align 4
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0)) #6
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #6
  %call5 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call2, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (%struct.SUNRASSaveVals* @psvals to i8*), i32 %0, i8* %call3, i32 1, i8* null, i8* %call4, i32 0, i8* null, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call6)
  %3 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %3, i32 12)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call8 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkWidget* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call9)
  %6 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 1, i32 1, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dialog_get_type() #7
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
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %ofp = alloca %struct._IO_FILE*, align 8
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
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.50, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call3, i32 24, i8* %call4)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %drawable_type, align 4
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call5)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %4 = load i8*, i8** %filename.addr, align 8
  %call6 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %ofp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %tobool7 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool7, label %if.end.16, label %if.then.8

if.then.8:                                        ; preds = %sw.epilog
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @g_file_error_quark()
  %call10 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call10, align 4
  %call11 = call i32 @g_file_error_from_errno(i32 %7)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0)) #6
  %8 = load i8*, i8** %filename.addr, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call14 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call14, align 4
  %call15 = call i8* @g_strerror(i32 %9) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %6, i32 %call9, i32 %call11, i8* %call12, i8* %call13, i8* %call15)
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.epilog
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0)) #6
  %10 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call19 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call17, i8* %call18)
  %11 = load i32, i32* %drawable_type, align 4
  %cmp = icmp eq i32 %11, 4
  br i1 %cmp, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.16
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %13 = load i32, i32* %image_ID.addr, align 4
  %14 = load i32, i32* %drawable_ID.addr, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.SUNRASSaveVals, %struct.SUNRASSaveVals* @psvals, i32 0, i32 0), align 4
  %call21 = call i32 @save_index(%struct._IO_FILE* %12, i32 %13, i32 %14, i32 0, i32 %15)
  store i32 %call21, i32* %retval1, align 4
  br label %if.end.32

if.else:                                          ; preds = %if.end.16
  %16 = load i32, i32* %drawable_type, align 4
  %cmp22 = icmp eq i32 %16, 2
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.else
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %18 = load i32, i32* %image_ID.addr, align 4
  %19 = load i32, i32* %drawable_ID.addr, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.SUNRASSaveVals, %struct.SUNRASSaveVals* @psvals, i32 0, i32 0), align 4
  %call24 = call i32 @save_index(%struct._IO_FILE* %17, i32 %18, i32 %19, i32 1, i32 %20)
  store i32 %call24, i32* %retval1, align 4
  br label %if.end.31

if.else.25:                                       ; preds = %if.else
  %21 = load i32, i32* %drawable_type, align 4
  %cmp26 = icmp eq i32 %21, 0
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else.25
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %23 = load i32, i32* %image_ID.addr, align 4
  %24 = load i32, i32* %drawable_ID.addr, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.SUNRASSaveVals, %struct.SUNRASSaveVals* @psvals, i32 0, i32 0), align 4
  %call28 = call i32 @save_rgb(%struct._IO_FILE* %22, i32 %23, i32 %24, i32 %25)
  store i32 %call28, i32* %retval1, align 4
  br label %if.end.30

if.else.29:                                       ; preds = %if.else.25
  store i32 0, i32* %retval1, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %call33 = call i32 @fclose(%struct._IO_FILE* %26)
  %27 = load i32, i32* %retval1, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.8, %sw.default, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
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

; Function Attrs: nounwind uwtable
define internal void @read_sun_header(%struct._IO_FILE* %ifp, %struct.L_SUNFILEHEADER* %sunhdr) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %j = alloca i32, align 4
  %err = alloca i32, align 4
  %cp = alloca i64*, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %1 = bitcast %struct.L_SUNFILEHEADER* %0 to i64*
  store i64* %1, i64** %cp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i64 @read_card32(%struct._IO_FILE* %3, i32* %err)
  %4 = load i64*, i64** %cp, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %4, i32 1
  store i64* %incdec.ptr, i64** %cp, align 8
  store i64 %call, i64* %4, align 8
  %5 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %err, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  %8 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_magic = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %8, i32 0, i32 0
  store i64 0, i64* %l_ras_magic, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.end
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

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

; Function Attrs: noreturn
declare void @gimp_quit() #5

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @read_sun_cols(%struct._IO_FILE* %ifp, %struct.L_SUNFILEHEADER* %sunhdr, i8* %colormap) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %colormap.addr = alloca i8*, align 8
  %ncols = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i8* %colormap, i8** %colormap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %0, i32 0, i32 7
  %1 = load i64, i64* %l_ras_maplength, align 8
  %div = udiv i64 %1, 3
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %ncols, align 4
  %2 = load i32, i32* %ncols, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %err, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %colormap.addr, align 8
  %4 = load i32, i32* %ncols, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i64 @fread(i8* %3, i64 3, i64 %conv2, %struct._IO_FILE* %5)
  %6 = load i32, i32* %ncols, align 4
  %conv3 = sext i32 %6 to i64
  %cmp4 = icmp ne i64 %call, %conv3
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %8 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_magic = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %8, i32 0, i32 0
  store i64 0, i64* %l_ras_magic, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  ret void
}

declare void @g_free(i8*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_sun_d1(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_SUNFILEHEADER* %sunhdr, i8* %suncolmap) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %suncolmap.addr = alloca i8*, align 8
  %pix8 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %linepad = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dest = alloca i8*, align 8
  %data = alloca i8*, align 8
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %bit2byte = alloca [2048 x i8], align 16
  %sun_bwhdr = alloca %struct.L_SUNFILEHEADER, align 8
  %sun_bwcolmap = alloca [6 x i8], align 1
  %err = alloca i32, align 4
  %rle = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i8* %suncolmap, i8** %suncolmap.addr, align 8
  %0 = bitcast [6 x i8]* %sun_bwcolmap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @load_sun_d1.sun_bwcolmap, i32 0, i32 0), i64 6, i32 1, i1 false)
  store i32 0, i32* %err, align 4
  %1 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_type = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %1, i32 0, i32 5
  %2 = load i64, i64* %l_ras_type, align 8
  %cmp = icmp eq i64 %2, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rle, align 4
  %3 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_width = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %3, i32 0, i32 1
  %4 = load i64, i64* %l_ras_width, align 8
  %conv1 = trunc i64 %4 to i32
  store i32 %conv1, i32* %width, align 4
  %5 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_height = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %5, i32 0, i32 2
  %6 = load i64, i64* %l_ras_height, align 8
  %conv2 = trunc i64 %6 to i32
  store i32 %conv2, i32* %height, align 4
  %7 = load i8*, i8** %filename.addr, align 8
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %call = call i32 @create_new_image(i8* %7, i32 %8, i32 %9, i32 2, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call, i32* %image_ID, align 4
  %call3 = call i32 @gimp_tile_height() #7
  store i32 %call3, i32* %tile_height, align 4
  %10 = load i32, i32* %tile_height, align 4
  %11 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %10, %11
  %conv4 = sext i32 %mul to i64
  %call5 = call noalias i8* @g_malloc(i64 %conv4)
  store i8* %call5, i8** %data, align 8
  %12 = load i8*, i8** %suncolmap.addr, align 8
  %cmp6 = icmp ne i8* %12, null
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %image_ID, align 4
  %14 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %15 = load i8*, i8** %suncolmap.addr, align 8
  call void @set_color_table(i32 %13, %struct.L_SUNFILEHEADER* %14, i8* %15)
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = bitcast %struct.L_SUNFILEHEADER* %sun_bwhdr to i8*
  %17 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %18 = bitcast %struct.L_SUNFILEHEADER* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %18, i64 64, i32 1, i1 false)
  %l_ras_maptype = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sun_bwhdr, i32 0, i32 6
  store i64 2, i64* %l_ras_maptype, align 8
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sun_bwhdr, i32 0, i32 7
  store i64 6, i64* %l_ras_maplength, align 8
  %19 = load i32, i32* %image_ID, align 4
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %sun_bwcolmap, i32 0, i32 0
  call void @set_color_table(i32 %19, %struct.L_SUNFILEHEADER* %sun_bwhdr, i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %bit2byte, i32 0, i32 0
  store i8* %arraydecay8, i8** %dest, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end
  %20 = load i32, i32* %j, align 4
  %cmp9 = icmp slt i32 %20, 256
  br i1 %cmp9, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 7, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %i, align 4
  %cmp12 = icmp sge i32 %21, 0
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %i, align 4
  %shl = shl i32 1, %23
  %and = and i32 %22, %shl
  %cmp15 = icmp ne i32 %and, 0
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = trunc i32 %conv16 to i8
  %24 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv17, i8* %24, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %25 = load i32, i32* %i, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %27 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_width20 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %27, i32 0, i32 1
  %28 = load i64, i64* %l_ras_width20, align 8
  %add = add i64 %28, 7
  %div = udiv i64 %add, 8
  %rem = urem i64 %div, 2
  %conv21 = trunc i64 %rem to i32
  store i32 %conv21, i32* %linepad, align 4
  %29 = load i32, i32* %rle, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end.19
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  call void @rle_startread(%struct._IO_FILE* %30)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.end.19
  %31 = load i8*, i8** %data, align 8
  store i8* %31, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.115, %if.end.23
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %height, align 4
  %cmp25 = icmp slt i32 %32, %33
  br i1 %cmp25, label %for.body.27, label %for.end.117

for.body.27:                                      ; preds = %for.cond.24
  %34 = load i32, i32* %width, align 4
  store i32 %34, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %for.body.27
  %35 = load i32, i32* %j, align 4
  %cmp28 = icmp sge i32 %35, 8
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %rle, align 4
  %tobool30 = icmp ne i32 %36, 0
  br i1 %tobool30, label %cond.true, label %cond.false.36

cond.true:                                        ; preds = %while.body
  %37 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp31 = icmp sgt i32 %37, 0
  br i1 %cmp31, label %cond.true.33, label %cond.false

cond.true.33:                                     ; preds = %cond.true
  %38 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec34 = add nsw i32 %38, -1
  store i32 %dec34, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call35 = call i32 @rle_fgetc(%struct._IO_FILE* %40)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.33
  %cond = phi i32 [ %39, %cond.true.33 ], [ %call35, %cond.false ]
  br label %cond.end.38

cond.false.36:                                    ; preds = %while.body
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call37 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.end
  %cond39 = phi i32 [ %cond, %cond.end ], [ %call37, %cond.false.36 ]
  store i32 %cond39, i32* %pix8, align 4
  %42 = load i32, i32* %pix8, align 4
  %cmp40 = icmp slt i32 %42, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %cond.end.38
  store i32 1, i32* %err, align 4
  store i32 0, i32* %pix8, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %cond.end.38
  %43 = load i8*, i8** %dest, align 8
  %arraydecay44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %bit2byte, i32 0, i32 0
  %44 = load i32, i32* %pix8, align 4
  %mul45 = mul nsw i32 %44, 8
  %idx.ext = sext i32 %mul45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay44, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %add.ptr, i64 8, i32 1, i1 false)
  %45 = load i8*, i8** %dest, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %45, i64 8
  store i8* %add.ptr46, i8** %dest, align 8
  %46 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %46, 8
  store i32 %sub, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i32, i32* %j, align 4
  %cmp47 = icmp sgt i32 %47, 0
  br i1 %cmp47, label %if.then.49, label %if.end.75

if.then.49:                                       ; preds = %while.end
  %48 = load i32, i32* %rle, align 4
  %tobool50 = icmp ne i32 %48, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.60

cond.true.51:                                     ; preds = %if.then.49
  %49 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp52 = icmp sgt i32 %49, 0
  br i1 %cmp52, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %cond.true.51
  %50 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec55 = add nsw i32 %50, -1
  store i32 %dec55, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end.58

cond.false.56:                                    ; preds = %cond.true.51
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call57 = call i32 @rle_fgetc(%struct._IO_FILE* %52)
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.54
  %cond59 = phi i32 [ %51, %cond.true.54 ], [ %call57, %cond.false.56 ]
  br label %cond.end.62

cond.false.60:                                    ; preds = %if.then.49
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call61 = call i32 @_IO_getc(%struct._IO_FILE* %53)
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.end.58
  %cond63 = phi i32 [ %cond59, %cond.end.58 ], [ %call61, %cond.false.60 ]
  store i32 %cond63, i32* %pix8, align 4
  %54 = load i32, i32* %pix8, align 4
  %cmp64 = icmp slt i32 %54, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %cond.end.62
  store i32 1, i32* %err, align 4
  store i32 0, i32* %pix8, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %cond.end.62
  %55 = load i8*, i8** %dest, align 8
  %arraydecay68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %bit2byte, i32 0, i32 0
  %56 = load i32, i32* %pix8, align 4
  %mul69 = mul nsw i32 %56, 8
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay68, i64 %idx.ext70
  %57 = load i32, i32* %j, align 4
  %conv72 = sext i32 %57 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %add.ptr71, i64 %conv72, i32 1, i1 false)
  %58 = load i32, i32* %j, align 4
  %59 = load i8*, i8** %dest, align 8
  %idx.ext73 = sext i32 %58 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %59, i64 %idx.ext73
  store i8* %add.ptr74, i8** %dest, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.67, %while.end
  %60 = load i32, i32* %linepad, align 4
  %tobool76 = icmp ne i32 %60, 0
  br i1 %tobool76, label %if.then.77, label %if.end.94

if.then.77:                                       ; preds = %if.end.75
  %61 = load i32, i32* %rle, align 4
  %tobool78 = icmp ne i32 %61, 0
  br i1 %tobool78, label %cond.true.79, label %cond.false.88

cond.true.79:                                     ; preds = %if.then.77
  %62 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp80 = icmp sgt i32 %62, 0
  br i1 %cmp80, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %cond.true.79
  %63 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec83 = add nsw i32 %63, -1
  store i32 %dec83, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end.86

cond.false.84:                                    ; preds = %cond.true.79
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call85 = call i32 @rle_fgetc(%struct._IO_FILE* %65)
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.82
  %cond87 = phi i32 [ %64, %cond.true.82 ], [ %call85, %cond.false.84 ]
  br label %cond.end.90

cond.false.88:                                    ; preds = %if.then.77
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call89 = call i32 @_IO_getc(%struct._IO_FILE* %66)
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.end.86
  %cond91 = phi i32 [ %cond87, %cond.end.86 ], [ %call89, %cond.false.88 ]
  %cmp92 = icmp slt i32 %cond91, 0
  %conv93 = zext i1 %cmp92 to i32
  %67 = load i32, i32* %err, align 4
  %or = or i32 %67, %conv93
  store i32 %or, i32* %err, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %cond.end.90, %if.end.75
  %68 = load i32, i32* %scan_lines, align 4
  %inc95 = add nsw i32 %68, 1
  store i32 %inc95, i32* %scan_lines, align 4
  %69 = load i32, i32* %i, align 4
  %rem96 = srem i32 %69, 20
  %cmp97 = icmp eq i32 %rem96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.105

if.then.99:                                       ; preds = %if.end.94
  %70 = load i32, i32* %i, align 4
  %add100 = add nsw i32 %70, 1
  %conv101 = sitofp i32 %add100 to double
  %71 = load i32, i32* %height, align 4
  %conv102 = sitofp i32 %71 to double
  %div103 = fdiv double %conv101, %conv102
  %call104 = call i32 @gimp_progress_update(double %div103)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.99, %if.end.94
  %72 = load i32, i32* %scan_lines, align 4
  %73 = load i32, i32* %tile_height, align 4
  %cmp106 = icmp eq i32 %72, %73
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.105
  %74 = load i32, i32* %i, align 4
  %add108 = add nsw i32 %74, 1
  %75 = load i32, i32* %height, align 4
  %cmp109 = icmp eq i32 %add108, %75
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %lor.lhs.false, %if.end.105
  %76 = load i8*, i8** %data, align 8
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %scan_lines, align 4
  %sub112 = sub nsw i32 %77, %78
  %add113 = add nsw i32 %sub112, 1
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %76, i32 0, i32 %add113, i32 %79, i32 %80)
  store i32 0, i32* %scan_lines, align 4
  %81 = load i8*, i8** %data, align 8
  store i8* %81, i8** %dest, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %lor.lhs.false
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %82 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %82, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.24

for.end.117:                                      ; preds = %for.cond.24
  %83 = load i8*, i8** %data, align 8
  call void @g_free(i8* %83)
  %84 = load i32, i32* %err, align 4
  %tobool118 = icmp ne i32 %84, 0
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %for.end.117
  %call120 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call120)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %for.end.117
  %85 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %85)
  %86 = load i32, i32* %image_ID, align 4
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @load_sun_d8(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_SUNFILEHEADER* %sunhdr, i8* %suncolmap) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %suncolmap.addr = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %linepad = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %greyscale = alloca i32, align 4
  %ncols = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %dest = alloca i8*, align 8
  %data = alloca i8*, align 8
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %err = alloca i32, align 4
  %rle = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i8* %suncolmap, i8** %suncolmap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_type = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %0, i32 0, i32 5
  %1 = load i64, i64* %l_ras_type, align 8
  %cmp = icmp eq i64 %1, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rle, align 4
  %2 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_width = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %2, i32 0, i32 1
  %3 = load i64, i64* %l_ras_width, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* %width, align 4
  %4 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_height = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %4, i32 0, i32 2
  %5 = load i64, i64* %l_ras_height, align 8
  %conv2 = trunc i64 %5 to i32
  store i32 %conv2, i32* %height, align 4
  %6 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %6, i32 0, i32 7
  %7 = load i64, i64* %l_ras_maplength, align 8
  %div = udiv i64 %7, 3
  %conv3 = trunc i64 %div to i32
  store i32 %conv3, i32* %ncols, align 4
  store i32 1, i32* %greyscale, align 4
  %8 = load i32, i32* %ncols, align 4
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %entry
  %9 = load i8*, i8** %suncolmap.addr, align 8
  %cmp6 = icmp ne i8* %9, null
  br i1 %cmp6, label %if.then, label %if.end.26

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %ncols, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8*, i8** %suncolmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %14 to i32
  %15 = load i32, i32* %j, align 4
  %cmp11 = icmp ne i32 %conv10, %15
  br i1 %cmp11, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %ncols, align 4
  %add = add nsw i32 %16, %17
  %idxprom13 = sext i32 %add to i64
  %18 = load i8*, i8** %suncolmap.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 %idxprom13
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %20 = load i32, i32* %j, align 4
  %cmp16 = icmp ne i32 %conv15, %20
  br i1 %cmp16, label %if.then.25, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %ncols, align 4
  %mul = mul nsw i32 2, %22
  %add19 = add nsw i32 %21, %mul
  %idxprom20 = sext i32 %add19 to i64
  %23 = load i8*, i8** %suncolmap.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %23, i64 %idxprom20
  %24 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %24 to i32
  %25 = load i32, i32* %j, align 4
  %cmp23 = icmp ne i32 %conv22, %25
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %for.body
  store i32 0, i32* %greyscale, align 4
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %land.lhs.true, %entry
  %27 = load i8*, i8** %filename.addr, align 8
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  %30 = load i32, i32* %greyscale, align 4
  %tobool = icmp ne i32 %30, 0
  %cond = select i1 %tobool, i32 1, i32 2
  %call = call i32 @create_new_image(i8* %27, i32 %28, i32 %29, i32 %cond, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call, i32* %image_ID, align 4
  %call27 = call i32 @gimp_tile_height() #7
  store i32 %call27, i32* %tile_height, align 4
  %31 = load i32, i32* %tile_height, align 4
  %32 = load i32, i32* %width, align 4
  %mul28 = mul nsw i32 %31, %32
  %conv29 = sext i32 %mul28 to i64
  %call30 = call noalias i8* @g_malloc(i64 %conv29)
  store i8* %call30, i8** %data, align 8
  %33 = load i32, i32* %greyscale, align 4
  %tobool31 = icmp ne i32 %33, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.26
  %34 = load i32, i32* %image_ID, align 4
  %35 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %36 = load i8*, i8** %suncolmap.addr, align 8
  call void @set_color_table(i32 %34, %struct.L_SUNFILEHEADER* %35, i8* %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.26
  %37 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_width34 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %37, i32 0, i32 1
  %38 = load i64, i64* %l_ras_width34, align 8
  %rem = urem i64 %38, 2
  %conv35 = trunc i64 %rem to i32
  store i32 %conv35, i32* %linepad, align 4
  %39 = load i32, i32* %rle, align 4
  %tobool36 = icmp ne i32 %39, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  call void @rle_startread(%struct._IO_FILE* %40)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.33
  %41 = load i8*, i8** %data, align 8
  store i8* %41, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.92, %if.end.38
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %height, align 4
  %cmp40 = icmp slt i32 %42, %43
  br i1 %cmp40, label %for.body.42, label %for.end.94

for.body.42:                                      ; preds = %for.cond.39
  %44 = load i8*, i8** %dest, align 8
  %45 = load i32, i32* %width, align 4
  %conv43 = sext i32 %45 to i64
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 %conv43, i32 1, i1 false)
  %46 = load i32, i32* %rle, align 4
  %tobool44 = icmp ne i32 %46, 0
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.42
  %47 = load i8*, i8** %dest, align 8
  %48 = load i32, i32* %width, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call45 = call i32 @rle_fread(i8* %47, i32 1, i32 %48, %struct._IO_FILE* %49)
  %conv46 = sext i32 %call45 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body.42
  %50 = load i8*, i8** %dest, align 8
  %51 = load i32, i32* %width, align 4
  %conv47 = sext i32 %51 to i64
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call48 = call i64 @fread(i8* %50, i64 1, i64 %conv47, %struct._IO_FILE* %52)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond49 = phi i64 [ %conv46, %cond.true ], [ %call48, %cond.false ]
  %53 = load i32, i32* %width, align 4
  %conv50 = sext i32 %53 to i64
  %cmp51 = icmp ne i64 %cond49, %conv50
  %conv52 = zext i1 %cmp51 to i32
  %54 = load i32, i32* %err, align 4
  %or = or i32 %54, %conv52
  store i32 %or, i32* %err, align 4
  %55 = load i32, i32* %linepad, align 4
  %tobool53 = icmp ne i32 %55, 0
  br i1 %tobool53, label %if.then.54, label %if.end.71

if.then.54:                                       ; preds = %cond.end
  %56 = load i32, i32* %rle, align 4
  %tobool55 = icmp ne i32 %56, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.64

cond.true.56:                                     ; preds = %if.then.54
  %57 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp57 = icmp sgt i32 %57, 0
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.true.56
  %58 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end.62

cond.false.60:                                    ; preds = %cond.true.56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call61 = call i32 @rle_fgetc(%struct._IO_FILE* %60)
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  %cond63 = phi i32 [ %59, %cond.true.59 ], [ %call61, %cond.false.60 ]
  br label %cond.end.66

cond.false.64:                                    ; preds = %if.then.54
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call65 = call i32 @_IO_getc(%struct._IO_FILE* %61)
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.end.62
  %cond67 = phi i32 [ %cond63, %cond.end.62 ], [ %call65, %cond.false.64 ]
  %cmp68 = icmp slt i32 %cond67, 0
  %conv69 = zext i1 %cmp68 to i32
  %62 = load i32, i32* %err, align 4
  %or70 = or i32 %62, %conv69
  store i32 %or70, i32* %err, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end.66, %cond.end
  %63 = load i32, i32* %width, align 4
  %64 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %65 = load i32, i32* %scan_lines, align 4
  %inc72 = add nsw i32 %65, 1
  store i32 %inc72, i32* %scan_lines, align 4
  %66 = load i32, i32* %i, align 4
  %rem73 = srem i32 %66, 20
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %if.end.71
  %67 = load i32, i32* %i, align 4
  %add77 = add nsw i32 %67, 1
  %conv78 = sitofp i32 %add77 to double
  %68 = load i32, i32* %height, align 4
  %conv79 = sitofp i32 %68 to double
  %div80 = fdiv double %conv78, %conv79
  %call81 = call i32 @gimp_progress_update(double %div80)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.76, %if.end.71
  %69 = load i32, i32* %scan_lines, align 4
  %70 = load i32, i32* %tile_height, align 4
  %cmp83 = icmp eq i32 %69, %70
  br i1 %cmp83, label %if.then.89, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.end.82
  %71 = load i32, i32* %i, align 4
  %add86 = add nsw i32 %71, 1
  %72 = load i32, i32* %height, align 4
  %cmp87 = icmp eq i32 %add86, %72
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %lor.lhs.false.85, %if.end.82
  %73 = load i8*, i8** %data, align 8
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %scan_lines, align 4
  %sub = sub nsw i32 %74, %75
  %add90 = add nsw i32 %sub, 1
  %76 = load i32, i32* %width, align 4
  %77 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %73, i32 0, i32 %add90, i32 %76, i32 %77)
  store i32 0, i32* %scan_lines, align 4
  %78 = load i8*, i8** %data, align 8
  store i8* %78, i8** %dest, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %lor.lhs.false.85
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %79 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %79, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.39

for.end.94:                                       ; preds = %for.cond.39
  %80 = load i8*, i8** %data, align 8
  call void @g_free(i8* %80)
  %81 = load i32, i32* %err, align 4
  %tobool95 = icmp ne i32 %81, 0
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %for.end.94
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call97)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.end.94
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %82)
  %83 = load i32, i32* %image_ID, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @load_sun_d24(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_SUNFILEHEADER* %sunhdr, i8* %suncolmap) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %suncolmap.addr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %blue = alloca i8, align 1
  %data = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %linepad = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %err = alloca i32, align 4
  %rle = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i8* %suncolmap, i8** %suncolmap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_type = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %0, i32 0, i32 5
  %1 = load i64, i64* %l_ras_type, align 8
  %cmp = icmp eq i64 %1, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rle, align 4
  %2 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_width = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %2, i32 0, i32 1
  %3 = load i64, i64* %l_ras_width, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* %width, align 4
  %4 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_height = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %4, i32 0, i32 2
  %5 = load i64, i64* %l_ras_height, align 8
  %conv2 = trunc i64 %5 to i32
  store i32 %conv2, i32* %height, align 4
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  %call = call i32 @create_new_image(i8* %6, i32 %7, i32 %8, i32 0, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call, i32* %image_ID, align 4
  %call3 = call i32 @gimp_tile_height() #7
  store i32 %call3, i32* %tile_height, align 4
  %9 = load i32, i32* %tile_height, align 4
  %10 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %9, %10
  %mul4 = mul nsw i32 %mul, 3
  %conv5 = sext i32 %mul4 to i64
  %call6 = call noalias i8* @g_malloc(i64 %conv5)
  store i8* %call6, i8** %data, align 8
  %11 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_width7 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %11, i32 0, i32 1
  %12 = load i64, i64* %l_ras_width7, align 8
  %mul8 = mul i64 %12, 3
  %rem = urem i64 %mul8, 2
  %conv9 = trunc i64 %rem to i32
  store i32 %conv9, i32* %linepad, align 4
  %13 = load i32, i32* %rle, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  call void @rle_startread(%struct._IO_FILE* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i8*, i8** %data, align 8
  store i8* %15, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %if.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %height, align 4
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %dest, align 8
  %19 = load i32, i32* %width, align 4
  %mul12 = mul nsw i32 3, %19
  %conv13 = sext i32 %mul12 to i64
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 %conv13, i32 1, i1 false)
  %20 = load i32, i32* %rle, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %21 = load i8*, i8** %dest, align 8
  %22 = load i32, i32* %width, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call15 = call i32 @rle_fread(i8* %21, i32 3, i32 %22, %struct._IO_FILE* %23)
  %conv16 = sext i32 %call15 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %24 = load i8*, i8** %dest, align 8
  %25 = load i32, i32* %width, align 4
  %conv17 = sext i32 %25 to i64
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call18 = call i64 @fread(i8* %24, i64 3, i64 %conv17, %struct._IO_FILE* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv16, %cond.true ], [ %call18, %cond.false ]
  %27 = load i32, i32* %width, align 4
  %conv19 = sext i32 %27 to i64
  %cmp20 = icmp ne i64 %cond, %conv19
  %conv21 = zext i1 %cmp20 to i32
  %28 = load i32, i32* %err, align 4
  %or = or i32 %28, %conv21
  store i32 %or, i32* %err, align 4
  %29 = load i32, i32* %linepad, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.end.40

if.then.23:                                       ; preds = %cond.end
  %30 = load i32, i32* %rle, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.33

cond.true.25:                                     ; preds = %if.then.23
  %31 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp26 = icmp sgt i32 %31, 0
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.true.25
  %32 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.true.25
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call30 = call i32 @rle_fgetc(%struct._IO_FILE* %34)
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i32 [ %33, %cond.true.28 ], [ %call30, %cond.false.29 ]
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.then.23
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call34 = call i32 @_IO_getc(%struct._IO_FILE* %35)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.end.31
  %cond36 = phi i32 [ %cond32, %cond.end.31 ], [ %call34, %cond.false.33 ]
  %cmp37 = icmp slt i32 %cond36, 0
  %conv38 = zext i1 %cmp37 to i32
  %36 = load i32, i32* %err, align 4
  %or39 = or i32 %36, %conv38
  store i32 %or39, i32* %err, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %cond.end.35, %cond.end
  %37 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_type41 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %37, i32 0, i32 5
  %38 = load i64, i64* %l_ras_type41, align 8
  %cmp42 = icmp eq i64 %38, 3
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.40
  %39 = load i32, i32* %width, align 4
  %mul45 = mul nsw i32 %39, 3
  %40 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %mul45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %if.end.53

if.else:                                          ; preds = %if.end.40
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.else
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %width, align 4
  %cmp47 = icmp slt i32 %41, %42
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %43 = load i8*, i8** %dest, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %blue, align 1
  %45 = load i8*, i8** %dest, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %45, i64 2
  %46 = load i8, i8* %add.ptr50, align 1
  %47 = load i8*, i8** %dest, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i8, i8* %blue, align 1
  %49 = load i8*, i8** %dest, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %49, i64 2
  store i8 %48, i8* %add.ptr51, align 1
  %50 = load i8*, i8** %dest, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %50, i64 3
  store i8* %add.ptr52, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.49
  %51 = load i32, i32* %j, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %if.end.53

if.end.53:                                        ; preds = %for.end, %if.then.44
  %52 = load i32, i32* %scan_lines, align 4
  %inc54 = add nsw i32 %52, 1
  store i32 %inc54, i32* %scan_lines, align 4
  %53 = load i32, i32* %i, align 4
  %rem55 = srem i32 %53, 20
  %cmp56 = icmp eq i32 %rem55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.53
  %54 = load i32, i32* %i, align 4
  %add = add nsw i32 %54, 1
  %conv59 = sitofp i32 %add to double
  %55 = load i32, i32* %height, align 4
  %conv60 = sitofp i32 %55 to double
  %div = fdiv double %conv59, %conv60
  %call61 = call i32 @gimp_progress_update(double %div)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.end.53
  %56 = load i32, i32* %scan_lines, align 4
  %57 = load i32, i32* %tile_height, align 4
  %cmp63 = icmp eq i32 %56, %57
  br i1 %cmp63, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.62
  %58 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %58, 1
  %59 = load i32, i32* %height, align 4
  %cmp66 = icmp eq i32 %add65, %59
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %lor.lhs.false, %if.end.62
  %60 = load i8*, i8** %data, align 8
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %scan_lines, align 4
  %sub = sub nsw i32 %61, %62
  %add69 = add nsw i32 %sub, 1
  %63 = load i32, i32* %width, align 4
  %64 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %60, i32 0, i32 %add69, i32 %63, i32 %64)
  store i32 0, i32* %scan_lines, align 4
  %65 = load i8*, i8** %data, align 8
  store i8* %65, i8** %dest, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %lor.lhs.false
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %66 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %66, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  %67 = load i8*, i8** %data, align 8
  call void @g_free(i8* %67)
  %68 = load i32, i32* %err, align 4
  %tobool74 = icmp ne i32 %68, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %for.end.73
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %for.end.73
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %69)
  %70 = load i32, i32* %image_ID, align 4
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @load_sun_d32(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_SUNFILEHEADER* %sunhdr, i8* %suncolmap) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %suncolmap.addr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %blue = alloca i8, align 1
  %data = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %err = alloca i32, align 4
  %cerr = alloca i32, align 4
  %rle = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i8* %suncolmap, i8** %suncolmap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_type = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %0, i32 0, i32 5
  %1 = load i64, i64* %l_ras_type, align 8
  %cmp = icmp eq i64 %1, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rle, align 4
  %2 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_width = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %2, i32 0, i32 1
  %3 = load i64, i64* %l_ras_width, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* %width, align 4
  %4 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_height = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %4, i32 0, i32 2
  %5 = load i64, i64* %l_ras_height, align 8
  %conv2 = trunc i64 %5 to i32
  store i32 %conv2, i32* %height, align 4
  store i32 0, i32* %cerr, align 4
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  %call = call i32 @create_new_image(i8* %6, i32 %7, i32 %8, i32 0, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call, i32* %image_ID, align 4
  %call3 = call i32 @gimp_tile_height() #7
  store i32 %call3, i32* %tile_height, align 4
  %9 = load i32, i32* %tile_height, align 4
  %10 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %9, %10
  %mul4 = mul nsw i32 %mul, 3
  %conv5 = sext i32 %mul4 to i64
  %call6 = call noalias i8* @g_malloc(i64 %conv5)
  store i8* %call6, i8** %data, align 8
  %11 = load i32, i32* %rle, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  call void @rle_startread(%struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8*, i8** %data, align 8
  store i8* %13, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.99, %if.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %height, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %rle, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %width, align 4
  %cmp12 = icmp slt i32 %17, %18
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %19 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp15 = icmp sgt i32 %19, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.14
  %20 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call17 = call i32 @rle_fgetc(%struct._IO_FILE* %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %call17, %cond.false ]
  %23 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp18 = icmp sgt i32 %23, 0
  br i1 %cmp18, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.end
  %24 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec21 = add nsw i32 %24, -1
  store i32 %dec21, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call23 = call i32 @rle_fgetc(%struct._IO_FILE* %26)
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.20
  %cond25 = phi i32 [ %25, %cond.true.20 ], [ %call23, %cond.false.22 ]
  %conv26 = trunc i32 %cond25 to i8
  %27 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv26, i8* %27, align 1
  %28 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp27 = icmp sgt i32 %28, 0
  br i1 %cmp27, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %cond.end.24
  %29 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec30 = add nsw i32 %29, -1
  store i32 %dec30, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end.33

cond.false.31:                                    ; preds = %cond.end.24
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call32 = call i32 @rle_fgetc(%struct._IO_FILE* %31)
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.29
  %cond34 = phi i32 [ %30, %cond.true.29 ], [ %call32, %cond.false.31 ]
  %conv35 = trunc i32 %cond34 to i8
  %32 = load i8*, i8** %dest, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr36, i8** %dest, align 8
  store i8 %conv35, i8* %32, align 1
  %33 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp37 = icmp sgt i32 %33, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.end.33
  %34 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec40 = add nsw i32 %34, -1
  store i32 %dec40, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end.43

cond.false.41:                                    ; preds = %cond.end.33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call42 = call i32 @rle_fgetc(%struct._IO_FILE* %36)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.39
  %cond44 = phi i32 [ %35, %cond.true.39 ], [ %call42, %cond.false.41 ]
  store i32 %cond44, i32* %cerr, align 4
  %conv45 = trunc i32 %cond44 to i8
  %37 = load i8*, i8** %dest, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr46, i8** %dest, align 8
  store i8 %conv45, i8* %37, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.43
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %if.end.64

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.61, %if.else
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %width, align 4
  %cmp48 = icmp slt i32 %39, %40
  br i1 %cmp48, label %for.body.50, label %for.end.63

for.body.50:                                      ; preds = %for.cond.47
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call51 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call52 = call i32 @_IO_getc(%struct._IO_FILE* %42)
  %conv53 = trunc i32 %call52 to i8
  %43 = load i8*, i8** %dest, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr54, i8** %dest, align 8
  store i8 %conv53, i8* %43, align 1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call55 = call i32 @_IO_getc(%struct._IO_FILE* %44)
  %conv56 = trunc i32 %call55 to i8
  %45 = load i8*, i8** %dest, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr57, i8** %dest, align 8
  store i8 %conv56, i8* %45, align 1
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call58 = call i32 @_IO_getc(%struct._IO_FILE* %46)
  store i32 %call58, i32* %cerr, align 4
  %conv59 = trunc i32 %call58 to i8
  %47 = load i8*, i8** %dest, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr60, i8** %dest, align 8
  store i8 %conv59, i8* %47, align 1
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.50
  %48 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %48, 1
  store i32 %inc62, i32* %j, align 4
  br label %for.cond.47

for.end.63:                                       ; preds = %for.cond.47
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %for.end
  %49 = load i32, i32* %cerr, align 4
  %cmp65 = icmp slt i32 %49, 0
  %conv66 = zext i1 %cmp65 to i32
  %50 = load i32, i32* %err, align 4
  %or = or i32 %50, %conv66
  store i32 %or, i32* %err, align 4
  %51 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_type67 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %51, i32 0, i32 5
  %52 = load i64, i64* %l_ras_type67, align 8
  %cmp68 = icmp ne i64 %52, 3
  br i1 %cmp68, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %if.end.64
  store i32 0, i32* %j, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.77, %if.then.70
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %width, align 4
  %cmp72 = icmp slt i32 %53, %54
  br i1 %cmp72, label %for.body.74, label %for.end.79

for.body.74:                                      ; preds = %for.cond.71
  %55 = load i8*, i8** %dest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 -3
  store i8* %add.ptr, i8** %dest, align 8
  %56 = load i8*, i8** %dest, align 8
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %blue, align 1
  %58 = load i8*, i8** %dest, align 8
  %add.ptr75 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %add.ptr75, align 1
  %60 = load i8*, i8** %dest, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i8, i8* %blue, align 1
  %62 = load i8*, i8** %dest, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %62, i64 2
  store i8 %61, i8* %add.ptr76, align 1
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.74
  %63 = load i32, i32* %j, align 4
  %inc78 = add nsw i32 %63, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond.71

for.end.79:                                       ; preds = %for.cond.71
  %64 = load i32, i32* %width, align 4
  %mul80 = mul nsw i32 %64, 3
  %65 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %mul80 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  store i8* %add.ptr81, i8** %dest, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.79, %if.end.64
  %66 = load i32, i32* %scan_lines, align 4
  %inc83 = add nsw i32 %66, 1
  store i32 %inc83, i32* %scan_lines, align 4
  %67 = load i32, i32* %i, align 4
  %rem = srem i32 %67, 20
  %cmp84 = icmp eq i32 %rem, 0
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.end.82
  %68 = load i32, i32* %i, align 4
  %add = add nsw i32 %68, 1
  %conv87 = sitofp i32 %add to double
  %69 = load i32, i32* %height, align 4
  %conv88 = sitofp i32 %69 to double
  %div = fdiv double %conv87, %conv88
  %call89 = call i32 @gimp_progress_update(double %div)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %if.end.82
  %70 = load i32, i32* %scan_lines, align 4
  %71 = load i32, i32* %tile_height, align 4
  %cmp91 = icmp eq i32 %70, %71
  br i1 %cmp91, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.90
  %72 = load i32, i32* %i, align 4
  %add93 = add nsw i32 %72, 1
  %73 = load i32, i32* %height, align 4
  %cmp94 = icmp eq i32 %add93, %73
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %lor.lhs.false, %if.end.90
  %74 = load i8*, i8** %data, align 8
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %scan_lines, align 4
  %sub = sub nsw i32 %75, %76
  %add97 = add nsw i32 %sub, 1
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %74, i32 0, i32 %add97, i32 %77, i32 %78)
  store i32 0, i32* %scan_lines, align 4
  %79 = load i8*, i8** %data, align 8
  store i8* %79, i8** %dest, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %lor.lhs.false
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %80 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %80, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  %81 = load i8*, i8** %data, align 8
  call void @g_free(i8* %81)
  %82 = load i32, i32* %err, align 4
  %tobool102 = icmp ne i32 %82, 0
  br i1 %tobool102, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %for.end.101
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call104)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %for.end.101
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %83)
  %84 = load i32, i32* %image_ID, align 4
  ret i32 %84
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_card32(%struct._IO_FILE* %ifp, i32* %err) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %err.addr = alloca i32*, align 8
  %c = alloca i64, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32* %err, i32** %err.addr, align 8
  %0 = load i32, i32* @read_msb_first, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %conv = sext i32 %call to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, i64* %c, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  %conv2 = sext i32 %call1 to i64
  %shl3 = shl i64 %conv2, 16
  %3 = load i64, i64* %c, align 8
  %or = or i64 %3, %shl3
  store i64 %or, i64* %c, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %conv5 = sext i32 %call4 to i64
  %shl6 = shl i64 %conv5, 8
  %5 = load i64, i64* %c, align 8
  %or7 = or i64 %5, %shl6
  store i64 %or7, i64* %c, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  %7 = load i32*, i32** %err.addr, align 8
  store i32 %call8, i32* %7, align 4
  %conv9 = sext i32 %call8 to i64
  %8 = load i64, i64* %c, align 8
  %or10 = or i64 %8, %conv9
  store i64 %or10, i64* %c, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  %conv12 = sext i32 %call11 to i64
  store i64 %conv12, i64* %c, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call13 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  %conv14 = sext i32 %call13 to i64
  %shl15 = shl i64 %conv14, 8
  %11 = load i64, i64* %c, align 8
  %or16 = or i64 %11, %shl15
  store i64 %or16, i64* %c, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call17 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  %conv18 = sext i32 %call17 to i64
  %shl19 = shl i64 %conv18, 16
  %13 = load i64, i64* %c, align 8
  %or20 = or i64 %13, %shl19
  store i64 %or20, i64* %c, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call21 = call i32 @_IO_getc(%struct._IO_FILE* %14)
  %15 = load i32*, i32** %err.addr, align 8
  store i32 %call21, i32* %15, align 4
  %conv22 = sext i32 %call21 to i64
  %shl23 = shl i64 %conv22, 24
  %16 = load i64, i64* %c, align 8
  %or24 = or i64 %16, %shl23
  store i64 %or24, i64* %c, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32*, i32** %err.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp = icmp slt i32 %18, 0
  %conv25 = zext i1 %cmp to i32
  %19 = load i32*, i32** %err.addr, align 8
  store i32 %conv25, i32* %19, align 4
  %20 = load i64, i64* %c, align 8
  ret i64 %20
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal i32 @create_new_image(i8* %filename, i32 %width, i32 %height, i32 %type, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32*, align 8
  %drawable.addr = alloca %struct._GimpDrawable**, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %image_ID = alloca i32, align 4
  %gdtype = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32* %layer_ID, i32** %layer_ID.addr, align 8
  store %struct._GimpDrawable** %drawable, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
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

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %type.addr, align 4
  %call = call i32 @gimp_image_new(i32 %1, i32 %2, i32 %3)
  store i32 %call, i32* %image_ID, align 4
  %4 = load i32, i32* %image_ID, align 4
  %5 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 @gimp_image_set_filename(i32 %4, i8* %5)
  %6 = load i32, i32* %image_ID, align 4
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0)) #6
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load i32, i32* %gdtype, align 4
  %call5 = call i32 @gimp_layer_new(i32 %6, i8* %call4, i32 %7, i32 %8, i32 %9, double 1.000000e+02, i32 0)
  %10 = load i32*, i32** %layer_ID.addr, align 8
  store i32 %call5, i32* %10, align 4
  %11 = load i32, i32* %image_ID, align 4
  %12 = load i32*, i32** %layer_ID.addr, align 8
  %13 = load i32, i32* %12, align 4
  %call6 = call i32 @gimp_image_insert_layer(i32 %11, i32 %13, i32 -1, i32 0)
  %14 = load i32*, i32** %layer_ID.addr, align 8
  %15 = load i32, i32* %14, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %15)
  %16 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %16, align 8
  %17 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %18 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %18, align 8
  %20 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %20, align 8
  %width8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width8, align 4
  %23 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %23, align 8
  %height9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 2
  %25 = load i32, i32* %height9, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %17, %struct._GimpDrawable* %19, i32 0, i32 0, i32 %22, i32 %25, i32 1, i32 0)
  %26 = load i32, i32* %image_ID, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_color_table(i32 %image_ID, %struct.L_SUNFILEHEADER* %sunhdr, i8* %suncolmap) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %suncolmap.addr = alloca i8*, align 8
  %ColorMap = alloca [768 x i8], align 16
  %ncols = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i8* %suncolmap, i8** %suncolmap.addr, align 8
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %0, i32 0, i32 7
  %1 = load i64, i64* %l_ras_maplength, align 8
  %div = udiv i64 %1, 3
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %ncols, align 4
  %2 = load i32, i32* %ncols, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %ncols, align 4
  %cmp2 = icmp slt i32 %4, 256
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %5 = load i32, i32* %ncols, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 256, %cond.false ]
  %cmp4 = icmp slt i32 %3, %cond
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %suncolmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %9 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %9, 3
  %add = add nsw i32 %mul, 0
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i64 %idxprom6
  store i8 %8, i8* %arrayidx7, align 1
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %ncols, align 4
  %add8 = add nsw i32 %10, %11
  %idxprom9 = sext i32 %add8 to i64
  %12 = load i8*, i8** %suncolmap.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom9
  %13 = load i8, i8* %arrayidx10, align 1
  %14 = load i32, i32* %j, align 4
  %mul11 = mul nsw i32 %14, 3
  %add12 = add nsw i32 %mul11, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i64 %idxprom13
  store i8 %13, i8* %arrayidx14, align 1
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %ncols, align 4
  %mul15 = mul nsw i32 2, %16
  %add16 = add nsw i32 %15, %mul15
  %idxprom17 = sext i32 %add16 to i64
  %17 = load i8*, i8** %suncolmap.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 %idxprom17
  %18 = load i8, i8* %arrayidx18, align 1
  %19 = load i32, i32* %j, align 4
  %mul19 = mul nsw i32 %19, 3
  %add20 = add nsw i32 %mul19, 2
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i64 %idxprom21
  store i8 %18, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %21 = load i32, i32* %image_ID.addr, align 4
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i32 0
  %22 = load i32, i32* %ncols, align 4
  %call = call i32 @gimp_image_set_colormap(i32 %21, i8* %arraydecay, i32 %22)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rle_startread(%struct._IO_FILE* %ifp) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32 0, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rle_fgetc(%struct._IO_FILE* %ifp) #0 {
entry:
  %retval = alloca i32, align 4
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %flag = alloca i32, align 4
  %runcnt = alloca i32, align 4
  %runval = alloca i32, align 4
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call, i32* %flag, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %flag, align 4
  %cmp4 = icmp ne i32 %4, 128
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %5 = load i32, i32* %flag, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call7 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %call7, i32* %runcnt, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %7 = load i32, i32* %runcnt, align 4
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 128, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call14 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call14, i32* %runval, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %9 = load i32, i32* %runcnt, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %10 = load i32, i32* %runval, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  %11 = load i32, i32* %runval, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.12, %if.then.9, %if.then.5, %if.then.2, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

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

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal i32 @rle_fread(i8* %ptr, i32 %sz, i32 %nelem, %struct._IO_FILE* %ifp) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %sz.addr = alloca i32, align 4
  %nelem.addr = alloca i32, align 4
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %elem_read = alloca i32, align 4
  %cnt = alloca i32, align 4
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %sz, i32* %sz.addr, align 4
  store i32 %nelem, i32* %nelem.addr, align 4
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32 0, i32* %err, align 4
  store i32 0, i32* %elem_read, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %elem_read, align 4
  %1 = load i32, i32* %nelem.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cnt, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %cnt, align 4
  %3 = load i32, i32* %sz.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %5 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i32 @rle_fgetc(%struct._IO_FILE* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %val, align 4
  %8 = load i32, i32* %val, align 4
  %cmp5 = icmp slt i32 %8, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %err, align 4
  br label %for.end

if.end:                                           ; preds = %cond.end
  %9 = load i32, i32* %val, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8
  store i8 %conv, i8* %10, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %12 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  br label %for.end.10

if.end.7:                                         ; preds = %for.end
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end.7
  %13 = load i32, i32* %elem_read, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %elem_read, align 4
  br label %for.cond

for.end.10:                                       ; preds = %if.then.6, %for.cond
  %14 = load i32, i32* %elem_read, align 4
  ret i32 %14
}

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

; Function Attrs: nounwind uwtable
define internal i32 @save_index(%struct._IO_FILE* %ofp, i32 %image_ID, i32 %drawable_ID, i32 %grey, i32 %rle) #0 {
entry:
  %retval = alloca i32, align 4
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %grey.addr = alloca i32, align 4
  %rle.addr = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %linepad = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ncols = alloca i32, align 4
  %bw = alloca i32, align 4
  %is_bw = alloca i32, align 4
  %is_wb = alloca i32, align 4
  %bpl = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cmap = alloca i8*, align 8
  %bwline = alloca i8*, align 8
  %data = alloca i8*, align 8
  %src = alloca i8*, align 8
  %sunhdr = alloca %struct.L_SUNFILEHEADER, align 8
  %sun_colormap = alloca [768 x i8], align 16
  %suncolmap = alloca i8*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %write_fun = alloca i32 (i8*, i64, i64, %struct._IO_FILE*)*, align 8
  %scan_lines = alloca i32, align 4
  %scan_lines147 = alloca i32, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %grey, i32* %grey.addr, align 4
  store i32 %rle, i32* %rle.addr, align 4
  store i64 0, i64* %tmp, align 8
  store i8* null, i8** %bwline, align 8
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %sun_colormap, i32 0, i32 0
  store i8* %arraydecay, i8** %suncolmap, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width11, align 4
  store i32 %2, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height12, align 4
  store i32 %4, i32* %height, align 4
  %call13 = call i32 @gimp_tile_height() #7
  store i32 %call13, i32* %tile_height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %6, i32 %7, i32 0, i32 0)
  %8 = load i32, i32* %tile_height, align 4
  %9 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  %mul14 = mul i32 %mul, %11
  %conv = zext i32 %mul14 to i64
  %call15 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call15, i8** %data, align 8
  store i8* %call15, i8** %src, align 8
  %12 = load i32, i32* %grey.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 256, i32* %ncols, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %ncols, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %j, align 4
  %conv17 = trunc i32 %15 to i8
  %16 = load i32, i32* %j, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %suncolmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 %conv17, i8* %arrayidx, align 1
  %18 = load i32, i32* %j, align 4
  %conv18 = trunc i32 %18 to i8
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %ncols, align 4
  %add = add nsw i32 %19, %20
  %idxprom19 = sext i32 %add to i64
  %21 = load i8*, i8** %suncolmap, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %21, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1
  %22 = load i32, i32* %j, align 4
  %conv21 = trunc i32 %22 to i8
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %ncols, align 4
  %mul22 = mul nsw i32 %24, 2
  %add23 = add nsw i32 %23, %mul22
  %idxprom24 = sext i32 %add23 to i64
  %25 = load i8*, i8** %suncolmap, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %25, i64 %idxprom24
  store i8 %conv21, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load i32, i32* %image_ID.addr, align 4
  %call26 = call i8* @gimp_image_get_colormap(i32 %27, i32* %ncols)
  store i8* %call26, i8** %cmap, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.42, %if.else
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %ncols, align 4
  %cmp28 = icmp slt i32 %28, %29
  br i1 %cmp28, label %for.body.30, label %for.end.44

for.body.30:                                      ; preds = %for.cond.27
  %30 = load i8*, i8** %cmap, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %cmap, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i8*, i8** %suncolmap, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %33, i64 %idxprom31
  store i8 %31, i8* %arrayidx32, align 1
  %34 = load i8*, i8** %cmap, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr33, i8** %cmap, align 8
  %35 = load i8, i8* %34, align 1
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %ncols, align 4
  %add34 = add nsw i32 %36, %37
  %idxprom35 = sext i32 %add34 to i64
  %38 = load i8*, i8** %suncolmap, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %38, i64 %idxprom35
  store i8 %35, i8* %arrayidx36, align 1
  %39 = load i8*, i8** %cmap, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr37, i8** %cmap, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %ncols, align 4
  %mul38 = mul nsw i32 %42, 2
  %add39 = add nsw i32 %41, %mul38
  %idxprom40 = sext i32 %add39 to i64
  %43 = load i8*, i8** %suncolmap, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %43, i64 %idxprom40
  store i8 %40, i8* %arrayidx41, align 1
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.30
  %44 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %44, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond.27

for.end.44:                                       ; preds = %for.cond.27
  br label %if.end

if.end:                                           ; preds = %for.end.44, %for.end
  %45 = load i32, i32* %ncols, align 4
  %cmp45 = icmp eq i32 %45, 2
  %conv46 = zext i1 %cmp45 to i32
  store i32 %conv46, i32* %bw, align 4
  %46 = load i32, i32* %bw, align 4
  %tobool47 = icmp ne i32 %46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.end
  %47 = load i32, i32* %width, align 4
  %add49 = add nsw i32 %47, 7
  %div = sdiv i32 %add49, 8
  %conv50 = sext i32 %div to i64
  %call51 = call noalias i8* @g_malloc(i64 %conv50)
  store i8* %call51, i8** %bwline, align 8
  %48 = load i8*, i8** %bwline, align 8
  %cmp52 = icmp eq i8* %48, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.48
  store i32 0, i32* %bw, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.48
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end
  store i32 0, i32* %is_wb, align 4
  store i32 0, i32* %is_bw, align 4
  %49 = load i32, i32* %bw, align 4
  %tobool57 = icmp ne i32 %49, 0
  br i1 %tobool57, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.end.56
  %50 = load i8*, i8** %suncolmap, align 8
  %call59 = call i32 @memcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @save_index.sun_bwmap, i32 0, i32 0), i64 6) #8
  %cmp60 = icmp eq i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  store i32 %conv61, i32* %is_bw, align 4
  %51 = load i8*, i8** %suncolmap, align 8
  %call62 = call i32 @memcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @save_index.sun_wbmap, i32 0, i32 0), i64 6) #8
  %cmp63 = icmp eq i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  store i32 %conv64, i32* %is_wb, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.58, %if.end.56
  %52 = load i32, i32* %bw, align 4
  %tobool66 = icmp ne i32 %52, 0
  br i1 %tobool66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %53 = load i32, i32* %width, align 4
  %add67 = add nsw i32 %53, 7
  %div68 = sdiv i32 %add67, 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  %54 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div68, %cond.true ], [ %54, %cond.false ]
  store i32 %cond, i32* %bpl, align 4
  %55 = load i32, i32* %bpl, align 4
  %rem = srem i32 %55, 2
  store i32 %rem, i32* %linepad, align 4
  %l_ras_magic = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 0
  store i64 1504078485, i64* %l_ras_magic, align 8
  %56 = load i32, i32* %width, align 4
  %conv69 = sext i32 %56 to i64
  %l_ras_width = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 1
  store i64 %conv69, i64* %l_ras_width, align 8
  %57 = load i32, i32* %height, align 4
  %conv70 = sext i32 %57 to i64
  %l_ras_height = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 2
  store i64 %conv70, i64* %l_ras_height, align 8
  %58 = load i32, i32* %bw, align 4
  %tobool71 = icmp ne i32 %58, 0
  %cond72 = select i1 %tobool71, i32 1, i32 8
  %conv73 = sext i32 %cond72 to i64
  %l_ras_depth = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 3
  store i64 %conv73, i64* %l_ras_depth, align 8
  %59 = load i32, i32* %bpl, align 4
  %60 = load i32, i32* %linepad, align 4
  %add74 = add nsw i32 %59, %60
  %61 = load i32, i32* %height, align 4
  %mul75 = mul nsw i32 %add74, %61
  %conv76 = sext i32 %mul75 to i64
  %l_ras_length = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 4
  store i64 %conv76, i64* %l_ras_length, align 8
  %62 = load i32, i32* %rle.addr, align 4
  %tobool77 = icmp ne i32 %62, 0
  %cond78 = select i1 %tobool77, i32 2, i32 1
  %conv79 = sext i32 %cond78 to i64
  %l_ras_type = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 5
  store i64 %conv79, i64* %l_ras_type, align 8
  %63 = load i32, i32* %is_bw, align 4
  %tobool80 = icmp ne i32 %63, 0
  br i1 %tobool80, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %64 = load i32, i32* %is_wb, align 4
  %tobool81 = icmp ne i32 %64, 0
  br i1 %tobool81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %lor.lhs.false, %cond.end
  %l_ras_maptype = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 6
  store i64 0, i64* %l_ras_maptype, align 8
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  store i64 0, i64* %l_ras_maplength, align 8
  br label %if.end.88

if.else.83:                                       ; preds = %lor.lhs.false
  %l_ras_maptype84 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 6
  store i64 1, i64* %l_ras_maptype84, align 8
  %65 = load i32, i32* %ncols, align 4
  %mul85 = mul nsw i32 %65, 3
  %conv86 = sext i32 %mul85 to i64
  %l_ras_maplength87 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  store i64 %conv86, i64* %l_ras_maplength87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.83, %if.then.82
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @write_sun_header(%struct._IO_FILE* %66, %struct.L_SUNFILEHEADER* %sunhdr)
  %l_ras_maplength89 = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  %67 = load i64, i64* %l_ras_maplength89, align 8
  %cmp90 = icmp ugt i64 %67, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.88
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %69 = load i8*, i8** %suncolmap, align 8
  call void @write_sun_cols(%struct._IO_FILE* %68, %struct.L_SUNFILEHEADER* %sunhdr, i8* %69)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.88
  %70 = load i32, i32* %rle.addr, align 4
  %tobool94 = icmp ne i32 %70, 0
  br i1 %tobool94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.end.93
  store i32 (i8*, i64, i64, %struct._IO_FILE*)* bitcast (i32 (i8*, i32, i32, %struct._IO_FILE*)* @rle_fwrite to i32 (i8*, i64, i64, %struct._IO_FILE*)*), i32 (i8*, i64, i64, %struct._IO_FILE*)** %write_fun, align 8
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @rle_startwrite(%struct._IO_FILE* %71)
  br label %if.end.97

if.else.96:                                       ; preds = %if.end.93
  store i32 (i8*, i64, i64, %struct._IO_FILE*)* bitcast (i32 (i8*, i32, i32, %struct._IO_FILE*)* @my_fwrite to i32 (i8*, i64, i64, %struct._IO_FILE*)*), i32 (i8*, i64, i64, %struct._IO_FILE*)** %write_fun, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.96, %if.then.95
  %72 = load i32, i32* %bw, align 4
  %tobool98 = icmp ne i32 %72, 0
  br i1 %tobool98, label %if.then.99, label %if.else.137

if.then.99:                                       ; preds = %if.end.97
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.134, %if.then.99
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %height, align 4
  %cmp101 = icmp slt i32 %73, %74
  br i1 %cmp101, label %for.body.103, label %for.end.136

for.body.103:                                     ; preds = %for.cond.100
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %tile_height, align 4
  %rem104 = srem i32 %75, %76
  %cmp105 = icmp eq i32 %rem104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.117

if.then.107:                                      ; preds = %for.body.103
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %tile_height, align 4
  %add109 = add nsw i32 %77, %78
  %sub = sub nsw i32 %add109, 1
  %79 = load i32, i32* %height, align 4
  %cmp110 = icmp slt i32 %sub, %79
  br i1 %cmp110, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %if.then.107
  %80 = load i32, i32* %tile_height, align 4
  br label %cond.end.115

cond.false.113:                                   ; preds = %if.then.107
  %81 = load i32, i32* %height, align 4
  %82 = load i32, i32* %i, align 4
  %sub114 = sub nsw i32 %81, %82
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.true.112
  %cond116 = phi i32 [ %80, %cond.true.112 ], [ %sub114, %cond.false.113 ]
  store i32 %cond116, i32* %scan_lines, align 4
  %83 = load i8*, i8** %data, align 8
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %width, align 4
  %86 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %83, i32 0, i32 %84, i32 %85, i32 %86)
  %87 = load i8*, i8** %data, align 8
  store i8* %87, i8** %src, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %cond.end.115, %for.body.103
  %88 = load i8*, i8** %src, align 8
  %89 = load i32, i32* %width, align 4
  %90 = load i8*, i8** %bwline, align 8
  %91 = load i32, i32* %is_bw, align 4
  call void @byte2bit(i8* %88, i32 %89, i8* %90, i32 %91)
  %92 = load i32 (i8*, i64, i64, %struct._IO_FILE*)*, i32 (i8*, i64, i64, %struct._IO_FILE*)** %write_fun, align 8
  %93 = load i8*, i8** %bwline, align 8
  %94 = load i32, i32* %bpl, align 4
  %conv118 = sext i32 %94 to i64
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call119 = call i32 %92(i8* %93, i64 %conv118, i64 1, %struct._IO_FILE* %95)
  %96 = load i32, i32* %linepad, align 4
  %tobool120 = icmp ne i32 %96, 0
  br i1 %tobool120, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.end.117
  %97 = load i32 (i8*, i64, i64, %struct._IO_FILE*)*, i32 (i8*, i64, i64, %struct._IO_FILE*)** %write_fun, align 8
  %98 = bitcast i64* %tmp to i8*
  %99 = load i32, i32* %linepad, align 4
  %conv122 = sext i32 %99 to i64
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call123 = call i32 %97(i8* %98, i64 %conv122, i64 1, %struct._IO_FILE* %100)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.end.117
  %101 = load i32, i32* %width, align 4
  %102 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %101 to i64
  %add.ptr = getelementptr inbounds i8, i8* %102, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %103 = load i32, i32* %i, align 4
  %rem125 = srem i32 %103, 20
  %cmp126 = icmp eq i32 %rem125, 0
  br i1 %cmp126, label %if.then.128, label %if.end.133

if.then.128:                                      ; preds = %if.end.124
  %104 = load i32, i32* %i, align 4
  %conv129 = sitofp i32 %104 to double
  %105 = load i32, i32* %height, align 4
  %conv130 = sitofp i32 %105 to double
  %div131 = fdiv double %conv129, %conv130
  %call132 = call i32 @gimp_progress_update(double %div131)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.128, %if.end.124
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %106 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %106, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.100

for.end.136:                                      ; preds = %for.cond.100
  br label %if.end.179

if.else.137:                                      ; preds = %if.end.97
  store i32 0, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.176, %if.else.137
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %height, align 4
  %cmp139 = icmp slt i32 %107, %108
  br i1 %cmp139, label %for.body.141, label %for.end.178

for.body.141:                                     ; preds = %for.cond.138
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %tile_height, align 4
  %rem142 = srem i32 %109, %110
  %cmp143 = icmp eq i32 %rem142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.157

if.then.145:                                      ; preds = %for.body.141
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %tile_height, align 4
  %add148 = add nsw i32 %111, %112
  %sub149 = sub nsw i32 %add148, 1
  %113 = load i32, i32* %height, align 4
  %cmp150 = icmp slt i32 %sub149, %113
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %if.then.145
  %114 = load i32, i32* %tile_height, align 4
  br label %cond.end.155

cond.false.153:                                   ; preds = %if.then.145
  %115 = load i32, i32* %height, align 4
  %116 = load i32, i32* %i, align 4
  %sub154 = sub nsw i32 %115, %116
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.152
  %cond156 = phi i32 [ %114, %cond.true.152 ], [ %sub154, %cond.false.153 ]
  store i32 %cond156, i32* %scan_lines147, align 4
  %117 = load i8*, i8** %data, align 8
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %width, align 4
  %120 = load i32, i32* %scan_lines147, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %117, i32 0, i32 %118, i32 %119, i32 %120)
  %121 = load i8*, i8** %data, align 8
  store i8* %121, i8** %src, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %cond.end.155, %for.body.141
  %122 = load i32 (i8*, i64, i64, %struct._IO_FILE*)*, i32 (i8*, i64, i64, %struct._IO_FILE*)** %write_fun, align 8
  %123 = load i8*, i8** %src, align 8
  %124 = load i32, i32* %width, align 4
  %conv158 = sext i32 %124 to i64
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call159 = call i32 %122(i8* %123, i64 %conv158, i64 1, %struct._IO_FILE* %125)
  %126 = load i32, i32* %linepad, align 4
  %tobool160 = icmp ne i32 %126, 0
  br i1 %tobool160, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %if.end.157
  %127 = load i32 (i8*, i64, i64, %struct._IO_FILE*)*, i32 (i8*, i64, i64, %struct._IO_FILE*)** %write_fun, align 8
  %128 = bitcast i64* %tmp to i8*
  %129 = load i32, i32* %linepad, align 4
  %conv162 = sext i32 %129 to i64
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call163 = call i32 %127(i8* %128, i64 %conv162, i64 1, %struct._IO_FILE* %130)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %if.end.157
  %131 = load i32, i32* %width, align 4
  %132 = load i8*, i8** %src, align 8
  %idx.ext165 = sext i32 %131 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %132, i64 %idx.ext165
  store i8* %add.ptr166, i8** %src, align 8
  %133 = load i32, i32* %i, align 4
  %rem167 = srem i32 %133, 20
  %cmp168 = icmp eq i32 %rem167, 0
  br i1 %cmp168, label %if.then.170, label %if.end.175

if.then.170:                                      ; preds = %if.end.164
  %134 = load i32, i32* %i, align 4
  %conv171 = sitofp i32 %134 to double
  %135 = load i32, i32* %height, align 4
  %conv172 = sitofp i32 %135 to double
  %div173 = fdiv double %conv171, %conv172
  %call174 = call i32 @gimp_progress_update(double %div173)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.170, %if.end.164
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175
  %136 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %136, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.138

for.end.178:                                      ; preds = %for.cond.138
  br label %if.end.179

if.end.179:                                       ; preds = %for.end.178, %for.end.136
  %137 = load i32, i32* %rle.addr, align 4
  %tobool180 = icmp ne i32 %137, 0
  br i1 %tobool180, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.179
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @rle_endwrite(%struct._IO_FILE* %138)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.end.179
  %139 = load i8*, i8** %data, align 8
  call void @g_free(i8* %139)
  %140 = load i8*, i8** %bwline, align 8
  %tobool183 = icmp ne i8* %140, null
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.182
  %141 = load i8*, i8** %bwline, align 8
  call void @g_free(i8* %141)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %if.end.182
  %142 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %142)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call186 = call i32 @ferror(%struct._IO_FILE* %143) #6
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %if.end.185
  %call189 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call189)
  store i32 0, i32* %retval
  br label %return

if.end.190:                                       ; preds = %if.end.185
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.190, %if.then.188
  %144 = load i32, i32* %retval
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define internal i32 @save_rgb(%struct._IO_FILE* %ofp, i32 %image_ID, i32 %drawable_ID, i32 %rle) #0 {
entry:
  %retval = alloca i32, align 4
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %rle.addr = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %linepad = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bpp = alloca i32, align 4
  %data = alloca i8*, align 8
  %src = alloca i8*, align 8
  %sunhdr = alloca %struct.L_SUNFILEHEADER, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %scan_lines = alloca i32, align 4
  %scan_lines71 = alloca i32, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %rle, i32* %rle.addr, align 4
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
  %call3 = call i32 @gimp_tile_height() #7
  store i32 %call3, i32* %tile_height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %6, i32 %7, i32 0, i32 0)
  %8 = load i32, i32* %tile_height, align 4
  %9 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp4, align 4
  %mul5 = mul i32 %mul, %11
  %conv = zext i32 %mul5 to i64
  %call6 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call6, i8** %data, align 8
  store i8* %call6, i8** %src, align 8
  store i32 3, i32* %bpp, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %bpp, align 4
  %mul7 = mul nsw i32 %12, %13
  %rem = srem i32 %mul7, 2
  store i32 %rem, i32* %linepad, align 4
  %l_ras_magic = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 0
  store i64 1504078485, i64* %l_ras_magic, align 8
  %14 = load i32, i32* %width, align 4
  %conv8 = sext i32 %14 to i64
  %l_ras_width = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 1
  store i64 %conv8, i64* %l_ras_width, align 8
  %15 = load i32, i32* %height, align 4
  %conv9 = sext i32 %15 to i64
  %l_ras_height = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 2
  store i64 %conv9, i64* %l_ras_height, align 8
  %16 = load i32, i32* %bpp, align 4
  %mul10 = mul nsw i32 8, %16
  %conv11 = sext i32 %mul10 to i64
  %l_ras_depth = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 3
  store i64 %conv11, i64* %l_ras_depth, align 8
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %bpp, align 4
  %mul12 = mul nsw i32 %17, %18
  %19 = load i32, i32* %linepad, align 4
  %add = add nsw i32 %mul12, %19
  %20 = load i32, i32* %height, align 4
  %mul13 = mul nsw i32 %add, %20
  %conv14 = sext i32 %mul13 to i64
  %l_ras_length = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 4
  store i64 %conv14, i64* %l_ras_length, align 8
  %21 = load i32, i32* %rle.addr, align 4
  %tobool = icmp ne i32 %21, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %conv15 = sext i32 %cond to i64
  %l_ras_type = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 5
  store i64 %conv15, i64* %l_ras_type, align 8
  %l_ras_maptype = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 6
  store i64 0, i64* %l_ras_maptype, align 8
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %sunhdr, i32 0, i32 7
  store i64 0, i64* %l_ras_maplength, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @write_sun_header(%struct._IO_FILE* %22, %struct.L_SUNFILEHEADER* %sunhdr)
  %23 = load i32, i32* %rle.addr, align 4
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %if.then
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %tile_height, align 4
  %rem18 = srem i32 %26, %27
  %cmp19 = icmp eq i32 %rem18, 0
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %tile_height, align 4
  %add22 = add nsw i32 %28, %29
  %sub = sub nsw i32 %add22, 1
  %30 = load i32, i32* %height, align 4
  %cmp23 = icmp slt i32 %sub, %30
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %31 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  %32 = load i32, i32* %height, align 4
  %33 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %32, %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i32 [ %31, %cond.true ], [ %sub25, %cond.false ]
  store i32 %cond26, i32* %scan_lines, align 4
  %34 = load i8*, i8** %data, align 8
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %34, i32 0, i32 %35, i32 %36, i32 %37)
  %38 = load i8*, i8** %data, align 8
  store i8* %38, i8** %src, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %width, align 4
  %cmp28 = icmp slt i32 %39, %40
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %41 = load i32, i32* %bpp, align 4
  %cmp31 = icmp eq i32 %41, 4
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.body.30
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call34 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %42)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %for.body.30
  %43 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %add.ptr, align 1
  %conv36 = zext i8 %44 to i32
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call37 = call i32 @_IO_putc(i32 %conv36, %struct._IO_FILE* %45)
  %46 = load i8*, i8** %src, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %add.ptr38, align 1
  %conv39 = zext i8 %47 to i32
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call40 = call i32 @_IO_putc(i32 %conv39, %struct._IO_FILE* %48)
  %49 = load i8*, i8** %src, align 8
  %50 = load i8, i8* %49, align 1
  %conv41 = zext i8 %50 to i32
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call42 = call i32 @_IO_putc(i32 %conv41, %struct._IO_FILE* %51)
  %52 = load i8*, i8** %src, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %52, i64 3
  store i8* %add.ptr43, i8** %src, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %53 = load i32, i32* %j, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  store i32 0, i32* %j, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.49, %for.end
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %linepad, align 4
  %cmp45 = icmp slt i32 %54, %55
  br i1 %cmp45, label %for.body.47, label %for.end.51

for.body.47:                                      ; preds = %for.cond.44
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call48 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %56)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.47
  %57 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %57, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.44

for.end.51:                                       ; preds = %for.cond.44
  %58 = load i32, i32* %i, align 4
  %rem52 = srem i32 %58, 20
  %cmp53 = icmp eq i32 %rem52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %for.end.51
  %59 = load i32, i32* %i, align 4
  %conv56 = sitofp i32 %59 to double
  %60 = load i32, i32* %height, align 4
  %conv57 = sitofp i32 %60 to double
  %div = fdiv double %conv56, %conv57
  %call58 = call i32 @gimp_progress_update(double %div)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %for.end.51
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %61 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %61, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  br label %if.end.123

if.else:                                          ; preds = %entry
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @rle_startwrite(%struct._IO_FILE* %62)
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.120, %if.else
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %height, align 4
  %cmp64 = icmp slt i32 %63, %64
  br i1 %cmp64, label %for.body.66, label %for.end.122

for.body.66:                                      ; preds = %for.cond.63
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %tile_height, align 4
  %rem67 = srem i32 %65, %66
  %cmp68 = icmp eq i32 %rem67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.81

if.then.70:                                       ; preds = %for.body.66
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %tile_height, align 4
  %add72 = add nsw i32 %67, %68
  %sub73 = sub nsw i32 %add72, 1
  %69 = load i32, i32* %height, align 4
  %cmp74 = icmp slt i32 %sub73, %69
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %if.then.70
  %70 = load i32, i32* %tile_height, align 4
  br label %cond.end.79

cond.false.77:                                    ; preds = %if.then.70
  %71 = load i32, i32* %height, align 4
  %72 = load i32, i32* %i, align 4
  %sub78 = sub nsw i32 %71, %72
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.76
  %cond80 = phi i32 [ %70, %cond.true.76 ], [ %sub78, %cond.false.77 ]
  store i32 %cond80, i32* %scan_lines71, align 4
  %73 = load i8*, i8** %data, align 8
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %width, align 4
  %76 = load i32, i32* %scan_lines71, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %73, i32 0, i32 %74, i32 %75, i32 %76)
  %77 = load i8*, i8** %data, align 8
  store i8* %77, i8** %src, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.79, %for.body.66
  store i32 0, i32* %j, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.100, %if.end.81
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* %width, align 4
  %cmp83 = icmp slt i32 %78, %79
  br i1 %cmp83, label %for.body.85, label %for.end.102

for.body.85:                                      ; preds = %for.cond.82
  %80 = load i32, i32* %bpp, align 4
  %cmp86 = icmp eq i32 %80, 4
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %for.body.85
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call89 = call i32 @rle_fputc(i32 0, %struct._IO_FILE* %81)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %for.body.85
  %82 = load i8*, i8** %src, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %add.ptr91, align 1
  %conv92 = zext i8 %83 to i32
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call93 = call i32 @rle_fputc(i32 %conv92, %struct._IO_FILE* %84)
  %85 = load i8*, i8** %src, align 8
  %add.ptr94 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %add.ptr94, align 1
  %conv95 = zext i8 %86 to i32
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call96 = call i32 @rle_fputc(i32 %conv95, %struct._IO_FILE* %87)
  %88 = load i8*, i8** %src, align 8
  %89 = load i8, i8* %88, align 1
  %conv97 = zext i8 %89 to i32
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call98 = call i32 @rle_fputc(i32 %conv97, %struct._IO_FILE* %90)
  %91 = load i8*, i8** %src, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %91, i64 3
  store i8* %add.ptr99, i8** %src, align 8
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.90
  %92 = load i32, i32* %j, align 4
  %inc101 = add nsw i32 %92, 1
  store i32 %inc101, i32* %j, align 4
  br label %for.cond.82

for.end.102:                                      ; preds = %for.cond.82
  store i32 0, i32* %j, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.108, %for.end.102
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %linepad, align 4
  %cmp104 = icmp slt i32 %93, %94
  br i1 %cmp104, label %for.body.106, label %for.end.110

for.body.106:                                     ; preds = %for.cond.103
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call107 = call i32 @rle_fputc(i32 0, %struct._IO_FILE* %95)
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.106
  %96 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %96, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.103

for.end.110:                                      ; preds = %for.cond.103
  %97 = load i32, i32* %i, align 4
  %rem111 = srem i32 %97, 20
  %cmp112 = icmp eq i32 %rem111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %for.end.110
  %98 = load i32, i32* %i, align 4
  %conv115 = sitofp i32 %98 to double
  %99 = load i32, i32* %height, align 4
  %conv116 = sitofp i32 %99 to double
  %div117 = fdiv double %conv115, %conv116
  %call118 = call i32 @gimp_progress_update(double %div117)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.114, %for.end.110
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %100 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %100, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.63

for.end.122:                                      ; preds = %for.cond.63
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @rle_endwrite(%struct._IO_FILE* %101)
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %for.end.62
  %102 = load i8*, i8** %data, align 8
  call void @g_free(i8* %102)
  %103 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %103)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call124 = call i32 @ferror(%struct._IO_FILE* %104) #6
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.123
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call127)
  store i32 0, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.123
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.then.126
  %105 = load i32, i32* %retval
  ret i32 %105
}

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @write_sun_header(%struct._IO_FILE* %ofp, %struct.L_SUNFILEHEADER* %sunhdr) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %j = alloca i32, align 4
  %hdr_entries = alloca i32, align 4
  %cp = alloca i64*, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i32 8, i32* %hdr_entries, align 4
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %1 = bitcast %struct.L_SUNFILEHEADER* %0 to i64*
  store i64* %1, i64** %cp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %hdr_entries, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %5 = load i64*, i64** %cp, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %5, i32 1
  store i64* %incdec.ptr, i64** %cp, align 8
  %6 = load i64, i64* %5, align 8
  call void @write_card32(%struct._IO_FILE* %4, i64 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_sun_cols(%struct._IO_FILE* %ofp, %struct.L_SUNFILEHEADER* %sunhdr, i8* %colormap) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %sunhdr.addr = alloca %struct.L_SUNFILEHEADER*, align 8
  %colormap.addr = alloca i8*, align 8
  %ncols = alloca i32, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store %struct.L_SUNFILEHEADER* %sunhdr, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  store i8* %colormap, i8** %colormap.addr, align 8
  %0 = load %struct.L_SUNFILEHEADER*, %struct.L_SUNFILEHEADER** %sunhdr.addr, align 8
  %l_ras_maplength = getelementptr inbounds %struct.L_SUNFILEHEADER, %struct.L_SUNFILEHEADER* %0, i32 0, i32 7
  %1 = load i64, i64* %l_ras_maplength, align 8
  %div = udiv i64 %1, 3
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %ncols, align 4
  %2 = load i8*, i8** %colormap.addr, align 8
  %3 = load i32, i32* %ncols, align 4
  %conv1 = sext i32 %3 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i64 @fwrite(i8* %2, i64 3, i64 %conv1, %struct._IO_FILE* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rle_fwrite(i8* %ptr, i32 %sz, i32 %nelem, %struct._IO_FILE* %ofp) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %sz.addr = alloca i32, align 4
  %nelem.addr = alloca i32, align 4
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %elem_write = alloca i32, align 4
  %cnt = alloca i32, align 4
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  %pixels = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %sz, i32* %sz.addr, align 4
  store i32 %nelem, i32* %nelem.addr, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  store i8* %0, i8** %pixels, align 8
  store i32 0, i32* %elem_write, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %1 = load i32, i32* %elem_write, align 4
  %2 = load i32, i32* %nelem.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cnt, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %cnt, align 4
  %4 = load i32, i32* %sz.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i8*, i8** %pixels, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %pixels, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @rle_fputc(i32 %conv, %struct._IO_FILE* %7)
  store i32 %call, i32* %val, align 4
  %8 = load i32, i32* %val, align 4
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i32 1, i32* %err, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %10 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  br label %for.end.10

if.end.7:                                         ; preds = %for.end
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end.7
  %11 = load i32, i32* %elem_write, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %elem_write, align 4
  br label %for.cond

for.end.10:                                       ; preds = %if.then.6, %for.cond
  %12 = load i32, i32* %elem_write, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @rle_startwrite(%struct._IO_FILE* %ofp) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i32 0, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @my_fwrite(i8* %ptr, i32 %size, i32 %nmemb, %struct._IO_FILE* %stream) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %nmemb.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %nmemb, i32* %nmemb.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32, i32* %nmemb.addr, align 4
  %conv1 = sext i32 %2 to i64
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @fwrite(i8* %0, i64 %conv, i64 %conv1, %struct._IO_FILE* %3)
  %conv2 = trunc i64 %call to i32
  ret i32 %conv2
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @byte2bit(i8* %byteline, i32 %width, i8* %bitline, i32 %invert) #0 {
entry:
  %byteline.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bitline.addr = alloca i8*, align 8
  %invert.addr = alloca i32, align 4
  %bitval = alloca i8, align 1
  %rest = alloca [8 x i8], align 1
  store i8* %byteline, i8** %byteline.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i8* %bitline, i8** %bitline.addr, align 8
  store i32 %invert, i32* %invert.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load i32, i32* %width.addr, align 4
  %cmp = icmp sge i32 %0, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i8 0, i8* %bitval, align 1
  %1 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %byteline.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i8, i8* %bitval, align 1
  %conv = zext i8 %3 to i32
  %or = or i32 %conv, 128
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %bitval, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr2, i8** %byteline.addr, align 8
  %5 = load i8, i8* %4, align 1
  %tobool3 = icmp ne i8 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i8, i8* %bitval, align 1
  %conv5 = zext i8 %6 to i32
  %or6 = or i32 %conv5, 64
  %conv7 = trunc i32 %or6 to i8
  store i8 %conv7, i8* %bitval, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %7 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr9, i8** %byteline.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool10 = icmp ne i8 %8, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %9 = load i8, i8* %bitval, align 1
  %conv12 = zext i8 %9 to i32
  %or13 = or i32 %conv12, 32
  %conv14 = trunc i32 %or13 to i8
  store i8 %conv14, i8* %bitval, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.8
  %10 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr16, i8** %byteline.addr, align 8
  %11 = load i8, i8* %10, align 1
  %tobool17 = icmp ne i8 %11, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.15
  %12 = load i8, i8* %bitval, align 1
  %conv19 = zext i8 %12 to i32
  %or20 = or i32 %conv19, 16
  %conv21 = trunc i32 %or20 to i8
  store i8 %conv21, i8* %bitval, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.15
  %13 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr23, i8** %byteline.addr, align 8
  %14 = load i8, i8* %13, align 1
  %tobool24 = icmp ne i8 %14, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.22
  %15 = load i8, i8* %bitval, align 1
  %conv26 = zext i8 %15 to i32
  %or27 = or i32 %conv26, 8
  %conv28 = trunc i32 %or27 to i8
  store i8 %conv28, i8* %bitval, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.22
  %16 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr30, i8** %byteline.addr, align 8
  %17 = load i8, i8* %16, align 1
  %tobool31 = icmp ne i8 %17, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.29
  %18 = load i8, i8* %bitval, align 1
  %conv33 = zext i8 %18 to i32
  %or34 = or i32 %conv33, 4
  %conv35 = trunc i32 %or34 to i8
  store i8 %conv35, i8* %bitval, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.29
  %19 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr37, i8** %byteline.addr, align 8
  %20 = load i8, i8* %19, align 1
  %tobool38 = icmp ne i8 %20, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.36
  %21 = load i8, i8* %bitval, align 1
  %conv40 = zext i8 %21 to i32
  %or41 = or i32 %conv40, 2
  %conv42 = trunc i32 %or41 to i8
  store i8 %conv42, i8* %bitval, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.36
  %22 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr44, i8** %byteline.addr, align 8
  %23 = load i8, i8* %22, align 1
  %tobool45 = icmp ne i8 %23, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.end.43
  %24 = load i8, i8* %bitval, align 1
  %conv47 = zext i8 %24 to i32
  %or48 = or i32 %conv47, 1
  %conv49 = trunc i32 %or48 to i8
  store i8 %conv49, i8* %bitval, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.end.43
  %25 = load i32, i32* %invert.addr, align 4
  %tobool51 = icmp ne i32 %25, 0
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.50
  %26 = load i8, i8* %bitval, align 1
  %conv52 = zext i8 %26 to i32
  %neg = xor i32 %conv52, -1
  br label %cond.end

cond.false:                                       ; preds = %if.end.50
  %27 = load i8, i8* %bitval, align 1
  %conv53 = zext i8 %27 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg, %cond.true ], [ %conv53, %cond.false ]
  %conv54 = trunc i32 %cond to i8
  %28 = load i8*, i8** %bitline.addr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr55, i8** %bitline.addr, align 8
  store i8 %conv54, i8* %28, align 1
  %29 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %29, 8
  store i32 %sub, i32* %width.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i32, i32* %width.addr, align 4
  %cmp56 = icmp sgt i32 %30, 0
  br i1 %cmp56, label %if.then.58, label %if.end.118

if.then.58:                                       ; preds = %while.end
  %31 = bitcast [8 x i8]* %rest to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 8, i32 1, i1 false)
  %32 = bitcast [8 x i8]* %rest to i8*
  %33 = load i8*, i8** %byteline.addr, align 8
  %34 = load i32, i32* %width.addr, align 4
  %conv59 = sext i32 %34 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %conv59, i32 1, i1 false)
  store i8 0, i8* %bitval, align 1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %rest, i32 0, i32 0
  store i8* %arraydecay, i8** %byteline.addr, align 8
  %35 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr60, i8** %byteline.addr, align 8
  %36 = load i8, i8* %35, align 1
  %tobool61 = icmp ne i8 %36, 0
  br i1 %tobool61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.then.58
  %37 = load i8, i8* %bitval, align 1
  %conv63 = zext i8 %37 to i32
  %or64 = or i32 %conv63, 128
  %conv65 = trunc i32 %or64 to i8
  store i8 %conv65, i8* %bitval, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.then.58
  %38 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr67, i8** %byteline.addr, align 8
  %39 = load i8, i8* %38, align 1
  %tobool68 = icmp ne i8 %39, 0
  br i1 %tobool68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.66
  %40 = load i8, i8* %bitval, align 1
  %conv70 = zext i8 %40 to i32
  %or71 = or i32 %conv70, 64
  %conv72 = trunc i32 %or71 to i8
  store i8 %conv72, i8* %bitval, align 1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.end.66
  %41 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr74, i8** %byteline.addr, align 8
  %42 = load i8, i8* %41, align 1
  %tobool75 = icmp ne i8 %42, 0
  br i1 %tobool75, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %if.end.73
  %43 = load i8, i8* %bitval, align 1
  %conv77 = zext i8 %43 to i32
  %or78 = or i32 %conv77, 32
  %conv79 = trunc i32 %or78 to i8
  store i8 %conv79, i8* %bitval, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %if.end.73
  %44 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr81, i8** %byteline.addr, align 8
  %45 = load i8, i8* %44, align 1
  %tobool82 = icmp ne i8 %45, 0
  br i1 %tobool82, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %if.end.80
  %46 = load i8, i8* %bitval, align 1
  %conv84 = zext i8 %46 to i32
  %or85 = or i32 %conv84, 16
  %conv86 = trunc i32 %or85 to i8
  store i8 %conv86, i8* %bitval, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %if.end.80
  %47 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr88, i8** %byteline.addr, align 8
  %48 = load i8, i8* %47, align 1
  %tobool89 = icmp ne i8 %48, 0
  br i1 %tobool89, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %if.end.87
  %49 = load i8, i8* %bitval, align 1
  %conv91 = zext i8 %49 to i32
  %or92 = or i32 %conv91, 8
  %conv93 = trunc i32 %or92 to i8
  store i8 %conv93, i8* %bitval, align 1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.90, %if.end.87
  %50 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr95, i8** %byteline.addr, align 8
  %51 = load i8, i8* %50, align 1
  %tobool96 = icmp ne i8 %51, 0
  br i1 %tobool96, label %if.then.97, label %if.end.101

if.then.97:                                       ; preds = %if.end.94
  %52 = load i8, i8* %bitval, align 1
  %conv98 = zext i8 %52 to i32
  %or99 = or i32 %conv98, 4
  %conv100 = trunc i32 %or99 to i8
  store i8 %conv100, i8* %bitval, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.97, %if.end.94
  %53 = load i8*, i8** %byteline.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr102, i8** %byteline.addr, align 8
  %54 = load i8, i8* %53, align 1
  %tobool103 = icmp ne i8 %54, 0
  br i1 %tobool103, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %if.end.101
  %55 = load i8, i8* %bitval, align 1
  %conv105 = zext i8 %55 to i32
  %or106 = or i32 %conv105, 2
  %conv107 = trunc i32 %or106 to i8
  store i8 %conv107, i8* %bitval, align 1
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %if.end.101
  %56 = load i32, i32* %invert.addr, align 4
  %tobool109 = icmp ne i32 %56, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.113

cond.true.110:                                    ; preds = %if.end.108
  %57 = load i8, i8* %bitval, align 1
  %conv111 = zext i8 %57 to i32
  %neg112 = xor i32 %conv111, -1
  br label %cond.end.115

cond.false.113:                                   ; preds = %if.end.108
  %58 = load i8, i8* %bitval, align 1
  %conv114 = zext i8 %58 to i32
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.true.110
  %cond116 = phi i32 [ %neg112, %cond.true.110 ], [ %conv114, %cond.false.113 ]
  %conv117 = trunc i32 %cond116 to i8
  %59 = load i8*, i8** %bitline.addr, align 8
  store i8 %conv117, i8* %59, align 1
  br label %if.end.118

if.end.118:                                       ; preds = %cond.end.115, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rle_endwrite(%struct._IO_FILE* %ofp) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @rle_putrun(i32 %1, i32 %2, %struct._IO_FILE* %3)
  store i32 0, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @write_card32(%struct._IO_FILE* %ofp, i64 %c) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i64, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %1)
  %2 = load i64, i64* %c.addr, align 8
  %shr1 = lshr i64 %2, 16
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call4 = call i32 @_IO_putc(i32 %conv3, %struct._IO_FILE* %3)
  %4 = load i64, i64* %c.addr, align 8
  %shr5 = lshr i64 %4, 8
  %and6 = and i64 %shr5, 255
  %conv7 = trunc i64 %and6 to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call8 = call i32 @_IO_putc(i32 %conv7, %struct._IO_FILE* %5)
  %6 = load i64, i64* %c.addr, align 8
  %and9 = and i64 %6, 255
  %conv10 = trunc i64 %and9 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call11 = call i32 @_IO_putc(i32 %conv10, %struct._IO_FILE* %7)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @rle_fputc(i32 %val, %struct._IO_FILE* %ofp) #0 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %retval1 = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %1 = load i32, i32* %val.addr, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  %3 = load i32, i32* %val.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %cmp4 = icmp eq i32 %5, 257
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.then.3
  %6 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @rle_putrun(i32 256, i32 %6, %struct._IO_FILE* %7)
  store i32 %call, i32* %retval1, align 4
  %8 = load i32, i32* %retval1, align 4
  %cmp6 = icmp slt i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %9 = load i32, i32* %retval1, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  %10 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %sub = sub nsw i32 %10, 256
  store i32 %sub, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.3
  %11 = load i32, i32* %val.addr, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %12 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call11 = call i32 @rle_putrun(i32 %12, i32 %13, %struct._IO_FILE* %14)
  store i32 %call11, i32* %retval1, align 4
  %15 = load i32, i32* %retval1, align 4
  %cmp12 = icmp slt i32 %15, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %16 = load i32, i32* %retval1, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  store i32 1, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 1), align 4
  %17 = load i32, i32* %val.addr, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.RLEBUF, %struct.RLEBUF* @rlebuf, i32 0, i32 0), align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.end.9, %if.then.7, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @rle_putrun(i32 %n, i32 %val, %struct._IO_FILE* %ofp) #0 {
entry:
  %n.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %retval1 = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i32 128, i32* %flag, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %val.addr, align 4
  %3 = load i32, i32* %flag, align 4
  %cmp3 = icmp eq i32 %2, %3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %flag, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @_IO_putc(i32 %4, %struct._IO_FILE* %5)
  %6 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %6, 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call4 = call i32 @_IO_putc(i32 %sub, %struct._IO_FILE* %7)
  %8 = load i32, i32* %val.addr, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call5 = call i32 @_IO_putc(i32 %8, %struct._IO_FILE* %9)
  store i32 %call5, i32* %retval1, align 4
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %11 = load i32, i32* %val.addr, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call8 = call i32 @_IO_putc(i32 %11, %struct._IO_FILE* %12)
  %13 = load i32, i32* %val.addr, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call9 = call i32 @_IO_putc(i32 %13, %struct._IO_FILE* %14)
  store i32 %call9, i32* %retval1, align 4
  br label %if.end.17

if.else.10:                                       ; preds = %if.else
  %15 = load i32, i32* %val.addr, align 4
  %16 = load i32, i32* %flag, align 4
  %cmp11 = icmp eq i32 %15, %16
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else.10
  %17 = load i32, i32* %flag, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call13 = call i32 @_IO_putc(i32 %17, %struct._IO_FILE* %18)
  store i32 %call13, i32* %retval1, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call14 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %19)
  br label %if.end

if.else.15:                                       ; preds = %if.else.10
  %20 = load i32, i32* %val.addr, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call16 = call i32 @_IO_putc(i32 %20, %struct._IO_FILE* %21)
  store i32 %call16, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %22 = load i32, i32* %retval1, align 4
  %cmp19 = icmp slt i32 %22, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %23 = load i32, i32* %retval1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %24 = load i32, i32* %val.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  ret i32 %cond
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
