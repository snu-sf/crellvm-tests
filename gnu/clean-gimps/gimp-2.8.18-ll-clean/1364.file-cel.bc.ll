; ModuleID = './plug-ins/common/file-cel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkFileChooser = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Filename to load image from\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Name entered\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"palette-filename\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Filename to load palette from\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.save_args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Filename to save image to\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Filename to save palette to\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"file-cel-load\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Loads files in KISS CEL file format\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"This plug-in loads individual KISS cell files.\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Nick Lamb\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Nick Lamb <njl195@zepler.org.uk>\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"May 1998\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"KISS CEL\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"cel\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"0,string,KiSS\5C040\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"file-cel-save\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Saves files in KISS CEL file format\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"This plug-in saves individual KISS cell files.\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"RGB*, INDEXED*\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@data_length = internal global i64 0, align 8
@palette_file = internal global i8* null, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"*.kcf\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Load KISS Palette\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"file-cel\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"CEL\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"EOF or error while reading image header\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"KiSS\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"is not a CEL image file\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"illegal bpp value in image: %hhu\00", align 1
@.str.45 = private unnamed_addr constant [92 x i8] c"illegal image dimensions: width: %d, horizontal offset: %d, height: %d, vertical offset: %d\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"Can't create a new image\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"EOF or error while reading image data\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Unsupported bit depth (%d)!\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"'%s': EOF or error while reading palette header\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"'%s': is not a KCF palette file\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"'%s': illegal bpp value in palette: %hhu\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"'%s': illegal number of colors: %u\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"'%s': EOF or error while reading palette data\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"file-cel.c\00", align 1
@__func__.load_palette = private unnamed_addr constant [13 x i8] c"load_palette\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* null, i32 1, i32 4, i32 1, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %status = alloca i32, align 4
  %image = alloca i32, align 4
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %needs_palette = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %needs_palette, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.61

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %run_mode, align 4
  %cmp5 = icmp ne i32 %5, 1
  br i1 %cmp5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.then
  %call7 = call i32 @gimp_procedural_db_get_data_size(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  %conv = sext i32 %call7 to i64
  store i64 %conv, i64* @data_length, align 8
  %6 = load i64, i64* @data_length, align 8
  %cmp8 = icmp ugt i64 %6, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %7 = load i64, i64* @data_length, align 8
  %call11 = call noalias i8* @g_malloc(i64 %7)
  store i8* %call11, i8** @palette_file, align 8
  %8 = load i8*, i8** @palette_file, align 8
  %call12 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* %8)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %call13 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  store i8* %call13, i8** @palette_file, align 8
  %9 = load i8*, i8** @palette_file, align 8
  %call14 = call i64 @strlen(i8* %9) #8
  %add = add i64 %call14, 1
  store i64 %add, i64* @data_length, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %10 = load i32, i32* %run_mode, align 4
  %cmp16 = icmp eq i32 %10, 1
  br i1 %cmp16, label %if.then.18, label %if.else.26

if.then.18:                                       ; preds = %if.end.15
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data20 to i8**
  %12 = load i8*, i8** %d_string, align 8
  store i8* %12, i8** @palette_file, align 8
  %13 = load i8*, i8** @palette_file, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.then.18
  %14 = load i8*, i8** @palette_file, align 8
  %call22 = call i64 @strlen(i8* %14) #8
  %add23 = add i64 %call22, 1
  store i64 %add23, i64* @data_length, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %if.then.18
  store i64 0, i64* @data_length, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.21
  br label %if.end.44

if.else.26:                                       ; preds = %if.end.15
  %15 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp eq i32 %15, 0
  br i1 %cmp27, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %if.else.26
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 1
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_string32 = bitcast %union._GimpParamData* %data31 to i8**
  %17 = load i8*, i8** %d_string32, align 8
  %call33 = call i32 @need_palette(i8* %17, %struct._GError** %error)
  store i32 %call33, i32* %needs_palette, align 4
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool34 = icmp ne %struct._GError* %18, null
  br i1 %tobool34, label %if.end.42, label %if.then.35

if.then.35:                                       ; preds = %if.then.29
  %19 = load i32, i32* %needs_palette, align 4
  %tobool36 = icmp ne i32 %19, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.35
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0)) #6
  call void @palette_dialog(i8* %call38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.35
  %20 = load i8*, i8** @palette_file, align 8
  %21 = load i64, i64* @data_length, align 8
  %conv40 = trunc i64 %21 to i32
  %call41 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* %20, i32 %conv40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.39, %if.then.29
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.else.26
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.25
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool45 = icmp ne %struct._GError* %22, null
  br i1 %tobool45, label %if.else.59, label %if.then.46

if.then.46:                                       ; preds = %if.end.44
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 1
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_string49 = bitcast %union._GimpParamData* %data48 to i8**
  %24 = load i8*, i8** %d_string49, align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 2
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_string52 = bitcast %union._GimpParamData* %data51 to i8**
  %26 = load i8*, i8** %d_string52, align 8
  %call53 = call i32 @load_image(i8* %24, i8* %26, %struct._GError** %error)
  store i32 %call53, i32* %image, align 4
  %27 = load i32, i32* %image, align 4
  %cmp54 = icmp ne i32 %27, -1
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.then.46
  %28 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %28, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %29 = load i32, i32* %image, align 4
  store i32 %29, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.58

if.else.57:                                       ; preds = %if.then.46
  store i32 0, i32* %status, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.else.59:                                       ; preds = %if.end.44
  store i32 0, i32* %status, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.end.58
  br label %if.end.100

if.else.61:                                       ; preds = %do.end
  %30 = load i8*, i8** %name.addr, align 8
  %call62 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0)) #8
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.98

if.then.65:                                       ; preds = %if.else.61
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 1
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int3268 = bitcast %union._GimpParamData* %data67 to i32*
  %32 = load i32, i32* %d_int3268, align 4
  store i32 %32, i32* %image_ID, align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 2
  %data70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx69, i32 0, i32 1
  %d_int3271 = bitcast %union._GimpParamData* %data70 to i32*
  %34 = load i32, i32* %d_int3271, align 4
  store i32 %34, i32* %drawable_ID, align 4
  %35 = load i32, i32* %run_mode, align 4
  switch i32 %35, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.65, %if.then.65
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0)
  %call72 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 21)
  store i32 %call72, i32* %export, align 4
  %36 = load i32, i32* %export, align 4
  %cmp73 = icmp eq i32 %36, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.76:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.65
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.76
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 3
  %data78 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx77, i32 0, i32 1
  %d_string79 = bitcast %union._GimpParamData* %data78 to i8**
  %38 = load i8*, i8** %d_string79, align 8
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 4
  %data81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx80, i32 0, i32 1
  %d_string82 = bitcast %union._GimpParamData* %data81 to i8**
  %40 = load i8*, i8** %d_string82, align 8
  %41 = load i32, i32* %image_ID, align 4
  %42 = load i32, i32* %drawable_ID, align 4
  %call83 = call i32 @save_image(i8* %38, i8* %40, i32 %41, i32 %42, %struct._GError** %error)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.else.91

if.then.85:                                       ; preds = %sw.epilog
  %43 = load i64, i64* @data_length, align 8
  %tobool86 = icmp ne i64 %43, 0
  br i1 %tobool86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.then.85
  %44 = load i8*, i8** @palette_file, align 8
  %45 = load i64, i64* @data_length, align 8
  %conv88 = trunc i64 %45 to i32
  %call89 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* %44, i32 %conv88)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %if.then.85
  br label %if.end.92

if.else.91:                                       ; preds = %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91, %if.end.90
  %46 = load i32, i32* %export, align 4
  %cmp93 = icmp eq i32 %46, 2
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.92
  %47 = load i32, i32* %image_ID, align 4
  %call96 = call i32 @gimp_image_delete(i32 %47)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.92
  br label %if.end.99

if.else.98:                                       ; preds = %if.else.61
  store i32 1, i32* %status, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.end.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.60
  %48 = load i32, i32* %status, align 4
  %cmp101 = icmp ne i32 %48, 3
  br i1 %cmp101, label %land.lhs.true, label %if.end.105

