; ModuleID = './plug-ins/common/file-raw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.RawConfig = type { i32, i32, i32, i32, i32, i32 }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkFileChooser = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.RawGimpData = type { %struct._IO_FILE*, %struct._GimpDrawable*, %struct._GimpPixelRgn, i32, [768 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GFile = type opaque
%struct._GFileInfo = type opaque
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GCancellablePrivate = type opaque
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"file-raw-load\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Load raw images, specifying image information\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"timecop, pg@futureware.at\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Aug 2004\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Raw image data\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"file-raw-save\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Dump images to disk in raw format\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"INDEXED, GRAY, RGB, RGBA\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@runtime = internal global %struct.RawConfig* null, align 8
@preview_fd = internal global i32 -1, align 4
@.str.25 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"file-raw\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Load Image from Raw Data\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"gimp-file-raw\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"RGB Alpha\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"RGB565\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Planar RGB\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Indexed\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Indexed Alpha\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Image _Type:\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"O_ffset:\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"R, G, B (normal)\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"B, G, R, X (BMP style)\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"_Palette Type:\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Off_set:\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"Select Palette File\00", align 1
@palfile = internal global i8* null, align 8
@.str.51 = private unnamed_addr constant [15 x i8] c"Pal_ette File:\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"standard::size\00", align 1
@preview_cmap_update = internal global i32 1, align 4
@preview_cmap = internal global [1024 x i8] zeroinitializer, align 16
@.str.54 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"fread failed\0A\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Raw Image\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"RGB Save Type\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Standard (R,G,B)\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"Planar (RRR,GGG,BBB)\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"Indexed Palette Type\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c".pal\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0))
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
  %error = alloca %struct._GError*, align 8
  %image_id = alloca i32, align 4
  %drawable_id = alloca i32, align 4
  %export = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %export, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #5
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
  %call4 = call noalias i8* @g_malloc0_n(i64 1, i64 24)
  %4 = bitcast i8* %call4 to %struct.RawConfig*
  store %struct.RawConfig* %4, %struct.RawConfig** @runtime, align 8
  %5 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %5, i32 0, i32 0
  store i32 0, i32* %file_offset, align 4
  %6 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %6, i32 0, i32 1
  store i32 350, i32* %image_width, align 4
  %7 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %7, i32 0, i32 2
  store i32 350, i32* %image_height, align 4
  %8 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %8, i32 0, i32 4
  store i32 0, i32* %palette_offset, align 4
  %9 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %9, i32 0, i32 5
  store i32 0, i32* %palette_type, align 4
  %10 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.else.45

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %run_mode, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.else.31

if.then.7:                                        ; preds = %if.then
  %12 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %13 = bitcast %struct.RawConfig* %12 to i8*
  %call8 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* %13)
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 1
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data10 to i8**
  %15 = load i8*, i8** %d_string, align 8
  %call11 = call i32 (i8*, i32, ...) @open(i8* %15, i32 0, i32 0)
  store i32 %call11, i32* @preview_fd, align 4
  %16 = load i32, i32* @preview_fd, align 4
  %cmp12 = icmp slt i32 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.7
  %call14 = call i32 @g_file_error_quark()
  %call15 = call i32* @__errno_location() #6
  %17 = load i32, i32* %call15, align 4
  %call16 = call i32 @g_file_error_from_errno(i32 %17)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0)) #5
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 1
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_string20 = bitcast %union._GimpParamData* %data19 to i8**
  %19 = load i8*, i8** %d_string20, align 8
  %call21 = call i8* @gimp_filename_to_utf8(i8* %19)
  %call22 = call i32* @__errno_location() #6
  %20 = load i32, i32* %call22, align 4
  %call23 = call i8* @g_strerror(i32 %20) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 %call14, i32 %call16, i8* %call17, i8* %call21, i8* %call23)
  store i32 0, i32* %status, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.then.7
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 1
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_string26 = bitcast %union._GimpParamData* %data25 to i8**
  %22 = load i8*, i8** %d_string26, align 8
  %call27 = call i32 @load_dialog(i8* %22)
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %if.end, label %if.then.28

if.then.28:                                       ; preds = %if.else
  store i32 4, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else
  %23 = load i32, i32* @preview_fd, align 4
  %call29 = call i32 @close(i32 %23)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.13
  br label %if.end.32

if.else.31:                                       ; preds = %if.then
  store i32 1, i32* %status, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.end.30
  %24 = load i32, i32* %status, align 4
  %cmp33 = icmp eq i32 %24, 3
  br i1 %cmp33, label %if.then.34, label %if.end.44

if.then.34:                                       ; preds = %if.end.32
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 1
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_string37 = bitcast %union._GimpParamData* %data36 to i8**
  %26 = load i8*, i8** %d_string37, align 8
  %call38 = call i32 @load_image(i8* %26, %struct._GError** %error)
  store i32 %call38, i32* %image_id, align 4
  %27 = load i32, i32* %image_id, align 4
  %cmp39 = icmp ne i32 %27, -1
  br i1 %cmp39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.then.34
  %28 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %29 = bitcast %struct.RawConfig* %28 to i8*
  %call41 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* %29, i32 24)
  %30 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %30, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %31 = load i32, i32* %image_id, align 4
  store i32 %31, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.43

if.else.42:                                       ; preds = %if.then.34
  store i32 0, i32* %status, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.32
  br label %if.end.87

if.else.45:                                       ; preds = %do.end
  %32 = load i8*, i8** %name.addr, align 8
  %call46 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0)) #7
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.86

if.then.48:                                       ; preds = %if.else.45
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 1
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %34 = load i32, i32* %d_int3251, align 4
  store i32 %34, i32* %image_id, align 4
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 2
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_int3254 = bitcast %union._GimpParamData* %data53 to i32*
  %36 = load i32, i32* %d_int3254, align 4
  store i32 %36, i32* %drawable_id, align 4
  %call55 = call i32 @gimp_export_image(i32* %image_id, i32* %drawable_id, i8* null, i32 23)
  store i32 %call55, i32* %export, align 4
  %37 = load i32, i32* %export, align 4
  %cmp56 = icmp eq i32 %37, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.48
  %38 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %38, align 4
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.58:                                        ; preds = %if.then.48
  %39 = load i32, i32* %run_mode, align 4
  %cmp59 = icmp eq i32 %39, 0
  br i1 %cmp59, label %if.then.60, label %if.else.73

if.then.60:                                       ; preds = %if.end.58
  %40 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %41 = bitcast %struct.RawConfig* %40 to i8*
  %call61 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* %41)
  %42 = load i32, i32* %nparams.addr, align 4
  %cmp62 = icmp ne i32 %42, 5
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.then.60
  store i32 1, i32* %status, align 4
  br label %if.end.72

if.else.64:                                       ; preds = %if.then.60
  %43 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 3
  %data66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx65, i32 0, i32 1
  %d_string67 = bitcast %union._GimpParamData* %data66 to i8**
  %44 = load i8*, i8** %d_string67, align 8
  %45 = load i32, i32* %image_id, align 4
  %46 = load i32, i32* %drawable_id, align 4
  %call68 = call i32 @save_dialog(i8* %44, i32 %45, i32 %46)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.else.64
  store i32 4, i32* %status, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.else.64
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.63
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.58
  store i32 1, i32* %status, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.end.72
  %47 = load i32, i32* %status, align 4
  %cmp75 = icmp eq i32 %47, 3
  br i1 %cmp75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.74
  %48 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 3
  %data78 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx77, i32 0, i32 1
  %d_string79 = bitcast %union._GimpParamData* %data78 to i8**
  %49 = load i8*, i8** %d_string79, align 8
  %50 = load i32, i32* %image_id, align 4
  %51 = load i32, i32* %drawable_id, align 4
  %call80 = call i32 @save_image(i8* %49, i32 %50, i32 %51, %struct._GError** %error)
  store i32 %call80, i32* %status, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.end.74
  %52 = load i32, i32* %export, align 4
  %cmp82 = icmp eq i32 %52, 2
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.81
  %53 = load i32, i32* %image_id, align 4
  %call84 = call i32 @gimp_image_delete(i32 %53)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.81
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.else.45
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.44
  %54 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %55 = bitcast %struct.RawConfig* %54 to i8*
  call void @g_free(i8* %55)
  %56 = load i32, i32* %status, align 4
  %cmp88 = icmp ne i32 %56, 3
  br i1 %cmp88, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %if.end.87
  %57 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool89 = icmp ne %struct._GError* %57, null
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true
  %58 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %58, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %59 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %59, i32 0, i32 2
  %60 = load i8*, i8** %message, align 8
  store i8* %60, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %land.lhs.true, %if.end.87
  %61 = load i32, i32* %status, align 4
  store i32 %61, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.91, %if.then.57
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

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

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

