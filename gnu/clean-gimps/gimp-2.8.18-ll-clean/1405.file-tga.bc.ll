; ModuleID = './plug-ins/common/file-tga.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._TgaSaveVals = type { i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tga_info_struct = type { i8, i8, i8, i8, i16, i16, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [41 x i8], [324 x i8], i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i32, i32, double }
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
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

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
@query.save_args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Use RLE compression\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Image origin (0 = top-left, 1 = bottom-left)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"file-tga-load\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Loads files of Targa file format\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"FIXME: write help for tga_load\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Raphael FRANCOIS, Gordon Matzigkeit\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"1997,2000,2007\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"TarGA image\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"image/x-tga\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"tga,vda,icb,vst\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"-18&,string,TRUEVISION-XFILE.,-1,byte,0\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"file-tga-save\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"saves files in the Targa file format\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"FIXME: write help for tga_save\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"1997,2000\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.32 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"file-tga\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"TGA\00", align 1
@tsvals = internal global %struct._TgaSaveVals { i32 1, i32 1 }, align 4
@.str.36 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Cannot read footer from '%s'\00", align 1
@magic = internal global [18 x i8] c"TRUEVISION-XFILE.\00", align 16
@.str.40 = private unnamed_addr constant [32 x i8] c"Cannot read extension from '%s'\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"Cannot read header from '%s'\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Unhandled sub-format in '%s' (type = %u, bpp = %u)\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Unknown image type %u for '%s'\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Indexed image has invalid color map type %u\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"Non-indexed image has invalid color map type %u\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"File '%s' is truncated or corrupted\00", align 1
@ReadImage.image_ID = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [31 x i8] c"Unsupported colormap depth: %u\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"file-tga.c\00", align 1
@__func__.read_line = private unnamed_addr constant [10 x i8] c"read_line\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"drawable->bpp == 1\00", align 1
@rle_read.repeat = internal global i32 0, align 4
@rle_read.direct = internal global i32 0, align 4
@rle_read.sample = internal global [4 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"_RLE compression\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Or_igin:\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Bottom left\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"Top left\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #8
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
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.58

if.then.13:                                       ; preds = %if.else.10
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 0)
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
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 23)
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
  %call25 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct._TgaSaveVals* @tsvals to i8*))
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
  %cmp30 = icmp ne i32 %18, 7
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
  store i32 %cond, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 0), align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.32, %if.then.31
  br label %sw.epilog.41

sw.bb.38:                                         ; preds = %sw.epilog
  %call39 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct._TgaSaveVals* @tsvals to i8*))
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
  %call50 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct._TgaSaveVals* @tsvals to i8*), i32 8)
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
  %fp = alloca %struct._IO_FILE*, align 8
  %info = alloca %struct.tga_info_struct, align 8
  %header = alloca [18 x i8], align 16
  %footer = alloca [26 x i8], align 16
  %extension = alloca [495 x i8], align 16
  %offset = alloca i64, align 8
  %image_ID = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 -1, i32* %image_ID, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
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
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 @fseek(%struct._IO_FILE* %7, i64 -26, i32 2)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.48, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %arraydecay = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i64 @fread(i8* %arraydecay, i64 26, i64 1, %struct._IO_FILE* %8)
  %cmp = icmp ne i64 %call14, 1
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %9)
  call void (i8*, ...) @g_message(i8* %call16, i8* %call17)
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.13
  %arraydecay18 = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay18, i64 8
  %call19 = call i32 @memcmp(i8* %add.ptr, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @magic, i32 0, i32 0), i64 18) #8
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.46

if.then.21:                                       ; preds = %if.else
  %arrayidx = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i64
  %arrayidx22 = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i64 1
  %11 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %11 to i64
  %mul = mul nsw i64 %conv23, 256
  %add = add nsw i64 %conv, %mul
  %arrayidx24 = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i64 2
  %12 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %12 to i64
  %mul26 = mul nsw i64 %conv25, 65536
  %add27 = add nsw i64 %add, %mul26
  %arrayidx28 = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i64 3
  %13 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %13 to i64
  %mul30 = mul nsw i64 %conv29, 16777216
  %add31 = add nsw i64 %add27, %mul30
  store i64 %add31, i64* %offset, align 8
  %14 = load i64, i64* %offset, align 8
  %cmp32 = icmp ne i64 %14, 0
  br i1 %cmp32, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %if.then.21
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %16 = load i64, i64* %offset, align 8
  %call35 = call i32 @fseek(%struct._IO_FILE* %15, i64 %16, i32 0)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.34
  %arraydecay37 = getelementptr inbounds [495 x i8], [495 x i8]* %extension, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i64 @fread(i8* %arraydecay37, i64 495, i64 1, %struct._IO_FILE* %17)
  %cmp39 = icmp ne i64 %call38, 1
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %lor.lhs.false, %if.then.34
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0)) #5
  %18 = load i8*, i8** %filename.addr, align 8
  %call43 = call i8* @gimp_filename_to_utf8(i8* %18)
  call void (i8*, ...) @g_message(i8* %call42, i8* %call43)
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.21
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call49 = call i32 @fseek(%struct._IO_FILE* %19, i64 0, i32 0)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.56, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.48
  %arraydecay52 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call53 = call i64 @fread(i8* %arraydecay52, i64 18, i64 1, %struct._IO_FILE* %20)
  %cmp54 = icmp ne i64 %call53, 1
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %lor.lhs.false.51, %if.end.48
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0)) #5
  %21 = load i8*, i8** %filename.addr, align 8
  %call58 = call i8* @gimp_filename_to_utf8(i8* %21)
  call void (i8*, ...) @g_message(i8* %call57, i8* %call58)
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false.51
  %arrayidx60 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 2
  %22 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %22 to i32
  switch i32 %conv61, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.62
    i32 3, label %sw.bb.65
    i32 9, label %sw.bb.68
    i32 10, label %sw.bb.71
    i32 11, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %if.end.59
  %imageType = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  store i8 1, i8* %imageType, align 1
  %imageCompression = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 3
  store i8 0, i8* %imageCompression, align 1
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.59
  %imageType63 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  store i8 2, i8* %imageType63, align 1
  %imageCompression64 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 3
  store i8 0, i8* %imageCompression64, align 1
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.59
  %imageType66 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  store i8 3, i8* %imageType66, align 1
  %imageCompression67 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 3
  store i8 0, i8* %imageCompression67, align 1
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end.59
  %imageType69 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  store i8 1, i8* %imageType69, align 1
  %imageCompression70 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 3
  store i8 1, i8* %imageCompression70, align 1
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.59
  %imageType72 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  store i8 2, i8* %imageType72, align 1
  %imageCompression73 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 3
  store i8 1, i8* %imageCompression73, align 1
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.59
  %imageType75 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  store i8 3, i8* %imageType75, align 1
  %imageCompression76 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 3
  store i8 1, i8* %imageCompression76, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.59
  %imageType77 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  store i8 0, i8* %imageType77, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.74, %sw.bb.71, %sw.bb.68, %sw.bb.65, %sw.bb.62, %sw.bb
  %arrayidx78 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 0
  %23 = load i8, i8* %arrayidx78, align 1
  %idLength = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 0
  store i8 %23, i8* %idLength, align 1
  %arrayidx79 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 1
  %24 = load i8, i8* %arrayidx79, align 1
  %colorMapType = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 1
  store i8 %24, i8* %colorMapType, align 1
  %arrayidx80 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 3
  %25 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %25 to i32
  %arrayidx82 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 4
  %26 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %26 to i32
  %mul84 = mul nsw i32 %conv83, 256
  %add85 = add nsw i32 %conv81, %mul84
  %conv86 = trunc i32 %add85 to i16
  %colorMapIndex = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 4
  store i16 %conv86, i16* %colorMapIndex, align 2
  %arrayidx87 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 5
  %27 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %27 to i32
  %arrayidx89 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 6
  %28 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %28 to i32
  %mul91 = mul nsw i32 %conv90, 256
  %add92 = add nsw i32 %conv88, %mul91
  %conv93 = trunc i32 %add92 to i16
  %colorMapLength = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 5
  store i16 %conv93, i16* %colorMapLength, align 2
  %arrayidx94 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 7
  %29 = load i8, i8* %arrayidx94, align 1
  %colorMapSize = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 6
  store i8 %29, i8* %colorMapSize, align 1
  %arrayidx95 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 8
  %30 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %30 to i32
  %arrayidx97 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 9
  %31 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %31 to i32
  %mul99 = mul nsw i32 %conv98, 256
  %add100 = add nsw i32 %conv96, %mul99
  %conv101 = trunc i32 %add100 to i16
  %xOrigin = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 7
  store i16 %conv101, i16* %xOrigin, align 2
  %arrayidx102 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 10
  %32 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %32 to i32
  %arrayidx104 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 11
  %33 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %33 to i32
  %mul106 = mul nsw i32 %conv105, 256
  %add107 = add nsw i32 %conv103, %mul106
  %conv108 = trunc i32 %add107 to i16
  %yOrigin = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 8
  store i16 %conv108, i16* %yOrigin, align 2
  %arrayidx109 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 12
  %34 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %34 to i32
  %arrayidx111 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 13
  %35 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %35 to i32
  %mul113 = mul nsw i32 %conv112, 256
  %add114 = add nsw i32 %conv110, %mul113
  %conv115 = trunc i32 %add114 to i16
  %width = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 9
  store i16 %conv115, i16* %width, align 2
  %arrayidx116 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 14
  %36 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %36 to i32
  %arrayidx118 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 15
  %37 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %37 to i32
  %mul120 = mul nsw i32 %conv119, 256
  %add121 = add nsw i32 %conv117, %mul120
  %conv122 = trunc i32 %add121 to i16
  %height = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 10
  store i16 %conv122, i16* %height, align 2
  %arrayidx123 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 16
  %38 = load i8, i8* %arrayidx123, align 1
  %bpp = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  store i8 %38, i8* %bpp, align 1
  %bpp124 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %39 = load i8, i8* %bpp124, align 1
  %conv125 = zext i8 %39 to i32
  %add126 = add nsw i32 %conv125, 7
  %div = sdiv i32 %add126, 8
  %conv127 = trunc i32 %div to i8
  %bytes = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 12
  store i8 %conv127, i8* %bytes, align 1
  %arrayidx128 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 17
  %40 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %40 to i32
  %and = and i32 %conv129, 15
  %conv130 = trunc i32 %and to i8
  %alphaBits = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 13
  store i8 %conv130, i8* %alphaBits, align 1
  %arrayidx131 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 17
  %41 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %41 to i32
  %and133 = and i32 %conv132, 16
  %tobool134 = icmp ne i32 %and133, 0
  %cond = select i1 %tobool134, i32 1, i32 0
  %conv135 = trunc i32 %cond to i8
  %flipHoriz = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 14
  store i8 %conv135, i8* %flipHoriz, align 1
  %arrayidx136 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 17
  %42 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %42 to i32
  %and138 = and i32 %conv137, 32
  %tobool139 = icmp ne i32 %and138, 0
  %cond140 = select i1 %tobool139, i32 0, i32 1
  %conv141 = trunc i32 %cond140 to i8
  %flipVert = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 15
  store i8 %conv141, i8* %flipVert, align 1
  %alphaBits142 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 13
  %43 = load i8, i8* %alphaBits142, align 1
  %conv143 = zext i8 %43 to i32
  %bpp144 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %44 = load i8, i8* %bpp144, align 1
  %conv145 = zext i8 %44 to i32
  %cmp146 = icmp eq i32 %conv143, %conv145
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %sw.epilog
  %alphaBits149 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 13
  store i8 0, i8* %alphaBits149, align 1
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %sw.epilog
  %alphaBits151 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 13
  %45 = load i8, i8* %alphaBits151, align 1
  %conv152 = zext i8 %45 to i32
  %cmp153 = icmp eq i32 %conv152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.179

if.then.155:                                      ; preds = %if.end.150
  %imageType156 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %46 = load i8, i8* %imageType156, align 1
  %conv157 = zext i8 %46 to i32
  %cmp158 = icmp eq i32 %conv157, 2
  br i1 %cmp158, label %land.lhs.true, label %if.end.166

land.lhs.true:                                    ; preds = %if.then.155
  %bpp160 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %47 = load i8, i8* %bpp160, align 1
  %conv161 = zext i8 %47 to i32
  %cmp162 = icmp eq i32 %conv161, 32
  br i1 %cmp162, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %land.lhs.true
  %alphaBits165 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 13
  store i8 8, i8* %alphaBits165, align 1
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %land.lhs.true, %if.then.155
  %imageType167 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %48 = load i8, i8* %imageType167, align 1
  %conv168 = zext i8 %48 to i32
  %cmp169 = icmp eq i32 %conv168, 3
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.178