land.lhs.true:                                    ; preds = %if.end.100
  %49 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool103 = icmp ne %struct._GError* %49, null
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true
  %50 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %50, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %51 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %51, i32 0, i32 2
  %52 = load i8*, i8** %message, align 8
  store i8* %52, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %land.lhs.true, %if.end.100
  %53 = load i32, i32* %status, align 4
  store i32 %53, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.105, %if.then.75
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

declare i32 @gimp_procedural_db_get_data_size(i8*) #1

declare noalias i8* @g_malloc(i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @need_palette(i8* %file, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %header = alloca [32 x i8], align 16
  %n_read = alloca i64, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #6
  %4 = load i8*, i8** %file.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i64 @fread(i8* %arraydecay, i64 32, i64 1, %struct._IO_FILE* %6)
  store i64 %call8, i64* %n_read, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %7)
  %8 = load i64, i64* %n_read, align 8
  %cmp10 = icmp ult i64 %8, 1
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @g_file_error_quark()
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call12, i32 24, i8* %call13)
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 5
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %cmp15 = icmp slt i32 %conv, 32
  %conv16 = zext i1 %cmp15 to i32
  store i32 %conv16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @palette_dialog(i8* %title) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0)
  %0 = load i8*, i8** %title.addr, align 8
  %call = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %0, %struct._GtkWindow* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_dialog_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_file_chooser_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFileChooser*
  %7 = load i8*, i8** @palette_file, align 8
  %call5 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %6, i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %10, i32 -5)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call i32 @gtk_dialog_run(%struct._GtkDialog* %14)
  %cmp = icmp eq i32 %call10, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i8*, i8** @palette_file, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_file_chooser_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkFileChooser*
  %call13 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %18)
  store i8* %call13, i8** @palette_file, align 8
  %19 = load i8*, i8** @palette_file, align 8
  %call14 = call i64 @strlen(i8* %19) #8
  %add = add i64 %call14, 1
  store i64 %add, i64* @data_length, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %20)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %file, i8* %brief, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %brief.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %header = alloca [32 x i8], align 16
  %file_mark = alloca i8, align 1
  %bpp = alloca i8, align 1
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %colours = alloca i32, align 4
  %image = alloca i32, align 4
  %layer = alloca i32, align 4
  %palette = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %line = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n_read = alloca i64, align 8
  %tmp = alloca i8, align 1
  %palette298 = alloca [768 x i8], align 16
  store i8* %file, i8** %file.addr, align 8
  store i8* %brief, i8** %brief.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #6
  %4 = load i8*, i8** %file.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0)) #6
  %6 = load i8*, i8** %brief.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i64 @fread(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %7)
  store i64 %call11, i64* %n_read, align 8
  %8 = load i64, i64* %n_read, align 8
  %cmp12 = icmp ult i64 %8, 1
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @g_file_error_quark()
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call14, i32 24, i8* %call15)
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %arraydecay17 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %call18 = call i32 @strncmp(i8* %arraydecay17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i64 4) #8
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  store i32 16, i32* %colours, align 4
  store i8 4, i8* %bpp, align 1
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %arrayidx20 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 1
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %mul = mul nsw i32 256, %conv21
  %add = add nsw i32 %conv, %mul
  store i32 %add, i32* %width, align 4
  %arrayidx22 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 2
  %12 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %12 to i32
  %arrayidx24 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 3
  %13 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %13 to i32
  %mul26 = mul nsw i32 256, %conv25
  %add27 = add nsw i32 %conv23, %mul26
  store i32 %add27, i32* %height, align 4
  store i32 0, i32* %offx, align 4
  store i32 0, i32* %offy, align 4
  br label %if.end.77

if.else:                                          ; preds = %if.end.16
  %arraydecay28 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i64 @fread(i8* %arraydecay28, i64 28, i64 1, %struct._IO_FILE* %14)
  store i64 %call29, i64* %n_read, align 8
  %15 = load i64, i64* %n_read, align 8
  %cmp30 = icmp ult i64 %15, 1
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.else
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call33 = call i32 @g_file_error_quark()
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %16, i32 %call33, i32 24, i8* %call34)
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.else
  %arrayidx36 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 0
  %17 = load i8, i8* %arrayidx36, align 1
  store i8 %17, i8* %file_mark, align 1
  %18 = load i8, i8* %file_mark, align 1
  %conv37 = zext i8 %18 to i32
  %cmp38 = icmp ne i32 %conv37, 32
  br i1 %cmp38, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end.35
  %19 = load i8, i8* %file_mark, align 1
  %conv40 = zext i8 %19 to i32
  %cmp41 = icmp ne i32 %conv40, 33
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %land.lhs.true
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call44 = call i32 @g_file_error_quark()
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %20, i32 %call44, i32 24, i8* %call45)
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true, %if.end.35
  %arrayidx47 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 1
  %21 = load i8, i8* %arrayidx47, align 1
  store i8 %21, i8* %bpp, align 1
  %22 = load i8, i8* %bpp, align 1
  %conv48 = zext i8 %22 to i32
  switch i32 %conv48, label %sw.default [
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 32, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.46, %if.end.46, %if.end.46
  %23 = load i8, i8* %bpp, align 1
  %conv49 = zext i8 %23 to i32
  %shl = shl i32 1, %conv49
  store i32 %shl, i32* %colours, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.46
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call50 = call i32 @g_file_error_quark()
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0)) #6
  %25 = load i8, i8* %bpp, align 1
  %conv52 = zext i8 %25 to i32
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call50, i32 24, i8* %call51, i32 %conv52)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %arrayidx53 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 4
  %26 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %26 to i32
  %arrayidx55 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 5
  %27 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %27 to i32
  %mul57 = mul nsw i32 256, %conv56
  %add58 = add nsw i32 %conv54, %mul57
  store i32 %add58, i32* %width, align 4
  %arrayidx59 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 6
  %28 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %28 to i32
  %arrayidx61 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 7
  %29 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %29 to i32
  %mul63 = mul nsw i32 256, %conv62
  %add64 = add nsw i32 %conv60, %mul63
  store i32 %add64, i32* %height, align 4
  %arrayidx65 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 8
  %30 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %30 to i32
  %arrayidx67 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 9
  %31 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %31 to i32
  %mul69 = mul nsw i32 256, %conv68
  %add70 = add nsw i32 %conv66, %mul69
  store i32 %add70, i32* %offx, align 4
  %arrayidx71 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 10
  %32 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %32 to i32
  %arrayidx73 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 11
  %33 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %33 to i32
  %mul75 = mul nsw i32 256, %conv74
  %add76 = add nsw i32 %conv72, %mul75
  store i32 %add76, i32* %offy, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %sw.epilog, %if.then.19
  %34 = load i32, i32* %width, align 4
  %cmp78 = icmp eq i32 %34, 0
  br i1 %cmp78, label %if.then.90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.77
  %35 = load i32, i32* %height, align 4
  %cmp80 = icmp eq i32 %35, 0
  br i1 %cmp80, label %if.then.90, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %offx, align 4
  %add83 = add nsw i32 %36, %37
  %cmp84 = icmp sgt i32 %add83, 262144
  br i1 %cmp84, label %if.then.90, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.82
  %38 = load i32, i32* %height, align 4
  %39 = load i32, i32* %offy, align 4
  %add87 = add nsw i32 %38, %39
  %cmp88 = icmp sgt i32 %add87, 262144
  br i1 %cmp88, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %lor.lhs.false.86, %lor.lhs.false.82, %lor.lhs.false, %if.end.77
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call91 = call i32 @g_file_error_quark()
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.45, i32 0, i32 0)) #6
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %offx, align 4
  %43 = load i32, i32* %height, align 4
  %44 = load i32, i32* %offy, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %40, i32 %call91, i32 24, i8* %call92, i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 -1, i32* %retval
  br label %return

if.end.93:                                        ; preds = %lor.lhs.false.86
  %45 = load i8, i8* %bpp, align 1
  %conv94 = zext i8 %45 to i32
  %cmp95 = icmp eq i32 %conv94, 32
  br i1 %cmp95, label %if.then.97, label %if.else.101

if.then.97:                                       ; preds = %if.end.93
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %offx, align 4
  %add98 = add nsw i32 %46, %47
  %48 = load i32, i32* %height, align 4
  %49 = load i32, i32* %offy, align 4
  %add99 = add nsw i32 %48, %49
  %call100 = call i32 @gimp_image_new(i32 %add98, i32 %add99, i32 0)
  store i32 %call100, i32* %image, align 4
  br label %if.end.105