; Function Attrs: nounwind uwtable
define internal i32 @load_dialog(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %file_size = alloca i64, align 8
  %run = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @get_file_info(i8* %0)
  store i64 %call, i64* %file_size, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 1)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %main_vbox, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %6, i32 12)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %9)
  %10 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 1, i32 1, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call13 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %frame, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_frame_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %16, i32 1)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call18 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %preview, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %22, i32 350, i32 350)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreviewArea*)* @preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #5
  %call23 = call %struct._GtkWidget* @gimp_frame_new(i8* %call22)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %frame, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call26 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %table, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call27)
  %37 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %37, i32 6)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %40, i32 4)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_container_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call31)
  %43 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkContainer*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %43, %struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)) #5
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #5
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #5
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)) #5
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0)) #5
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0)) #5
  %call39 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call33, i32 0, i8* %call34, i32 1, i8* %call35, i32 2, i8* %call36, i32 3, i8* %call37, i32 4, i8* %call38, i32 5, i8* null)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %combo, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_int_combo_box_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call40)
  %48 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpIntComboBox*
  %49 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %49, i32 0, i32 3
  %50 = load i32, i32* %image_type, align 4
  %call42 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %48, i32 %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call43)
  %53 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0)) #5
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call46 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %53, i32 0, i32 0, i8* %call45, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %54, i32 2, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type47 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %57, i32 0, i32 3
  %58 = bitcast i32* %image_type47 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreviewArea*)* @preview_update to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 2)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call50)
  %65 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #5
  %66 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %66, i32 0, i32 0
  %67 = load i32, i32* %file_offset, align 4
  %conv = sitofp i32 %67 to double
  %68 = load i64, i64* %file_size, align 8
  %conv53 = sitofp i64 %68 to double
  %call54 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %65, i32 0, i32 1, i8* %call52, i32 -1, i32 9, double %conv, double 0.000000e+00, double %conv53, double 1.000000e+00, double 1.000000e+03, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call54, %struct._GtkObject** %adj, align 8
  %69 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %70 = bitcast %struct._GtkObject* %69 to i8*
  %71 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset55 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %71, i32 0, i32 0
  %72 = bitcast i32* %file_offset55 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %74 = bitcast %struct._GtkObject* %73 to i8*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreviewArea*)* @preview_update to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call58)
  %79 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0)) #5
  %80 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %80, i32 0, i32 1
  %81 = load i32, i32* %image_width, align 4
  %conv61 = sitofp i32 %81 to double
  %82 = load i64, i64* %file_size, align 8
  %conv62 = sitofp i64 %82 to double
  %call63 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %79, i32 0, i32 2, i8* %call60, i32 -1, i32 9, double %conv61, double 1.000000e+00, double %conv62, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call63, %struct._GtkObject** %adj, align 8
  %83 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %84 = bitcast %struct._GtkObject* %83 to i8*
  %85 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width64 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %85, i32 0, i32 1
  %86 = bitcast i32* %image_width64 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %88 = bitcast %struct._GtkObject* %87 to i8*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreviewArea*)* @preview_update to void ()*), i8* %90, void (i8*, %struct._GClosure*)* null, i32 2)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call67)
  %93 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0)) #5
  %94 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %94, i32 0, i32 2
  %95 = load i32, i32* %image_height, align 4
  %conv70 = sitofp i32 %95 to double
  %96 = load i64, i64* %file_size, align 8
  %conv71 = sitofp i64 %96 to double
  %call72 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %93, i32 0, i32 3, i8* %call69, i32 -1, i32 9, double %conv70, double 1.000000e+00, double %conv71, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call72, %struct._GtkObject** %adj, align 8
  %97 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %98 = bitcast %struct._GtkObject* %97 to i8*
  %99 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height73 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %99, i32 0, i32 2
  %100 = bitcast i32* %image_height73 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %100, void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %102 = bitcast %struct._GtkObject* %101 to i8*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreviewArea*)* @preview_update to void ()*), i8* %104, void (i8*, %struct._GClosure*)* null, i32 2)
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0)) #5
  %call77 = call %struct._GtkWidget* @gimp_frame_new(i8* %call76)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %frame, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call78)
  %107 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %call80 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %table, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_table_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call81)
  %112 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %112, i32 6)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_table_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call83)
  %115 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %115, i32 4)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_container_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call85)
  %118 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkContainer*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %118, %struct._GtkWidget* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0)) #5
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0)) #5
  %call89 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call87, i32 0, i8* %call88, i32 1, i8* null)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %combo, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_int_combo_box_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call90)
  %123 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpIntComboBox*
  %124 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %124, i32 0, i32 5
  %125 = load i32, i32* %palette_type, align 4
  %call92 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %123, i32 %125)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call93)
  %128 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0)) #5
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call96 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %128, i32 0, i32 0, i8* %call95, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %129, i32 2, i32 0)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  %132 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type97 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %132, i32 0, i32 5
  %133 = bitcast i32* %palette_type97 to i8*
  %call98 = call i64 @g_signal_connect_data(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %133, void (i8*, %struct._GClosure*)* null, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %135 = bitcast %struct._GtkWidget* %134 to i8*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %137 = bitcast %struct._GtkWidget* %136 to i8*
  %call99 = call i64 @g_signal_connect_data(i8* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreviewArea*)* @palette_update to void ()*), i8* %137, void (i8*, %struct._GClosure*)* null, i32 2)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_table_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call100)
  %140 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkTable*
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #5
  %141 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %141, i32 0, i32 4
  %142 = load i32, i32* %palette_offset, align 4
  %conv103 = sitofp i32 %142 to double
  %call104 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %140, i32 0, i32 1, i8* %call102, i32 -1, i32 0, double %conv103, double 0.000000e+00, double 0x4170000000000000, double 1.000000e+00, double 7.680000e+02, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call104, %struct._GtkObject** %adj, align 8
  %143 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %144 = bitcast %struct._GtkObject* %143 to i8*
  %145 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_offset105 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %145, i32 0, i32 4
  %146 = bitcast i32* %palette_offset105 to i8*
  %call106 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 0)
  %147 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %148 = bitcast %struct._GtkObject* %147 to i8*
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %150 = bitcast %struct._GtkWidget* %149 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreviewArea*)* @palette_update to void ()*), i8* %150, void (i8*, %struct._GClosure*)* null, i32 2)
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0)) #5
  %call109 = call %struct._GtkWidget* @gtk_file_chooser_button_new(i8* %call108, i32 0)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %button, align 8
  %151 = load i8*, i8** @palfile, align 8
  %tobool = icmp ne i8* %151, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_file_chooser_get_type() #6
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call110)
  %154 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkFileChooser*
  %155 = load i8*, i8** @palfile, align 8
  %call112 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %154, i8* %155)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_table_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call113)
  %158 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkTable*
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0)) #5
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call116 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %158, i32 0, i32 2, i8* %call115, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %159, i32 2, i32 0)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %161 = bitcast %struct._GtkWidget* %160 to i8*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %163 = bitcast %struct._GtkWidget* %162 to i8*
  %call117 = call i64 @g_signal_connect_data(i8* %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, %struct._GimpPreviewArea*)* @palette_callback to void ()*), i8* %163, void (i8*, %struct._GClosure*)* null, i32 0)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %164)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_dialog_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call118)
  %167 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpDialog*
  %call120 = call i32 @gimp_dialog_run(%struct._GimpDialog* %167)
  %cmp = icmp eq i32 %call120, -5
  %conv121 = zext i1 %cmp to i32
  store i32 %conv121, i32* %run, align 4
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %168)
  %169 = load i32, i32* %run, align 4
  ret i32 %169
}

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %data = alloca %struct.RawGimpData*, align 8
  %layer_id = alloca i32, align 4
  %ltype = alloca i32, align 4
  %itype = alloca i32, align 4
  %size = alloca i64, align 8
  %bpp = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 -1, i32* %layer_id, align 4
  store i32 0, i32* %ltype, align 4
  store i32 0, i32* %itype, align 4
  store i32 0, i32* %bpp, align 4
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 840)
  %0 = bitcast i8* %call to %struct.RawGimpData*
  store %struct.RawGimpData* %0, %struct.RawGimpData** %data, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0))
  %2 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %fp = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %2, i32 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %fp2 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @g_file_error_quark()
  %call4 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call4, align 4
  %call5 = call i32 @g_file_error_from_errno(i32 %6)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0)) #5
  %7 = load i8*, i8** %filename.addr, align 8
  %call7 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call8 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %8) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call3, i32 %call5, i8* %call6, i8* %call7, i8* %call9)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call12 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call10, i8* %call11)
  %10 = load i8*, i8** %filename.addr, align 8
  %call13 = call i64 @get_file_info(i8* %10)
  store i64 %call13, i64* %size, align 8
  %11 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %11, i32 0, i32 3
  %12 = load i32, i32* %image_type, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.14
    i32 1, label %sw.bb.15
    i32 4, label %sw.bb.16
    i32 5, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  store i32 3, i32* %bpp, align 4
  store i32 0, i32* %ltype, align 4
  store i32 0, i32* %itype, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  store i32 2, i32* %bpp, align 4
  store i32 0, i32* %ltype, align 4
  store i32 0, i32* %itype, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  store i32 4, i32* %bpp, align 4
  store i32 1, i32* %ltype, align 4
  store i32 0, i32* %itype, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  store i32 1, i32* %bpp, align 4
  store i32 4, i32* %ltype, align 4
  store i32 2, i32* %itype, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  store i32 2, i32* %bpp, align 4
  store i32 5, i32* %ltype, align 4
  store i32 2, i32* %itype, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb
  %13 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %13, i32 0, i32 2
  %14 = load i32, i32* %image_height, align 4
  %conv = sext i32 %14 to i64
  %15 = load i64, i64* %size, align 8
  %16 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %16, i32 0, i32 1
  %17 = load i32, i32* %image_width, align 4
  %conv18 = sext i32 %17 to i64
  %div = sdiv i64 %15, %conv18
  %18 = load i32, i32* %bpp, align 4
  %conv19 = sext i32 %18 to i64
  %div20 = sdiv i64 %div, %conv19
  %cmp = icmp sgt i64 %conv, %div20
  br i1 %cmp, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %sw.epilog
  %19 = load i64, i64* %size, align 8
  %20 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width23 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %20, i32 0, i32 1
  %21 = load i32, i32* %image_width23, align 4
  %conv24 = sext i32 %21 to i64
  %div25 = sdiv i64 %19, %conv24
  %22 = load i32, i32* %bpp, align 4
  %conv26 = sext i32 %22 to i64
  %div27 = sdiv i64 %div25, %conv26
  %conv28 = trunc i64 %div27 to i32
  %23 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height29 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %23, i32 0, i32 2
  store i32 %conv28, i32* %image_height29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %sw.epilog
  %24 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width31 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %24, i32 0, i32 1
  %25 = load i32, i32* %image_width31, align 4
  %26 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height32 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %26, i32 0, i32 2
  %27 = load i32, i32* %image_height32, align 4
  %28 = load i32, i32* %itype, align 4
  %call33 = call i32 @gimp_image_new(i32 %25, i32 %27, i32 %28)
  %29 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %image_id = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %29, i32 0, i32 3
  store i32 %call33, i32* %image_id, align 4
  %30 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %image_id34 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %30, i32 0, i32 3
  %31 = load i32, i32* %image_id34, align 4
  %32 = load i8*, i8** %filename.addr, align 8
  %call35 = call i32 @gimp_image_set_filename(i32 %31, i8* %32)
  %33 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %image_id36 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %33, i32 0, i32 3
  %34 = load i32, i32* %image_id36, align 4
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0)) #5
  %35 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width38 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %35, i32 0, i32 1
  %36 = load i32, i32* %image_width38, align 4
  %37 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height39 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %37, i32 0, i32 2
  %38 = load i32, i32* %image_height39, align 4
  %39 = load i32, i32* %ltype, align 4
  %call40 = call i32 @gimp_layer_new(i32 %34, i8* %call37, i32 %36, i32 %38, i32 %39, double 1.000000e+02, i32 0)
  store i32 %call40, i32* %layer_id, align 4
  %40 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %image_id41 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %40, i32 0, i32 3
  %41 = load i32, i32* %image_id41, align 4
  %42 = load i32, i32* %layer_id, align 4
  %call42 = call i32 @gimp_image_insert_layer(i32 %41, i32 %42, i32 -1, i32 0)
  %43 = load i32, i32* %layer_id, align 4
  %call43 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %43)
  %44 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %drawable = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %44, i32 0, i32 1
  store %struct._GimpDrawable* %call43, %struct._GimpDrawable** %drawable, align 8
  %45 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %region = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %45, i32 0, i32 2
  %46 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %drawable44 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %46, i32 0, i32 1
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable44, align 8
  %48 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width45 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %48, i32 0, i32 1
  %49 = load i32, i32* %image_width45, align 4
  %50 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height46 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %50, i32 0, i32 2
  %51 = load i32, i32* %image_height46, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %region, %struct._GimpDrawable* %47, i32 0, i32 0, i32 %49, i32 %51, i32 1, i32 0)
  %52 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type47 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %52, i32 0, i32 3
  %53 = load i32, i32* %image_type47, align 4
  switch i32 %53, label %sw.epilog.57 [
    i32 0, label %sw.bb.48
    i32 1, label %sw.bb.48
    i32 2, label %sw.bb.50
    i32 3, label %sw.bb.52
    i32 4, label %sw.bb.54
    i32 5, label %sw.bb.54
  ]

sw.bb.48:                                         ; preds = %if.end.30, %if.end.30
  %54 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %55 = load i32, i32* %bpp, align 4
  %call49 = call i32 @raw_load_standard(%struct.RawGimpData* %54, i32 %55)
  br label %sw.epilog.57

sw.bb.50:                                         ; preds = %if.end.30
  %56 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %call51 = call i32 @raw_load_rgb565(%struct.RawGimpData* %56)
  br label %sw.epilog.57

sw.bb.52:                                         ; preds = %if.end.30
  %57 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %call53 = call i32 @raw_load_planar(%struct.RawGimpData* %57)
  br label %sw.epilog.57

sw.bb.54:                                         ; preds = %if.end.30, %if.end.30
  %58 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %59 = load i8*, i8** @palfile, align 8
  %call55 = call i32 @raw_load_palette(%struct.RawGimpData* %58, i8* %59)
  %60 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %61 = load i32, i32* %bpp, align 4
  %call56 = call i32 @raw_load_standard(%struct.RawGimpData* %60, i32 %61)
  br label %sw.epilog.57