land.lhs.true.171:                                ; preds = %if.end.166
  %bpp172 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %49 = load i8, i8* %bpp172, align 1
  %conv173 = zext i8 %49 to i32
  %cmp174 = icmp eq i32 %conv173, 16
  br i1 %cmp174, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %land.lhs.true.171
  %alphaBits177 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 13
  store i8 8, i8* %alphaBits177, align 1
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %land.lhs.true.171, %if.end.166
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.150
  %imageType180 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %50 = load i8, i8* %imageType180, align 1
  %conv181 = zext i8 %50 to i32
  switch i32 %conv181, label %sw.default.248 [
    i32 1, label %sw.bb.182
    i32 2, label %sw.bb.194
    i32 3, label %sw.bb.221
  ]

sw.bb.182:                                        ; preds = %if.end.179
  %bpp183 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %51 = load i8, i8* %bpp183, align 1
  %conv184 = zext i8 %51 to i32
  %cmp185 = icmp ne i32 %conv184, 8
  br i1 %cmp185, label %if.then.187, label %if.end.193

if.then.187:                                      ; preds = %sw.bb.182
  %52 = load i8*, i8** %filename.addr, align 8
  %call188 = call i8* @gimp_filename_to_utf8(i8* %52)
  %imageType189 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %53 = load i8, i8* %imageType189, align 1
  %conv190 = zext i8 %53 to i32
  %bpp191 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %54 = load i8, i8* %bpp191, align 1
  %conv192 = zext i8 %54 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* %call188, i32 %conv190, i32 %conv192)
  store i32 -1, i32* %retval
  br label %return

if.end.193:                                       ; preds = %sw.bb.182
  br label %sw.epilog.252

sw.bb.194:                                        ; preds = %if.end.179
  %bpp195 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %55 = load i8, i8* %bpp195, align 1
  %conv196 = zext i8 %55 to i32
  %cmp197 = icmp ne i32 %conv196, 15
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.220

land.lhs.true.199:                                ; preds = %sw.bb.194
  %bpp200 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %56 = load i8, i8* %bpp200, align 1
  %conv201 = zext i8 %56 to i32
  %cmp202 = icmp ne i32 %conv201, 16
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.220

land.lhs.true.204:                                ; preds = %land.lhs.true.199
  %bpp205 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %57 = load i8, i8* %bpp205, align 1
  %conv206 = zext i8 %57 to i32
  %cmp207 = icmp ne i32 %conv206, 24
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.220

land.lhs.true.209:                                ; preds = %land.lhs.true.204
  %bpp210 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %58 = load i8, i8* %bpp210, align 1
  %conv211 = zext i8 %58 to i32
  %cmp212 = icmp ne i32 %conv211, 32
  br i1 %cmp212, label %if.then.214, label %if.end.220

if.then.214:                                      ; preds = %land.lhs.true.209
  %59 = load i8*, i8** %filename.addr, align 8
  %call215 = call i8* @gimp_filename_to_utf8(i8* %59)
  %imageType216 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %60 = load i8, i8* %imageType216, align 1
  %conv217 = zext i8 %60 to i32
  %bpp218 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %61 = load i8, i8* %bpp218, align 1
  %conv219 = zext i8 %61 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* %call215, i32 %conv217, i32 %conv219)
  store i32 -1, i32* %retval
  br label %return

if.end.220:                                       ; preds = %land.lhs.true.209, %land.lhs.true.204, %land.lhs.true.199, %sw.bb.194
  br label %sw.epilog.252

sw.bb.221:                                        ; preds = %if.end.179
  %bpp222 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %62 = load i8, i8* %bpp222, align 1
  %conv223 = zext i8 %62 to i32
  %cmp224 = icmp ne i32 %conv223, 8
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.247

land.lhs.true.226:                                ; preds = %sw.bb.221
  %alphaBits227 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 13
  %63 = load i8, i8* %alphaBits227, align 1
  %conv228 = zext i8 %63 to i32
  %cmp229 = icmp ne i32 %conv228, 8
  br i1 %cmp229, label %if.then.241, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %land.lhs.true.226
  %bpp232 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %64 = load i8, i8* %bpp232, align 1
  %conv233 = zext i8 %64 to i32
  %cmp234 = icmp ne i32 %conv233, 16
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.247

land.lhs.true.236:                                ; preds = %lor.lhs.false.231
  %bpp237 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %65 = load i8, i8* %bpp237, align 1
  %conv238 = zext i8 %65 to i32
  %cmp239 = icmp ne i32 %conv238, 15
  br i1 %cmp239, label %if.then.241, label %if.end.247

if.then.241:                                      ; preds = %land.lhs.true.236, %land.lhs.true.226
  %66 = load i8*, i8** %filename.addr, align 8
  %call242 = call i8* @gimp_filename_to_utf8(i8* %66)
  %imageType243 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %67 = load i8, i8* %imageType243, align 1
  %conv244 = zext i8 %67 to i32
  %bpp245 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %68 = load i8, i8* %bpp245, align 1
  %conv246 = zext i8 %68 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* %call242, i32 %conv244, i32 %conv246)
  store i32 -1, i32* %retval
  br label %return

if.end.247:                                       ; preds = %land.lhs.true.236, %lor.lhs.false.231, %sw.bb.221
  br label %sw.epilog.252

sw.default.248:                                   ; preds = %if.end.179
  %imageType249 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %69 = load i8, i8* %imageType249, align 1
  %conv250 = zext i8 %69 to i32
  %70 = load i8*, i8** %filename.addr, align 8
  %call251 = call i8* @gimp_filename_to_utf8(i8* %70)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0), i32 %conv250, i8* %call251)
  store i32 -1, i32* %retval
  br label %return

sw.epilog.252:                                    ; preds = %if.end.247, %if.end.220, %if.end.193
  %bytes253 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 12
  %71 = load i8, i8* %bytes253, align 1
  %conv254 = zext i8 %71 to i32
  %mul255 = mul nsw i32 %conv254, 8
  %bpp256 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %72 = load i8, i8* %bpp256, align 1
  %conv257 = zext i8 %72 to i32
  %cmp258 = icmp ne i32 %mul255, %conv257
  br i1 %cmp258, label %land.lhs.true.260, label %if.end.271

land.lhs.true.260:                                ; preds = %sw.epilog.252
  %bpp261 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %73 = load i8, i8* %bpp261, align 1
  %conv262 = zext i8 %73 to i32
  %cmp263 = icmp ne i32 %conv262, 15
  br i1 %cmp263, label %if.then.265, label %if.end.271

if.then.265:                                      ; preds = %land.lhs.true.260
  %74 = load i8*, i8** %filename.addr, align 8
  %call266 = call i8* @gimp_filename_to_utf8(i8* %74)
  %imageType267 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %75 = load i8, i8* %imageType267, align 1
  %conv268 = zext i8 %75 to i32
  %bpp269 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 11
  %76 = load i8, i8* %bpp269, align 1
  %conv270 = zext i8 %76 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* %call266, i32 %conv268, i32 %conv270)
  store i32 -1, i32* %retval
  br label %return

if.end.271:                                       ; preds = %land.lhs.true.260, %sw.epilog.252
  %imageType272 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %77 = load i8, i8* %imageType272, align 1
  %conv273 = zext i8 %77 to i32
  %cmp274 = icmp eq i32 %conv273, 1
  br i1 %cmp274, label %land.lhs.true.276, label %if.else.284

land.lhs.true.276:                                ; preds = %if.end.271
  %colorMapType277 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 1
  %78 = load i8, i8* %colorMapType277, align 1
  %conv278 = zext i8 %78 to i32
  %cmp279 = icmp ne i32 %conv278, 1
  br i1 %cmp279, label %if.then.281, label %if.else.284

if.then.281:                                      ; preds = %land.lhs.true.276
  %colorMapType282 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 1
  %79 = load i8, i8* %colorMapType282, align 1
  %conv283 = zext i8 %79 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i32 %conv283)
  store i32 -1, i32* %retval
  br label %return

if.else.284:                                      ; preds = %land.lhs.true.276, %if.end.271
  %imageType285 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 2
  %80 = load i8, i8* %imageType285, align 1
  %conv286 = zext i8 %80 to i32
  %cmp287 = icmp ne i32 %conv286, 1
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.297

land.lhs.true.289:                                ; preds = %if.else.284
  %colorMapType290 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 1
  %81 = load i8, i8* %colorMapType290, align 1
  %conv291 = zext i8 %81 to i32
  %cmp292 = icmp ne i32 %conv291, 0
  br i1 %cmp292, label %if.then.294, label %if.end.297

if.then.294:                                      ; preds = %land.lhs.true.289
  %colorMapType295 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 1
  %82 = load i8, i8* %colorMapType295, align 1
  %conv296 = zext i8 %82 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i32 0, i32 0), i32 %conv296)
  store i32 -1, i32* %retval
  br label %return

if.end.297:                                       ; preds = %land.lhs.true.289, %if.else.284
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297
  %idLength299 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 0
  %83 = load i8, i8* %idLength299, align 1
  %conv300 = zext i8 %83 to i32
  %tobool301 = icmp ne i32 %conv300, 0
  br i1 %tobool301, label %land.lhs.true.302, label %if.end.309

land.lhs.true.302:                                ; preds = %if.end.298
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %idLength303 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %info, i32 0, i32 0
  %85 = load i8, i8* %idLength303, align 1
  %conv304 = zext i8 %85 to i64
  %call305 = call i32 @fseek(%struct._IO_FILE* %84, i64 %conv304, i32 1)
  %tobool306 = icmp ne i32 %call305, 0
  br i1 %tobool306, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %land.lhs.true.302
  %86 = load i8*, i8** %filename.addr, align 8
  %call308 = call i8* @gimp_filename_to_utf8(i8* %86)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i8* %call308)
  store i32 -1, i32* %retval
  br label %return

if.end.309:                                       ; preds = %land.lhs.true.302, %if.end.298
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %88 = load i8*, i8** %filename.addr, align 8
  %call310 = call i32 @ReadImage(%struct._IO_FILE* %87, %struct.tga_info_struct* %info, i8* %88)
  store i32 %call310, i32* %image_ID, align 4
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call311 = call i32 @fclose(%struct._IO_FILE* %89)
  %90 = load i32, i32* %image_ID, align 4
  store i32 %90, i32* %retval
  br label %return

return:                                           ; preds = %if.end.309, %if.then.307, %if.then.294, %if.then.281, %if.then.265, %sw.default.248, %if.then.241, %if.then.214, %if.then.187, %if.then.56, %if.then.41, %if.then.15, %if.then
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call5 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %3)
  %4 = bitcast %struct._GtkWidget* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0)) #5
  %call9 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call8)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %toggle, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call10)
  %10 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 0, i32 0, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_toggle_button_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkToggleButton*
  %15 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %14, i32 %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (%struct._TgaSaveVals* @tsvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call15 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %hbox, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0)) #5
  %call19 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %label, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0)) #5
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0)) #5
  %call24 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call22, i32 1, i8* %call23, i32 0, i8* null)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %combo, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 1, i32 1, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_label_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkLabel*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %36, %struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_int_combo_box_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpIntComboBox*
  %41 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %call31 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %40, i32 %41, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1) to i8*))
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_dialog_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call32)
  %45 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpDialog*
  %call34 = call i32 @gimp_dialog_run(%struct._GimpDialog* %45)
  %cmp = icmp eq i32 %call34, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %46)
  %47 = load i32, i32* %run, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %dtype = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %out_bpp = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %row = alloca i32, align 4
  %header = alloca [18 x i8], align 16
  %footer = alloca [26 x i8], align 16
  %pixels = alloca i8*, align 8
  %data = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  %gimp_cmap = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %out_bpp, align 4
  store i32 1, i32* %status, align 4
  store i8* null, i8** %gimp_cmap, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call1, i32* %dtype, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width2, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height3, align 4
  store i32 %5, i32* %height, align 4
  %6 = load i8*, i8** %filename.addr, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @g_file_error_quark()
  %call6 = call i32* @__errno_location() #7
  %8 = load i32, i32* %call6, align 4
  %call7 = call i32 @g_file_error_from_errno(i32 %8)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call10 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %10) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call5, i32 %call7, i8* %call8, i8* %call9, i8* %call11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0)) #5
  %11 = load i8*, i8** %filename.addr, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %11)
  %call14 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call12, i8* %call13)
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %12 = load i32, i32* %dtype, align 4
  %cmp15 = icmp eq i32 %12, 4
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %13 = load i32, i32* %image_ID.addr, align 4
  %call17 = call i8* @gimp_image_get_colormap(i32 %13, i32* %num_colors)
  store i8* %call17, i8** %gimp_cmap, align 8
  %arrayidx18 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 1
  store i8 1, i8* %arrayidx18, align 1
  %14 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %14, 0
  %cond = select i1 %tobool, i32 9, i32 1
  %conv = trunc i32 %cond to i8
  %arrayidx19 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 2
  store i8 %conv, i8* %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 4
  store i8 0, i8* %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 3
  store i8 0, i8* %arrayidx21, align 1
  %15 = load i32, i32* %num_colors, align 4
  %rem = srem i32 %15, 256
  %conv22 = trunc i32 %rem to i8
  %arrayidx23 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 5
  store i8 %conv22, i8* %arrayidx23, align 1
  %16 = load i32, i32* %num_colors, align 4
  %div = sdiv i32 %16, 256
  %conv24 = trunc i32 %div to i8
  %arrayidx25 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 6
  store i8 %conv24, i8* %arrayidx25, align 1
  %arrayidx26 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 7
  store i8 24, i8* %arrayidx26, align 1
  br label %if.end.69

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %dtype, align 4
  %cmp27 = icmp eq i32 %17, 5
  br i1 %cmp27, label %if.then.29, label %if.else.46