if.else.101:                                      ; preds = %if.end.93
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %offx, align 4
  %add102 = add nsw i32 %50, %51
  %52 = load i32, i32* %height, align 4
  %53 = load i32, i32* %offy, align 4
  %add103 = add nsw i32 %52, %53
  %call104 = call i32 @gimp_image_new(i32 %add102, i32 %add103, i32 2)
  store i32 %call104, i32* %image, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.101, %if.then.97
  %54 = load i32, i32* %image, align 4
  %cmp106 = icmp eq i32 %54, -1
  br i1 %cmp106, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %if.end.105
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call109 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %55, i32 0, i32 0, i8* %call109)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call110 = call i32 @fclose(%struct._IO_FILE* %56)
  store i32 -1, i32* %retval
  br label %return

if.end.111:                                       ; preds = %if.end.105
  %57 = load i32, i32* %image, align 4
  %58 = load i8*, i8** %file.addr, align 8
  %call112 = call i32 @gimp_image_set_filename(i32 %57, i8* %58)
  %59 = load i8, i8* %bpp, align 1
  %conv113 = zext i8 %59 to i32
  %cmp114 = icmp eq i32 %conv113, 32
  br i1 %cmp114, label %if.then.116, label %if.else.119

if.then.116:                                      ; preds = %if.end.111
  %60 = load i32, i32* %image, align 4
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #6
  %61 = load i32, i32* %width, align 4
  %62 = load i32, i32* %height, align 4
  %call118 = call i32 @gimp_layer_new(i32 %60, i8* %call117, i32 %61, i32 %62, i32 1, double 1.000000e+02, i32 0)
  store i32 %call118, i32* %layer, align 4
  br label %if.end.122

if.else.119:                                      ; preds = %if.end.111
  %63 = load i32, i32* %image, align 4
  %call120 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #6
  %64 = load i32, i32* %width, align 4
  %65 = load i32, i32* %height, align 4
  %call121 = call i32 @gimp_layer_new(i32 %63, i8* %call120, i32 %64, i32 %65, i32 5, double 1.000000e+02, i32 0)
  store i32 %call121, i32* %layer, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.116
  %66 = load i32, i32* %image, align 4
  %67 = load i32, i32* %layer, align 4
  %call123 = call i32 @gimp_image_insert_layer(i32 %66, i32 %67, i32 -1, i32 0)
  %68 = load i32, i32* %layer, align 4
  %69 = load i32, i32* %offx, align 4
  %70 = load i32, i32* %offy, align 4
  %call124 = call i32 @gimp_layer_set_offsets(i32 %68, i32 %69, i32 %70)
  %71 = load i32, i32* %layer, align 4
  %call125 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %71)
  store %struct._GimpDrawable* %call125, %struct._GimpDrawable** %drawable, align 8
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width126 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %73, i32 0, i32 1
  %74 = load i32, i32* %width126, align 4
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height127 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %75, i32 0, i32 2
  %76 = load i32, i32* %height127, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %72, i32 0, i32 0, i32 %74, i32 %76, i32 1, i32 0)
  %77 = load i32, i32* %width, align 4
  %mul128 = mul nsw i32 %77, 4
  %conv129 = sext i32 %mul128 to i64
  %call130 = call noalias i8* @g_malloc_n(i64 %conv129, i64 1)
  store i8* %call130, i8** %buffer, align 8
  %78 = load i32, i32* %width, align 4
  %add131 = add nsw i32 %78, 1
  %mul132 = mul nsw i32 %add131, 4
  %conv133 = sext i32 %mul132 to i64
  %call134 = call noalias i8* @g_malloc_n(i64 %conv133, i64 1)
  store i8* %call134, i8** %line, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.288, %if.end.122
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %height, align 4
  %cmp135 = icmp slt i32 %79, %80
  br i1 %cmp135, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call137 = call i32 @feof(%struct._IO_FILE* %81) #6
  %tobool138 = icmp ne i32 %call137, 0
  %lnot = xor i1 %tobool138, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %82 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %82, label %for.body, label %for.end.290

for.body:                                         ; preds = %land.end
  %83 = load i8, i8* %bpp, align 1
  %conv139 = zext i8 %83 to i32
  switch i32 %conv139, label %sw.default.277 [
    i32 4, label %sw.bb.140
    i32 8, label %sw.bb.205
    i32 32, label %sw.bb.246
  ]

sw.bb.140:                                        ; preds = %for.body
  %84 = load i8*, i8** %buffer, align 8
  %85 = load i32, i32* %width, align 4
  %add141 = add nsw i32 %85, 1
  %div = sdiv i32 %add141, 2
  %conv142 = sext i32 %div to i64
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call143 = call i64 @fread(i8* %84, i64 %conv142, i64 1, %struct._IO_FILE* %86)
  store i64 %call143, i64* %n_read, align 8
  %87 = load i64, i64* %n_read, align 8
  %cmp144 = icmp ult i64 %87, 1
  br i1 %cmp144, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %sw.bb.140
  %88 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call147 = call i32 @g_file_error_quark()
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %88, i32 %call147, i32 24, i8* %call148)
  store i32 -1, i32* %retval
  br label %return

if.end.149:                                       ; preds = %sw.bb.140
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc, %if.end.149
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %width, align 4
  %mul151 = mul nsw i32 %90, 2
  %cmp152 = icmp slt i32 %89, %mul151
  br i1 %cmp152, label %for.body.154, label %for.end

for.body.154:                                     ; preds = %for.cond.150
  %91 = load i32, i32* %k, align 4
  %idxprom = sext i32 %91 to i64
  %92 = load i8*, i8** %buffer, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %92, i64 %idxprom
  %93 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %93 to i32
  %div157 = sdiv i32 %conv156, 16
  %cmp158 = icmp eq i32 %div157, 0
  br i1 %cmp158, label %if.then.160, label %if.else.166

if.then.160:                                      ; preds = %for.body.154
  %94 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %94 to i64
  %95 = load i8*, i8** %line, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %95, i64 %idxprom161
  store i8 16, i8* %arrayidx162, align 1
  %96 = load i32, i32* %j, align 4
  %add163 = add nsw i32 %96, 1
  %idxprom164 = sext i32 %add163 to i64
  %97 = load i8*, i8** %line, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %97, i64 %idxprom164
  store i8 0, i8* %arrayidx165, align 1
  br label %if.end.177

if.else.166:                                      ; preds = %for.body.154
  %98 = load i32, i32* %k, align 4
  %idxprom167 = sext i32 %98 to i64
  %99 = load i8*, i8** %buffer, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %99, i64 %idxprom167
  %100 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %100 to i32
  %div170 = sdiv i32 %conv169, 16
  %sub = sub nsw i32 %div170, 1
  %conv171 = trunc i32 %sub to i8
  %101 = load i32, i32* %j, align 4
  %idxprom172 = sext i32 %101 to i64
  %102 = load i8*, i8** %line, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %102, i64 %idxprom172
  store i8 %conv171, i8* %arrayidx173, align 1
  %103 = load i32, i32* %j, align 4
  %add174 = add nsw i32 %103, 1
  %idxprom175 = sext i32 %add174 to i64
  %104 = load i8*, i8** %line, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %104, i64 %idxprom175
  store i8 -1, i8* %arrayidx176, align 1
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.166, %if.then.160
  %105 = load i32, i32* %k, align 4
  %idxprom178 = sext i32 %105 to i64
  %106 = load i8*, i8** %buffer, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %106, i64 %idxprom178
  %107 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %107 to i32
  %rem = srem i32 %conv180, 16
  %cmp181 = icmp eq i32 %rem, 0
  br i1 %cmp181, label %if.then.183, label %if.else.190

if.then.183:                                      ; preds = %if.end.177
  %108 = load i32, i32* %j, align 4
  %add184 = add nsw i32 %108, 2
  %idxprom185 = sext i32 %add184 to i64
  %109 = load i8*, i8** %line, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %109, i64 %idxprom185
  store i8 16, i8* %arrayidx186, align 1
  %110 = load i32, i32* %j, align 4
  %add187 = add nsw i32 %110, 3
  %idxprom188 = sext i32 %add187 to i64
  %111 = load i8*, i8** %line, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %111, i64 %idxprom188
  store i8 0, i8* %arrayidx189, align 1
  br label %if.end.203