sw.epilog.57:                                     ; preds = %if.end.30, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48
  %62 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %fp58 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %62, i32 0, i32 0
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp58, align 8
  %call59 = call i32 @fclose(%struct._IO_FILE* %63)
  %64 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %drawable60 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %64, i32 0, i32 1
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable60, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %65)
  %66 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %drawable61 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %66, i32 0, i32 1
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable61, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %67)
  %68 = load %struct.RawGimpData*, %struct.RawGimpData** %data, align 8
  %image_id62 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %68, i32 0, i32 3
  %69 = load i32, i32* %image_id62, align 4
  store i32 %69, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.57, %if.then
  %70 = load i32, i32* %retval
  ret i32 %70
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i8* %filename, i32 %image_id, i32 %drawable_id) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %main_vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call5 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %3)
  %4 = bitcast %struct._GtkWidget* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0)) #5
  %8 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %8, i32 0, i32 3
  %9 = bitcast i32* %image_type to i8*
  %10 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type9 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %10, i32 0, i32 3
  %11 = load i32, i32* %image_type9, align 4
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0)) #5
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call8, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %9, i32 %11, i8* %call10, i32 0, i8* null, i8* %call11, i32 3, i8* null, i8* null)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %frame, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0)) #5
  %17 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %17, i32 0, i32 5
  %18 = bitcast i32* %palette_type to i8*
  %19 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type16 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %19, i32 0, i32 5
  %20 = load i32, i32* %palette_type16, align 4
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0)) #5
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0)) #5
  %call19 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call15, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %18, i32 %20, i8* %call17, i32 0, i8* null, i8* %call18, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_dialog_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDialog*
  %call24 = call i32 @gimp_dialog_run(%struct._GimpDialog* %29)
  %cmp = icmp eq i32 %call24, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %30)
  %31 = load i32, i32* %run, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_id, i32 %drawable_id, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %cmap = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %components = alloca [4 x i8*], align 16
  %n_components = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %palsize = alloca i32, align 4
  %ret = alloca i32, align 4
  %newfile = alloca i8*, align 8
  %temp = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %cmap, align 8
  %0 = bitcast [4 x i8*]* %components to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 16, i1 false)
  store i32 0, i32* %palsize, align 4
  store i32 0, i32* %ret, align 4
  %1 = load i32, i32* %drawable_id.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call1 = call i32 @gimp_drawable_bpp(i32 %2)
  store i32 %call1, i32* %bpp, align 4
  %3 = load i32, i32* %bpp, align 4
  store i32 %3, i32* %n_components, align 4
  %4 = load i32, i32* %drawable_id.addr, align 4
  %call2 = call i32 @gimp_drawable_is_indexed(i32 %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %image_id.addr, align 4
  %call3 = call i8* @gimp_image_get_colormap(i32 %5, i32* %palsize)
  store i8* %call3, i8** %cmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width4, align 4
  store i32 %7, i32* %width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height5, align 4
  store i32 %9, i32* %height, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 1
  %12 = load i32, i32* %width6, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height7, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %10, i32 0, i32 0, i32 %12, i32 %14, i32 0, i32 0)
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %15, %16
  %17 = load i32, i32* %bpp, align 4
  %mul8 = mul nsw i32 %mul, %17
  %conv = sext i32 %mul8 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call9, i8** %buf, align 8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %18, i32 0, i32 0, i32 %19, i32 %20)
  %21 = load i8*, i8** %filename.addr, align 8
  %call10 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %fp, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool11 = icmp ne %struct._IO_FILE* %22, null
  br i1 %tobool11, label %if.end.20, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @g_file_error_quark()
  %call14 = call i32* @__errno_location() #6
  %24 = load i32, i32* %call14, align 4
  %call15 = call i32 @g_file_error_from_errno(i32 %24)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i32 0, i32 0)) #5
  %25 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %25)
  %call18 = call i32* @__errno_location() #6
  %26 = load i32, i32* %call18, align 4
  %call19 = call i8* @g_strerror(i32 %26) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %23, i32 %call13, i32 %call15, i8* %call16, i8* %call17, i8* %call19)
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  store i32 3, i32* %ret, align 4
  %27 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %27, i32 0, i32 3
  %28 = load i32, i32* %image_type, align 4
  switch i32 %28, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.83
  ]

sw.bb:                                            ; preds = %if.end.20
  %29 = load i8*, i8** %buf, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %height, align 4
  %mul21 = mul nsw i32 %30, %31
  %32 = load i32, i32* %bpp, align 4
  %mul22 = mul nsw i32 %mul21, %32
  %conv23 = sext i32 %mul22 to i64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i64 @fwrite(i8* %29, i64 %conv23, i64 1, %struct._IO_FILE* %33)
  %tobool25 = icmp ne i64 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %34)
  %35 = load i8*, i8** %cmap, align 8
  %tobool29 = icmp ne i8* %35, null
  br i1 %tobool29, label %if.then.30, label %if.end.82

if.then.30:                                       ; preds = %if.end.27
  %36 = load i8*, i8** %filename.addr, align 8
  %call31 = call noalias i8* (i8*, ...) @g_strconcat(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* null)
  store i8* %call31, i8** %newfile, align 8
  %37 = load i8*, i8** %newfile, align 8
  %call32 = call %struct._IO_FILE* @fopen(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  store %struct._IO_FILE* %call32, %struct._IO_FILE** %fp, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool33 = icmp ne %struct._IO_FILE* %38, null
  br i1 %tobool33, label %if.end.42, label %if.then.34

if.then.34:                                       ; preds = %if.then.30
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call35 = call i32 @g_file_error_quark()
  %call36 = call i32* @__errno_location() #6
  %40 = load i32, i32* %call36, align 4
  %call37 = call i32 @g_file_error_from_errno(i32 %40)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i32 0, i32 0)) #5
  %41 = load i8*, i8** %newfile, align 8
  %call39 = call i8* @gimp_filename_to_utf8(i8* %41)
  %call40 = call i32* @__errno_location() #6
  %42 = load i32, i32* %call40, align 4
  %call41 = call i8* @g_strerror(i32 %42) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %39, i32 %call35, i32 %call37, i8* %call38, i8* %call39, i8* %call41)
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.30
  %43 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %43, i32 0, i32 5
  %44 = load i32, i32* %palette_type, align 4
  switch i32 %44, label %sw.epilog [
    i32 0, label %sw.bb.43
    i32 1, label %sw.bb.51
  ]

sw.bb.43:                                         ; preds = %if.end.42
  %45 = load i8*, i8** %cmap, align 8
  %46 = load i32, i32* %palsize, align 4
  %mul44 = mul nsw i32 %46, 3
  %conv45 = sext i32 %mul44 to i64
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call46 = call i64 @fwrite(i8* %45, i64 %conv45, i64 1, %struct._IO_FILE* %47)
  %tobool47 = icmp ne i64 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %sw.bb.43
  store i32 0, i32* %ret, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %sw.bb.43
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call50 = call i32 @fclose(%struct._IO_FILE* %48)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.42
  %49 = load i32, i32* %palsize, align 4
  %mul52 = mul nsw i32 %49, 4
  %conv53 = sext i32 %mul52 to i64
  %call54 = call noalias i8* @g_malloc0(i64 %conv53)
  store i8* %call54, i8** %temp, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.51
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %palsize, align 4
  %mul55 = mul nsw i32 %51, 3
  %cmp = icmp slt i32 %50, %mul55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %i, align 4
  %add = add nsw i32 %52, 2
  %idxprom = sext i32 %add to i64
  %53 = load i8*, i8** %cmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %53, i64 %idxprom
  %54 = load i8, i8* %arrayidx, align 1
  %55 = load i32, i32* %j, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %j, align 4
  %idxprom57 = sext i32 %55 to i64
  %56 = load i8*, i8** %temp, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %56, i64 %idxprom57
  store i8 %54, i8* %arrayidx58, align 1
  %57 = load i32, i32* %i, align 4
  %add59 = add nsw i32 %57, 1
  %idxprom60 = sext i32 %add59 to i64
  %58 = load i8*, i8** %cmap, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %58, i64 %idxprom60
  %59 = load i8, i8* %arrayidx61, align 1
  %60 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %60, 1
  store i32 %inc62, i32* %j, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load i8*, i8** %temp, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %61, i64 %idxprom63
  store i8 %59, i8* %arrayidx64, align 1
  %62 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %62, 0
  %idxprom66 = sext i32 %add65 to i64
  %63 = load i8*, i8** %cmap, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %63, i64 %idxprom66
  %64 = load i8, i8* %arrayidx67, align 1
  %65 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %65, 1
  store i32 %inc68, i32* %j, align 4
  %idxprom69 = sext i32 %65 to i64
  %66 = load i8*, i8** %temp, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %66, i64 %idxprom69
  store i8 %64, i8* %arrayidx70, align 1
  %67 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %67, 1
  store i32 %inc71, i32* %j, align 4
  %idxprom72 = sext i32 %67 to i64
  %68 = load i8*, i8** %temp, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %68, i64 %idxprom72
  store i8 0, i8* %arrayidx73, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %i, align 4
  %add74 = add nsw i32 %69, 3
  store i32 %add74, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i8*, i8** %temp, align 8
  %71 = load i32, i32* %palsize, align 4
  %mul75 = mul nsw i32 %71, 4
  %conv76 = sext i32 %mul75 to i64
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call77 = call i64 @fwrite(i8* %70, i64 %conv76, i64 1, %struct._IO_FILE* %72)
  %tobool78 = icmp ne i64 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %for.end
  store i32 0, i32* %ret, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %for.end
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call81 = call i32 @fclose(%struct._IO_FILE* %73)
  %74 = load i8*, i8** %temp, align 8
  call void @g_free(i8* %74)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.42, %if.end.80, %if.end.49
  br label %if.end.82

if.end.82:                                        ; preds = %sw.epilog, %if.end.27
  br label %sw.epilog.138

sw.bb.83:                                         ; preds = %if.end.20
  store i32 0, i32* %c, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.93, %sw.bb.83
  %75 = load i32, i32* %c, align 4
  %76 = load i32, i32* %n_components, align 4
  %cmp85 = icmp slt i32 %75, %76
  br i1 %cmp85, label %for.body.87, label %for.end.95

for.body.87:                                      ; preds = %for.cond.84
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  %mul88 = mul nsw i32 %77, %78
  %conv89 = sext i32 %mul88 to i64
  %call90 = call noalias i8* @g_malloc_n(i64 %conv89, i64 1)
  %79 = load i32, i32* %c, align 4
  %idxprom91 = sext i32 %79 to i64
  %arrayidx92 = getelementptr inbounds [4 x i8*], [4 x i8*]* %components, i32 0, i64 %idxprom91
  store i8* %call90, i8** %arrayidx92, align 8
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.87
  %80 = load i32, i32* %c, align 4
  %inc94 = add nsw i32 %80, 1
  store i32 %inc94, i32* %c, align 4
  br label %for.cond.84

for.end.95:                                       ; preds = %for.cond.84
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.116, %for.end.95
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %width, align 4
  %83 = load i32, i32* %height, align 4
  %mul97 = mul nsw i32 %82, %83
  %84 = load i32, i32* %bpp, align 4
  %mul98 = mul nsw i32 %mul97, %84
  %cmp99 = icmp slt i32 %81, %mul98
  br i1 %cmp99, label %for.body.101, label %for.end.119

for.body.101:                                     ; preds = %for.cond.96
  store i32 0, i32* %c, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.113, %for.body.101
  %85 = load i32, i32* %c, align 4
  %86 = load i32, i32* %n_components, align 4
  %cmp103 = icmp slt i32 %85, %86
  br i1 %cmp103, label %for.body.105, label %for.end.115

for.body.105:                                     ; preds = %for.cond.102
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %c, align 4
  %add106 = add nsw i32 %87, %88
  %idxprom107 = sext i32 %add106 to i64
  %89 = load i8*, i8** %buf, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %89, i64 %idxprom107
  %90 = load i8, i8* %arrayidx108, align 1
  %91 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %91 to i64
  %92 = load i32, i32* %c, align 4
  %idxprom110 = sext i32 %92 to i64
  %arrayidx111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %components, i32 0, i64 %idxprom110
  %93 = load i8*, i8** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %93, i64 %idxprom109
  store i8 %90, i8* %arrayidx112, align 1
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.105
  %94 = load i32, i32* %c, align 4
  %inc114 = add nsw i32 %94, 1
  store i32 %inc114, i32* %c, align 4
  br label %for.cond.102