if.then.29:                                       ; preds = %if.else
  %18 = load i32, i32* %image_ID.addr, align 4
  %call30 = call i8* @gimp_image_get_colormap(i32 %18, i32* %num_colors)
  store i8* %call30, i8** %gimp_cmap, align 8
  %arrayidx31 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 1
  store i8 1, i8* %arrayidx31, align 1
  %19 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 0), align 4
  %tobool32 = icmp ne i32 %19, 0
  %cond33 = select i1 %tobool32, i32 9, i32 1
  %conv34 = trunc i32 %cond33 to i8
  %arrayidx35 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 2
  store i8 %conv34, i8* %arrayidx35, align 1
  %arrayidx36 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 4
  store i8 0, i8* %arrayidx36, align 1
  %arrayidx37 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 3
  store i8 0, i8* %arrayidx37, align 1
  %20 = load i32, i32* %num_colors, align 4
  %add = add nsw i32 %20, 1
  %rem38 = srem i32 %add, 256
  %conv39 = trunc i32 %rem38 to i8
  %arrayidx40 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 5
  store i8 %conv39, i8* %arrayidx40, align 1
  %21 = load i32, i32* %num_colors, align 4
  %add41 = add nsw i32 %21, 1
  %div42 = sdiv i32 %add41, 256
  %conv43 = trunc i32 %div42 to i8
  %arrayidx44 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 6
  store i8 %conv43, i8* %arrayidx44, align 1
  %arrayidx45 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 7
  store i8 32, i8* %arrayidx45, align 1
  br label %if.end.68

if.else.46:                                       ; preds = %if.else
  %arrayidx47 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 1
  store i8 0, i8* %arrayidx47, align 1
  %22 = load i32, i32* %dtype, align 4
  %cmp48 = icmp eq i32 %22, 0
  br i1 %cmp48, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.46
  %23 = load i32, i32* %dtype, align 4
  %cmp50 = icmp eq i32 %23, 1
  br i1 %cmp50, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %lor.lhs.false, %if.else.46
  %24 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 0), align 4
  %tobool53 = icmp ne i32 %24, 0
  %cond54 = select i1 %tobool53, i32 10, i32 2
  %conv55 = trunc i32 %cond54 to i8
  %arrayidx56 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 2
  store i8 %conv55, i8* %arrayidx56, align 1
  br label %if.end.62

if.else.57:                                       ; preds = %lor.lhs.false
  %25 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 0), align 4
  %tobool58 = icmp ne i32 %25, 0
  %cond59 = select i1 %tobool58, i32 11, i32 3
  %conv60 = trunc i32 %cond59 to i8
  %arrayidx61 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 2
  store i8 %conv60, i8* %arrayidx61, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.52
  %arrayidx63 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 7
  store i8 0, i8* %arrayidx63, align 1
  %arrayidx64 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 6
  store i8 0, i8* %arrayidx64, align 1
  %arrayidx65 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 5
  store i8 0, i8* %arrayidx65, align 1
  %arrayidx66 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 4
  store i8 0, i8* %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 3
  store i8 0, i8* %arrayidx67, align 1
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.62, %if.then.29
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.16
  %arrayidx70 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 9
  store i8 0, i8* %arrayidx70, align 1
  %arrayidx71 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 8
  store i8 0, i8* %arrayidx71, align 1
  %26 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %tobool72 = icmp ne i32 %26, 0
  br i1 %tobool72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.69
  br label %cond.end

cond.false:                                       ; preds = %if.end.69
  %27 = load i32, i32* %height, align 4
  %rem73 = srem i32 %27, 256
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond74 = phi i32 [ 0, %cond.true ], [ %rem73, %cond.false ]
  %conv75 = trunc i32 %cond74 to i8
  %arrayidx76 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 10
  store i8 %conv75, i8* %arrayidx76, align 1
  %28 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %tobool77 = icmp ne i32 %28, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.end
  br label %cond.end.81

cond.false.79:                                    ; preds = %cond.end
  %29 = load i32, i32* %height, align 4
  %div80 = sdiv i32 %29, 256
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.78
  %cond82 = phi i32 [ 0, %cond.true.78 ], [ %div80, %cond.false.79 ]
  %conv83 = trunc i32 %cond82 to i8
  %arrayidx84 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 11
  store i8 %conv83, i8* %arrayidx84, align 1
  %30 = load i32, i32* %width, align 4
  %rem85 = srem i32 %30, 256
  %conv86 = trunc i32 %rem85 to i8
  %arrayidx87 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 12
  store i8 %conv86, i8* %arrayidx87, align 1
  %31 = load i32, i32* %width, align 4
  %div88 = sdiv i32 %31, 256
  %conv89 = trunc i32 %div88 to i8
  %arrayidx90 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 13
  store i8 %conv89, i8* %arrayidx90, align 1
  %32 = load i32, i32* %height, align 4
  %rem91 = srem i32 %32, 256
  %conv92 = trunc i32 %rem91 to i8
  %arrayidx93 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 14
  store i8 %conv92, i8* %arrayidx93, align 1
  %33 = load i32, i32* %height, align 4
  %div94 = sdiv i32 %33, 256
  %conv95 = trunc i32 %div94 to i8
  %arrayidx96 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 15
  store i8 %conv95, i8* %arrayidx96, align 1
  %34 = load i32, i32* %dtype, align 4
  switch i32 %34, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 3, label %sw.bb.102
    i32 0, label %sw.bb.108
    i32 1, label %sw.bb.114
  ]

sw.bb:                                            ; preds = %cond.end.81, %cond.end.81, %cond.end.81
  store i32 1, i32* %out_bpp, align 4
  %arrayidx97 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 16
  store i8 8, i8* %arrayidx97, align 1
  %35 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %tobool98 = icmp ne i32 %35, 0
  %cond99 = select i1 %tobool98, i32 0, i32 32
  %conv100 = trunc i32 %cond99 to i8
  %arrayidx101 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 17
  store i8 %conv100, i8* %arrayidx101, align 1
  br label %sw.epilog

sw.bb.102:                                        ; preds = %cond.end.81
  store i32 2, i32* %out_bpp, align 4
  %arrayidx103 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 16
  store i8 16, i8* %arrayidx103, align 1
  %36 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %tobool104 = icmp ne i32 %36, 0
  %cond105 = select i1 %tobool104, i32 8, i32 40
  %conv106 = trunc i32 %cond105 to i8
  %arrayidx107 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 17
  store i8 %conv106, i8* %arrayidx107, align 1
  br label %sw.epilog

sw.bb.108:                                        ; preds = %cond.end.81
  store i32 3, i32* %out_bpp, align 4
  %arrayidx109 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 16
  store i8 24, i8* %arrayidx109, align 1
  %37 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %tobool110 = icmp ne i32 %37, 0
  %cond111 = select i1 %tobool110, i32 0, i32 32
  %conv112 = trunc i32 %cond111 to i8
  %arrayidx113 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 17
  store i8 %conv112, i8* %arrayidx113, align 1
  br label %sw.epilog

sw.bb.114:                                        ; preds = %cond.end.81
  store i32 4, i32* %out_bpp, align 4
  %arrayidx115 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 16
  store i8 32, i8* %arrayidx115, align 1
  %38 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %tobool116 = icmp ne i32 %38, 0
  %cond117 = select i1 %tobool116, i32 8, i32 40
  %conv118 = trunc i32 %cond117 to i8
  %arrayidx119 = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i64 17
  store i8 %conv118, i8* %arrayidx119, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.81, %sw.bb.114, %sw.bb.108, %sw.bb.102, %sw.bb
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %header, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call120 = call i64 @fwrite(i8* %arraydecay, i64 18, i64 1, %struct._IO_FILE* %39)
  %40 = load i32, i32* %dtype, align 4
  %cmp121 = icmp eq i32 %40, 4
  br i1 %cmp121, label %if.then.123, label %if.else.142

if.then.123:                                      ; preds = %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.123
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %num_colors, align 4
  %cmp124 = icmp slt i32 %41, %42
  br i1 %cmp124, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %43, 3
  %add126 = add nsw i32 %mul, 2
  %idxprom = sext i32 %add126 to i64
  %44 = load i8*, i8** %gimp_cmap, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %44, i64 %idxprom
  %45 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %45 to i32
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call129 = call i32 @fputc(i32 %conv128, %struct._IO_FILE* %46)
  %47 = load i32, i32* %i, align 4
  %mul130 = mul nsw i32 %47, 3
  %add131 = add nsw i32 %mul130, 1
  %idxprom132 = sext i32 %add131 to i64
  %48 = load i8*, i8** %gimp_cmap, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %48, i64 %idxprom132
  %49 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %49 to i32
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call135 = call i32 @fputc(i32 %conv134, %struct._IO_FILE* %50)
  %51 = load i32, i32* %i, align 4
  %mul136 = mul nsw i32 %51, 3
  %add137 = add nsw i32 %mul136, 0
  %idxprom138 = sext i32 %add137 to i64
  %52 = load i8*, i8** %gimp_cmap, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %52, i64 %idxprom138
  %53 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %53 to i32
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call141 = call i32 @fputc(i32 %conv140, %struct._IO_FILE* %54)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.177

if.else.142:                                      ; preds = %sw.epilog
  %56 = load i32, i32* %dtype, align 4
  %cmp143 = icmp eq i32 %56, 5
  br i1 %cmp143, label %if.then.145, label %if.end.176

if.then.145:                                      ; preds = %if.else.142
  store i32 0, i32* %i, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.169, %if.then.145
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %num_colors, align 4
  %cmp147 = icmp slt i32 %57, %58
  br i1 %cmp147, label %for.body.149, label %for.end.171

for.body.149:                                     ; preds = %for.cond.146
  %59 = load i32, i32* %i, align 4
  %mul150 = mul nsw i32 %59, 3
  %add151 = add nsw i32 %mul150, 2
  %idxprom152 = sext i32 %add151 to i64
  %60 = load i8*, i8** %gimp_cmap, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %60, i64 %idxprom152
  %61 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %61 to i32
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call155 = call i32 @fputc(i32 %conv154, %struct._IO_FILE* %62)
  %63 = load i32, i32* %i, align 4
  %mul156 = mul nsw i32 %63, 3
  %add157 = add nsw i32 %mul156, 1
  %idxprom158 = sext i32 %add157 to i64
  %64 = load i8*, i8** %gimp_cmap, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %64, i64 %idxprom158
  %65 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %65 to i32
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call161 = call i32 @fputc(i32 %conv160, %struct._IO_FILE* %66)
  %67 = load i32, i32* %i, align 4
  %mul162 = mul nsw i32 %67, 3
  %add163 = add nsw i32 %mul162, 0
  %idxprom164 = sext i32 %add163 to i64
  %68 = load i8*, i8** %gimp_cmap, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %68, i64 %idxprom164
  %69 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %69 to i32
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call167 = call i32 @fputc(i32 %conv166, %struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call168 = call i32 @fputc(i32 255, %struct._IO_FILE* %71)
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body.149
  %72 = load i32, i32* %i, align 4
  %inc170 = add nsw i32 %72, 1
  store i32 %inc170, i32* %i, align 4
  br label %for.cond.146

for.end.171:                                      ; preds = %for.cond.146
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call172 = call i32 @fputc(i32 0, %struct._IO_FILE* %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call173 = call i32 @fputc(i32 0, %struct._IO_FILE* %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call174 = call i32 @fputc(i32 0, %struct._IO_FILE* %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call175 = call i32 @fputc(i32 0, %struct._IO_FILE* %76)
  br label %if.end.176

if.end.176:                                       ; preds = %for.end.171, %if.else.142
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %for.end
  %77 = load i32, i32* %width, align 4
  %call178 = call i32 @gimp_tile_width() #7
  %div179 = udiv i32 %77, %call178
  %add180 = add i32 %div179, 1
  %conv181 = zext i32 %add180 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv181)
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %78, i32 0, i32 0, i32 %79, i32 %80, i32 0, i32 0)
  %81 = load i32, i32* %width, align 4
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 3
  %83 = load i32, i32* %bpp, align 4
  %mul182 = mul i32 %81, %83
  %conv183 = zext i32 %mul182 to i64
  %call184 = call noalias i8* @g_malloc_n(i64 %conv183, i64 1)
  store i8* %call184, i8** %pixels, align 8
  %84 = load i32, i32* %width, align 4
  %85 = load i32, i32* %out_bpp, align 4
  %mul185 = mul nsw i32 %84, %85
  %conv186 = sext i32 %mul185 to i64
  %call187 = call noalias i8* @g_malloc_n(i64 %conv186, i64 1)
  store i8* %call187, i8** %data, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.258, %if.end.177
  %86 = load i32, i32* %row, align 4
  %87 = load i32, i32* %height, align 4
  %cmp189 = icmp slt i32 %86, %87
  br i1 %cmp189, label %for.body.191, label %for.end.260

for.body.191:                                     ; preds = %for.cond.188
  %88 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 1), align 4
  %tobool192 = icmp ne i32 %88, 0
  br i1 %tobool192, label %if.then.193, label %if.else.195

if.then.193:                                      ; preds = %for.body.191
  %89 = load i8*, i8** %pixels, align 8
  %90 = load i32, i32* %height, align 4
  %91 = load i32, i32* %row, align 4
  %add194 = add nsw i32 %91, 1
  %sub = sub nsw i32 %90, %add194
  %92 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %89, i32 0, i32 %sub, i32 %92)
  br label %if.end.196