if.else.190:                                      ; preds = %if.end.177
  %112 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %112 to i64
  %113 = load i8*, i8** %buffer, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %113, i64 %idxprom191
  %114 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %114 to i32
  %rem194 = srem i32 %conv193, 16
  %sub195 = sub nsw i32 %rem194, 1
  %conv196 = trunc i32 %sub195 to i8
  %115 = load i32, i32* %j, align 4
  %add197 = add nsw i32 %115, 2
  %idxprom198 = sext i32 %add197 to i64
  %116 = load i8*, i8** %line, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %116, i64 %idxprom198
  store i8 %conv196, i8* %arrayidx199, align 1
  %117 = load i32, i32* %j, align 4
  %add200 = add nsw i32 %117, 3
  %idxprom201 = sext i32 %add200 to i64
  %118 = load i8*, i8** %line, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %118, i64 %idxprom201
  store i8 -1, i8* %arrayidx202, align 1
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.190, %if.then.183
  br label %for.inc

for.inc:                                          ; preds = %if.end.203
  %119 = load i32, i32* %j, align 4
  %add204 = add nsw i32 %119, 4
  store i32 %add204, i32* %j, align 4
  %120 = load i32, i32* %k, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.150

for.end:                                          ; preds = %for.cond.150
  br label %sw.epilog.281

sw.bb.205:                                        ; preds = %for.body
  %121 = load i8*, i8** %buffer, align 8
  %122 = load i32, i32* %width, align 4
  %conv206 = sext i32 %122 to i64
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call207 = call i64 @fread(i8* %121, i64 %conv206, i64 1, %struct._IO_FILE* %123)
  store i64 %call207, i64* %n_read, align 8
  %124 = load i64, i64* %n_read, align 8
  %cmp208 = icmp ult i64 %124, 1
  br i1 %cmp208, label %if.then.210, label %if.end.213

if.then.210:                                      ; preds = %sw.bb.205
  %125 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call211 = call i32 @g_file_error_quark()
  %call212 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %125, i32 %call211, i32 24, i8* %call212)
  store i32 -1, i32* %retval
  br label %return

if.end.213:                                       ; preds = %sw.bb.205
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.242, %if.end.213
  %126 = load i32, i32* %j, align 4
  %127 = load i32, i32* %width, align 4
  %mul215 = mul nsw i32 %127, 2
  %cmp216 = icmp slt i32 %126, %mul215
  br i1 %cmp216, label %for.body.218, label %for.end.245

for.body.218:                                     ; preds = %for.cond.214
  %128 = load i32, i32* %k, align 4
  %idxprom219 = sext i32 %128 to i64
  %129 = load i8*, i8** %buffer, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %129, i64 %idxprom219
  %130 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %130 to i32
  %cmp222 = icmp eq i32 %conv221, 0
  br i1 %cmp222, label %if.then.224, label %if.else.230

if.then.224:                                      ; preds = %for.body.218
  %131 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %131 to i64
  %132 = load i8*, i8** %line, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %132, i64 %idxprom225
  store i8 -1, i8* %arrayidx226, align 1
  %133 = load i32, i32* %j, align 4
  %add227 = add nsw i32 %133, 1
  %idxprom228 = sext i32 %add227 to i64
  %134 = load i8*, i8** %line, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %134, i64 %idxprom228
  store i8 0, i8* %arrayidx229, align 1
  br label %if.end.241

if.else.230:                                      ; preds = %for.body.218
  %135 = load i32, i32* %k, align 4
  %idxprom231 = sext i32 %135 to i64
  %136 = load i8*, i8** %buffer, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %136, i64 %idxprom231
  %137 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %137 to i32
  %sub234 = sub nsw i32 %conv233, 1
  %conv235 = trunc i32 %sub234 to i8
  %138 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %138 to i64
  %139 = load i8*, i8** %line, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %139, i64 %idxprom236
  store i8 %conv235, i8* %arrayidx237, align 1
  %140 = load i32, i32* %j, align 4
  %add238 = add nsw i32 %140, 1
  %idxprom239 = sext i32 %add238 to i64
  %141 = load i8*, i8** %line, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %141, i64 %idxprom239
  store i8 -1, i8* %arrayidx240, align 1
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.230, %if.then.224
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241
  %142 = load i32, i32* %j, align 4
  %add243 = add nsw i32 %142, 2
  store i32 %add243, i32* %j, align 4
  %143 = load i32, i32* %k, align 4
  %inc244 = add nsw i32 %143, 1
  store i32 %inc244, i32* %k, align 4
  br label %for.cond.214

for.end.245:                                      ; preds = %for.cond.214
  br label %sw.epilog.281

sw.bb.246:                                        ; preds = %for.body
  %144 = load i8*, i8** %line, align 8
  %145 = load i32, i32* %width, align 4
  %mul247 = mul nsw i32 %145, 4
  %conv248 = sext i32 %mul247 to i64
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call249 = call i64 @fread(i8* %144, i64 %conv248, i64 1, %struct._IO_FILE* %146)
  store i64 %call249, i64* %n_read, align 8
  %147 = load i64, i64* %n_read, align 8
  %cmp250 = icmp ult i64 %147, 1
  br i1 %cmp250, label %if.then.252, label %if.end.255

if.then.252:                                      ; preds = %sw.bb.246
  %148 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call253 = call i32 @g_file_error_quark()
  %call254 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %148, i32 %call253, i32 24, i8* %call254)
  store i32 -1, i32* %retval
  br label %return

if.end.255:                                       ; preds = %sw.bb.246
  store i32 0, i32* %j, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.274, %if.end.255
  %149 = load i32, i32* %j, align 4
  %150 = load i32, i32* %width, align 4
  %cmp257 = icmp slt i32 %149, %150
  br i1 %cmp257, label %for.body.259, label %for.end.276

for.body.259:                                     ; preds = %for.cond.256
  %151 = load i32, i32* %j, align 4
  %mul260 = mul nsw i32 %151, 4
  %idxprom261 = sext i32 %mul260 to i64
  %152 = load i8*, i8** %line, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %152, i64 %idxprom261
  %153 = load i8, i8* %arrayidx262, align 1
  store i8 %153, i8* %tmp, align 1
  %154 = load i32, i32* %j, align 4
  %mul263 = mul nsw i32 %154, 4
  %add264 = add nsw i32 %mul263, 2
  %idxprom265 = sext i32 %add264 to i64
  %155 = load i8*, i8** %line, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %155, i64 %idxprom265
  %156 = load i8, i8* %arrayidx266, align 1
  %157 = load i32, i32* %j, align 4
  %mul267 = mul nsw i32 %157, 4
  %idxprom268 = sext i32 %mul267 to i64
  %158 = load i8*, i8** %line, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %158, i64 %idxprom268
  store i8 %156, i8* %arrayidx269, align 1
  %159 = load i8, i8* %tmp, align 1
  %160 = load i32, i32* %j, align 4
  %mul270 = mul nsw i32 %160, 4
  %add271 = add nsw i32 %mul270, 2
  %idxprom272 = sext i32 %add271 to i64
  %161 = load i8*, i8** %line, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %161, i64 %idxprom272
  store i8 %159, i8* %arrayidx273, align 1
  br label %for.inc.274

for.inc.274:                                      ; preds = %for.body.259
  %162 = load i32, i32* %j, align 4
  %inc275 = add nsw i32 %162, 1
  store i32 %inc275, i32* %j, align 4
  br label %for.cond.256

for.end.276:                                      ; preds = %for.cond.256
  br label %sw.epilog.281

sw.default.277:                                   ; preds = %for.body
  %163 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call278 = call i32 @g_file_error_quark()
  %call279 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0)) #6
  %164 = load i8, i8* %bpp, align 1
  %conv280 = zext i8 %164 to i32
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %163, i32 %call278, i32 24, i8* %call279, i32 %conv280)
  store i32 -1, i32* %retval
  br label %return

sw.epilog.281:                                    ; preds = %for.end.276, %for.end.245, %for.end
  %165 = load i8*, i8** %line, align 8
  %166 = load i32, i32* %i, align 4
  %167 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width282 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %167, i32 0, i32 1
  %168 = load i32, i32* %width282, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %165, i32 0, i32 %166, i32 %168, i32 1)
  %169 = load i32, i32* %i, align 4
  %conv283 = sitofp i32 %169 to float
  %170 = load i32, i32* %height, align 4
  %conv284 = sitofp i32 %170 to float
  %div285 = fdiv float %conv283, %conv284
  %conv286 = fpext float %div285 to double
  %call287 = call i32 @gimp_progress_update(double %conv286)
  br label %for.inc.288