for.end.115:                                      ; preds = %for.cond.102
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115
  %95 = load i32, i32* %bpp, align 4
  %96 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %96, %95
  store i32 %add117, i32* %i, align 4
  %97 = load i32, i32* %j, align 4
  %inc118 = add nsw i32 %97, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.96

for.end.119:                                      ; preds = %for.cond.96
  store i32 3, i32* %ret, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.134, %for.end.119
  %98 = load i32, i32* %c, align 4
  %99 = load i32, i32* %n_components, align 4
  %cmp121 = icmp slt i32 %98, %99
  br i1 %cmp121, label %for.body.123, label %for.end.136

for.body.123:                                     ; preds = %for.cond.120
  %100 = load i32, i32* %c, align 4
  %idxprom124 = sext i32 %100 to i64
  %arrayidx125 = getelementptr inbounds [4 x i8*], [4 x i8*]* %components, i32 0, i64 %idxprom124
  %101 = load i8*, i8** %arrayidx125, align 8
  %102 = load i32, i32* %width, align 4
  %103 = load i32, i32* %height, align 4
  %mul126 = mul nsw i32 %102, %103
  %conv127 = sext i32 %mul126 to i64
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call128 = call i64 @fwrite(i8* %101, i64 %conv127, i64 1, %struct._IO_FILE* %104)
  %tobool129 = icmp ne i64 %call128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %for.body.123
  store i32 0, i32* %ret, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %for.body.123
  %105 = load i32, i32* %c, align 4
  %idxprom132 = sext i32 %105 to i64
  %arrayidx133 = getelementptr inbounds [4 x i8*], [4 x i8*]* %components, i32 0, i64 %idxprom132
  %106 = load i8*, i8** %arrayidx133, align 8
  call void @g_free(i8* %106)
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.131
  %107 = load i32, i32* %c, align 4
  %inc135 = add nsw i32 %107, 1
  store i32 %inc135, i32* %c, align 4
  br label %for.cond.120

for.end.136:                                      ; preds = %for.cond.120
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call137 = call i32 @fclose(%struct._IO_FILE* %108)
  br label %sw.epilog.138

sw.default:                                       ; preds = %if.end.20
  br label %sw.epilog.138

sw.epilog.138:                                    ; preds = %sw.default, %for.end.136, %if.end.82
  %109 = load i32, i32* %ret, align 4
  store i32 %109, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.138, %if.then.34, %if.then.26, %if.then.12
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare i32 @gimp_image_delete(i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_file_info(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %file = alloca %struct._GFile*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  %size = alloca i64, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GFile* @g_file_new_for_path(i8* %0)
  store %struct._GFile* %call, %struct._GFile** %file, align 8
  store i64 0, i64* %size, align 8
  %1 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call1 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 0, %struct._GCancellable* null, %struct._GError** null)
  store %struct._GFileInfo* %call1, %struct._GFileInfo** %info, align 8
  %2 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool = icmp ne %struct._GFileInfo* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call2 = call i64 @g_file_info_get_size(%struct._GFileInfo* %3)
  store i64 %call2, i64* %size, align 8
  %4 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %5 = bitcast %struct._GFileInfo* %4 to i8*
  call void @g_object_unref(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GFile*, %struct._GFile** %file, align 8
  %7 = bitcast %struct._GFile* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load i64, i64* %size, align 8
  ret i64 %8
}

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @preview_update(%struct._GimpPreviewArea* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreviewArea*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pos = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %row = alloca i8*, align 8
  %r_row = alloca i8*, align 8
  %g_row = alloca i8*, align 8
  %b_row = alloca i8*, align 8
  %row30 = alloca i8*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %row83 = alloca i8*, align 8
  %in = alloca i16*, align 8
  %row107 = alloca i8*, align 8
  %alpha = alloca i32, align 4
  %index = alloca i8*, align 8
  %row135 = alloca i8*, align 8
  %fd = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct._GimpPreviewArea* %preview, %struct._GimpPreviewArea** %preview.addr, align 8
  %0 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %0, i32 0, i32 1
  %1 = load i32, i32* %image_width, align 4
  %2 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %2, i32 0, i32 3
  %3 = load i32, i32* %width1, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width2 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %image_width2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %6, i32 0, i32 3
  %7 = load i32, i32* %width3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %8 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %8, i32 0, i32 2
  %9 = load i32, i32* %image_height, align 4
  %10 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %height4 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %10, i32 0, i32 4
  %11 = load i32, i32* %height4, align 4
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %12 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height7 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %12, i32 0, i32 2
  %13 = load i32, i32* %image_height7, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %14 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %height9 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %14, i32 0, i32 4
  %15 = load i32, i32* %height9, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.6
  %cond11 = phi i32 [ %13, %cond.true.6 ], [ %15, %cond.false.8 ]
  store i32 %cond11, i32* %height, align 4
  %16 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %17 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %width12 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %17, i32 0, i32 3
  %18 = load i32, i32* %width12, align 4
  %19 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %height13 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %19, i32 0, i32 4
  %20 = load i32, i32* %height13, align 4
  call void @gimp_preview_area_fill(%struct._GimpPreviewArea* %16, i32 0, i32 0, i32 %18, i32 %20, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1)
  %21 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %21, i32 0, i32 3
  %22 = load i32, i32* %image_type, align 4
  switch i32 %22, label %sw.epilog.343 [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.23
    i32 1, label %sw.bb.82
    i32 2, label %sw.bb.103
    i32 4, label %sw.bb.127
    i32 5, label %sw.bb.127
  ]

sw.bb:                                            ; preds = %cond.end.10
  %23 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %23, 3
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc0(i64 %conv)
  store i8* %call, i8** %row, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %height, align 4
  %cmp14 = icmp slt i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %26, i32 0, i32 0
  %27 = load i32, i32* %file_offset, align 4
  %28 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width16 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %28, i32 0, i32 1
  %29 = load i32, i32* %image_width16, align 4
  %30 = load i32, i32* %y, align 4
  %mul17 = mul nsw i32 %29, %30
  %mul18 = mul nsw i32 %mul17, 3
  %add = add nsw i32 %27, %mul18
  store i32 %add, i32* %pos, align 4
  %31 = load i32, i32* @preview_fd, align 4
  %32 = load i8*, i8** %row, align 8
  %33 = load i32, i32* %width, align 4
  %mul19 = mul nsw i32 %33, 3
  %34 = load i32, i32* %pos, align 4
  %35 = load i32, i32* %width, align 4
  %mul20 = mul nsw i32 %35, 3
  %call21 = call i32 @mmap_read(i32 %31, i8* %32, i32 %mul19, i32 %34, i32 %mul20)
  %36 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %width, align 4
  %39 = load i8*, i8** %row, align 8
  %40 = load i32, i32* %width, align 4
  %mul22 = mul nsw i32 %40, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %36, i32 0, i32 %37, i32 %38, i32 1, i32 0, i8* %39, i32 %mul22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %y, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i8*, i8** %row, align 8
  call void @g_free(i8* %42)
  br label %sw.epilog.343

sw.bb.23:                                         ; preds = %cond.end.10
  %43 = load i32, i32* %width, align 4
  %conv24 = sext i32 %43 to i64
  %call25 = call noalias i8* @g_malloc0(i64 %conv24)
  store i8* %call25, i8** %r_row, align 8
  %44 = load i32, i32* %width, align 4
  %conv26 = sext i32 %44 to i64
  %call27 = call noalias i8* @g_malloc0(i64 %conv26)
  store i8* %call27, i8** %g_row, align 8
  %45 = load i32, i32* %width, align 4
  %conv28 = sext i32 %45 to i64
  %call29 = call noalias i8* @g_malloc0(i64 %conv28)
  store i8* %call29, i8** %b_row, align 8
  %46 = load i32, i32* %width, align 4
  %mul31 = mul nsw i32 %46, 3
  %conv32 = sext i32 %mul31 to i64
  %call33 = call noalias i8* @g_malloc0(i64 %conv32)
  store i8* %call33, i8** %row30, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.79, %sw.bb.23
  %47 = load i32, i32* %y, align 4
  %48 = load i32, i32* %height, align 4
  %cmp35 = icmp slt i32 %47, %48
  br i1 %cmp35, label %for.body.37, label %for.end.81

for.body.37:                                      ; preds = %for.cond.34
  %49 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset38 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %49, i32 0, i32 0
  %50 = load i32, i32* %file_offset38, align 4
  %51 = load i32, i32* %y, align 4
  %52 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width39 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %52, i32 0, i32 1
  %53 = load i32, i32* %image_width39, align 4
  %mul40 = mul nsw i32 %51, %53
  %add41 = add nsw i32 %50, %mul40
  store i32 %add41, i32* %pos, align 4
  %54 = load i32, i32* @preview_fd, align 4
  %55 = load i8*, i8** %r_row, align 8
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %pos, align 4
  %58 = load i32, i32* %width, align 4
  %call42 = call i32 @mmap_read(i32 %54, i8* %55, i32 %56, i32 %57, i32 %58)
  %59 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset43 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %59, i32 0, i32 0
  %60 = load i32, i32* %file_offset43, align 4
  %61 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width44 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %61, i32 0, i32 1
  %62 = load i32, i32* %image_width44, align 4
  %63 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height45 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %63, i32 0, i32 2
  %64 = load i32, i32* %image_height45, align 4
  %65 = load i32, i32* %y, align 4
  %add46 = add nsw i32 %64, %65
  %mul47 = mul nsw i32 %62, %add46
  %add48 = add nsw i32 %60, %mul47
  store i32 %add48, i32* %pos, align 4
  %66 = load i32, i32* @preview_fd, align 4
  %67 = load i8*, i8** %g_row, align 8
  %68 = load i32, i32* %width, align 4
  %69 = load i32, i32* %pos, align 4
  %70 = load i32, i32* %width, align 4
  %call49 = call i32 @mmap_read(i32 %66, i8* %67, i32 %68, i32 %69, i32 %70)
  %71 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset50 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %71, i32 0, i32 0
  %72 = load i32, i32* %file_offset50, align 4
  %73 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width51 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %73, i32 0, i32 1
  %74 = load i32, i32* %image_width51, align 4
  %75 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height52 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %75, i32 0, i32 2
  %76 = load i32, i32* %image_height52, align 4
  %mul53 = mul nsw i32 %76, 2
  %77 = load i32, i32* %y, align 4
  %add54 = add nsw i32 %mul53, %77
  %mul55 = mul nsw i32 %74, %add54
  %add56 = add nsw i32 %72, %mul55
  store i32 %add56, i32* %pos, align 4
  %78 = load i32, i32* @preview_fd, align 4
  %79 = load i8*, i8** %b_row, align 8
  %80 = load i32, i32* %width, align 4
  %81 = load i32, i32* %pos, align 4
  %82 = load i32, i32* %width, align 4
  %call57 = call i32 @mmap_read(i32 %78, i8* %79, i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.75, %for.body.37
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %width, align 4
  %cmp59 = icmp slt i32 %83, %84
  br i1 %cmp59, label %for.body.61, label %for.end.77

for.body.61:                                      ; preds = %for.cond.58
  %85 = load i32, i32* %j, align 4
  %idxprom = sext i32 %85 to i64
  %86 = load i8*, i8** %r_row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %86, i64 %idxprom
  %87 = load i8, i8* %arrayidx, align 1
  %88 = load i32, i32* %k, align 4
  %inc62 = add nsw i32 %88, 1
  store i32 %inc62, i32* %k, align 4
  %idxprom63 = sext i32 %88 to i64
  %89 = load i8*, i8** %row30, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %89, i64 %idxprom63
  store i8 %87, i8* %arrayidx64, align 1
  %90 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %90 to i64
  %91 = load i8*, i8** %g_row, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %91, i64 %idxprom65
  %92 = load i8, i8* %arrayidx66, align 1
  %93 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %93, 1
  store i32 %inc67, i32* %k, align 4
  %idxprom68 = sext i32 %93 to i64
  %94 = load i8*, i8** %row30, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %94, i64 %idxprom68
  store i8 %92, i8* %arrayidx69, align 1
  %95 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %95 to i64
  %96 = load i8*, i8** %b_row, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %96, i64 %idxprom70
  %97 = load i8, i8* %arrayidx71, align 1
  %98 = load i32, i32* %k, align 4
  %inc72 = add nsw i32 %98, 1
  store i32 %inc72, i32* %k, align 4
  %idxprom73 = sext i32 %98 to i64
  %99 = load i8*, i8** %row30, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %99, i64 %idxprom73
  store i8 %97, i8* %arrayidx74, align 1
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.61
  %100 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %100, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond.58

for.end.77:                                       ; preds = %for.cond.58
  %101 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %102 = load i32, i32* %y, align 4
  %103 = load i32, i32* %width, align 4
  %104 = load i8*, i8** %row30, align 8
  %105 = load i32, i32* %width, align 4
  %mul78 = mul nsw i32 %105, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %101, i32 0, i32 %102, i32 %103, i32 1, i32 0, i8* %104, i32 %mul78)
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.77
  %106 = load i32, i32* %y, align 4
  %inc80 = add nsw i32 %106, 1
  store i32 %inc80, i32* %y, align 4
  br label %for.cond.34

for.end.81:                                       ; preds = %for.cond.34
  %107 = load i8*, i8** %b_row, align 8
  call void @g_free(i8* %107)
  %108 = load i8*, i8** %g_row, align 8
  call void @g_free(i8* %108)
  %109 = load i8*, i8** %r_row, align 8
  call void @g_free(i8* %109)
  %110 = load i8*, i8** %row30, align 8
  call void @g_free(i8* %110)
  br label %sw.epilog.343

sw.bb.82:                                         ; preds = %cond.end.10
  %111 = load i32, i32* %width, align 4
  %mul84 = mul nsw i32 %111, 4
  %conv85 = sext i32 %mul84 to i64
  %call86 = call noalias i8* @g_malloc0(i64 %conv85)
  store i8* %call86, i8** %row83, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.100, %sw.bb.82
  %112 = load i32, i32* %y, align 4
  %113 = load i32, i32* %height, align 4
  %cmp88 = icmp slt i32 %112, %113
  br i1 %cmp88, label %for.body.90, label %for.end.102

for.body.90:                                      ; preds = %for.cond.87
  %114 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset91 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %114, i32 0, i32 0
  %115 = load i32, i32* %file_offset91, align 4
  %116 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width92 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %116, i32 0, i32 1
  %117 = load i32, i32* %image_width92, align 4
  %118 = load i32, i32* %y, align 4
  %mul93 = mul nsw i32 %117, %118
  %mul94 = mul nsw i32 %mul93, 4
  %add95 = add nsw i32 %115, %mul94
  store i32 %add95, i32* %pos, align 4
  %119 = load i32, i32* @preview_fd, align 4
  %120 = load i8*, i8** %row83, align 8
  %121 = load i32, i32* %width, align 4
  %mul96 = mul nsw i32 %121, 4
  %122 = load i32, i32* %pos, align 4
  %123 = load i32, i32* %width, align 4
  %mul97 = mul nsw i32 %123, 4
  %call98 = call i32 @mmap_read(i32 %119, i8* %120, i32 %mul96, i32 %122, i32 %mul97)
  %124 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %125 = load i32, i32* %y, align 4
  %126 = load i32, i32* %width, align 4
  %127 = load i8*, i8** %row83, align 8
  %128 = load i32, i32* %width, align 4
  %mul99 = mul nsw i32 %128, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %124, i32 0, i32 %125, i32 %126, i32 1, i32 1, i8* %127, i32 %mul99)
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.90
  %129 = load i32, i32* %y, align 4
  %inc101 = add nsw i32 %129, 1
  store i32 %inc101, i32* %y, align 4
  br label %for.cond.87

for.end.102:                                      ; preds = %for.cond.87
  %130 = load i8*, i8** %row83, align 8
  call void @g_free(i8* %130)
  br label %sw.epilog.343

sw.bb.103:                                        ; preds = %cond.end.10
  %131 = load i32, i32* %width, align 4
  %mul104 = mul nsw i32 %131, 2
  %conv105 = sext i32 %mul104 to i64
  %call106 = call noalias i8* @g_malloc0(i64 %conv105)
  %132 = bitcast i8* %call106 to i16*
  store i16* %132, i16** %in, align 8
  %133 = load i32, i32* %width, align 4
  %mul108 = mul nsw i32 %133, 3
  %conv109 = sext i32 %mul108 to i64
  %call110 = call noalias i8* @g_malloc0(i64 %conv109)
  store i8* %call110, i8** %row107, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.124, %sw.bb.103
  %134 = load i32, i32* %y, align 4
  %135 = load i32, i32* %height, align 4
  %cmp112 = icmp slt i32 %134, %135
  br i1 %cmp112, label %for.body.114, label %for.end.126

for.body.114:                                     ; preds = %for.cond.111
  %136 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset115 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %136, i32 0, i32 0
  %137 = load i32, i32* %file_offset115, align 4
  %138 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width116 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %138, i32 0, i32 1
  %139 = load i32, i32* %image_width116, align 4
  %140 = load i32, i32* %y, align 4
  %mul117 = mul nsw i32 %139, %140
  %mul118 = mul nsw i32 %mul117, 2
  %add119 = add nsw i32 %137, %mul118
  store i32 %add119, i32* %pos, align 4
  %141 = load i32, i32* @preview_fd, align 4
  %142 = load i16*, i16** %in, align 8
  %143 = bitcast i16* %142 to i8*
  %144 = load i32, i32* %width, align 4
  %mul120 = mul nsw i32 %144, 2
  %145 = load i32, i32* %pos, align 4
  %146 = load i32, i32* %width, align 4
  %mul121 = mul nsw i32 %146, 2
  %call122 = call i32 @mmap_read(i32 %141, i8* %143, i32 %mul120, i32 %145, i32 %mul121)
  %147 = load i16*, i16** %in, align 8
  %148 = load i8*, i8** %row107, align 8
  %149 = load i32, i32* %width, align 4
  call void @rgb_565_to_888(i16* %147, i8* %148, i32 %149)
  %150 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %151 = load i32, i32* %y, align 4
  %152 = load i32, i32* %width, align 4
  %153 = load i8*, i8** %row107, align 8
  %154 = load i32, i32* %width, align 4
  %mul123 = mul nsw i32 %154, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %150, i32 0, i32 %151, i32 %152, i32 1, i32 0, i8* %153, i32 %mul123)
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.114
  %155 = load i32, i32* %y, align 4
  %inc125 = add nsw i32 %155, 1
  store i32 %inc125, i32* %y, align 4
  br label %for.cond.111