if.else.195:                                      ; preds = %for.body.191
  %93 = load i8*, i8** %pixels, align 8
  %94 = load i32, i32* %row, align 4
  %95 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %93, i32 0, i32 %94, i32 %95)
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.195, %if.then.193
  %96 = load i32, i32* %dtype, align 4
  %cmp197 = icmp eq i32 %96, 0
  br i1 %cmp197, label %if.then.199, label %if.else.201

if.then.199:                                      ; preds = %if.end.196
  %97 = load i8*, i8** %data, align 8
  %98 = load i8*, i8** %pixels, align 8
  %99 = load i32, i32* %width, align 4
  %100 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp200 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %100, i32 0, i32 3
  %101 = load i32, i32* %bpp200, align 4
  call void @bgr2rgb(i8* %97, i8* %98, i32 %99, i32 %101, i32 0)
  br label %if.end.241

if.else.201:                                      ; preds = %if.end.196
  %102 = load i32, i32* %dtype, align 4
  %cmp202 = icmp eq i32 %102, 1
  br i1 %cmp202, label %if.then.204, label %if.else.206

if.then.204:                                      ; preds = %if.else.201
  %103 = load i8*, i8** %data, align 8
  %104 = load i8*, i8** %pixels, align 8
  %105 = load i32, i32* %width, align 4
  %106 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp205 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %106, i32 0, i32 3
  %107 = load i32, i32* %bpp205, align 4
  call void @bgr2rgb(i8* %103, i8* %104, i32 %105, i32 %107, i32 1)
  br label %if.end.240

if.else.206:                                      ; preds = %if.else.201
  %108 = load i32, i32* %dtype, align 4
  %cmp207 = icmp eq i32 %108, 5
  br i1 %cmp207, label %if.then.209, label %if.else.235

if.then.209:                                      ; preds = %if.else.206
  store i32 0, i32* %i, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.232, %if.then.209
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %width, align 4
  %cmp211 = icmp slt i32 %109, %110
  br i1 %cmp211, label %for.body.213, label %for.end.234

for.body.213:                                     ; preds = %for.cond.210
  %111 = load i32, i32* %i, align 4
  %mul214 = mul nsw i32 %111, 2
  %add215 = add nsw i32 %mul214, 1
  %idxprom216 = sext i32 %add215 to i64
  %112 = load i8*, i8** %pixels, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %112, i64 %idxprom216
  %113 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %113 to i32
  %cmp219 = icmp sgt i32 %conv218, 127
  br i1 %cmp219, label %if.then.221, label %if.else.227

if.then.221:                                      ; preds = %for.body.213
  %114 = load i32, i32* %i, align 4
  %mul222 = mul nsw i32 %114, 2
  %idxprom223 = sext i32 %mul222 to i64
  %115 = load i8*, i8** %pixels, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %115, i64 %idxprom223
  %116 = load i8, i8* %arrayidx224, align 1
  %117 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %117 to i64
  %118 = load i8*, i8** %data, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %118, i64 %idxprom225
  store i8 %116, i8* %arrayidx226, align 1
  br label %if.end.231

if.else.227:                                      ; preds = %for.body.213
  %119 = load i32, i32* %num_colors, align 4
  %conv228 = trunc i32 %119 to i8
  %120 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %120 to i64
  %121 = load i8*, i8** %data, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %121, i64 %idxprom229
  store i8 %conv228, i8* %arrayidx230, align 1
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.227, %if.then.221
  br label %for.inc.232

for.inc.232:                                      ; preds = %if.end.231
  %122 = load i32, i32* %i, align 4
  %inc233 = add nsw i32 %122, 1
  store i32 %inc233, i32* %i, align 4
  br label %for.cond.210

for.end.234:                                      ; preds = %for.cond.210
  br label %if.end.239

if.else.235:                                      ; preds = %if.else.206
  %123 = load i8*, i8** %data, align 8
  %124 = load i8*, i8** %pixels, align 8
  %125 = load i32, i32* %width, align 4
  %126 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp236 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %126, i32 0, i32 3
  %127 = load i32, i32* %bpp236, align 4
  %mul237 = mul i32 %125, %127
  %conv238 = zext i32 %mul237 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 %conv238, i32 1, i1 false)
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.235, %for.end.234
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.204
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.199
  %128 = load i32, i32* getelementptr inbounds (%struct._TgaSaveVals, %struct._TgaSaveVals* @tsvals, i32 0, i32 0), align 4
  %tobool242 = icmp ne i32 %128, 0
  br i1 %tobool242, label %if.then.243, label %if.else.244

if.then.243:                                      ; preds = %if.end.241
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %130 = load i8*, i8** %data, align 8
  %131 = load i32, i32* %width, align 4
  %132 = load i32, i32* %out_bpp, align 4
  call void @rle_write(%struct._IO_FILE* %129, i8* %130, i32 %131, i32 %132)
  br label %if.end.248

if.else.244:                                      ; preds = %if.end.241
  %133 = load i8*, i8** %data, align 8
  %134 = load i32, i32* %width, align 4
  %135 = load i32, i32* %out_bpp, align 4
  %mul245 = mul nsw i32 %134, %135
  %conv246 = sext i32 %mul245 to i64
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call247 = call i64 @fwrite(i8* %133, i64 %conv246, i64 1, %struct._IO_FILE* %136)
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.244, %if.then.243
  %137 = load i32, i32* %row, align 4
  %rem249 = srem i32 %137, 16
  %cmp250 = icmp eq i32 %rem249, 0
  br i1 %cmp250, label %if.then.252, label %if.end.257

if.then.252:                                      ; preds = %if.end.248
  %138 = load i32, i32* %row, align 4
  %conv253 = sitofp i32 %138 to double
  %139 = load i32, i32* %height, align 4
  %conv254 = sitofp i32 %139 to double
  %div255 = fdiv double %conv253, %conv254
  %call256 = call i32 @gimp_progress_update(double %div255)
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.252, %if.end.248
  br label %for.inc.258

for.inc.258:                                      ; preds = %if.end.257
  %140 = load i32, i32* %row, align 4
  %inc259 = add nsw i32 %140, 1
  store i32 %inc259, i32* %row, align 4
  br label %for.cond.188

for.end.260:                                      ; preds = %for.cond.188
  %call261 = call i32 @gimp_progress_update(double 1.000000e+00)
  %141 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %141)
  %142 = load i8*, i8** %data, align 8
  call void @g_free(i8* %142)
  %143 = load i8*, i8** %pixels, align 8
  call void @g_free(i8* %143)
  %144 = bitcast [26 x i8]* %footer to i8*
  call void @llvm.memset.p0i8.i64(i8* %144, i8 0, i64 8, i32 16, i1 false)
  %arraydecay262 = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay262, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @magic, i32 0, i32 0), i64 18, i32 1, i1 false)
  %arraydecay263 = getelementptr inbounds [26 x i8], [26 x i8]* %footer, i32 0, i32 0
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call264 = call i64 @fwrite(i8* %arraydecay263, i64 26, i64 1, %struct._IO_FILE* %145)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call265 = call i32 @fclose(%struct._IO_FILE* %146)
  %147 = load i32, i32* %status, align 4
  store i32 %147, i32* %retval
  br label %return

return:                                           ; preds = %for.end.260, %if.then
  %148 = load i32, i32* %retval
  ret i32 %148
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

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

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

; Function Attrs: nounwind uwtable
define internal i32 @ReadImage(%struct._IO_FILE* %fp, %struct.tga_info_struct* %info, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %info.addr = alloca %struct.tga_info_struct*, align 8
  %filename.addr = alloca i8*, align 8
  %layer_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %data = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %row = alloca i8*, align 8
  %dtype = alloca i32, align 4
  %itype = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %max_tileheight = alloca i32, align 4
  %tileheight = alloca i32, align 4
  %cmap_bytes = alloca i32, align 4
  %tga_cmap = alloca i8*, align 8
  %gimp_cmap = alloca i8*, align 8
  %convert_cmap = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.tga_info_struct* %info, %struct.tga_info_struct** %info.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %dtype, align 4
  store i32 0, i32* %itype, align 4
  store i32 0, i32* %cmap_bytes, align 4
  store i8* null, i8** %tga_cmap, align 8
  store i8* null, i8** %gimp_cmap, align 8
  store i8* null, i8** %convert_cmap, align 8
  %0 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %imageType = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %0, i32 0, i32 2
  %1 = load i8, i8* %imageType, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.42
    i32 2, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %2, i32 0, i32 6
  %3 = load i8, i8* %colorMapSize, align 1
  %conv1 = zext i8 %3 to i32
  %add = add nsw i32 %conv1, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %cmap_bytes, align 4
  %4 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %4, i32 0, i32 5
  %5 = load i16, i16* %colorMapLength, align 2
  %conv2 = zext i16 %5 to i32
  %6 = load i32, i32* %cmap_bytes, align 4
  %mul = mul i32 %conv2, %6
  %conv3 = zext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv3, i64 1)
  store i8* %call, i8** %tga_cmap, align 8
  %7 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize4 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %7, i32 0, i32 6
  %8 = load i8, i8* %colorMapSize4, align 1
  %conv5 = zext i8 %8 to i32
  %cmp = icmp sgt i32 %conv5, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %itype, align 4
  store i32 1, i32* %dtype, align 4
  %9 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength7 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %9, i32 0, i32 5
  %10 = load i16, i16* %colorMapLength7, align 2
  %conv8 = zext i16 %10 to i32
  %mul9 = mul nsw i32 %conv8, 4
  %conv10 = sext i32 %mul9 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 1)
  store i8* %call11, i8** %convert_cmap, align 8
  br label %if.end.41

if.else:                                          ; preds = %sw.bb
  %11 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapIndex = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %11, i32 0, i32 4
  %12 = load i16, i16* %colorMapIndex, align 2
  %conv12 = zext i16 %12 to i32
  %13 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength13 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %13, i32 0, i32 5
  %14 = load i16, i16* %colorMapLength13, align 2
  %conv14 = zext i16 %14 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %cmp16 = icmp sgt i32 %add15, 256
  br i1 %cmp16, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %if.else
  store i32 0, i32* %itype, align 4
  store i32 0, i32* %dtype, align 4
  %15 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength19 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %15, i32 0, i32 5
  %16 = load i16, i16* %colorMapLength19, align 2
  %conv20 = zext i16 %16 to i32
  %mul21 = mul nsw i32 %conv20, 3
  %conv22 = sext i32 %mul21 to i64
  %call23 = call noalias i8* @g_malloc_n(i64 %conv22, i64 1)
  store i8* %call23, i8** %convert_cmap, align 8
  br label %if.end.40

if.else.24:                                       ; preds = %if.else
  %17 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %17, i32 0, i32 13
  %18 = load i8, i8* %alphaBits, align 1
  %conv25 = zext i8 %18 to i32
  %cmp26 = icmp sgt i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.else.34