for.inc.288:                                      ; preds = %sw.epilog.281
  %171 = load i32, i32* %i, align 4
  %inc289 = add nsw i32 %171, 1
  store i32 %inc289, i32* %i, align 4
  br label %for.cond

for.end.290:                                      ; preds = %land.end
  %call291 = call i32 @gimp_progress_update(double 1.000000e+00)
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call292 = call i32 @fclose(%struct._IO_FILE* %172)
  %173 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %173)
  %174 = load i8*, i8** %line, align 8
  call void @g_free(i8* %174)
  %175 = load i8, i8* %bpp, align 1
  %conv293 = zext i8 %175 to i32
  %cmp294 = icmp ne i32 %conv293, 32
  br i1 %cmp294, label %if.then.296, label %if.end.354

if.then.296:                                      ; preds = %for.end.290
  %176 = load i8*, i8** @palette_file, align 8
  %cmp299 = icmp eq i8* %176, null
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %if.then.296
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %if.end.315

if.else.302:                                      ; preds = %if.then.296
  %177 = load i8*, i8** @palette_file, align 8
  %call303 = call %struct._IO_FILE* @fopen(i8* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  store %struct._IO_FILE* %call303, %struct._IO_FILE** %fp, align 8
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp304 = icmp eq %struct._IO_FILE* %178, null
  br i1 %cmp304, label %if.then.306, label %if.end.314

if.then.306:                                      ; preds = %if.else.302
  %179 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call307 = call i32 @g_file_error_quark()
  %call308 = call i32* @__errno_location() #7
  %180 = load i32, i32* %call308, align 4
  %call309 = call i32 @g_file_error_from_errno(i32 %180)
  %call310 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #6
  %181 = load i8*, i8** @palette_file, align 8
  %call311 = call i8* @gimp_filename_to_utf8(i8* %181)
  %call312 = call i32* @__errno_location() #7
  %182 = load i32, i32* %call312, align 4
  %call313 = call i8* @g_strerror(i32 %182) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %179, i32 %call307, i32 %call309, i8* %call310, i8* %call311, i8* %call313)
  store i32 -1, i32* %retval
  br label %return

if.end.314:                                       ; preds = %if.else.302
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.then.301
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp316 = icmp ne %struct._IO_FILE* %183, null
  br i1 %cmp316, label %if.then.318, label %if.else.328

if.then.318:                                      ; preds = %if.end.315
  %184 = load i8*, i8** @palette_file, align 8
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay319 = getelementptr inbounds [768 x i8], [768 x i8]* %palette298, i32 0, i32 0
  %186 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call320 = call i32 @load_palette(i8* %184, %struct._IO_FILE* %185, i8* %arraydecay319, %struct._GError** %186)
  store i32 %call320, i32* %colours, align 4
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call321 = call i32 @fclose(%struct._IO_FILE* %187)
  %188 = load i32, i32* %colours, align 4
  %cmp322 = icmp slt i32 %188, 0
  br i1 %cmp322, label %if.then.326, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %if.then.318
  %189 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %190 = load %struct._GError*, %struct._GError** %189, align 8
  %tobool325 = icmp ne %struct._GError* %190, null
  br i1 %tobool325, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %lor.lhs.false.324, %if.then.318
  store i32 -1, i32* %retval
  br label %return

if.end.327:                                       ; preds = %lor.lhs.false.324
  br label %if.end.350

if.else.328:                                      ; preds = %if.end.315
  store i32 0, i32* %i, align 4
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.347, %if.else.328
  %191 = load i32, i32* %i, align 4
  %192 = load i32, i32* %colours, align 4
  %cmp330 = icmp slt i32 %191, %192
  br i1 %cmp330, label %for.body.332, label %for.end.349

for.body.332:                                     ; preds = %for.cond.329
  %193 = load i32, i32* %i, align 4
  %mul333 = mul nsw i32 %193, 256
  %194 = load i32, i32* %colours, align 4
  %div334 = sdiv i32 %mul333, %194
  %conv335 = trunc i32 %div334 to i8
  %195 = load i32, i32* %i, align 4
  %mul336 = mul nsw i32 %195, 3
  %add337 = add nsw i32 %mul336, 2
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds [768 x i8], [768 x i8]* %palette298, i32 0, i64 %idxprom338
  store i8 %conv335, i8* %arrayidx339, align 1
  %196 = load i32, i32* %i, align 4
  %mul340 = mul nsw i32 %196, 3
  %add341 = add nsw i32 %mul340, 1
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds [768 x i8], [768 x i8]* %palette298, i32 0, i64 %idxprom342
  store i8 %conv335, i8* %arrayidx343, align 1
  %197 = load i32, i32* %i, align 4
  %mul344 = mul nsw i32 %197, 3
  %idxprom345 = sext i32 %mul344 to i64
  %arrayidx346 = getelementptr inbounds [768 x i8], [768 x i8]* %palette298, i32 0, i64 %idxprom345
  store i8 %conv335, i8* %arrayidx346, align 1
  br label %for.inc.347

for.inc.347:                                      ; preds = %for.body.332
  %198 = load i32, i32* %i, align 4
  %inc348 = add nsw i32 %198, 1
  store i32 %inc348, i32* %i, align 4
  br label %for.cond.329

for.end.349:                                      ; preds = %for.cond.329
  br label %if.end.350

if.end.350:                                       ; preds = %for.end.349, %if.end.327
  %199 = load i32, i32* %image, align 4
  %arraydecay351 = getelementptr inbounds [768 x i8], [768 x i8]* %palette298, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay351, i64 3
  %200 = load i32, i32* %colours, align 4
  %sub352 = sub nsw i32 %200, 1
  %call353 = call i32 @gimp_image_set_colormap(i32 %199, i8* %add.ptr, i32 %sub352)
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.350, %for.end.290
  %201 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %201)
  %202 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %202)
  %203 = load i32, i32* %image, align 4
  store i32 %203, i32* %retval
  br label %return

return:                                           ; preds = %if.end.354, %if.then.326, %if.then.306, %sw.default.277, %if.then.252, %if.then.210, %if.then.146, %if.then.108, %if.then.90, %sw.default, %if.then.43, %if.then.32, %if.then.13, %if.then
  %204 = load i32, i32* %retval
  ret i32 %204
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %file, i8* %brief, i32 %image, i32 %layer, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %brief.addr = alloca i8*, align 8
  %image.addr = alloca i32, align 4
  %layer.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %header = alloca [32 x i8], align 16
  %bpp = alloca i32, align 4
  %colours = alloca i32, align 4
  %type = alloca i32, align 4
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %line = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i8* %brief, i8** %brief.addr, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %layer, i32* %layer.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %layer.addr, align 4
  %call = call i32 @gimp_drawable_type(i32 %0)
  store i32 %call, i32* %type, align 4
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 32, i32* %bpp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 4, i32* %bpp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_offsets(i32 %2, i32* %offx, i32* %offy)
  %3 = load i32, i32* %layer.addr, align 4
  %call2 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %4 = load i8*, i8** %file.addr, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @g_file_error_quark()
  %call7 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call7, align 4
  %call8 = call i32 @g_file_error_from_errno(i32 %7)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0)) #6
  %8 = load i8*, i8** %file.addr, align 8
  %call10 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call11 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call11, align 4
  %call12 = call i8* @g_strerror(i32 %9) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %6, i32 %call6, i32 %call8, i8* %call9, i8* %call10, i8* %call12)
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0)) #6
  %10 = load i8*, i8** %brief.addr, align 8
  %call15 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call16 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call14, i8* %call15)
  %11 = bitcast [32 x i8]* %header to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 32, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %call17 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #6
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 4
  store i8 32, i8* %arrayidx, align 1
  %12 = load i32, i32* %bpp, align 4
  %cmp18 = icmp slt i32 %12, 32
  br i1 %cmp18, label %if.then.19, label %if.else.27