for.end.126:                                      ; preds = %for.cond.111
  %156 = load i8*, i8** %row107, align 8
  call void @g_free(i8* %156)
  %157 = load i16*, i16** %in, align 8
  %158 = bitcast i16* %157 to i8*
  call void @g_free(i8* %158)
  br label %sw.epilog.343

sw.bb.127:                                        ; preds = %cond.end.10, %cond.end.10
  %159 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_type128 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %159, i32 0, i32 3
  %160 = load i32, i32* %image_type128, align 4
  %cmp129 = icmp eq i32 %160, 5
  %conv130 = zext i1 %cmp129 to i32
  store i32 %conv130, i32* %alpha, align 4
  %161 = load i32, i32* %width, align 4
  %162 = load i32, i32* %alpha, align 4
  %tobool = icmp ne i32 %162, 0
  %cond131 = select i1 %tobool, i32 2, i32 1
  %mul132 = mul nsw i32 %161, %cond131
  %conv133 = sext i32 %mul132 to i64
  %call134 = call noalias i8* @g_malloc0(i64 %conv133)
  store i8* %call134, i8** %index, align 8
  %163 = load i32, i32* %width, align 4
  %164 = load i32, i32* %alpha, align 4
  %tobool136 = icmp ne i32 %164, 0
  %cond137 = select i1 %tobool136, i32 4, i32 3
  %mul138 = mul nsw i32 %163, %cond137
  %conv139 = sext i32 %mul138 to i64
  %call140 = call noalias i8* @g_malloc0(i64 %conv139)
  store i8* %call140, i8** %row135, align 8
  %165 = load i32, i32* @preview_cmap_update, align 4
  %tobool141 = icmp ne i32 %165, 0
  br i1 %tobool141, label %if.then, label %if.end.185

if.then:                                          ; preds = %sw.bb.127
  %166 = load i8*, i8** @palfile, align 8
  %tobool142 = icmp ne i8* %166, null
  br i1 %tobool142, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %if.then
  %167 = load i8*, i8** @palfile, align 8
  %call144 = call i32 (i8*, i32, ...) @open(i8* %167, i32 0, i32 0)
  store i32 %call144, i32* %fd, align 4
  %168 = load i32, i32* %fd, align 4
  %169 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %169, i32 0, i32 4
  %170 = load i32, i32* %palette_offset, align 4
  %conv145 = sext i32 %170 to i64
  %call146 = call i64 @lseek(i32 %168, i64 %conv145, i32 0) #5
  %171 = load i32, i32* %fd, align 4
  %172 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %172, i32 0, i32 5
  %173 = load i32, i32* %palette_type, align 4
  %cmp147 = icmp eq i32 %173, 0
  %cond149 = select i1 %cmp147, i32 768, i32 1024
  %conv150 = sext i32 %cond149 to i64
  %call151 = call i64 @read(i32 %171, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i32 0), i64 %conv150)
  %174 = load i32, i32* %fd, align 4
  %call152 = call i32 @close(i32 %174)
  br label %if.end.184

if.else:                                          ; preds = %if.then
  store i32 0, i32* %y, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.181, %if.else
  %175 = load i32, i32* %y, align 4
  %cmp154 = icmp slt i32 %175, 256
  br i1 %cmp154, label %for.body.156, label %for.end.183

for.body.156:                                     ; preds = %for.cond.153
  %176 = load i32, i32* %y, align 4
  %conv157 = trunc i32 %176 to i8
  %177 = load i32, i32* %x, align 4
  %inc158 = add nsw i32 %177, 1
  store i32 %inc158, i32* %x, align 4
  %idxprom159 = sext i32 %177 to i64
  %arrayidx160 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom159
  store i8 %conv157, i8* %arrayidx160, align 1
  %178 = load i32, i32* %y, align 4
  %conv161 = trunc i32 %178 to i8
  %179 = load i32, i32* %x, align 4
  %inc162 = add nsw i32 %179, 1
  store i32 %inc162, i32* %x, align 4
  %idxprom163 = sext i32 %179 to i64
  %arrayidx164 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom163
  store i8 %conv161, i8* %arrayidx164, align 1
  %180 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type165 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %180, i32 0, i32 5
  %181 = load i32, i32* %palette_type165, align 4
  %cmp166 = icmp eq i32 %181, 0
  br i1 %cmp166, label %if.then.168, label %if.else.173

if.then.168:                                      ; preds = %for.body.156
  %182 = load i32, i32* %y, align 4
  %conv169 = trunc i32 %182 to i8
  %183 = load i32, i32* %x, align 4
  %inc170 = add nsw i32 %183, 1
  store i32 %inc170, i32* %x, align 4
  %idxprom171 = sext i32 %183 to i64
  %arrayidx172 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom171
  store i8 %conv169, i8* %arrayidx172, align 1
  br label %if.end