if.then.28:                                       ; preds = %if.else.24
  store i32 0, i32* %itype, align 4
  store i32 1, i32* %dtype, align 4
  %19 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength29 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %19, i32 0, i32 5
  %20 = load i16, i16* %colorMapLength29, align 2
  %conv30 = zext i16 %20 to i32
  %mul31 = mul nsw i32 %conv30, 4
  %conv32 = sext i32 %mul31 to i64
  %call33 = call noalias i8* @g_malloc_n(i64 %conv32, i64 1)
  store i8* %call33, i8** %convert_cmap, align 8
  br label %if.end

if.else.34:                                       ; preds = %if.else.24
  store i32 2, i32* %itype, align 4
  store i32 4, i32* %dtype, align 4
  %21 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength35 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %21, i32 0, i32 5
  %22 = load i16, i16* %colorMapLength35, align 2
  %conv36 = zext i16 %22 to i32
  %mul37 = mul nsw i32 %conv36, 3
  %conv38 = sext i32 %mul37 to i64
  %call39 = call noalias i8* @g_malloc_n(i64 %conv38, i64 1)
  store i8* %call39, i8** %gimp_cmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.34, %if.then.28
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then.18
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  store i32 1, i32* %itype, align 4
  %23 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits43 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %23, i32 0, i32 13
  %24 = load i8, i8* %alphaBits43, align 1
  %tobool = icmp ne i8 %24, 0
  br i1 %tobool, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %sw.bb.42
  store i32 3, i32* %dtype, align 4
  br label %if.end.46

if.else.45:                                       ; preds = %sw.bb.42
  store i32 2, i32* %dtype, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.44
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  store i32 0, i32* %itype, align 4
  %25 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits48 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %25, i32 0, i32 13
  %26 = load i8, i8* %alphaBits48, align 1
  %tobool49 = icmp ne i8 %26, 0
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %sw.bb.47
  store i32 1, i32* %dtype, align 4
  br label %if.end.52

if.else.51:                                       ; preds = %sw.bb.47
  store i32 0, i32* %dtype, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.52, %if.end.46, %if.end.41
  %27 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %imageType53 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %27, i32 0, i32 2
  %28 = load i8, i8* %imageType53, align 1
  %conv54 = zext i8 %28 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %if.then.57, label %if.end.137

if.then.57:                                       ; preds = %sw.epilog
  %29 = load i32, i32* %cmap_bytes, align 4
  %cmp58 = icmp ule i32 %29, 4
  br i1 %cmp58, label %land.lhs.true, label %if.else.134

land.lhs.true:                                    ; preds = %if.then.57
  %30 = load i8*, i8** %tga_cmap, align 8
  %31 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength60 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %31, i32 0, i32 5
  %32 = load i16, i16* %colorMapLength60, align 2
  %conv61 = zext i16 %32 to i32
  %33 = load i32, i32* %cmap_bytes, align 4
  %mul62 = mul i32 %conv61, %33
  %conv63 = zext i32 %mul62 to i64
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call64 = call i64 @fread(i8* %30, i64 %conv63, i64 1, %struct._IO_FILE* %34)
  %cmp65 = icmp eq i64 %call64, 1
  br i1 %cmp65, label %if.then.67, label %if.else.134

if.then.67:                                       ; preds = %land.lhs.true
  %35 = load i8*, i8** %convert_cmap, align 8
  %tobool68 = icmp ne i8* %35, null
  br i1 %tobool68, label %if.then.69, label %if.else.105

if.then.69:                                       ; preds = %if.then.67
  %36 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize70 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %36, i32 0, i32 6
  %37 = load i8, i8* %colorMapSize70, align 1
  %conv71 = zext i8 %37 to i32
  %cmp72 = icmp eq i32 %conv71, 32
  br i1 %cmp72, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.then.69
  %38 = load i8*, i8** %convert_cmap, align 8
  %39 = load i8*, i8** %tga_cmap, align 8
  %40 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength75 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %40, i32 0, i32 5
  %41 = load i16, i16* %colorMapLength75, align 2
  %conv76 = zext i16 %41 to i32
  %42 = load i32, i32* %cmap_bytes, align 4
  call void @bgr2rgb(i8* %38, i8* %39, i32 %conv76, i32 %42, i32 1)
  br label %if.end.104

if.else.77:                                       ; preds = %if.then.69
  %43 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize78 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %43, i32 0, i32 6
  %44 = load i8, i8* %colorMapSize78, align 1
  %conv79 = zext i8 %44 to i32
  %cmp80 = icmp eq i32 %conv79, 24
  br i1 %cmp80, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %if.else.77
  %45 = load i8*, i8** %convert_cmap, align 8
  %46 = load i8*, i8** %tga_cmap, align 8
  %47 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength83 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %47, i32 0, i32 5
  %48 = load i16, i16* %colorMapLength83, align 2
  %conv84 = zext i16 %48 to i32
  %49 = load i32, i32* %cmap_bytes, align 4
  call void @bgr2rgb(i8* %45, i8* %46, i32 %conv84, i32 %49, i32 0)
  br label %if.end.103

if.else.85:                                       ; preds = %if.else.77
  %50 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize86 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %50, i32 0, i32 6
  %51 = load i8, i8* %colorMapSize86, align 1
  %conv87 = zext i8 %51 to i32
  %cmp88 = icmp eq i32 %conv87, 16
  br i1 %cmp88, label %if.then.94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.85
  %52 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize90 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %52, i32 0, i32 6
  %53 = load i8, i8* %colorMapSize90, align 1
  %conv91 = zext i8 %53 to i32
  %cmp92 = icmp eq i32 %conv91, 15
  br i1 %cmp92, label %if.then.94, label %if.else.99

if.then.94:                                       ; preds = %lor.lhs.false, %if.else.85
  %54 = load i8*, i8** %convert_cmap, align 8
  %55 = load i8*, i8** %tga_cmap, align 8
  %56 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength95 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %56, i32 0, i32 5
  %57 = load i16, i16* %colorMapLength95, align 2
  %conv96 = zext i16 %57 to i32
  %58 = load i32, i32* %cmap_bytes, align 4
  %59 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits97 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %59, i32 0, i32 13
  %60 = load i8, i8* %alphaBits97, align 1
  %conv98 = zext i8 %60 to i32
  call void @upsample(i8* %54, i8* %55, i32 %conv96, i32 %58, i32 %conv98)
  br label %if.end.102

if.else.99:                                       ; preds = %lor.lhs.false
  %61 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize100 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %61, i32 0, i32 6
  %62 = load i8, i8* %colorMapSize100, align 1
  %conv101 = zext i8 %62 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i32 %conv101)
  store i32 -1, i32* %retval
  br label %return

if.end.102:                                       ; preds = %if.then.94
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.82
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.74
  br label %if.end.133

if.else.105:                                      ; preds = %if.then.67
  %63 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize106 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %63, i32 0, i32 6
  %64 = load i8, i8* %colorMapSize106, align 1
  %conv107 = zext i8 %64 to i32
  %cmp108 = icmp eq i32 %conv107, 24
  br i1 %cmp108, label %if.then.110, label %if.else.113

if.then.110:                                      ; preds = %if.else.105
  %65 = load i8*, i8** %gimp_cmap, align 8
  %66 = load i8*, i8** %tga_cmap, align 8
  %67 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength111 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %67, i32 0, i32 5
  %68 = load i16, i16* %colorMapLength111, align 2
  %conv112 = zext i16 %68 to i32
  %69 = load i32, i32* %cmap_bytes, align 4
  call void @bgr2rgb(i8* %65, i8* %66, i32 %conv112, i32 %69, i32 0)
  br label %if.end.132

if.else.113:                                      ; preds = %if.else.105
  %70 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize114 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %70, i32 0, i32 6
  %71 = load i8, i8* %colorMapSize114, align 1
  %conv115 = zext i8 %71 to i32
  %cmp116 = icmp eq i32 %conv115, 16
  br i1 %cmp116, label %if.then.123, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.else.113
  %72 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize119 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %72, i32 0, i32 6
  %73 = load i8, i8* %colorMapSize119, align 1
  %conv120 = zext i8 %73 to i32
  %cmp121 = icmp eq i32 %conv120, 15
  br i1 %cmp121, label %if.then.123, label %if.else.128

if.then.123:                                      ; preds = %lor.lhs.false.118, %if.else.113
  %74 = load i8*, i8** %gimp_cmap, align 8
  %75 = load i8*, i8** %tga_cmap, align 8
  %76 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength124 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %76, i32 0, i32 5
  %77 = load i16, i16* %colorMapLength124, align 2
  %conv125 = zext i16 %77 to i32
  %78 = load i32, i32* %cmap_bytes, align 4
  %79 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits126 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %79, i32 0, i32 13
  %80 = load i8, i8* %alphaBits126, align 1
  %conv127 = zext i8 %80 to i32
  call void @upsample(i8* %74, i8* %75, i32 %conv125, i32 %78, i32 %conv127)
  br label %if.end.131

if.else.128:                                      ; preds = %lor.lhs.false.118
  %81 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapSize129 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %81, i32 0, i32 6
  %82 = load i8, i8* %colorMapSize129, align 1
  %conv130 = zext i8 %82 to i32
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i32 %conv130)
  store i32 -1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.then.123
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.110
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.104
  br label %if.end.136

if.else.134:                                      ; preds = %land.lhs.true, %if.then.57
  %83 = load i8*, i8** %filename.addr, align 8
  %call135 = call i8* @gimp_filename_to_utf8(i8* %83)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i8* %call135)
  store i32 -1, i32* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.133
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %sw.epilog
  %84 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %84, i32 0, i32 9
  %85 = load i16, i16* %width, align 2
  %conv138 = zext i16 %85 to i32
  %86 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %86, i32 0, i32 10
  %87 = load i16, i16* %height, align 2
  %conv139 = zext i16 %87 to i32
  %88 = load i32, i32* %itype, align 4
  %call140 = call i32 @gimp_image_new(i32 %conv138, i32 %conv139, i32 %88)
  store i32 %call140, i32* @ReadImage.image_ID, align 4
  %89 = load i32, i32* @ReadImage.image_ID, align 4
  %90 = load i8*, i8** %filename.addr, align 8
  %call141 = call i32 @gimp_image_set_filename(i32 %89, i8* %90)
  %91 = load i8*, i8** %gimp_cmap, align 8
  %tobool142 = icmp ne i8* %91, null
  br i1 %tobool142, label %if.then.143, label %if.end.147

if.then.143:                                      ; preds = %if.end.137
  %92 = load i32, i32* @ReadImage.image_ID, align 4
  %93 = load i8*, i8** %gimp_cmap, align 8
  %94 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapLength144 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %94, i32 0, i32 5
  %95 = load i16, i16* %colorMapLength144, align 2
  %conv145 = zext i16 %95 to i32
  %call146 = call i32 @gimp_image_set_colormap(i32 %92, i8* %93, i32 %conv145)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.143, %if.end.137
  %96 = load i32, i32* @ReadImage.image_ID, align 4
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0)) #5
  %97 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width149 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %97, i32 0, i32 9
  %98 = load i16, i16* %width149, align 2
  %conv150 = zext i16 %98 to i32
  %99 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height151 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %99, i32 0, i32 10
  %100 = load i16, i16* %height151, align 2
  %conv152 = zext i16 %100 to i32
  %101 = load i32, i32* %dtype, align 4
  %call153 = call i32 @gimp_layer_new(i32 %96, i8* %call148, i32 %conv150, i32 %conv152, i32 %101, double 1.000000e+02, i32 0)
  store i32 %call153, i32* %layer_ID, align 4
  %102 = load i32, i32* @ReadImage.image_ID, align 4
  %103 = load i32, i32* %layer_ID, align 4
  %call154 = call i32 @gimp_image_insert_layer(i32 %102, i32 %103, i32 -1, i32 0)
  %104 = load i32, i32* %layer_ID, align 4
  %call155 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %104)
  store %struct._GimpDrawable* %call155, %struct._GimpDrawable** %drawable, align 8
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %106 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width156 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %106, i32 0, i32 9
  %107 = load i16, i16* %width156, align 2
  %conv157 = zext i16 %107 to i32
  %108 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height158 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %108, i32 0, i32 10
  %109 = load i16, i16* %height158, align 2
  %conv159 = zext i16 %109 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %105, i32 0, i32 0, i32 %conv157, i32 %conv159, i32 1, i32 0)
  %call160 = call i32 @gimp_tile_height() #7
  store i32 %call160, i32* %max_tileheight, align 4
  %110 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width161 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %110, i32 0, i32 9
  %111 = load i16, i16* %width161, align 2
  %conv162 = zext i16 %111 to i32
  %112 = load i32, i32* %max_tileheight, align 4
  %mul163 = mul nsw i32 %conv162, %112
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %113, i32 0, i32 3
  %114 = load i32, i32* %bpp, align 4
  %mul164 = mul i32 %mul163, %114
  %conv165 = zext i32 %mul164 to i64
  %call166 = call noalias i8* @g_malloc_n(i64 %conv165, i64 1)
  store i8* %call166, i8** %data, align 8
  %115 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width167 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %115, i32 0, i32 9
  %116 = load i16, i16* %width167, align 2
  %conv168 = zext i16 %116 to i32
  %117 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %117, i32 0, i32 12
  %118 = load i8, i8* %bytes, align 1
  %conv169 = zext i8 %118 to i32
  %mul170 = mul nsw i32 %conv168, %conv169
  %conv171 = sext i32 %mul170 to i64
  %call172 = call noalias i8* @g_malloc_n(i64 %conv171, i64 1)
  store i8* %call172, i8** %buffer, align 8
  %119 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %flipVert = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %119, i32 0, i32 15
  %120 = load i8, i8* %flipVert, align 1
  %tobool173 = icmp ne i8 %120, 0
  br i1 %tobool173, label %if.then.174, label %if.else.210