if.then.19:                                       ; preds = %if.end.13
  %13 = load i32, i32* %image.addr, align 4
  %call20 = call i8* @gimp_image_get_colormap(i32 %13, i32* %colours)
  call void @g_free(i8* %call20)
  %14 = load i32, i32* %colours, align 4
  %cmp21 = icmp sgt i32 %14, 15
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.then.19
  %arrayidx23 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 5
  store i8 8, i8* %arrayidx23, align 1
  br label %if.end.26

if.else.24:                                       ; preds = %if.then.19
  %arrayidx25 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 5
  store i8 4, i8* %arrayidx25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.29

if.else.27:                                       ; preds = %if.end.13
  %arrayidx28 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 5
  store i8 32, i8* %arrayidx28, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.end.26
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width, align 4
  %rem = urem i32 %16, 256
  %conv = trunc i32 %rem to i8
  %arrayidx30 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 8
  store i8 %conv, i8* %arrayidx30, align 1
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width31, align 4
  %div = udiv i32 %18, 256
  %conv32 = trunc i32 %div to i8
  %arrayidx33 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 9
  store i8 %conv32, i8* %arrayidx33, align 1
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height, align 4
  %rem34 = urem i32 %20, 256
  %conv35 = trunc i32 %rem34 to i8
  %arrayidx36 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 10
  store i8 %conv35, i8* %arrayidx36, align 1
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 2
  %22 = load i32, i32* %height37, align 4
  %div38 = udiv i32 %22, 256
  %conv39 = trunc i32 %div38 to i8
  %arrayidx40 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 11
  store i8 %conv39, i8* %arrayidx40, align 1
  %23 = load i32, i32* %offx, align 4
  %rem41 = srem i32 %23, 256
  %conv42 = trunc i32 %rem41 to i8
  %arrayidx43 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 12
  store i8 %conv42, i8* %arrayidx43, align 1
  %24 = load i32, i32* %offx, align 4
  %div44 = sdiv i32 %24, 256
  %conv45 = trunc i32 %div44 to i8
  %arrayidx46 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 13
  store i8 %conv45, i8* %arrayidx46, align 1
  %25 = load i32, i32* %offy, align 4
  %rem47 = srem i32 %25, 256
  %conv48 = trunc i32 %rem47 to i8
  %arrayidx49 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 14
  store i8 %conv48, i8* %arrayidx49, align 1
  %26 = load i32, i32* %offy, align 4
  %div50 = sdiv i32 %26, 256
  %conv51 = trunc i32 %div50 to i8
  %arrayidx52 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 15
  store i8 %conv51, i8* %arrayidx52, align 1
  %arraydecay53 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call54 = call i64 @fwrite(i8* %arraydecay53, i64 32, i64 1, %struct._IO_FILE* %27)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 1
  %30 = load i32, i32* %width55, align 4
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height56 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 2
  %32 = load i32, i32* %height56, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %28, i32 0, i32 0, i32 %30, i32 %32, i32 1, i32 0)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load i32, i32* %width57, align 4
  %mul = mul i32 %34, 4
  %conv58 = zext i32 %mul to i64
  %call59 = call noalias i8* @g_malloc_n(i64 %conv58, i64 1)
  store i8* %call59, i8** %buffer, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width60 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 1
  %36 = load i32, i32* %width60, align 4
  %add = add i32 %36, 1
  %mul61 = mul i32 %add, 4
  %conv62 = zext i32 %mul61 to i64
  %call63 = call noalias i8* @g_malloc_n(i64 %conv62, i64 1)
  store i8* %call63, i8** %line, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.204, %if.end.29
  %37 = load i32, i32* %i, align 4
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 2
  %39 = load i32, i32* %height64, align 4
  %cmp65 = icmp ult i32 %37, %39
  br i1 %cmp65, label %for.body, label %for.end.206

for.body:                                         ; preds = %for.cond
  %40 = load i8*, i8** %line, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width67 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 1
  %43 = load i32, i32* %width67, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %40, i32 0, i32 %41, i32 %43, i32 1)
  %44 = load i8*, i8** %buffer, align 8
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 1
  %46 = load i32, i32* %width68, align 4
  %conv69 = zext i32 %46 to i64
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 %conv69, i32 1, i1 false)
  %47 = load i32, i32* %bpp, align 4
  %cmp70 = icmp eq i32 %47, 32
  br i1 %cmp70, label %if.then.72, label %if.else.111

if.then.72:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc, %if.then.72
  %48 = load i32, i32* %j, align 4
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width74 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 1
  %50 = load i32, i32* %width74, align 4
  %cmp75 = icmp ult i32 %48, %50
  br i1 %cmp75, label %for.body.77, label %for.end

for.body.77:                                      ; preds = %for.cond.73
  %51 = load i32, i32* %j, align 4
  %mul78 = mul nsw i32 4, %51
  %add79 = add nsw i32 %mul78, 2
  %idxprom = sext i32 %add79 to i64
  %52 = load i8*, i8** %line, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 %idxprom
  %53 = load i8, i8* %arrayidx80, align 1
  %54 = load i32, i32* %j, align 4
  %mul81 = mul nsw i32 4, %54
  %idxprom82 = sext i32 %mul81 to i64
  %55 = load i8*, i8** %buffer, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %55, i64 %idxprom82
  store i8 %53, i8* %arrayidx83, align 1
  %56 = load i32, i32* %j, align 4
  %mul84 = mul nsw i32 4, %56
  %add85 = add nsw i32 %mul84, 1
  %idxprom86 = sext i32 %add85 to i64
  %57 = load i8*, i8** %line, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %57, i64 %idxprom86
  %58 = load i8, i8* %arrayidx87, align 1
  %59 = load i32, i32* %j, align 4
  %mul88 = mul nsw i32 4, %59
  %add89 = add nsw i32 %mul88, 1
  %idxprom90 = sext i32 %add89 to i64
  %60 = load i8*, i8** %buffer, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %60, i64 %idxprom90
  store i8 %58, i8* %arrayidx91, align 1
  %61 = load i32, i32* %j, align 4
  %mul92 = mul nsw i32 4, %61
  %add93 = add nsw i32 %mul92, 0
  %idxprom94 = sext i32 %add93 to i64
  %62 = load i8*, i8** %line, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %62, i64 %idxprom94
  %63 = load i8, i8* %arrayidx95, align 1
  %64 = load i32, i32* %j, align 4
  %mul96 = mul nsw i32 4, %64
  %add97 = add nsw i32 %mul96, 2
  %idxprom98 = sext i32 %add97 to i64
  %65 = load i8*, i8** %buffer, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %65, i64 %idxprom98
  store i8 %63, i8* %arrayidx99, align 1
  %66 = load i32, i32* %j, align 4
  %mul100 = mul nsw i32 4, %66
  %add101 = add nsw i32 %mul100, 3
  %idxprom102 = sext i32 %add101 to i64
  %67 = load i8*, i8** %line, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %67, i64 %idxprom102
  %68 = load i8, i8* %arrayidx103, align 1
  %69 = load i32, i32* %j, align 4
  %mul104 = mul nsw i32 4, %69
  %add105 = add nsw i32 %mul104, 3
  %idxprom106 = sext i32 %add105 to i64
  %70 = load i8*, i8** %buffer, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %70, i64 %idxprom106
  store i8 %68, i8* %arrayidx107, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.77
  %71 = load i32, i32* %j, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.73

for.end:                                          ; preds = %for.cond.73
  %72 = load i8*, i8** %buffer, align 8
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width108 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %73, i32 0, i32 1
  %74 = load i32, i32* %width108, align 4
  %conv109 = zext i32 %74 to i64
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call110 = call i64 @fwrite(i8* %72, i64 %conv109, i64 4, %struct._IO_FILE* %75)
  br label %if.end.197

if.else.111:                                      ; preds = %for.body
  %76 = load i32, i32* %colours, align 4
  %cmp112 = icmp sgt i32 %76, 16
  br i1 %cmp112, label %if.then.114, label %if.else.143

if.then.114:                                      ; preds = %if.else.111
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.136, %if.then.114
  %77 = load i32, i32* %j, align 4
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width116 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %78, i32 0, i32 1
  %79 = load i32, i32* %width116, align 4
  %mul117 = mul i32 %79, 2
  %cmp118 = icmp ult i32 %77, %mul117
  br i1 %cmp118, label %for.body.120, label %for.end.139