if.else.173:                                      ; preds = %for.body.156
  %184 = load i32, i32* %y, align 4
  %conv174 = trunc i32 %184 to i8
  %185 = load i32, i32* %x, align 4
  %inc175 = add nsw i32 %185, 1
  store i32 %inc175, i32* %x, align 4
  %idxprom176 = sext i32 %185 to i64
  %arrayidx177 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom176
  store i8 %conv174, i8* %arrayidx177, align 1
  %186 = load i32, i32* %x, align 4
  %inc178 = add nsw i32 %186, 1
  store i32 %inc178, i32* %x, align 4
  %idxprom179 = sext i32 %186 to i64
  %arrayidx180 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom179
  store i8 0, i8* %arrayidx180, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.173, %if.then.168
  br label %for.inc.181

for.inc.181:                                      ; preds = %if.end
  %187 = load i32, i32* %y, align 4
  %inc182 = add nsw i32 %187, 1
  store i32 %inc182, i32* %y, align 4
  br label %for.cond.153

for.end.183:                                      ; preds = %for.cond.153
  br label %if.end.184

if.end.184:                                       ; preds = %for.end.183, %if.then.143
  store i32 0, i32* @preview_cmap_update, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %sw.bb.127
  store i32 0, i32* %y, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.340, %if.end.185
  %188 = load i32, i32* %y, align 4
  %189 = load i32, i32* %height, align 4
  %cmp187 = icmp slt i32 %188, %189
  br i1 %cmp187, label %for.body.189, label %for.end.342

for.body.189:                                     ; preds = %for.cond.186
  %190 = load i8*, i8** %row135, align 8
  store i8* %190, i8** %p, align 8
  %191 = load i32, i32* %alpha, align 4
  %tobool190 = icmp ne i32 %191, 0
  br i1 %tobool190, label %if.then.191, label %if.else.273

if.then.191:                                      ; preds = %for.body.189
  %192 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset192 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %192, i32 0, i32 0
  %193 = load i32, i32* %file_offset192, align 4
  %194 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width193 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %194, i32 0, i32 1
  %195 = load i32, i32* %image_width193, align 4
  %mul194 = mul nsw i32 %195, 2
  %196 = load i32, i32* %y, align 4
  %mul195 = mul nsw i32 %mul194, %196
  %add196 = add nsw i32 %193, %mul195
  store i32 %add196, i32* %pos, align 4
  %197 = load i32, i32* @preview_fd, align 4
  %198 = load i8*, i8** %index, align 8
  %199 = load i32, i32* %width, align 4
  %mul197 = mul nsw i32 %199, 2
  %200 = load i32, i32* %pos, align 4
  %201 = load i32, i32* %width, align 4
  %call198 = call i32 @mmap_read(i32 %197, i8* %198, i32 %mul197, i32 %200, i32 %201)
  store i32 0, i32* %x, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.269, %if.then.191
  %202 = load i32, i32* %x, align 4
  %203 = load i32, i32* %width, align 4
  %cmp200 = icmp slt i32 %202, %203
  br i1 %cmp200, label %for.body.202, label %for.end.271

for.body.202:                                     ; preds = %for.cond.199
  %204 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type203 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %204, i32 0, i32 5
  %205 = load i32, i32* %palette_type203, align 4
  switch i32 %205, label %sw.epilog [
    i32 0, label %sw.bb.204
    i32 1, label %sw.bb.236
  ]

sw.bb.204:                                        ; preds = %for.body.202
  %206 = load i32, i32* %x, align 4
  %mul205 = mul nsw i32 2, %206
  %idxprom206 = sext i32 %mul205 to i64
  %207 = load i8*, i8** %index, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %207, i64 %idxprom206
  %208 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %208 to i32
  %mul209 = mul nsw i32 %conv208, 3
  %add210 = add nsw i32 %mul209, 0
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom211
  %209 = load i8, i8* %arrayidx212, align 1
  %210 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %209, i8* %210, align 1
  %211 = load i32, i32* %x, align 4
  %mul213 = mul nsw i32 2, %211
  %idxprom214 = sext i32 %mul213 to i64
  %212 = load i8*, i8** %index, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %212, i64 %idxprom214
  %213 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %213 to i32
  %mul217 = mul nsw i32 %conv216, 3
  %add218 = add nsw i32 %mul217, 1
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom219
  %214 = load i8, i8* %arrayidx220, align 1
  %215 = load i8*, i8** %p, align 8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %incdec.ptr221, i8** %p, align 8
  store i8 %214, i8* %215, align 1
  %216 = load i32, i32* %x, align 4
  %mul222 = mul nsw i32 2, %216
  %idxprom223 = sext i32 %mul222 to i64
  %217 = load i8*, i8** %index, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %217, i64 %idxprom223
  %218 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %218 to i32
  %mul226 = mul nsw i32 %conv225, 3
  %add227 = add nsw i32 %mul226, 2
  %idxprom228 = sext i32 %add227 to i64
  %arrayidx229 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom228
  %219 = load i8, i8* %arrayidx229, align 1
  %220 = load i8*, i8** %p, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr230, i8** %p, align 8
  store i8 %219, i8* %220, align 1
  %221 = load i32, i32* %x, align 4
  %mul231 = mul nsw i32 2, %221
  %add232 = add nsw i32 %mul231, 1
  %idxprom233 = sext i32 %add232 to i64
  %222 = load i8*, i8** %index, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %222, i64 %idxprom233
  %223 = load i8, i8* %arrayidx234, align 1
  %224 = load i8*, i8** %p, align 8
  %incdec.ptr235 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %incdec.ptr235, i8** %p, align 8
  store i8 %223, i8* %224, align 1
  br label %sw.epilog

sw.bb.236:                                        ; preds = %for.body.202
  %225 = load i32, i32* %x, align 4
  %mul237 = mul nsw i32 2, %225
  %idxprom238 = sext i32 %mul237 to i64
  %226 = load i8*, i8** %index, align 8
  %arrayidx239 = getelementptr inbounds i8, i8* %226, i64 %idxprom238
  %227 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %227 to i32
  %mul241 = mul nsw i32 %conv240, 4
  %add242 = add nsw i32 %mul241, 2
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom243
  %228 = load i8, i8* %arrayidx244, align 1
  %229 = load i8*, i8** %p, align 8
  %incdec.ptr245 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %incdec.ptr245, i8** %p, align 8
  store i8 %228, i8* %229, align 1
  %230 = load i32, i32* %x, align 4
  %mul246 = mul nsw i32 2, %230
  %idxprom247 = sext i32 %mul246 to i64
  %231 = load i8*, i8** %index, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %231, i64 %idxprom247
  %232 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %232 to i32
  %mul250 = mul nsw i32 %conv249, 4
  %add251 = add nsw i32 %mul250, 1
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom252
  %233 = load i8, i8* %arrayidx253, align 1
  %234 = load i8*, i8** %p, align 8
  %incdec.ptr254 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr254, i8** %p, align 8
  store i8 %233, i8* %234, align 1
  %235 = load i32, i32* %x, align 4
  %mul255 = mul nsw i32 2, %235
  %idxprom256 = sext i32 %mul255 to i64
  %236 = load i8*, i8** %index, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %236, i64 %idxprom256
  %237 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %237 to i32
  %mul259 = mul nsw i32 %conv258, 4
  %add260 = add nsw i32 %mul259, 0
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom261
  %238 = load i8, i8* %arrayidx262, align 1
  %239 = load i8*, i8** %p, align 8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr263, i8** %p, align 8
  store i8 %238, i8* %239, align 1
  %240 = load i32, i32* %x, align 4
  %mul264 = mul nsw i32 2, %240
  %add265 = add nsw i32 %mul264, 1
  %idxprom266 = sext i32 %add265 to i64
  %241 = load i8*, i8** %index, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %241, i64 %idxprom266
  %242 = load i8, i8* %arrayidx267, align 1
  %243 = load i8*, i8** %p, align 8
  %incdec.ptr268 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %incdec.ptr268, i8** %p, align 8
  store i8 %242, i8* %243, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.202, %sw.bb.236, %sw.bb.204
  br label %for.inc.269

for.inc.269:                                      ; preds = %sw.epilog
  %244 = load i32, i32* %x, align 4
  %inc270 = add nsw i32 %244, 1
  store i32 %inc270, i32* %x, align 4
  br label %for.cond.199

for.end.271:                                      ; preds = %for.cond.199
  %245 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %246 = load i32, i32* %y, align 4
  %247 = load i32, i32* %width, align 4
  %248 = load i8*, i8** %row135, align 8
  %249 = load i32, i32* %width, align 4
  %mul272 = mul nsw i32 %249, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %245, i32 0, i32 %246, i32 %247, i32 1, i32 1, i8* %248, i32 %mul272)
  br label %if.end.339

if.else.273:                                      ; preds = %for.body.189
  %250 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset274 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %250, i32 0, i32 0
  %251 = load i32, i32* %file_offset274, align 4
  %252 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width275 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %252, i32 0, i32 1
  %253 = load i32, i32* %image_width275, align 4
  %254 = load i32, i32* %y, align 4
  %mul276 = mul nsw i32 %253, %254
  %add277 = add nsw i32 %251, %mul276
  store i32 %add277, i32* %pos, align 4
  %255 = load i32, i32* @preview_fd, align 4
  %256 = load i8*, i8** %index, align 8
  %257 = load i32, i32* %width, align 4
  %258 = load i32, i32* %pos, align 4
  %259 = load i32, i32* %width, align 4
  %call278 = call i32 @mmap_read(i32 %255, i8* %256, i32 %257, i32 %258, i32 %259)
  store i32 0, i32* %x, align 4
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.335, %if.else.273
  %260 = load i32, i32* %x, align 4
  %261 = load i32, i32* %width, align 4
  %cmp280 = icmp slt i32 %260, %261
  br i1 %cmp280, label %for.body.282, label %for.end.337

for.body.282:                                     ; preds = %for.cond.279
  %262 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type283 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %262, i32 0, i32 5
  %263 = load i32, i32* %palette_type283, align 4
  switch i32 %263, label %sw.epilog.334 [
    i32 0, label %sw.bb.284
    i32 1, label %sw.bb.309
  ]

sw.bb.284:                                        ; preds = %for.body.282
  %264 = load i32, i32* %x, align 4
  %idxprom285 = sext i32 %264 to i64
  %265 = load i8*, i8** %index, align 8
  %arrayidx286 = getelementptr inbounds i8, i8* %265, i64 %idxprom285
  %266 = load i8, i8* %arrayidx286, align 1
  %conv287 = zext i8 %266 to i32
  %mul288 = mul nsw i32 %conv287, 3
  %add289 = add nsw i32 %mul288, 0
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom290
  %267 = load i8, i8* %arrayidx291, align 1
  %268 = load i8*, i8** %p, align 8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %incdec.ptr292, i8** %p, align 8
  store i8 %267, i8* %268, align 1
  %269 = load i32, i32* %x, align 4
  %idxprom293 = sext i32 %269 to i64
  %270 = load i8*, i8** %index, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %270, i64 %idxprom293
  %271 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %271 to i32
  %mul296 = mul nsw i32 %conv295, 3
  %add297 = add nsw i32 %mul296, 1
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom298
  %272 = load i8, i8* %arrayidx299, align 1
  %273 = load i8*, i8** %p, align 8
  %incdec.ptr300 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr300, i8** %p, align 8
  store i8 %272, i8* %273, align 1
  %274 = load i32, i32* %x, align 4
  %idxprom301 = sext i32 %274 to i64
  %275 = load i8*, i8** %index, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %275, i64 %idxprom301
  %276 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %276 to i32
  %mul304 = mul nsw i32 %conv303, 3
  %add305 = add nsw i32 %mul304, 2
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom306
  %277 = load i8, i8* %arrayidx307, align 1
  %278 = load i8*, i8** %p, align 8
  %incdec.ptr308 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr308, i8** %p, align 8
  store i8 %277, i8* %278, align 1
  br label %sw.epilog.334