if.then.174:                                      ; preds = %if.end.147
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.207, %if.then.174
  %121 = load i32, i32* %i, align 4
  %122 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height175 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %122, i32 0, i32 10
  %123 = load i16, i16* %height175, align 2
  %conv176 = zext i16 %123 to i32
  %cmp177 = icmp slt i32 %121, %conv176
  br i1 %cmp177, label %for.body, label %for.end.209

for.body:                                         ; preds = %for.cond
  %124 = load i32, i32* %i, align 4
  %tobool179 = icmp ne i32 %124, 0
  br i1 %tobool179, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %125 = load i32, i32* %max_tileheight, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %126 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height180 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %126, i32 0, i32 10
  %127 = load i16, i16* %height180, align 2
  %conv181 = zext i16 %127 to i32
  %128 = load i32, i32* %max_tileheight, align 4
  %rem = srem i32 %conv181, %128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %125, %cond.true ], [ %rem, %cond.false ]
  store i32 %cond, i32* %tileheight, align 4
  %129 = load i32, i32* %tileheight, align 4
  %cmp182 = icmp eq i32 %129, 0
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %cond.end
  %130 = load i32, i32* %max_tileheight, align 4
  store i32 %130, i32* %tileheight, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %cond.end
  store i32 1, i32* %y, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc, %if.end.185
  %131 = load i32, i32* %y, align 4
  %132 = load i32, i32* %tileheight, align 4
  %cmp187 = icmp sle i32 %131, %132
  br i1 %cmp187, label %for.body.189, label %for.end

for.body.189:                                     ; preds = %for.cond.186
  %133 = load i8*, i8** %data, align 8
  %134 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width190 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %134, i32 0, i32 9
  %135 = load i16, i16* %width190, align 2
  %conv191 = zext i16 %135 to i32
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp192 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %136, i32 0, i32 3
  %137 = load i32, i32* %bpp192, align 4
  %mul193 = mul i32 %conv191, %137
  %138 = load i32, i32* %tileheight, align 4
  %139 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %138, %139
  %mul194 = mul i32 %mul193, %sub
  %idx.ext = zext i32 %mul194 to i64
  %add.ptr = getelementptr inbounds i8, i8* %133, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %141 = load i8*, i8** %row, align 8
  %142 = load i8*, i8** %buffer, align 8
  %143 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %144 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %145 = load i8*, i8** %convert_cmap, align 8
  call void @read_line(%struct._IO_FILE* %140, i8* %141, i8* %142, %struct.tga_info_struct* %143, %struct._GimpDrawable* %144, i8* %145)
  br label %for.inc

for.inc:                                          ; preds = %for.body.189
  %146 = load i32, i32* %y, align 4
  %inc = add nsw i32 %146, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.186

for.end:                                          ; preds = %for.cond.186
  %147 = load i32, i32* %i, align 4
  %148 = load i32, i32* %tileheight, align 4
  %add195 = add nsw i32 %147, %148
  %conv196 = sitofp i32 %add195 to double
  %149 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height197 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %149, i32 0, i32 10
  %150 = load i16, i16* %height197, align 2
  %conv198 = uitofp i16 %150 to double
  %div199 = fdiv double %conv196, %conv198
  %call200 = call i32 @gimp_progress_update(double %div199)
  %151 = load i8*, i8** %data, align 8
  %152 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height201 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %152, i32 0, i32 10
  %153 = load i16, i16* %height201, align 2
  %conv202 = zext i16 %153 to i32
  %154 = load i32, i32* %i, align 4
  %sub203 = sub nsw i32 %conv202, %154
  %155 = load i32, i32* %tileheight, align 4
  %sub204 = sub nsw i32 %sub203, %155
  %156 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width205 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %156, i32 0, i32 9
  %157 = load i16, i16* %width205, align 2
  %conv206 = zext i16 %157 to i32
  %158 = load i32, i32* %tileheight, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %151, i32 0, i32 %sub204, i32 %conv206, i32 %158)
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.end
  %159 = load i32, i32* %tileheight, align 4
  %160 = load i32, i32* %i, align 4
  %add208 = add nsw i32 %160, %159
  store i32 %add208, i32* %i, align 4
  br label %for.cond

for.end.209:                                      ; preds = %for.cond
  br label %if.end.254

if.else.210:                                      ; preds = %if.end.147
  store i32 0, i32* %i, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.251, %if.else.210
  %161 = load i32, i32* %i, align 4
  %162 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height212 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %162, i32 0, i32 10
  %163 = load i16, i16* %height212, align 2
  %conv213 = zext i16 %163 to i32
  %cmp214 = icmp slt i32 %161, %conv213
  br i1 %cmp214, label %for.body.216, label %for.end.253

for.body.216:                                     ; preds = %for.cond.211
  %164 = load i32, i32* %max_tileheight, align 4
  %165 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height217 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %165, i32 0, i32 10
  %166 = load i16, i16* %height217, align 2
  %conv218 = zext i16 %166 to i32
  %167 = load i32, i32* %i, align 4
  %sub219 = sub nsw i32 %conv218, %167
  %cmp220 = icmp slt i32 %164, %sub219
  br i1 %cmp220, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %for.body.216
  %168 = load i32, i32* %max_tileheight, align 4
  br label %cond.end.227

cond.false.223:                                   ; preds = %for.body.216
  %169 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height224 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %169, i32 0, i32 10
  %170 = load i16, i16* %height224, align 2
  %conv225 = zext i16 %170 to i32
  %171 = load i32, i32* %i, align 4
  %sub226 = sub nsw i32 %conv225, %171
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.223, %cond.true.222
  %cond228 = phi i32 [ %168, %cond.true.222 ], [ %sub226, %cond.false.223 ]
  store i32 %cond228, i32* %tileheight, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.240, %cond.end.227
  %172 = load i32, i32* %y, align 4
  %173 = load i32, i32* %tileheight, align 4
  %cmp230 = icmp slt i32 %172, %173
  br i1 %cmp230, label %for.body.232, label %for.end.242

for.body.232:                                     ; preds = %for.cond.229
  %174 = load i8*, i8** %data, align 8
  %175 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width233 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %175, i32 0, i32 9
  %176 = load i16, i16* %width233, align 2
  %conv234 = zext i16 %176 to i32
  %177 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp235 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %177, i32 0, i32 3
  %178 = load i32, i32* %bpp235, align 4
  %mul236 = mul i32 %conv234, %178
  %179 = load i32, i32* %y, align 4
  %mul237 = mul i32 %mul236, %179
  %idx.ext238 = zext i32 %mul237 to i64
  %add.ptr239 = getelementptr inbounds i8, i8* %174, i64 %idx.ext238
  store i8* %add.ptr239, i8** %row, align 8
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %181 = load i8*, i8** %row, align 8
  %182 = load i8*, i8** %buffer, align 8
  %183 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %184 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %185 = load i8*, i8** %convert_cmap, align 8
  call void @read_line(%struct._IO_FILE* %180, i8* %181, i8* %182, %struct.tga_info_struct* %183, %struct._GimpDrawable* %184, i8* %185)
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.body.232
  %186 = load i32, i32* %y, align 4
  %inc241 = add nsw i32 %186, 1
  store i32 %inc241, i32* %y, align 4
  br label %for.cond.229

for.end.242:                                      ; preds = %for.cond.229
  %187 = load i32, i32* %i, align 4
  %188 = load i32, i32* %tileheight, align 4
  %add243 = add nsw i32 %187, %188
  %conv244 = sitofp i32 %add243 to double
  %189 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %height245 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %189, i32 0, i32 10
  %190 = load i16, i16* %height245, align 2
  %conv246 = uitofp i16 %190 to double
  %div247 = fdiv double %conv244, %conv246
  %call248 = call i32 @gimp_progress_update(double %div247)
  %191 = load i8*, i8** %data, align 8
  %192 = load i32, i32* %i, align 4
  %193 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width249 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %193, i32 0, i32 9
  %194 = load i16, i16* %width249, align 2
  %conv250 = zext i16 %194 to i32
  %195 = load i32, i32* %tileheight, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %191, i32 0, i32 %192, i32 %conv250, i32 %195)
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.end.242
  %196 = load i32, i32* %max_tileheight, align 4
  %197 = load i32, i32* %i, align 4
  %add252 = add nsw i32 %197, %196
  store i32 %add252, i32* %i, align 4
  br label %for.cond.211

for.end.253:                                      ; preds = %for.cond.211
  br label %if.end.254

if.end.254:                                       ; preds = %for.end.253, %for.end.209
  %call255 = call i32 @gimp_progress_update(double 1.000000e+00)
  %198 = load i8*, i8** %data, align 8
  call void @g_free(i8* %198)
  %199 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %199)
  %200 = load i8*, i8** %convert_cmap, align 8
  call void @g_free(i8* %200)
  %201 = load i8*, i8** %gimp_cmap, align 8
  call void @g_free(i8* %201)
  %202 = load i8*, i8** %tga_cmap, align 8
  call void @g_free(i8* %202)
  %203 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %203)
  %204 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %204)
  %205 = load i32, i32* @ReadImage.image_ID, align 4
  store i32 %205, i32* %retval
  br label %return

return:                                           ; preds = %if.end.254, %if.else.134, %if.else.128, %if.else.99
  %206 = load i32, i32* %retval
  ret i32 %206
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @bgr2rgb(i8* %dest, i8* %src, i32 %width, i32 %bytes, i32 %alpha) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %alpha.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 2
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %4, i8* %5, align 1
  %6 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1
  %8 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr2, i8** %dest.addr, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx3, align 1
  %11 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr4, i8** %dest.addr, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx5, align 1
  %14 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr6, i8** %dest.addr, align 8
  store i8 %13, i8* %14, align 1
  %15 = load i32, i32* %bytes.addr, align 4
  %16 = load i8*, i8** %src.addr, align 8
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %x, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.18, %if.else
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %width.addr, align 4
  %cmp8 = icmp ult i32 %18, %19
  br i1 %cmp8, label %for.body.9, label %for.end.20

for.body.9:                                       ; preds = %for.cond.7
  %20 = load i8*, i8** %src.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 2
  %21 = load i8, i8* %arrayidx10, align 1
  %22 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr11, i8** %dest.addr, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i8*, i8** %src.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx12, align 1
  %25 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr13, i8** %dest.addr, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** %src.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx14, align 1
  %28 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr15, i8** %dest.addr, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i32, i32* %bytes.addr, align 4
  %30 = load i8*, i8** %src.addr, align 8
  %idx.ext16 = zext i32 %29 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %30, i64 %idx.ext16
  store i8* %add.ptr17, i8** %src.addr, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.9
  %31 = load i32, i32* %x, align 4
  %inc19 = add i32 %31, 1
  store i32 %inc19, i32* %x, align 4
  br label %for.cond.7

for.end.20:                                       ; preds = %for.cond.7
  br label %if.end