for.body.120:                                     ; preds = %for.cond.115
  %80 = load i32, i32* %j, align 4
  %add121 = add nsw i32 %80, 1
  %idxprom122 = sext i32 %add121 to i64
  %81 = load i8*, i8** %line, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %81, i64 %idxprom122
  %82 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %82 to i32
  %cmp125 = icmp sgt i32 %conv124, 127
  br i1 %cmp125, label %if.then.127, label %if.end.135

if.then.127:                                      ; preds = %for.body.120
  %83 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %83 to i64
  %84 = load i8*, i8** %line, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %84, i64 %idxprom128
  %85 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %85 to i32
  %add131 = add nsw i32 %conv130, 1
  %conv132 = trunc i32 %add131 to i8
  %86 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %86 to i64
  %87 = load i8*, i8** %buffer, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %87, i64 %idxprom133
  store i8 %conv132, i8* %arrayidx134, align 1
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.127, %for.body.120
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %88 = load i32, i32* %j, align 4
  %add137 = add nsw i32 %88, 2
  store i32 %add137, i32* %j, align 4
  %89 = load i32, i32* %k, align 4
  %inc138 = add nsw i32 %89, 1
  store i32 %inc138, i32* %k, align 4
  br label %for.cond.115

for.end.139:                                      ; preds = %for.cond.115
  %90 = load i8*, i8** %buffer, align 8
  %91 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width140 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %91, i32 0, i32 1
  %92 = load i32, i32* %width140, align 4
  %conv141 = zext i32 %92 to i64
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call142 = call i64 @fwrite(i8* %90, i64 %conv141, i64 1, %struct._IO_FILE* %93)
  br label %if.end.196

if.else.143:                                      ; preds = %if.else.111
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.187, %if.else.143
  %94 = load i32, i32* %j, align 4
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width145 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %95, i32 0, i32 1
  %96 = load i32, i32* %width145, align 4
  %mul146 = mul i32 %96, 2
  %cmp147 = icmp ult i32 %94, %mul146
  br i1 %cmp147, label %for.body.149, label %for.end.190

for.body.149:                                     ; preds = %for.cond.144
  %97 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %97 to i64
  %98 = load i8*, i8** %buffer, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %98, i64 %idxprom150
  store i8 0, i8* %arrayidx151, align 1
  %99 = load i32, i32* %j, align 4
  %add152 = add nsw i32 %99, 1
  %idxprom153 = sext i32 %add152 to i64
  %100 = load i8*, i8** %line, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %100, i64 %idxprom153
  %101 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %101 to i32
  %cmp156 = icmp sgt i32 %conv155, 127
  br i1 %cmp156, label %if.then.158, label %if.end.168

if.then.158:                                      ; preds = %for.body.149
  %102 = load i32, i32* %j, align 4
  %idxprom159 = sext i32 %102 to i64
  %103 = load i8*, i8** %line, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %103, i64 %idxprom159
  %104 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %104 to i32
  %add162 = add nsw i32 %conv161, 1
  %shl = shl i32 %add162, 4
  %105 = load i32, i32* %k, align 4
  %idxprom163 = sext i32 %105 to i64
  %106 = load i8*, i8** %buffer, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %106, i64 %idxprom163
  %107 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %107 to i32
  %add166 = add nsw i32 %conv165, %shl
  %conv167 = trunc i32 %add166 to i8
  store i8 %conv167, i8* %arrayidx164, align 1
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.158, %for.body.149
  %108 = load i32, i32* %j, align 4
  %add169 = add nsw i32 %108, 3
  %idxprom170 = sext i32 %add169 to i64
  %109 = load i8*, i8** %line, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %109, i64 %idxprom170
  %110 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %110 to i32
  %cmp173 = icmp sgt i32 %conv172, 127
  br i1 %cmp173, label %if.then.175, label %if.end.186

if.then.175:                                      ; preds = %if.end.168
  %111 = load i32, i32* %j, align 4
  %add176 = add nsw i32 %111, 2
  %idxprom177 = sext i32 %add176 to i64
  %112 = load i8*, i8** %line, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %112, i64 %idxprom177
  %113 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %113 to i32
  %add180 = add nsw i32 %conv179, 1
  %114 = load i32, i32* %k, align 4
  %idxprom181 = sext i32 %114 to i64
  %115 = load i8*, i8** %buffer, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %115, i64 %idxprom181
  %116 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %116 to i32
  %add184 = add nsw i32 %conv183, %add180
  %conv185 = trunc i32 %add184 to i8
  store i8 %conv185, i8* %arrayidx182, align 1
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.175, %if.end.168
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %117 = load i32, i32* %j, align 4
  %add188 = add nsw i32 %117, 4
  store i32 %add188, i32* %j, align 4
  %118 = load i32, i32* %k, align 4
  %inc189 = add nsw i32 %118, 1
  store i32 %inc189, i32* %k, align 4
  br label %for.cond.144

for.end.190:                                      ; preds = %for.cond.144
  %119 = load i8*, i8** %buffer, align 8
  %120 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width191 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %120, i32 0, i32 1
  %121 = load i32, i32* %width191, align 4
  %add192 = add i32 %121, 1
  %div193 = udiv i32 %add192, 2
  %conv194 = zext i32 %div193 to i64
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call195 = call i64 @fwrite(i8* %119, i64 %conv194, i64 1, %struct._IO_FILE* %122)
  br label %if.end.196

if.end.196:                                       ; preds = %for.end.190, %for.end.139
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %for.end
  %123 = load i32, i32* %i, align 4
  %conv198 = sitofp i32 %123 to float
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height199 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %124, i32 0, i32 2
  %125 = load i32, i32* %height199, align 4
  %conv200 = uitofp i32 %125 to float
  %div201 = fdiv float %conv198, %conv200
  %conv202 = fpext float %div201 to double
  %call203 = call i32 @gimp_progress_update(double %conv202)
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.197
  %126 = load i32, i32* %i, align 4
  %inc205 = add nsw i32 %126, 1
  store i32 %inc205, i32* %i, align 4
  br label %for.cond

for.end.206:                                      ; preds = %for.cond
  %call207 = call i32 @gimp_progress_update(double 1.000000e+00)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call208 = call i32 @fclose(%struct._IO_FILE* %127)
  %128 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %128)
  %129 = load i8*, i8** %line, align 8
  call void @g_free(i8* %129)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.206, %if.then.5
  %130 = load i32, i32* %retval
  ret i32 %130
}

declare i32 @gimp_image_delete(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

declare void @g_free(i8*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_palette(i8* %file, %struct._IO_FILE* %fp, i8* %palette, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %palette.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %header = alloca [32 x i8], align 16
  %buffer = alloca [2 x i8], align 1
  %file_mark = alloca i8, align 1
  %bpp = alloca i8, align 1
  %i = alloca i32, align 4
  %colours = alloca i32, align 4
  %n_read = alloca i64, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %palette, i8** %palette.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %colours, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %0)
  store i64 %call, i64* %n_read, align 8
  %1 = load i64, i64* %n_read, align 8
  %cmp = icmp ult i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i32 0, i32 0)) #6
  %3 = load i8*, i8** %file.addr, align 8
  %call3 = call i8* @gimp_filename_to_utf8(i8* %3)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 24, i8* %call2, i8* %call3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %call5 = call i32 @strncmp(i8* %arraydecay4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i64 4) #8
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i64 @fread(i8* %add.ptr, i64 28, i64 1, %struct._IO_FILE* %4)
  store i64 %call8, i64* %n_read, align 8
  %5 = load i64, i64* %n_read, align 8
  %cmp9 = icmp ult i64 %5, 1
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.then.6
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @g_file_error_quark()
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i32 0, i32 0)) #6
  %7 = load i8*, i8** %file.addr, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %7)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %6, i32 %call11, i32 24, i8* %call12, i8* %call13)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.6
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 4
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* %file_mark, align 1
  %9 = load i8, i8* %file_mark, align 1
  %conv = zext i8 %9 to i32
  %cmp15 = icmp ne i32 %conv, 16
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.14
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @g_file_error_quark()
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0)) #6
  %11 = load i8*, i8** %file.addr, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %11)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %10, i32 %call18, i32 24, i8* %call19, i8* %call20)
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.14
  %arrayidx22 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 5
  %12 = load i8, i8* %arrayidx22, align 1
  store i8 %12, i8* %bpp, align 1
  %13 = load i8, i8* %bpp, align 1
  %conv23 = zext i8 %13 to i32
  %cmp24 = icmp ne i32 %conv23, 12
  br i1 %cmp24, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.21
  %14 = load i8, i8* %bpp, align 1
  %conv26 = zext i8 %14 to i32
  %cmp27 = icmp ne i32 %conv26, 24
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %land.lhs.true
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call i32 @g_file_error_quark()
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0)) #6
  %16 = load i8*, i8** %file.addr, align 8
  %call32 = call i8* @gimp_filename_to_utf8(i8* %16)
  %17 = load i8, i8* %bpp, align 1
  %conv33 = zext i8 %17 to i32
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call30, i32 24, i8* %call31, i8* %call32, i32 %conv33)
  store i32 -1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true, %if.end.21
  %arrayidx35 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 8
  %18 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %18 to i32
  %arrayidx37 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 9
  %19 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %19 to i32
  %mul = mul nsw i32 %conv38, 256
  %add = add nsw i32 %conv36, %mul
  store i32 %add, i32* %colours, align 4
  %20 = load i32, i32* %colours, align 4
  %cmp39 = icmp ne i32 %20, 16
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.48