sw.bb.309:                                        ; preds = %for.body.282
  %279 = load i32, i32* %x, align 4
  %idxprom310 = sext i32 %279 to i64
  %280 = load i8*, i8** %index, align 8
  %arrayidx311 = getelementptr inbounds i8, i8* %280, i64 %idxprom310
  %281 = load i8, i8* %arrayidx311, align 1
  %conv312 = zext i8 %281 to i32
  %mul313 = mul nsw i32 %conv312, 4
  %add314 = add nsw i32 %mul313, 2
  %idxprom315 = sext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom315
  %282 = load i8, i8* %arrayidx316, align 1
  %283 = load i8*, i8** %p, align 8
  %incdec.ptr317 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %incdec.ptr317, i8** %p, align 8
  store i8 %282, i8* %283, align 1
  %284 = load i32, i32* %x, align 4
  %idxprom318 = sext i32 %284 to i64
  %285 = load i8*, i8** %index, align 8
  %arrayidx319 = getelementptr inbounds i8, i8* %285, i64 %idxprom318
  %286 = load i8, i8* %arrayidx319, align 1
  %conv320 = zext i8 %286 to i32
  %mul321 = mul nsw i32 %conv320, 4
  %add322 = add nsw i32 %mul321, 1
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom323
  %287 = load i8, i8* %arrayidx324, align 1
  %288 = load i8*, i8** %p, align 8
  %incdec.ptr325 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr325, i8** %p, align 8
  store i8 %287, i8* %288, align 1
  %289 = load i32, i32* %x, align 4
  %idxprom326 = sext i32 %289 to i64
  %290 = load i8*, i8** %index, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %290, i64 %idxprom326
  %291 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %291 to i32
  %mul329 = mul nsw i32 %conv328, 4
  %add330 = add nsw i32 %mul329, 0
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds [1024 x i8], [1024 x i8]* @preview_cmap, i32 0, i64 %idxprom331
  %292 = load i8, i8* %arrayidx332, align 1
  %293 = load i8*, i8** %p, align 8
  %incdec.ptr333 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %incdec.ptr333, i8** %p, align 8
  store i8 %292, i8* %293, align 1
  br label %sw.epilog.334

sw.epilog.334:                                    ; preds = %for.body.282, %sw.bb.309, %sw.bb.284
  br label %for.inc.335

for.inc.335:                                      ; preds = %sw.epilog.334
  %294 = load i32, i32* %x, align 4
  %inc336 = add nsw i32 %294, 1
  store i32 %inc336, i32* %x, align 4
  br label %for.cond.279

for.end.337:                                      ; preds = %for.cond.279
  %295 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  %296 = load i32, i32* %y, align 4
  %297 = load i32, i32* %width, align 4
  %298 = load i8*, i8** %row135, align 8
  %299 = load i32, i32* %width, align 4
  %mul338 = mul nsw i32 %299, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %295, i32 0, i32 %296, i32 %297, i32 1, i32 0, i8* %298, i32 %mul338)
  br label %if.end.339

if.end.339:                                       ; preds = %for.end.337, %for.end.271
  br label %for.inc.340

for.inc.340:                                      ; preds = %if.end.339
  %300 = load i32, i32* %y, align 4
  %inc341 = add nsw i32 %300, 1
  store i32 %inc341, i32* %y, align 4
  br label %for.cond.186

for.end.342:                                      ; preds = %for.cond.186
  %301 = load i8*, i8** %row135, align 8
  call void @g_free(i8* %301)
  %302 = load i8*, i8** %index, align 8
  call void @g_free(i8* %302)
  br label %sw.epilog.343

sw.epilog.343:                                    ; preds = %cond.end.10, %for.end.342, %for.end.126, %for.end.102, %for.end.81, %for.end
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @palette_update(%struct._GimpPreviewArea* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreviewArea*, align 8
  store %struct._GimpPreviewArea* %preview, %struct._GimpPreviewArea** %preview.addr, align 8
  store i32 1, i32* @preview_cmap_update, align 4
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  call void @preview_update(%struct._GimpPreviewArea* %0)
  ret void
}

declare %struct._GtkWidget* @gtk_file_chooser_button_new(i8*, i32) #1

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @palette_callback(%struct._GtkFileChooser* %button, %struct._GimpPreviewArea* %preview) #0 {
entry:
  %button.addr = alloca %struct._GtkFileChooser*, align 8
  %preview.addr = alloca %struct._GimpPreviewArea*, align 8
  store %struct._GtkFileChooser* %button, %struct._GtkFileChooser** %button.addr, align 8
  store %struct._GimpPreviewArea* %preview, %struct._GimpPreviewArea** %preview.addr, align 8
  %0 = load i8*, i8** @palfile, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @palfile, align 8
  call void @g_free(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %2)
  store i8* %call, i8** @palfile, align 8
  %3 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview.addr, align 8
  call void @palette_update(%struct._GimpPreviewArea* %3)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GFile* @g_file_new_for_path(i8*) #1

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #1