if.end:                                           ; preds = %for.end.20, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @upsample(i8* %dest, i8* %src, i32 %width, i32 %bytes, i32 %alpha) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 1
  %and = and i32 %shl, 248
  %conv1 = trunc i32 %and to i8
  %4 = load i8*, i8** %dest.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 %conv1, i8* %arrayidx2, align 1
  %5 = load i8*, i8** %dest.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shr = ashr i32 %conv4, 5
  %7 = load i8*, i8** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %add = add nsw i32 %conv6, %shr
  %conv7 = trunc i32 %add to i8
  store i8 %conv7, i8* %arrayidx5, align 1
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %and10 = and i32 %conv9, 224
  %shr11 = ashr i32 %and10, 2
  %11 = load i8*, i8** %src.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %and14 = and i32 %conv13, 3
  %shl15 = shl i32 %and14, 6
  %add16 = add nsw i32 %shr11, %shl15
  %conv17 = trunc i32 %add16 to i8
  %13 = load i8*, i8** %dest.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %conv17, i8* %arrayidx18, align 1
  %14 = load i8*, i8** %dest.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %shr21 = ashr i32 %conv20, 5
  %16 = load i8*, i8** %dest.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %add24 = add nsw i32 %conv23, %shr21
  %conv25 = trunc i32 %add24 to i8
  store i8 %conv25, i8* %arrayidx22, align 1
  %18 = load i8*, i8** %src.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %19 to i32
  %shl28 = shl i32 %conv27, 3
  %and29 = and i32 %shl28, 248
  %conv30 = trunc i32 %and29 to i8
  %20 = load i8*, i8** %dest.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 %conv30, i8* %arrayidx31, align 1
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %22 to i32
  %shr34 = ashr i32 %conv33, 5
  %23 = load i8*, i8** %dest.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %add37 = add nsw i32 %conv36, %shr34
  %conv38 = trunc i32 %add37 to i8
  store i8 %conv38, i8* %arrayidx35, align 1
  %25 = load i32, i32* %alpha.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %26 = load i8*, i8** %src.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %27 to i32
  %and41 = and i32 %conv40, 128
  %tobool42 = icmp ne i32 %and41, 0
  %cond = select i1 %tobool42, i32 255, i32 0
  %conv43 = trunc i32 %cond to i8
  %28 = load i8*, i8** %dest.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %28, i64 3
  store i8 %conv43, i8* %arrayidx44, align 1
  %29 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %30 = load i8*, i8** %dest.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %add.ptr45, i8** %dest.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load i32, i32* %bytes.addr, align 4
  %32 = load i8*, i8** %src.addr, align 8
  %idx.ext = zext i32 %31 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr46, i8** %src.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %x, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

; Function Attrs: nounwind uwtable
define internal void @read_line(%struct._IO_FILE* %fp, i8* %row, i8* %buffer, %struct.tga_info_struct* %info, %struct._GimpDrawable* %drawable, i8* %convert_cmap) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %row.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %info.addr = alloca %struct.tga_info_struct*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %convert_cmap.addr = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %row, i8** %row.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store %struct.tga_info_struct* %info, %struct.tga_info_struct** %info.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %convert_cmap, i8** %convert_cmap.addr, align 8
  %0 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %imageCompression = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %0, i32 0, i32 3
  %1 = load i8, i8* %imageCompression, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %call = call i32 @rle_read(%struct._IO_FILE* %2, i8* %3, %struct.tga_info_struct* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %buffer.addr, align 8
  %6 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %6, i32 0, i32 12
  %7 = load i8, i8* %bytes, align 1
  %conv2 = zext i8 %7 to i64
  %8 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %8, i32 0, i32 9
  %9 = load i16, i16* %width, align 2
  %conv3 = zext i16 %9 to i64
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i64 @fread(i8* %5, i64 %conv2, i64 %conv3, %struct._IO_FILE* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %flipHoriz = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %11, i32 0, i32 14
  %12 = load i8, i8* %flipHoriz, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %13 = load i8*, i8** %buffer.addr, align 8
  %14 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  call void @flip_line(i8* %13, %struct.tga_info_struct* %14)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %imageType = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %15, i32 0, i32 2
  %16 = load i8, i8* %imageType, align 1
  %conv7 = zext i8 %16 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then.10, label %if.else.32

if.then.10:                                       ; preds = %if.end.6
  %17 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bpp = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %17, i32 0, i32 11
  %18 = load i8, i8* %bpp, align 1
  %conv11 = zext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 16
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %19 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bpp14 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %19, i32 0, i32 11
  %20 = load i8, i8* %bpp14, align 1
  %conv15 = zext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 15
  br i1 %cmp16, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %lor.lhs.false, %if.then.10
  %21 = load i8*, i8** %row.addr, align 8
  %22 = load i8*, i8** %buffer.addr, align 8
  %23 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width19 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %23, i32 0, i32 9
  %24 = load i16, i16* %width19, align 2
  %conv20 = zext i16 %24 to i32
  %25 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes21 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %25, i32 0, i32 12
  %26 = load i8, i8* %bytes21, align 1
  %conv22 = zext i8 %26 to i32
  %27 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %27, i32 0, i32 13
  %28 = load i8, i8* %alphaBits, align 1
  %conv23 = zext i8 %28 to i32
  call void @upsample(i8* %21, i8* %22, i32 %conv20, i32 %conv22, i32 %conv23)
  br label %if.end.31

if.else.24:                                       ; preds = %lor.lhs.false
  %29 = load i8*, i8** %row.addr, align 8
  %30 = load i8*, i8** %buffer.addr, align 8
  %31 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width25 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %31, i32 0, i32 9
  %32 = load i16, i16* %width25, align 2
  %conv26 = zext i16 %32 to i32
  %33 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes27 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %33, i32 0, i32 12
  %34 = load i8, i8* %bytes27, align 1
  %conv28 = zext i8 %34 to i32
  %35 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits29 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %35, i32 0, i32 13
  %36 = load i8, i8* %alphaBits29, align 1
  %conv30 = zext i8 %36 to i32
  call void @bgr2rgb(i8* %29, i8* %30, i32 %conv26, i32 %conv28, i32 %conv30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.24, %if.then.18
  br label %if.end.63

if.else.32:                                       ; preds = %if.end.6
  %37 = load i8*, i8** %convert_cmap.addr, align 8
  %tobool33 = icmp ne i8* %37, null
  br i1 %tobool33, label %if.then.34, label %if.else.41

if.then.34:                                       ; preds = %if.else.32
  %38 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %alphaBits35 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %38, i32 0, i32 13
  %39 = load i8, i8* %alphaBits35, align 1
  %conv36 = zext i8 %39 to i32
  %cmp37 = icmp sgt i32 %conv36, 0
  %conv38 = zext i1 %cmp37 to i32
  store i32 %conv38, i32* %has_alpha, align 4
  %40 = load i8*, i8** %row.addr, align 8
  %41 = load i8*, i8** %buffer.addr, align 8
  %42 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width39 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %42, i32 0, i32 9
  %43 = load i16, i16* %width39, align 2
  %conv40 = zext i16 %43 to i32
  %44 = load i8*, i8** %convert_cmap.addr, align 8
  %45 = load i32, i32* %has_alpha, align 4
  %46 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapIndex = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %46, i32 0, i32 4
  %47 = load i16, i16* %colorMapIndex, align 2
  call void @apply_colormap(i8* %40, i8* %41, i32 %conv40, i8* %44, i32 %45, i16 zeroext %47)
  br label %if.end.62

if.else.41:                                       ; preds = %if.else.32
  %48 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %imageType42 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %48, i32 0, i32 2
  %49 = load i8, i8* %imageType42, align 1
  %conv43 = zext i8 %49 to i32
  %cmp44 = icmp eq i32 %conv43, 1
  br i1 %cmp44, label %if.then.46, label %if.else.56

if.then.46:                                       ; preds = %if.else.41
  br label %do.body

do.body:                                          ; preds = %if.then.46
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp47 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 3
  %51 = load i32, i32* %bpp47, align 4
  %cmp48 = icmp eq i32 %51, 1
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body
  br label %if.end.52

if.else.51:                                       ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 953, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.read_line, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0)) #9
  unreachable

if.end.52:                                        ; preds = %if.then.50
  br label %do.end

do.end:                                           ; preds = %if.end.52
  %52 = load i8*, i8** %row.addr, align 8
  %53 = load i8*, i8** %buffer.addr, align 8
  %54 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width53 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %54, i32 0, i32 9
  %55 = load i16, i16* %width53, align 2
  %conv54 = zext i16 %55 to i32
  %56 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %colorMapIndex55 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %56, i32 0, i32 4
  %57 = load i16, i16* %colorMapIndex55, align 2
  call void @apply_index(i8* %52, i8* %53, i32 %conv54, i16 zeroext %57)
  br label %if.end.61

if.else.56:                                       ; preds = %if.else.41
  %58 = load i8*, i8** %row.addr, align 8
  %59 = load i8*, i8** %buffer.addr, align 8
  %60 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width57 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %60, i32 0, i32 9
  %61 = load i16, i16* %width57, align 2
  %conv58 = zext i16 %61 to i32
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp59 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %62, i32 0, i32 3
  %63 = load i32, i32* %bpp59, align 4
  %mul = mul i32 %conv58, %63
  %conv60 = zext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 %conv60, i32 1, i1 false)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.56, %do.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.34
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.31
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @rle_read(%struct._IO_FILE* %fp, i8* %buffer, %struct.tga_info_struct* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %info.addr = alloca %struct.tga_info_struct*, align 8
  %head = alloca i32, align 4
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store %struct.tga_info_struct* %info, %struct.tga_info_struct** %info.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %1, i32 0, i32 9
  %2 = load i16, i16* %width, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @rle_read.repeat, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* @rle_read.direct, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then, label %if.end.20

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call, i32* %head, align 4
  %6 = load i32, i32* %head, align 4
  %cmp6 = icmp eq i32 %6, -1
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %head, align 4
  %cmp9 = icmp sge i32 %7, 128
  br i1 %cmp9, label %if.then.11, label %if.else.17

if.then.11:                                       ; preds = %if.else
  %8 = load i32, i32* %head, align 4
  %sub = sub nsw i32 %8, 127
  store i32 %sub, i32* @rle_read.repeat, align 4
  %9 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %9, i32 0, i32 12
  %10 = load i8, i8* %bytes, align 1
  %conv12 = zext i8 %10 to i64
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i64 @fread(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rle_read.sample, i32 0, i32 0), i64 %conv12, i64 1, %struct._IO_FILE* %11)
  %cmp14 = icmp ult i64 %call13, 1
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.11
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.11
  br label %if.end.18

if.else.17:                                       ; preds = %if.else
  %12 = load i32, i32* %head, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* @rle_read.direct, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true, %for.body
  %13 = load i32, i32* @rle_read.repeat, align 4
  %cmp21 = icmp sgt i32 %13, 0
  br i1 %cmp21, label %if.then.23, label %if.else.32

if.then.23:                                       ; preds = %if.end.20
  store i32 0, i32* %k, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.then.23
  %14 = load i32, i32* %k, align 4
  %15 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes25 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %15, i32 0, i32 12
  %16 = load i8, i8* %bytes25, align 1
  %conv26 = zext i8 %16 to i32
  %cmp27 = icmp slt i32 %14, %conv26
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.24
  %17 = load i32, i32* %k, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @rle_read.sample, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %19 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %19 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %20, i64 %idxprom30
  store i8 %18, i8* %arrayidx31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %22 = load i32, i32* @rle_read.repeat, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* @rle_read.repeat, align 4
  br label %if.end.41