land.lhs.true.41:                                 ; preds = %if.end.34
  %21 = load i32, i32* %colours, align 4
  %cmp42 = icmp ne i32 %21, 256
  br i1 %cmp42, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %land.lhs.true.41
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call45 = call i32 @g_file_error_quark()
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i32 0, i32 0)) #6
  %23 = load i8*, i8** %file.addr, align 8
  %call47 = call i8* @gimp_filename_to_utf8(i8* %23)
  %24 = load i32, i32* %colours, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %22, i32 %call45, i32 24, i8* %call46, i8* %call47, i32 %24)
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true.41, %if.end.34
  %25 = load i8, i8* %bpp, align 1
  %conv49 = zext i8 %25 to i32
  switch i32 %conv49, label %sw.default [
    i32 12, label %sw.bb
    i32 24, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %if.end.48
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %colours, align 4
  %cmp50 = icmp slt i32 %26, %27
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay52 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i32 0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call53 = call i64 @fread(i8* %arraydecay52, i64 1, i64 2, %struct._IO_FILE* %28)
  store i64 %call53, i64* %n_read, align 8
  %29 = load i64, i64* %n_read, align 8
  %cmp54 = icmp ult i64 %29, 2
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %for.body
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call57 = call i32 @g_file_error_quark()
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0)) #6
  %31 = load i8*, i8** %file.addr, align 8
  %call59 = call i8* @gimp_filename_to_utf8(i8* %31)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %30, i32 %call57, i32 24, i8* %call58, i8* %call59)
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %for.body
  %arrayidx61 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i64 0
  %32 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %32 to i32
  %and = and i32 %conv62, 240
  %conv63 = trunc i32 %and to i8
  %33 = load i32, i32* %i, align 4
  %mul64 = mul nsw i32 %33, 3
  %idxprom = sext i32 %mul64 to i64
  %34 = load i8*, i8** %palette.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %34, i64 %idxprom
  store i8 %conv63, i8* %arrayidx65, align 1
  %arrayidx66 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i64 1
  %35 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %35 to i32
  %and68 = and i32 %conv67, 15
  %mul69 = mul nsw i32 %and68, 16
  %conv70 = trunc i32 %mul69 to i8
  %36 = load i32, i32* %i, align 4
  %mul71 = mul nsw i32 %36, 3
  %add72 = add nsw i32 %mul71, 1
  %idxprom73 = sext i32 %add72 to i64
  %37 = load i8*, i8** %palette.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %37, i64 %idxprom73
  store i8 %conv70, i8* %arrayidx74, align 1
  %arrayidx75 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i64 0
  %38 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %38 to i32
  %and77 = and i32 %conv76, 15
  %mul78 = mul nsw i32 %and77, 16
  %conv79 = trunc i32 %mul78 to i8
  %39 = load i32, i32* %i, align 4
  %mul80 = mul nsw i32 %39, 3
  %add81 = add nsw i32 %mul80, 2
  %idxprom82 = sext i32 %add81 to i64
  %40 = load i8*, i8** %palette.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %40, i64 %idxprom82
  store i8 %conv79, i8* %arrayidx83, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.48
  %42 = load i8*, i8** %palette.addr, align 8
  %43 = load i32, i32* %colours, align 4
  %conv85 = sext i32 %43 to i64
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call86 = call i64 @fread(i8* %42, i64 %conv85, i64 3, %struct._IO_FILE* %44)
  store i64 %call86, i64* %n_read, align 8
  %45 = load i64, i64* %n_read, align 8
  %cmp87 = icmp ult i64 %45, 3
  br i1 %cmp87, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %sw.bb.84
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call90 = call i32 @g_file_error_quark()
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0)) #6
  %47 = load i8*, i8** %file.addr, align 8
  %call92 = call i8* @gimp_filename_to_utf8(i8* %47)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %46, i32 %call90, i32 24, i8* %call91, i8* %call92)
  store i32 -1, i32* %retval
  br label %return

if.end.93:                                        ; preds = %sw.bb.84
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.48
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 710, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.load_palette, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.93, %for.end
  br label %if.end.136

if.else:                                          ; preds = %if.end
  store i32 16, i32* %colours, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call94 = call i32 @fseek(%struct._IO_FILE* %48, i64 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.133, %if.else
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %colours, align 4
  %cmp96 = icmp slt i32 %49, %50
  br i1 %cmp96, label %for.body.98, label %for.end.135

for.body.98:                                      ; preds = %for.cond.95
  %arraydecay99 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call100 = call i64 @fread(i8* %arraydecay99, i64 1, i64 2, %struct._IO_FILE* %51)
  store i64 %call100, i64* %n_read, align 8
  %52 = load i64, i64* %n_read, align 8
  %cmp101 = icmp ult i64 %52, 2
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %for.body.98
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call104 = call i32 @g_file_error_quark()
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0)) #6
  %54 = load i8*, i8** %file.addr, align 8
  %call106 = call i8* @gimp_filename_to_utf8(i8* %54)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %53, i32 %call104, i32 24, i8* %call105, i8* %call106)
  store i32 -1, i32* %retval
  br label %return

if.end.107:                                       ; preds = %for.body.98
  %arrayidx108 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i64 0
  %55 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %55 to i32
  %and110 = and i32 %conv109, 240
  %conv111 = trunc i32 %and110 to i8
  %56 = load i32, i32* %i, align 4
  %mul112 = mul nsw i32 %56, 3
  %idxprom113 = sext i32 %mul112 to i64
  %57 = load i8*, i8** %palette.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %57, i64 %idxprom113
  store i8 %conv111, i8* %arrayidx114, align 1
  %arrayidx115 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i64 1
  %58 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %58 to i32
  %and117 = and i32 %conv116, 15
  %mul118 = mul nsw i32 %and117, 16
  %conv119 = trunc i32 %mul118 to i8
  %59 = load i32, i32* %i, align 4
  %mul120 = mul nsw i32 %59, 3
  %add121 = add nsw i32 %mul120, 1
  %idxprom122 = sext i32 %add121 to i64
  %60 = load i8*, i8** %palette.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %60, i64 %idxprom122
  store i8 %conv119, i8* %arrayidx123, align 1
  %arrayidx124 = getelementptr inbounds [2 x i8], [2 x i8]* %buffer, i32 0, i64 0
  %61 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %61 to i32
  %and126 = and i32 %conv125, 15
  %mul127 = mul nsw i32 %and126, 16
  %conv128 = trunc i32 %mul127 to i8
  %62 = load i32, i32* %i, align 4
  %mul129 = mul nsw i32 %62, 3
  %add130 = add nsw i32 %mul129, 2
  %idxprom131 = sext i32 %add130 to i64
  %63 = load i8*, i8** %palette.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %63, i64 %idxprom131
  store i8 %conv128, i8* %arrayidx132, align 1
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.107
  %64 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %64, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.95

for.end.135:                                      ; preds = %for.cond.95
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.135, %sw.epilog
  %65 = load i32, i32* %colours, align 4
  store i32 %65, i32* %retval
  br label %return

return:                                           ; preds = %if.end.136, %if.then.103, %if.then.89, %if.then.56, %if.then.44, %if.then.29, %if.then.17, %if.then.10, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

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