declare i64 @g_file_info_get_size(%struct._GFileInfo*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_preview_area_fill(%struct._GimpPreviewArea*, i32, i32, i32, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare noalias i8* @g_malloc0(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @mmap_read(i32 %fd, i8* %buf, i32 %len, i32 %pos, i32 %rowstride) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %rowstride, i32* %rowstride.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i64 @lseek(i32 %0, i64 %conv, i32 0) #5
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %conv1 = sext i32 %4 to i64
  %call2 = call i64 @read(i32 %2, i8* %3, i64 %conv1)
  %tobool = icmp ne i64 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i32, i32* %rowstride.addr, align 4
  %conv3 = sext i32 %6 to i64
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 %conv3, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @rgb_565_to_888(i16* %in, i8* %out, i32 %num_pixels) #0 {
entry:
  %in.addr = alloca i16*, align 8
  %out.addr = alloca i8*, align 8
  %num_pixels.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16* %in, i16** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %num_pixels, i32* %num_pixels.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_pixels.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i16*, i16** %in.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %shr = ashr i32 %conv, 11
  %and = and i32 %shr, 31
  %mul = mul nsw i32 %and, 33
  %shr1 = ashr i32 %mul, 2
  %conv2 = trunc i32 %shr1 to i8
  %5 = load i32, i32* %j, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %j, align 4
  %idxprom3 = zext i32 %5 to i64
  %6 = load i8*, i8** %out.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  %7 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %7 to i64
  %8 = load i16*, i16** %in.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %8, i64 %idxprom5
  %9 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %9 to i32
  %shr8 = ashr i32 %conv7, 5
  %and9 = and i32 %shr8, 63
  %mul10 = mul nsw i32 %and9, 65
  %shr11 = ashr i32 %mul10, 4
  %conv12 = trunc i32 %shr11 to i8
  %10 = load i32, i32* %j, align 4
  %inc13 = add i32 %10, 1
  store i32 %inc13, i32* %j, align 4
  %idxprom14 = zext i32 %10 to i64
  %11 = load i8*, i8** %out.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %idxprom14
  store i8 %conv12, i8* %arrayidx15, align 1
  %12 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %12 to i64
  %13 = load i16*, i16** %in.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %13, i64 %idxprom16
  %14 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %14 to i32
  %shr19 = ashr i32 %conv18, 0
  %and20 = and i32 %shr19, 31
  %mul21 = mul nsw i32 %and20, 33
  %shr22 = ashr i32 %mul21, 2
  %conv23 = trunc i32 %shr22 to i8
  %15 = load i32, i32* %j, align 4
  %inc24 = add i32 %15, 1
  store i32 %inc24, i32* %j, align 4
  %idxprom25 = zext i32 %15 to i64
  %16 = load i8*, i8** %out.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %16, i64 %idxprom25
  store i8 %conv23, i8* %arrayidx26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc27 = add i32 %17, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @raw_load_standard(%struct.RawGimpData* %data, i32 %bpp) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.RawGimpData*, align 8
  %bpp.addr = alloca i32, align 4
  %row = alloca i8*, align 8
  store %struct.RawGimpData* %data, %struct.RawGimpData** %data.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* null, i8** %row, align 8
  %0 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %0, i32 0, i32 1
  %1 = load i32, i32* %image_width, align 4
  %2 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %2, i32 0, i32 2
  %3 = load i32, i32* %image_height, align 4
  %mul = mul nsw i32 %1, %3
  %4 = load i32, i32* %bpp.addr, align 4
  %mul1 = mul nsw i32 %mul, %4
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_try_malloc(i64 %conv)
  store i8* %call, i8** %row, align 8
  %5 = load i8*, i8** %row, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %fp = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %8 = load i8*, i8** %row, align 8
  %9 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %9, i32 0, i32 0
  %10 = load i32, i32* %file_offset, align 4
  %11 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width2 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %11, i32 0, i32 1
  %12 = load i32, i32* %image_width2, align 4
  %13 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height3 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %13, i32 0, i32 2
  %14 = load i32, i32* %image_height3, align 4
  %mul4 = mul nsw i32 %12, %14
  %15 = load i32, i32* %bpp.addr, align 4
  %mul5 = mul nsw i32 %mul4, %15
  call void @raw_read_row(%struct._IO_FILE* %7, i8* %8, i32 %10, i32 %mul5)
  %16 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %region = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %16, i32 0, i32 2
  %17 = load i8*, i8** %row, align 8
  %18 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width6 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %18, i32 0, i32 1
  %19 = load i32, i32* %image_width6, align 4
  %20 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height7 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %20, i32 0, i32 2
  %21 = load i32, i32* %image_height7, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %region, i8* %17, i32 0, i32 0, i32 %19, i32 %21)
  %22 = load i8*, i8** %row, align 8
  call void @g_free(i8* %22)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @raw_load_rgb565(%struct.RawGimpData* %data) #0 {
entry:
  %data.addr = alloca %struct.RawGimpData*, align 8
  %num_pixels = alloca i32, align 4
  %in = alloca i16*, align 8
  %row = alloca i8*, align 8
  store %struct.RawGimpData* %data, %struct.RawGimpData** %data.addr, align 8
  %0 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %0, i32 0, i32 1
  %1 = load i32, i32* %image_width, align 4
  %2 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %2, i32 0, i32 2
  %3 = load i32, i32* %image_height, align 4
  %mul = mul nsw i32 %1, %3
  store i32 %mul, i32* %num_pixels, align 4
  %4 = load i32, i32* %num_pixels, align 4
  %mul1 = mul nsw i32 %4, 2
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc(i64 %conv)
  %5 = bitcast i8* %call to i16*
  store i16* %5, i16** %in, align 8
  %6 = load i32, i32* %num_pixels, align 4
  %mul2 = mul nsw i32 %6, 3
  %conv3 = sext i32 %mul2 to i64
  %call4 = call noalias i8* @g_malloc(i64 %conv3)
  store i8* %call4, i8** %row, align 8
  %7 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %fp = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %7, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %9 = load i16*, i16** %in, align 8
  %10 = bitcast i16* %9 to i8*
  %11 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %11, i32 0, i32 0
  %12 = load i32, i32* %file_offset, align 4
  %13 = load i32, i32* %num_pixels, align 4
  %mul5 = mul nsw i32 %13, 2
  call void @raw_read_row(%struct._IO_FILE* %8, i8* %10, i32 %12, i32 %mul5)
  %14 = load i16*, i16** %in, align 8
  %15 = load i8*, i8** %row, align 8
  %16 = load i32, i32* %num_pixels, align 4
  call void @rgb_565_to_888(i16* %14, i8* %15, i32 %16)
  %17 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %region = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %17, i32 0, i32 2
  %18 = load i8*, i8** %row, align 8
  %19 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width6 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %19, i32 0, i32 1
  %20 = load i32, i32* %image_width6, align 4
  %21 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height7 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %21, i32 0, i32 2
  %22 = load i32, i32* %image_height7, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %region, i8* %18, i32 0, i32 0, i32 %20, i32 %22)
  %23 = load i16*, i16** %in, align 8
  %24 = bitcast i16* %23 to i8*
  call void @g_free(i8* %24)
  %25 = load i8*, i8** %row, align 8
  call void @g_free(i8* %25)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @raw_load_planar(%struct.RawGimpData* %data) #0 {
entry:
  %data.addr = alloca %struct.RawGimpData*, align 8
  %r_offset = alloca i32, align 4
  %g_offset = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r_row = alloca i8*, align 8
  %b_row = alloca i8*, align 8
  %g_row = alloca i8*, align 8
  %row = alloca i8*, align 8
  %bpp = alloca i32, align 4
  store %struct.RawGimpData* %data, %struct.RawGimpData** %data.addr, align 8
  store i32 3, i32* %bpp, align 4
  %0 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %0, i32 0, i32 1
  %1 = load i32, i32* %image_width, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call, i8** %r_row, align 8
  %2 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width1 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %image_width1, align 4
  %conv2 = sext i32 %3 to i64
  %call3 = call noalias i8* @g_malloc(i64 %conv2)
  store i8* %call3, i8** %g_row, align 8
  %4 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width4 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %image_width4, align 4
  %conv5 = sext i32 %5 to i64
  %call6 = call noalias i8* @g_malloc(i64 %conv5)
  store i8* %call6, i8** %b_row, align 8
  %6 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width7 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %6, i32 0, i32 1
  %7 = load i32, i32* %image_width7, align 4
  %8 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %7, %8
  %conv8 = sext i32 %mul to i64
  %call9 = call noalias i8* @g_malloc(i64 %conv8)
  store i8* %call9, i8** %row, align 8
  %9 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %file_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %9, i32 0, i32 0
  %10 = load i32, i32* %file_offset, align 4
  store i32 %10, i32* %r_offset, align 4
  %11 = load i32, i32* %r_offset, align 4
  %12 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width10 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %12, i32 0, i32 1
  %13 = load i32, i32* %image_width10, align 4
  %14 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %14, i32 0, i32 2
  %15 = load i32, i32* %image_height, align 4
  %mul11 = mul nsw i32 %13, %15
  %add = add nsw i32 %11, %mul11
  store i32 %add, i32* %g_offset, align 4
  %16 = load i32, i32* %g_offset, align 4
  %17 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width12 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %17, i32 0, i32 1
  %18 = load i32, i32* %image_width12, align 4
  %19 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height13 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %19, i32 0, i32 2
  %20 = load i32, i32* %image_height13, align 4
  %mul14 = mul nsw i32 %18, %20
  %add15 = add nsw i32 %16, %mul14
  store i32 %add15, i32* %b_offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height16 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %22, i32 0, i32 2
  %23 = load i32, i32* %image_height16, align 4
  %cmp = icmp slt i32 %21, %23
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %24 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %fp = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %24, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %26 = load i8*, i8** %r_row, align 8
  %27 = load i32, i32* %r_offset, align 4
  %28 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width18 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %28, i32 0, i32 1
  %29 = load i32, i32* %image_width18, align 4
  %30 = load i32, i32* %i, align 4
  %mul19 = mul nsw i32 %29, %30
  %add20 = add nsw i32 %27, %mul19
  %31 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width21 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %31, i32 0, i32 1
  %32 = load i32, i32* %image_width21, align 4
  call void @raw_read_row(%struct._IO_FILE* %25, i8* %26, i32 %add20, i32 %32)
  %33 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %fp22 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %33, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8
  %35 = load i8*, i8** %g_row, align 8
  %36 = load i32, i32* %g_offset, align 4
  %37 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width23 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %37, i32 0, i32 1
  %38 = load i32, i32* %image_width23, align 4
  %39 = load i32, i32* %i, align 4
  %mul24 = mul nsw i32 %38, %39
  %add25 = add nsw i32 %36, %mul24
  %40 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width26 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %40, i32 0, i32 1
  %41 = load i32, i32* %image_width26, align 4
  call void @raw_read_row(%struct._IO_FILE* %34, i8* %35, i32 %add25, i32 %41)
  %42 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %fp27 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %42, i32 0, i32 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp27, align 8
  %44 = load i8*, i8** %b_row, align 8
  %45 = load i32, i32* %b_offset, align 4
  %46 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width28 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %46, i32 0, i32 1
  %47 = load i32, i32* %image_width28, align 4
  %48 = load i32, i32* %i, align 4
  %mul29 = mul nsw i32 %47, %48
  %add30 = add nsw i32 %45, %mul29
  %49 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width31 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %49, i32 0, i32 1
  %50 = load i32, i32* %image_width31, align 4
  call void @raw_read_row(%struct._IO_FILE* %43, i8* %44, i32 %add30, i32 %50)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body
  %51 = load i32, i32* %j, align 4
  %52 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width33 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %52, i32 0, i32 1
  %53 = load i32, i32* %image_width33, align 4
  %cmp34 = icmp slt i32 %51, %53
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.32
  %54 = load i32, i32* %j, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load i8*, i8** %r_row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %55, i64 %idxprom
  %56 = load i8, i8* %arrayidx, align 1
  %57 = load i32, i32* %k, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %k, align 4
  %idxprom37 = sext i32 %57 to i64
  %58 = load i8*, i8** %row, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %58, i64 %idxprom37
  store i8 %56, i8* %arrayidx38, align 1
  %59 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %59 to i64
  %60 = load i8*, i8** %g_row, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %60, i64 %idxprom39
  %61 = load i8, i8* %arrayidx40, align 1
  %62 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %62, 1
  store i32 %inc41, i32* %k, align 4
  %idxprom42 = sext i32 %62 to i64
  %63 = load i8*, i8** %row, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %63, i64 %idxprom42
  store i8 %61, i8* %arrayidx43, align 1
  %64 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %64 to i64
  %65 = load i8*, i8** %b_row, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %65, i64 %idxprom44
  %66 = load i8, i8* %arrayidx45, align 1
  %67 = load i32, i32* %k, align 4
  %inc46 = add nsw i32 %67, 1
  store i32 %inc46, i32* %k, align 4
  %idxprom47 = sext i32 %67 to i64
  %68 = load i8*, i8** %row, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %68, i64 %idxprom47
  store i8 %66, i8* %arrayidx48, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %69 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %69, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  %70 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %region = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %70, i32 0, i32 2
  %71 = load i8*, i8** %row, align 8
  %72 = load i32, i32* %i, align 4
  %73 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_width50 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %73, i32 0, i32 1
  %74 = load i32, i32* %image_width50, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %region, i8* %71, i32 0, i32 %72, i32 %74)
  %75 = load i32, i32* %i, align 4
  %conv51 = sitofp i32 %75 to float
  %76 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %image_height52 = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %76, i32 0, i32 2
  %77 = load i32, i32* %image_height52, align 4
  %conv53 = sitofp i32 %77 to float
  %div = fdiv float %conv51, %conv53
  %conv54 = fpext float %div to double
  %call55 = call i32 @gimp_progress_update(double %conv54)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %78 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %78, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %call59 = call i32 @gimp_progress_update(double 1.000000e+00)
  %79 = load i8*, i8** %row, align 8
  call void @g_free(i8* %79)
  %80 = load i8*, i8** %r_row, align 8
  call void @g_free(i8* %80)
  %81 = load i8*, i8** %g_row, align 8
  call void @g_free(i8* %81)
  %82 = load i8*, i8** %b_row, align 8
  call void @g_free(i8* %82)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @raw_load_palette(%struct.RawGimpData* %data, i8* %palette_file) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.RawGimpData*, align 8
  %palette_file.addr = alloca i8*, align 8
  %temp = alloca [1024 x i8], align 16
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.RawGimpData* %data, %struct.RawGimpData** %data.addr, align 8
  store i8* %palette_file, i8** %palette_file.addr, align 8
  %0 = load i8*, i8** %palette_file.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %palette_file.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %1, i32 0, i32 0)
  store i32 %call, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* %fd, align 4
  %4 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_offset = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %4, i32 0, i32 4
  %5 = load i32, i32* %palette_offset, align 4
  %conv = sext i32 %5 to i64
  %call3 = call i64 @lseek(i32 %3, i64 %conv, i32 0) #5
  %6 = load %struct.RawConfig*, %struct.RawConfig** @runtime, align 8
  %palette_type = getelementptr inbounds %struct.RawConfig, %struct.RawConfig* %6, i32 0, i32 5
  %7 = load i32, i32* %palette_type, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load i32, i32* %fd, align 4
  %9 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %9, i32 0, i32 4
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  %call4 = call i64 @read(i32 %8, i8* %arraydecay, i64 768)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %10 = load i32, i32* %fd, align 4
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i32 0
  %call7 = call i64 @read(i32 %10, i8* %arraydecay6, i64 1024)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.5
  %11 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %11, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %12, 4
  %add = add nsw i32 %mul, 2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap10 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %15, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap10, i32 0, i64 %idxprom9
  store i8 %13, i8* %arrayidx11, align 1
  %16 = load i32, i32* %i, align 4
  %mul12 = mul nsw i32 %16, 4
  %add13 = add nsw i32 %mul12, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom14
  %17 = load i8, i8* %arrayidx15, align 1
  %18 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %j, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap18 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %19, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap18, i32 0, i64 %idxprom17
  store i8 %17, i8* %arrayidx19, align 1
  %20 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %20, 4
  %add21 = add nsw i32 %mul20, 0
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom22
  %21 = load i8, i8* %arrayidx23, align 1
  %22 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, i32* %j, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap26 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %23, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap26, i32 0, i64 %idxprom25
  store i8 %21, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %for.end, %sw.bb
  %25 = load i32, i32* %fd, align 4
  %call29 = call i32 @close(i32 %25)
  br label %if.end.52

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.49, %if.else
  %26 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %26, 256
  br i1 %cmp31, label %for.body.33, label %for.end.51

for.body.33:                                      ; preds = %for.cond.30
  %27 = load i32, i32* %i, align 4
  %conv34 = trunc i32 %27 to i8
  %28 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %j, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap37 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %29, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap37, i32 0, i64 %idxprom36
  store i8 %conv34, i8* %arrayidx38, align 1
  %30 = load i32, i32* %i, align 4
  %conv39 = trunc i32 %30 to i8
  %31 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %31, 1
  store i32 %inc40, i32* %j, align 4
  %idxprom41 = sext i32 %31 to i64
  %32 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap42 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %32, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap42, i32 0, i64 %idxprom41
  store i8 %conv39, i8* %arrayidx43, align 1
  %33 = load i32, i32* %i, align 4
  %conv44 = trunc i32 %33 to i8
  %34 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %34, 1
  store i32 %inc45, i32* %j, align 4
  %idxprom46 = sext i32 %34 to i64
  %35 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap47 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %35, i32 0, i32 4
  %arrayidx48 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap47, i32 0, i64 %idxprom46
  store i8 %conv44, i8* %arrayidx48, align 1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.33
  %36 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.30

for.end.51:                                       ; preds = %for.cond.30
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %sw.epilog
  %37 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %image_id = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %37, i32 0, i32 3
  %38 = load i32, i32* %image_id, align 4
  %39 = load %struct.RawGimpData*, %struct.RawGimpData** %data.addr, align 8
  %cmap53 = getelementptr inbounds %struct.RawGimpData, %struct.RawGimpData* %39, i32 0, i32 4
  %arraydecay54 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap53, i32 0, i32 0
  %call55 = call i32 @gimp_image_set_colormap(i32 %38, i8* %arraydecay54, i32 256)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.2
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare noalias i8* @g_try_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @raw_read_row(%struct._IO_FILE* %fp, i8* %buf, i32 %offset, i32 %size) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i32, i32* %offset.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %conv, i32 0)
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %conv1 = sext i32 %3 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i64 @fread(i8* %2, i64 %conv1, i64 1, %struct._IO_FILE* %4)
  %tobool = icmp ne i64 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0))
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i32, i32* %size.addr, align 4
  %conv3 = sext i32 %6 to i64
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 %conv3, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @g_printerr(i8*, ...) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

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