if.else.32:                                       ; preds = %if.end.20
  %23 = load i8*, i8** %buffer.addr, align 8
  %24 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes33 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %24, i32 0, i32 12
  %25 = load i8, i8* %bytes33, align 1
  %conv34 = zext i8 %25 to i64
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call35 = call i64 @fread(i8* %23, i64 %conv34, i64 1, %struct._IO_FILE* %26)
  %cmp36 = icmp ult i64 %call35, 1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else.32
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.else.32
  %27 = load i32, i32* @rle_read.direct, align 4
  %dec40 = add nsw i32 %27, -1
  store i32 %dec40, i32* @rle_read.direct, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.39, %for.end
  %28 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes42 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %28, i32 0, i32 12
  %29 = load i8, i8* %bytes42, align 1
  %conv43 = zext i8 %29 to i32
  %30 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %conv43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.41
  %31 = load i32, i32* %x, align 4
  %inc45 = add nsw i32 %31, 1
  store i32 %inc45, i32* %x, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.46, %if.then.38, %if.then.16, %if.then.8
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @flip_line(i8* %buffer, %struct.tga_info_struct* %info) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %info.addr = alloca %struct.tga_info_struct*, align 8
  %temp = alloca i8, align 1
  %alt = alloca i8*, align 8
  %x = alloca i32, align 4
  %s = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store %struct.tga_info_struct* %info, %struct.tga_info_struct** %info.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %1, i32 0, i32 12
  %2 = load i8, i8* %bytes, align 1
  %conv = zext i8 %2 to i32
  %3 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %3, i32 0, i32 9
  %4 = load i16, i16* %width, align 2
  %conv1 = zext i16 %4 to i32
  %sub = sub nsw i32 %conv1, 1
  %mul = mul nsw i32 %conv, %sub
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %alt, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %5 = load i32, i32* %x, align 4
  %mul2 = mul nsw i32 %5, 2
  %6 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %width3 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %6, i32 0, i32 9
  %7 = load i16, i16* %width3, align 2
  %conv4 = zext i16 %7 to i32
  %cmp = icmp slt i32 %mul2, %conv4
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %s, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %s, align 4
  %9 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes7 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %9, i32 0, i32 12
  %10 = load i8, i8* %bytes7, align 1
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp slt i32 %8, %conv8
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.6
  %11 = load i32, i32* %s, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  store i8 %13, i8* %temp, align 1
  %14 = load i32, i32* %s, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i8*, i8** %alt, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  %16 = load i8, i8* %arrayidx13, align 1
  %17 = load i32, i32* %s, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 %idxprom14
  store i8 %16, i8* %arrayidx15, align 1
  %19 = load i8, i8* %temp, align 1
  %20 = load i32, i32* %s, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load i8*, i8** %alt, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %21, i64 %idxprom16
  store i8 %19, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %22 = load i32, i32* %s, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %23 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes18 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %23, i32 0, i32 12
  %24 = load i8, i8* %bytes18, align 1
  %conv19 = zext i8 %24 to i32
  %25 = load i8*, i8** %buffer.addr, align 8
  %idx.ext20 = sext i32 %conv19 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %25, i64 %idx.ext20
  store i8* %add.ptr21, i8** %buffer.addr, align 8
  %26 = load %struct.tga_info_struct*, %struct.tga_info_struct** %info.addr, align 8
  %bytes22 = getelementptr inbounds %struct.tga_info_struct, %struct.tga_info_struct* %26, i32 0, i32 12
  %27 = load i8, i8* %bytes22, align 1
  %conv23 = zext i8 %27 to i32
  %28 = load i8*, i8** %alt, align 8
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg = sub i64 0, %idx.ext24
  %add.ptr25 = getelementptr inbounds i8, i8* %28, i64 %idx.neg
  store i8* %add.ptr25, i8** %alt, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %29 = load i32, i32* %x, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, i32* %x, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_colormap(i8* %dest, i8* %src, i32 %width, i8* %cmap, i32 %alpha, i16 zeroext %index) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %cmap.addr = alloca i8*, align 8
  %alpha.addr = alloca i32, align 4
  %index.addr = alloca i16, align 2
  %x = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i16 %index, i16* %index.addr, align 2
  %0 = load i32, i32* %alpha.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %src.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i16, i16* %index.addr, align 2
  %conv1 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv, %conv1
  %mul = mul nsw i32 %sub, 4
  %idxprom = sext i32 %mul to i64
  %6 = load i8*, i8** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i8*, i8** %src.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv2 = zext i8 %10 to i32
  %11 = load i16, i16* %index.addr, align 2
  %conv3 = zext i16 %11 to i32
  %sub4 = sub nsw i32 %conv2, %conv3
  %mul5 = mul nsw i32 %sub4, 4
  %add = add nsw i32 %mul5, 1
  %idxprom6 = sext i32 %add to i64
  %12 = load i8*, i8** %cmap.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %14 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr8, i8** %dest.addr, align 8
  store i8 %13, i8* %14, align 1
  %15 = load i8*, i8** %src.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv9 = zext i8 %16 to i32
  %17 = load i16, i16* %index.addr, align 2
  %conv10 = zext i16 %17 to i32
  %sub11 = sub nsw i32 %conv9, %conv10
  %mul12 = mul nsw i32 %sub11, 4
  %add13 = add nsw i32 %mul12, 2
  %idxprom14 = sext i32 %add13 to i64
  %18 = load i8*, i8** %cmap.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 %idxprom14
  %19 = load i8, i8* %arrayidx15, align 1
  %20 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr16, i8** %dest.addr, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i8*, i8** %src.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv17 = zext i8 %22 to i32
  %23 = load i16, i16* %index.addr, align 2
  %conv18 = zext i16 %23 to i32
  %sub19 = sub nsw i32 %conv17, %conv18
  %mul20 = mul nsw i32 %sub19, 4
  %add21 = add nsw i32 %mul20, 3
  %idxprom22 = sext i32 %add21 to i64
  %24 = load i8*, i8** %cmap.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 %idxprom22
  %25 = load i8, i8* %arrayidx23, align 1
  %26 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr24, i8** %dest.addr, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %src.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr25, i8** %src.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %x, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.54, %if.else
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %width.addr, align 4
  %cmp27 = icmp ult i32 %29, %30
  br i1 %cmp27, label %for.body.29, label %for.end.56

for.body.29:                                      ; preds = %for.cond.26
  %31 = load i8*, i8** %src.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv30 = zext i8 %32 to i32
  %33 = load i16, i16* %index.addr, align 2
  %conv31 = zext i16 %33 to i32
  %sub32 = sub nsw i32 %conv30, %conv31
  %mul33 = mul nsw i32 %sub32, 3
  %idxprom34 = sext i32 %mul33 to i64
  %34 = load i8*, i8** %cmap.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %34, i64 %idxprom34
  %35 = load i8, i8* %arrayidx35, align 1
  %36 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr36, i8** %dest.addr, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %src.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv37 = zext i8 %38 to i32
  %39 = load i16, i16* %index.addr, align 2
  %conv38 = zext i16 %39 to i32
  %sub39 = sub nsw i32 %conv37, %conv38
  %mul40 = mul nsw i32 %sub39, 3
  %add41 = add nsw i32 %mul40, 1
  %idxprom42 = sext i32 %add41 to i64
  %40 = load i8*, i8** %cmap.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom42
  %41 = load i8, i8* %arrayidx43, align 1
  %42 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr44, i8** %dest.addr, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i8*, i8** %src.addr, align 8
  %44 = load i8, i8* %43, align 1
  %conv45 = zext i8 %44 to i32
  %45 = load i16, i16* %index.addr, align 2
  %conv46 = zext i16 %45 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  %mul48 = mul nsw i32 %sub47, 3
  %add49 = add nsw i32 %mul48, 2
  %idxprom50 = sext i32 %add49 to i64
  %46 = load i8*, i8** %cmap.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %46, i64 %idxprom50
  %47 = load i8, i8* %arrayidx51, align 1
  %48 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr52, i8** %dest.addr, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %src.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr53, i8** %src.addr, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.29
  %50 = load i32, i32* %x, align 4
  %inc55 = add i32 %50, 1
  store i32 %inc55, i32* %x, align 4
  br label %for.cond.26

for.end.56:                                       ; preds = %for.cond.26
  br label %if.end

if.end:                                           ; preds = %for.end.56, %for.end
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind uwtable
define internal void @apply_index(i8* %dest, i8* %src, i32 %width, i16 zeroext %index) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %index.addr = alloca i16, align 2
  %x = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i16 %index, i16* %index.addr, align 2
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %4 = load i16, i16* %index.addr, align 2
  %conv1 = zext i16 %4 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = trunc i32 %sub to i8
  %5 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %dest.addr, align 8
  store i8 %conv2, i8* %5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_type(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @rle_write(%struct._IO_FILE* %fp, i8* %buffer, i32 %width, i32 %bytes) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %repeat = alloca i32, align 4
  %direct = alloca i32, align 4
  %from = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 0, i32* %repeat, align 4
  store i32 0, i32* %direct, align 4
  %0 = load i8*, i8** %buffer.addr, align 8
  store i8* %0, i8** %from, align 8
  store i32 1, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i8*, i8** %buffer.addr, align 8
  %5 = load i32, i32* %bytes.addr, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %bytes.addr, align 4
  %conv = zext i32 %6 to i64
  %call = call i32 @memcmp(i8* %3, i8* %add.ptr, i64 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.9

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %repeat, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %8 = load i32, i32* %repeat, align 4
  %add = add nsw i32 128, %8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @_IO_putc(i32 %add, %struct._IO_FILE* %9)
  %10 = load i8*, i8** %from, align 8
  %11 = load i32, i32* %bytes.addr, align 4
  %conv4 = zext i32 %11 to i64
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i64 @fwrite(i8* %10, i64 %conv4, i64 1, %struct._IO_FILE* %12)
  %13 = load i8*, i8** %buffer.addr, align 8
  %14 = load i32, i32* %bytes.addr, align 4
  %idx.ext6 = zext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 %idx.ext6
  store i8* %add.ptr7, i8** %from, align 8
  store i32 0, i32* %repeat, align 4
  store i32 0, i32* %direct, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* %direct, align 4
  %add8 = add nsw i32 %15, 1
  store i32 %add8, i32* %direct, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.19

if.else.9:                                        ; preds = %for.body
  %16 = load i32, i32* %direct, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.else.9
  %17 = load i32, i32* %direct, align 4
  %sub = sub nsw i32 %17, 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @_IO_putc(i32 %sub, %struct._IO_FILE* %18)
  %19 = load i8*, i8** %from, align 8
  %20 = load i32, i32* %bytes.addr, align 4
  %conv13 = zext i32 %20 to i64
  %21 = load i32, i32* %direct, align 4
  %conv14 = sext i32 %21 to i64
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i64 @fwrite(i8* %19, i64 %conv13, i64 %conv14, %struct._IO_FILE* %22)
  %23 = load i8*, i8** %buffer.addr, align 8
  store i8* %23, i8** %from, align 8
  store i32 0, i32* %direct, align 4
  store i32 1, i32* %repeat, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %if.else.9
  %24 = load i32, i32* %repeat, align 4
  %add17 = add nsw i32 %24, 1
  store i32 %add17, i32* %repeat, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %25 = load i32, i32* %repeat, align 4
  %cmp20 = icmp eq i32 %25, 128
  br i1 %cmp20, label %if.then.22, label %if.else.28

if.then.22:                                       ; preds = %if.end.19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 @_IO_putc(i32 255, %struct._IO_FILE* %26)
  %27 = load i8*, i8** %from, align 8
  %28 = load i32, i32* %bytes.addr, align 4
  %conv24 = zext i32 %28 to i64
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call25 = call i64 @fwrite(i8* %27, i64 %conv24, i64 1, %struct._IO_FILE* %29)
  %30 = load i8*, i8** %buffer.addr, align 8
  %31 = load i32, i32* %bytes.addr, align 4
  %idx.ext26 = zext i32 %31 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %30, i64 %idx.ext26
  store i8* %add.ptr27, i8** %from, align 8
  store i32 0, i32* %direct, align 4
  store i32 0, i32* %repeat, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %if.end.19
  %32 = load i32, i32* %direct, align 4
  %cmp29 = icmp eq i32 %32, 128
  br i1 %cmp29, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %if.else.28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call32 = call i32 @_IO_putc(i32 127, %struct._IO_FILE* %33)
  %34 = load i8*, i8** %from, align 8
  %35 = load i32, i32* %bytes.addr, align 4
  %conv33 = zext i32 %35 to i64
  %36 = load i32, i32* %direct, align 4
  %conv34 = sext i32 %36 to i64
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call35 = call i64 @fwrite(i8* %34, i64 %conv33, i64 %conv34, %struct._IO_FILE* %37)
  %38 = load i8*, i8** %buffer.addr, align 8
  %39 = load i32, i32* %bytes.addr, align 4
  %idx.ext36 = zext i32 %39 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %38, i64 %idx.ext36
  store i8* %add.ptr37, i8** %from, align 8
  store i32 0, i32* %direct, align 4
  store i32 0, i32* %repeat, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %if.else.28
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.22
  %40 = load i32, i32* %bytes.addr, align 4
  %41 = load i8*, i8** %buffer.addr, align 8
  %idx.ext40 = zext i32 %40 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %41, i64 %idx.ext40
  store i8* %add.ptr41, i8** %buffer.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %42 = load i32, i32* %x, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %repeat, align 4
  %cmp42 = icmp sgt i32 %43, 0
  br i1 %cmp42, label %if.then.44, label %if.else.49

if.then.44:                                       ; preds = %for.end
  %44 = load i32, i32* %repeat, align 4
  %add45 = add nsw i32 128, %44
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call46 = call i32 @_IO_putc(i32 %add45, %struct._IO_FILE* %45)
  %46 = load i8*, i8** %from, align 8
  %47 = load i32, i32* %bytes.addr, align 4
  %conv47 = zext i32 %47 to i64
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call48 = call i64 @fwrite(i8* %46, i64 %conv47, i64 1, %struct._IO_FILE* %48)
  br label %if.end.55

if.else.49:                                       ; preds = %for.end
  %49 = load i32, i32* %direct, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i32 @_IO_putc(i32 %49, %struct._IO_FILE* %50)
  %51 = load i8*, i8** %from, align 8
  %52 = load i32, i32* %bytes.addr, align 4
  %conv51 = zext i32 %52 to i64
  %53 = load i32, i32* %direct, align 4
  %add52 = add nsw i32 %53, 1
  %conv53 = sext i32 %add52 to i64
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call54 = call i64 @fwrite(i8* %51, i64 %conv51, i64 %conv53, %struct._IO_FILE* %54)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.49, %if.then.44
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
