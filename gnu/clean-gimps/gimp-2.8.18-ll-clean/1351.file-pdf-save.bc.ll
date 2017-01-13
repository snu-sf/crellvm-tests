; ModuleID = './plug-ins/common/file-pdf-save.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.PdfMultiPage = type { [350 x i32], i32, [350 x i8] }
%struct.PdfOptimize = type { i32, i32, i32 }
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
%struct._GtkTreeModel = type opaque
%struct._cairo_surface = type opaque
%struct._cairo = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkIconView = type { %struct._GtkContainer, %struct._GtkIconViewPrivate* }
%struct._GtkIconViewPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkButtonBox = type { %struct._GtkBox, i32, i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._PangoContext = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }
%struct._PangoAttrList = type opaque
%struct._PangoFontMap = type opaque
%struct._PangoCairoFontMap = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GdkPixbuf = type opaque
%struct._GFile = type opaque
%struct._GtkFileChooser = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkTreeRowReference = type opaque
%struct._GtkTreePath = type opaque

@PLUG_IN_INFO = global %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.save_args = internal global [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.14, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Run mode\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"vectorize\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Convert bitmaps to vector graphics where possible. TRUE or FALSE\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"ignore-hidden\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"Omit hidden layers and layers with zero opacity. TRUE or FALSE\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"apply-masks\00", align 1
@.str.14 = private unnamed_addr constant [89 x i8] c"Apply layer masks before saving. TRUE or FALSE (Keeping them will not change the output)\00", align 1
@query.save_multi_args = internal global [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Input image for each page (An image can appear more than once)\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.18 = private unnamed_addr constant [94 x i8] c"The amount of images entered (This will be the amount of pages). 1 <= count <= MAX_PAGE_COUNT\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"file-pdf-save\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Save files in PDF format\00", align 1
@.str.21 = private unnamed_addr constant [164 x i8] c"Saves files in Adobe's Portable Document Format. PDF is designed to be easily processed by a variety of different platforms, and is a distant cousin of PostScript.\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Barak Itkin\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Copyright Barak Itkin\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"August 2009\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Portable Document Format\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"file-pdf-save-multi\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"_Create multipage PDF...\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"application/pdf\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.32 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@multi_page = internal global %struct.PdfMultiPage zeroinitializer, align 4
@file_name = internal global i8* null, align 8
@.str.34 = private unnamed_addr constant [32 x i8] c"You must select a file to save!\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.37 = private unnamed_addr constant [136 x i8] c"An error occured while creating the PDF file:\0A%s\0AMake sure you entered a valid filename and that the selected location isn't read only!\00", align 1
@optimize = internal global %struct.PdfOptimize { i32 1, i32 1, i32 1 }, align 4
@.str.38 = private unnamed_addr constant [23 x i8] c"file-pdf-data-optimize\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"file-pdf-data-multi-page\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"gimp-file-pdf-save\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"Omit hidden layers and layers with zero opacity\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"Convert bitmaps to vector graphics where possible\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"Apply layer masks before saving\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"Keeping the masks will not change the output\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Save to:\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Browse...\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"Multipage PDF export\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@file_choose = internal global %struct._GtkWidget* null, align 8
@model = internal global %struct._GtkTreeModel* null, align 8
@.str.51 = private unnamed_addr constant [26 x i8] c"Remove the selected pages\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Add this image\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"row-deleted\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Page %d\00", align 1
@dnd_remove = internal global i32 1, align 4
@.str.56 = private unnamed_addr constant [70 x i8] c"Error! In order to save the file, at least one image should be added!\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"file-pdf-save.c\00", align 1
@__func__.get_drawable_image = private unnamed_addr constant [19 x i8] c"get_drawable_image\00", align 1
@.str.58 = private unnamed_addr constant [62 x i8] c"Cannot handle the size (either width or height) of the image.\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Cairo error: %s\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.save_multi_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0))
  %call1 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %single_image = alloca i32, align 4
  %defaults_proc = alloca i32, align 4
  %pdf_file = alloca %struct._cairo_surface*, align 8
  %cr = alloca %struct._cairo*, align 8
  %capabilities = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x_res = alloca double, align 8
  %y_res = alloca double, align 8
  %x_scale = alloca double, align 8
  %y_scale = alloca double, align 8
  %image_id = alloca i32, align 4
  %exported = alloca i32, align 4
  %type = alloca i32, align 4
  %temp = alloca i32, align 4
  %layers = alloca i32*, align 8
  %num_of_layers = alloca i32, align 4
  %layer = alloca %struct._GimpDrawable*, align 8
  %layer_image = alloca %struct._cairo_surface*, align 8
  %opacity = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %layer_color = alloca %struct._GimpRGB, align 8
  %single_color = alloca i32, align 4
  %mask_id = alloca i32, align 4
  %mask = alloca %struct._GimpDrawable*, align 8
  %mask_image = alloca %struct._cairo_surface*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %error = alloca %struct._GError*, align 8
  %str = alloca i8*, align 8
  %tmp = alloca %struct._GimpRGB, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 -1, i32* %mask_id, align 4
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %mask, align 8
  store %struct._cairo_surface* null, %struct._cairo_surface** %mask_image, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i32, i32* %nparams.addr, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %call4 = call i32 @init_vals(i8* %3, i32 %4, %struct._GimpParam* %5, i32* %single_image, i32* %defaults_proc, i32* %run_mode)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.170

if.end:                                           ; preds = %do.end
  %6 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %single_image, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %call8 = call i32 @gui_single()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.170

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.16

if.else:                                          ; preds = %if.then.5
  %call12 = call i32 @gui_multi()
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.else
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.170

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.11
  %8 = load i8*, i8** @file_name, align 8
  %cmp17 = icmp eq i8* %8, null
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0)) #4
  %call20 = call i32 @gimp_message(i8* %call19)
  br label %if.end.170

if.end.21:                                        ; preds = %if.end.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %9 = load i8*, i8** @file_name, align 8
  %call23 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call23, %struct._IO_FILE** %fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp24 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %if.end.22
  %11 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %11, align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %cmp26 = icmp eq %struct._GError* %12, null
  br i1 %cmp26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.then.25
  %call28 = call i32 @g_file_error_quark()
  %call29 = call i32* @__errno_location() #8
  %13 = load i32, i32* %call29, align 4
  %call30 = call i32 @g_file_error_from_errno(i32 %13)
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #4
  %14 = load i8*, i8** @file_name, align 8
  %call32 = call i8* @gimp_filename_to_utf8(i8* %14)
  %call33 = call i32* @__errno_location() #8
  %15 = load i32, i32* %call33, align 4
  %call34 = call i8* @g_strerror(i32 %15) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 %call28, i32 %call30, i8* %call31, i8* %call32, i8* %call34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.27, %if.then.25
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2
  %17 = load i8*, i8** %message, align 8
  store i8* %17, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.170

if.end.36:                                        ; preds = %if.end.22
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %19 = bitcast %struct._IO_FILE* %18 to i8*
  %call37 = call %struct._cairo_surface* @cairo_pdf_surface_create_for_stream(i32 (i8*, i8*, i32)* @write_func, i8* %19, double 1.000000e+00, double 1.000000e+00)
  store %struct._cairo_surface* %call37, %struct._cairo_surface** %pdf_file, align 8
  %20 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  %call38 = call i32 @cairo_surface_status(%struct._cairo_surface* %20)
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.end.36
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.37, i32 0, i32 0)) #4
  %21 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  %call42 = call i32 @cairo_surface_status(%struct._cairo_surface* %21)
  %call43 = call i8* @cairo_status_to_string(i32 %call42)
  %call44 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call41, i8* %call43)
  store i8* %call44, i8** %str, align 8
  %22 = load i8*, i8** %str, align 8
  %call45 = call i32 @gimp_message(i8* %22)
  %23 = load i8*, i8** %str, align 8
  call void @g_free(i8* %23)
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.170

if.end.46:                                        ; preds = %if.end.36
  %24 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  %call47 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %24)
  store %struct._cairo* %call47, %struct._cairo** %cr, align 8
  store i32 55, i32* %capabilities, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 2), align 4
  %tobool48 = icmp ne i32 %25, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %26 = load i32, i32* %capabilities, align 4
  %or = or i32 %26, 128
  store i32 %or, i32* %capabilities, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.46
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.161, %if.end.50
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %cmp51 = icmp ult i32 %27, %28
  br i1 %cmp51, label %for.body, label %for.end.163

for.body:                                         ; preds = %for.cond
  %29 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_save(%struct._cairo* %29)
  %30 = load i32, i32* %i, align 4
  %idxprom = zext i32 %30 to i64
  %arrayidx = getelementptr inbounds [350 x i32], [350 x i32]* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0), i32 0, i64 %idxprom
  %31 = load i32, i32* %arrayidx, align 4
  store i32 %31, i32* %image_id, align 4
  %32 = load i32, i32* %image_id, align 4
  %call52 = call i32 @gimp_image_get_active_drawable(i32 %32)
  store i32 %call52, i32* %temp, align 4
  %33 = load i32, i32* %temp, align 4
  %cmp53 = icmp eq i32 %33, -1
  br i1 %cmp53, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %for.body
  %34 = load i32, i32* %capabilities, align 4
  %call55 = call i32 @gimp_export_image(i32* %image_id, i32* %temp, i8* null, i32 %34)
  %cmp56 = icmp eq i32 %call55, 2
  %conv = zext i1 %cmp56 to i32
  store i32 %conv, i32* %exported, align 4
  br label %if.end.58

if.else.57:                                       ; preds = %for.body
  store i32 0, i32* %exported, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.54
  %35 = load i32, i32* %image_id, align 4
  %call59 = call i32 @gimp_image_base_type(i32 %35)
  store i32 %call59, i32* %type, align 4
  %36 = load i32, i32* %image_id, align 4
  %call60 = call i32 @gimp_image_get_resolution(i32 %36, double* %x_res, double* %y_res)
  %37 = load double, double* %x_res, align 8
  %div = fdiv double 7.200000e+01, %37
  store double %div, double* %x_scale, align 8
  %38 = load double, double* %y_res, align 8
  %div61 = fdiv double 7.200000e+01, %38
  store double %div61, double* %y_scale, align 8
  %39 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  %40 = load i32, i32* %image_id, align 4
  %call62 = call i32 @gimp_image_width(i32 %40)
  %conv63 = sitofp i32 %call62 to double
  %41 = load double, double* %x_scale, align 8
  %mul = fmul double %conv63, %41
  %42 = load i32, i32* %image_id, align 4
  %call64 = call i32 @gimp_image_height(i32 %42)
  %conv65 = sitofp i32 %call64 to double
  %43 = load double, double* %y_scale, align 8
  %mul66 = fmul double %conv65, %43
  call void @cairo_pdf_surface_set_size(%struct._cairo_surface* %39, double %mul, double %mul66)
  %44 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  %45 = load double, double* %x_res, align 8
  %46 = load double, double* %y_res, align 8
  call void @cairo_surface_set_fallback_resolution(%struct._cairo_surface* %44, double %45, double %46)
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %48 = load double, double* %x_scale, align 8
  %49 = load double, double* %y_scale, align 8
  call void @cairo_scale(%struct._cairo* %47, double %48, double %49)
  %50 = load i32, i32* %image_id, align 4
  %call67 = call i32* @gimp_image_get_layers(i32 %50, i32* %num_of_layers)
  store i32* %call67, i32** %layers, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %if.end.58
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %num_of_layers, align 4
  %cmp69 = icmp slt i32 %51, %52
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %53 = load i32, i32* %num_of_layers, align 4
  %54 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %53, %54
  %sub72 = sub nsw i32 %sub, 1
  %idxprom73 = sext i32 %sub72 to i64
  %55 = load i32*, i32** %layers, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %55, i64 %idxprom73
  %56 = load i32, i32* %arrayidx74, align 4
  %call75 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %56)
  store %struct._GimpDrawable* %call75, %struct._GimpDrawable** %layer, align 8
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %57, i32 0, i32 0
  %58 = load i32, i32* %drawable_id, align 4
  %call76 = call double @gimp_layer_get_opacity(i32 %58)
  %div77 = fdiv double %call76, 1.000000e+02
  store double %div77, double* %opacity, align 8
  %59 = load i32, i32* %type, align 4
  %cmp78 = icmp eq i32 %59, 2
  br i1 %cmp78, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %for.body.71
  %60 = load double, double* %opacity, align 8
  %cmp81 = fcmp ole double %60, 5.000000e-01
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.then.80
  store double 0.000000e+00, double* %opacity, align 8
  br label %if.end.85

if.else.84:                                       ; preds = %if.then.80
  store double 1.000000e+00, double* %opacity, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.84, %if.then.83
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %for.body.71
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %drawable_id87 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 0
  %62 = load i32, i32* %drawable_id87, align 4
  %call88 = call i32 @gimp_item_get_visible(i32 %62)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %land.lhs.true, label %if.end.152

land.lhs.true:                                    ; preds = %if.end.86
  %63 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  %tobool90 = icmp ne i32 %63, 0
  br i1 %tobool90, label %lor.lhs.false, label %if.then.95

lor.lhs.false:                                    ; preds = %land.lhs.true
  %64 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  %tobool91 = icmp ne i32 %64, 0
  br i1 %tobool91, label %land.lhs.true.92, label %if.end.152

land.lhs.true.92:                                 ; preds = %lor.lhs.false
  %65 = load double, double* %opacity, align 8
  %cmp93 = fcmp ogt double %65, 0.000000e+00
  br i1 %cmp93, label %if.then.95, label %if.end.152

if.then.95:                                       ; preds = %land.lhs.true.92, %land.lhs.true
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %drawable_id96 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %66, i32 0, i32 0
  %67 = load i32, i32* %drawable_id96, align 4
  %call97 = call i32 @gimp_layer_get_mask(i32 %67)
  store i32 %call97, i32* %mask_id, align 4
  %68 = load i32, i32* %mask_id, align 4
  %cmp98 = icmp ne i32 %68, -1
  br i1 %cmp98, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.then.95
  %69 = load i32, i32* %mask_id, align 4
  %call101 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %69)
  store %struct._GimpDrawable* %call101, %struct._GimpDrawable** %mask, align 8
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask, align 8
  %call102 = call %struct._cairo_surface* @get_drawable_image(%struct._GimpDrawable* %70, %struct._GError** %error)
  store %struct._cairo_surface* %call102, %struct._cairo_surface** %mask_image, align 8
  %71 = load %struct._GError*, %struct._GError** %error, align 8
  %cmp103 = icmp ne %struct._GError* %71, null
  br i1 %cmp103, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.then.100
  %72 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %72, align 4
  %73 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %73)
  %74 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call106 = call i32 @fclose(%struct._IO_FILE* %75)
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %76 = load %struct._GError*, %struct._GError** %error, align 8
  %message107 = getelementptr inbounds %struct._GError, %struct._GError* %76, i32 0, i32 2
  %77 = load i8*, i8** %message107, align 8
  store i8* %77, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.170

if.end.108:                                       ; preds = %if.then.100
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.95
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %drawable_id110 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %78, i32 0, i32 0
  %79 = load i32, i32* %drawable_id110, align 4
  %call111 = call i32 @gimp_drawable_offsets(i32 %79, i32* %x, i32* %y)
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %drawable_id112 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %80, i32 0, i32 0
  %81 = load i32, i32* %drawable_id112, align 4
  %call113 = call i32 @gimp_item_is_text_layer(i32 %81)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.else.150, label %if.then.115

if.then.115:                                      ; preds = %if.end.109
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  call void @get_layer_color(%struct._GimpRGB* sret %tmp, %struct._GimpDrawable* %82, i32* %single_color)
  %83 = bitcast %struct._GimpRGB* %layer_color to i8*
  %84 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 32, i32 8, i1 false)
  %85 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %86 = load i32, i32* %x, align 4
  %conv116 = sitofp i32 %86 to double
  %87 = load i32, i32* %y, align 4
  %conv117 = sitofp i32 %87 to double
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %88, i32 0, i32 1
  %89 = load i32, i32* %width, align 4
  %conv118 = uitofp i32 %89 to double
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %90, i32 0, i32 2
  %91 = load i32, i32* %height, align 4
  %conv119 = uitofp i32 %91 to double
  call void @cairo_rectangle(%struct._cairo* %85, double %conv116, double %conv117, double %conv118, double %conv119)
  %92 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 0), align 4
  %tobool120 = icmp ne i32 %92, 0
  br i1 %tobool120, label %land.lhs.true.121, label %if.else.132

land.lhs.true.121:                                ; preds = %if.then.115
  %93 = load i32, i32* %single_color, align 4
  %tobool122 = icmp ne i32 %93, 0
  br i1 %tobool122, label %if.then.123, label %if.else.132

if.then.123:                                      ; preds = %land.lhs.true.121
  %94 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %layer_color, i32 0, i32 0
  %95 = load double, double* %r, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %layer_color, i32 0, i32 1
  %96 = load double, double* %g, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %layer_color, i32 0, i32 2
  %97 = load double, double* %b, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %layer_color, i32 0, i32 3
  %98 = load double, double* %a, align 8
  %99 = load double, double* %opacity, align 8
  %mul124 = fmul double %98, %99
  call void @cairo_set_source_rgba(%struct._cairo* %94, double %95, double %96, double %97, double %mul124)
  %100 = load i32, i32* %mask_id, align 4
  %cmp125 = icmp ne i32 %100, -1
  br i1 %cmp125, label %if.then.127, label %if.else.130

if.then.127:                                      ; preds = %if.then.123
  %101 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %102 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_image, align 8
  %103 = load i32, i32* %x, align 4
  %conv128 = sitofp i32 %103 to double
  %104 = load i32, i32* %y, align 4
  %conv129 = sitofp i32 %104 to double
  call void @cairo_mask_surface(%struct._cairo* %101, %struct._cairo_surface* %102, double %conv128, double %conv129)
  br label %if.end.131

if.else.130:                                      ; preds = %if.then.123
  %105 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %105)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.130, %if.then.127
  br label %if.end.149

if.else.132:                                      ; preds = %land.lhs.true.121, %if.then.115
  %106 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %106)
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %call133 = call %struct._cairo_surface* @get_drawable_image(%struct._GimpDrawable* %107, %struct._GError** %error)
  store %struct._cairo_surface* %call133, %struct._cairo_surface** %layer_image, align 8
  %108 = load %struct._GError*, %struct._GError** %error, align 8
  %cmp134 = icmp ne %struct._GError* %108, null
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.else.132
  %109 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %109, align 4
  %110 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %110)
  %111 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %111)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call137 = call i32 @fclose(%struct._IO_FILE* %112)
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %113 = load %struct._GError*, %struct._GError** %error, align 8
  %message138 = getelementptr inbounds %struct._GError, %struct._GError* %113, i32 0, i32 2
  %114 = load i8*, i8** %message138, align 8
  store i8* %114, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.170

if.end.139:                                       ; preds = %if.else.132
  %115 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %116 = load %struct._cairo_surface*, %struct._cairo_surface** %layer_image, align 8
  %117 = load i32, i32* %x, align 4
  %conv140 = sitofp i32 %117 to double
  %118 = load i32, i32* %y, align 4
  %conv141 = sitofp i32 %118 to double
  call void @cairo_set_source_surface(%struct._cairo* %115, %struct._cairo_surface* %116, double %conv140, double %conv141)
  %119 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_push_group(%struct._cairo* %119)
  %120 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %121 = load double, double* %opacity, align 8
  call void @cairo_paint_with_alpha(%struct._cairo* %120, double %121)
  %122 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_pop_group_to_source(%struct._cairo* %122)
  %123 = load i32, i32* %mask_id, align 4
  %cmp142 = icmp ne i32 %123, -1
  br i1 %cmp142, label %if.then.144, label %if.else.147

if.then.144:                                      ; preds = %if.end.139
  %124 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %125 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_image, align 8
  %126 = load i32, i32* %x, align 4
  %conv145 = sitofp i32 %126 to double
  %127 = load i32, i32* %y, align 4
  %conv146 = sitofp i32 %127 to double
  call void @cairo_mask_surface(%struct._cairo* %124, %struct._cairo_surface* %125, double %conv145, double %conv146)
  br label %if.end.148

if.else.147:                                      ; preds = %if.end.139
  %128 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %128)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.147, %if.then.144
  %129 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_reset_clip(%struct._cairo* %129)
  %130 = load %struct._cairo_surface*, %struct._cairo_surface** %layer_image, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %130)
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.131
  br label %if.end.151

if.else.150:                                      ; preds = %if.end.109
  %131 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %132 = load double, double* %opacity, align 8
  %133 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %134 = load double, double* %x_res, align 8
  %135 = load double, double* %y_res, align 8
  call void @drawText(%struct._GimpDrawable* %131, double %132, %struct._cairo* %133, double %134, double %135)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.150, %if.end.149
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true.92, %lor.lhs.false, %if.end.86
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %136)
  %137 = load i32, i32* %mask_id, align 4
  %cmp153 = icmp ne i32 %137, -1
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.152
  %138 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %138)
  %139 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_image, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %139)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.end.152
  br label %for.inc

for.inc:                                          ; preds = %if.end.156
  %140 = load i32, i32* %j, align 4
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.68

for.end:                                          ; preds = %for.cond.68
  %141 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_show_page(%struct._cairo* %141)
  %142 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_restore(%struct._cairo* %142)
  %143 = load i32, i32* %exported, align 4
  %tobool157 = icmp ne i32 %143, 0
  br i1 %tobool157, label %if.then.158, label %if.end.160

if.then.158:                                      ; preds = %for.end
  %144 = load i32, i32* %image_id, align 4
  %call159 = call i32 @gimp_image_delete(i32 %144)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.158, %for.end
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %145 = load i32, i32* %i, align 4
  %inc162 = add i32 %145, 1
  store i32 %inc162, i32* %i, align 4
  br label %for.cond

for.end.163:                                      ; preds = %for.cond
  %146 = load %struct._cairo_surface*, %struct._cairo_surface** %pdf_file, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %146)
  %147 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %147)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call164 = call i32 @fclose(%struct._IO_FILE* %148)
  %call165 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* bitcast (%struct.PdfOptimize* @optimize to i8*), i32 12)
  %149 = load i32, i32* %single_image, align 4
  %tobool166 = icmp ne i32 %149, 0
  br i1 %tobool166, label %if.end.170, label %if.then.167

if.then.167:                                      ; preds = %for.end.163
  %150 = load i8*, i8** @file_name, align 8
  %call168 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 2, i32 0), i8* %150, i64 350)
  %call169 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i8* bitcast (%struct.PdfMultiPage* @multi_page to i8*), i32 1756)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then, %if.then.10, %if.then.14, %if.then.18, %if.end.35, %if.then.40, %if.then.105, %if.then.136, %if.then.167, %for.end.163
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

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @init_vals(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %single_image, i32* %defaults_proc, i32* %run_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %single_image.addr = alloca i32*, align 8
  %defaults_proc.addr = alloca i32*, align 8
  %run_mode.addr = alloca i32*, align 8
  %had_saved_list = alloca i32, align 4
  %single = alloca i32, align 4
  %defaults = alloca i32, align 4
  %i = alloca i32, align 4
  %image = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %single_image, i32** %single_image.addr, align 8
  store i32* %defaults_proc, i32** %defaults_proc.addr, align 8
  store i32* %run_mode, i32** %run_mode.addr, align 8
  store i32 0, i32* %had_saved_list, align 4
  store i32 0, i32* %defaults, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @g_str_equal(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.20

if.then:                                          ; preds = %entry
  store i32 1, i32* %single, align 4
  %1 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %1, 8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %nparams.addr, align 4
  %cmp1 = icmp ne i32 %2, 5
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_int32, align 4
  %5 = load i32*, i32** %run_mode.addr, align 8
  store i32 %4, i32* %5, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %7 = load i32, i32* %d_int325, align 4
  store i32 %7, i32* %image, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data7 to i8**
  %9 = load i8*, i8** %d_string, align 8
  store i8* %9, i8** @file_name, align 8
  %10 = load i32, i32* %nparams.addr, align 4
  %cmp8 = icmp eq i32 %10, 8
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 7
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_int3212 = bitcast %union._GimpParamData* %data11 to i32*
  %12 = load i32, i32* %d_int3212, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 2), align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 5
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_int3215 = bitcast %union._GimpParamData* %data14 to i32*
  %14 = load i32, i32* %d_int3215, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 0), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 6
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %16 = load i32, i32* %d_int3218, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end
  store i32 1, i32* %defaults, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.9
  br label %if.end.44

if.else.20:                                       ; preds = %entry
  %17 = load i8*, i8** %name.addr, align 8
  %call21 = call i32 @g_str_equal(i8* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0))
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.42

if.then.23:                                       ; preds = %if.else.20
  store i32 0, i32* %single, align 4
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp24 = icmp ne i32 %18, 8
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.23
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 0
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %20 = load i32, i32* %d_int3229, align 4
  %21 = load i32*, i32** %run_mode.addr, align 8
  store i32 %20, i32* %21, align 4
  store i32 -1, i32* %image, align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 6
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_string32 = bitcast %union._GimpParamData* %data31 to i8**
  %23 = load i8*, i8** %d_string32, align 8
  store i8* %23, i8** @file_name, align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 5
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_int3235 = bitcast %union._GimpParamData* %data34 to i32*
  %25 = load i32, i32* %d_int3235, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 2), align 4
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 3
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_int3238 = bitcast %union._GimpParamData* %data37 to i32*
  %27 = load i32, i32* %d_int3238, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 0), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 4
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_int3241 = bitcast %union._GimpParamData* %data40 to i32*
  %29 = load i32, i32* %d_int3241, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  br label %if.end.43

if.else.42:                                       ; preds = %if.else.20
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.26
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.19
  %30 = load i32*, i32** %run_mode.addr, align 8
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.67
    i32 2, label %sw.bb.82
  ]

sw.bb:                                            ; preds = %if.end.44
  %32 = load i32, i32* %single, align 4
  %tobool45 = icmp ne i32 %32, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %sw.bb
  %33 = load i32, i32* %image, align 4
  call void @init_image_list_defaults(i32 %33)
  br label %if.end.66

if.else.47:                                       ; preds = %sw.bb
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 2
  %data49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx48, i32 0, i32 1
  %d_int3250 = bitcast %union._GimpParamData* %data49 to i32*
  %35 = load i32, i32* %d_int3250, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 1
  %data52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx51, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data52 to i32**
  %37 = load i32*, i32** %d_int32array, align 8
  %cmp53 = icmp ne i32* %37, null
  br i1 %cmp53, label %if.then.54, label %if.end.65

if.then.54:                                       ; preds = %if.else.47
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.54
  %38 = load i32, i32* %i, align 4
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 2
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_int3257 = bitcast %union._GimpParamData* %data56 to i32*
  %40 = load i32, i32* %d_int3257, align 4
  %cmp58 = icmp slt i32 %38, %40
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %i, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 1
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_int32array61 = bitcast %union._GimpParamData* %data60 to i32**
  %43 = load i32*, i32** %d_int32array61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %43, i64 %idxprom
  %44 = load i32, i32* %arrayidx62, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds [350 x i32], [350 x i32]* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0), i32 0, i64 %idxprom63
  store i32 %44, i32* %arrayidx64, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.65

if.end.65:                                        ; preds = %for.end, %if.else.47
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.46
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.44
  %call68 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* bitcast (%struct.PdfOptimize* @optimize to i8*))
  %call69 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i8* bitcast (%struct.PdfMultiPage* @multi_page to i8*))
  store i32 %call69, i32* %had_saved_list, align 4
  %47 = load i32, i32* %had_saved_list, align 4
  %tobool70 = icmp ne i32 %47, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.76

land.lhs.true.71:                                 ; preds = %sw.bb.67
  %48 = load i8*, i8** @file_name, align 8
  %cmp72 = icmp eq i8* %48, null
  br i1 %cmp72, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.71
  %49 = load i8*, i8** @file_name, align 8
  %call73 = call i64 @strlen(i8* %49) #9
  %cmp74 = icmp eq i64 %call73, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false, %land.lhs.true.71
  store i8* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 2, i32 0), i8** @file_name, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %lor.lhs.false, %sw.bb.67
  %50 = load i32, i32* %single, align 4
  %tobool77 = icmp ne i32 %50, 0
  br i1 %tobool77, label %if.then.80, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.76
  %51 = load i32, i32* %had_saved_list, align 4
  %tobool79 = icmp ne i32 %51, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %lor.lhs.false.78, %if.end.76
  %52 = load i32, i32* %image, align 4
  call void @init_image_list_defaults(i32 %52)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %lor.lhs.false.78
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.end.44
  %53 = load i32, i32* %single, align 4
  %tobool83 = icmp ne i32 %53, 0
  br i1 %tobool83, label %if.else.89, label %if.then.84

if.then.84:                                       ; preds = %sw.bb.82
  %call85 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i8* bitcast (%struct.PdfMultiPage* @multi_page to i8*))
  store i32 %call85, i32* %had_saved_list, align 4
  %54 = load i32, i32* %had_saved_list, align 4
  %tobool86 = icmp ne i32 %54, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.84
  store i8* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 2, i32 0), i8** @file_name, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.84
  br label %if.end.90

if.else.89:                                       ; preds = %sw.bb.82
  %55 = load i32, i32* %image, align 4
  call void @init_image_list_defaults(i32 %55)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.end.88
  %call91 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* bitcast (%struct.PdfOptimize* @optimize to i8*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.44, %if.end.90, %if.end.81, %if.end.66
  %56 = load i32, i32* %defaults, align 4
  %57 = load i32*, i32** %defaults_proc.addr, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %single, align 4
  %59 = load i32*, i32** %single_image.addr, align 8
  store i32 %58, i32* %59, align 4
  call void @validate_image_list()
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.42, %if.then.25, %if.then.2
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_single() #0 {
entry:
  %window = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vectorize_c = alloca %struct._GtkWidget*, align 8
  %ignore_hidden_c = alloca %struct._GtkWidget*, align 8
  %apply_c = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 0)
  %call = call %struct._GtkWidget* @gimp_export_dialog_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %window, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %0)
  %1 = bitcast %struct._GtkWidget* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %2, %struct._GtkWidget* %3, i32 1, i32 1, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %6, i32 12)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i32 0, i32 0)) #4
  %call8 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call7)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %ignore_hidden_c, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %ignore_hidden_c, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_button_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call9)
  %9 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleButton*
  %10 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %9, i32 %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %ignore_hidden_c, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0)) #4
  %call14 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %vectorize_c, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vectorize_c, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_toggle_button_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkToggleButton*
  %18 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %17, i32 %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vectorize_c, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 1, i32 1, i32 0)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0)) #4
  %call20 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call19)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %apply_c, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_toggle_button_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkToggleButton*
  %26 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %25, i32 %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 1, i32 1, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.45, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %31, i8* %call25, i8* null)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_dialog_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkDialog*
  %call28 = call i32 @gtk_dialog_run(%struct._GtkDialog* %35)
  %cmp = icmp eq i32 %call28, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %ignore_hidden_c, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_toggle_button_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call29)
  %38 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkToggleButton*
  %call31 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %38)
  store i32 %call31, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %vectorize_c, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_toggle_button_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call32)
  %41 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkToggleButton*
  %call34 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %41)
  store i32 %call34, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 0), align 4
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_toggle_button_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call35)
  %44 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkToggleButton*
  %call37 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %44)
  store i32 %call37, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 2), align 4
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %45)
  %46 = load i32, i32* %run, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_multi() #0 {
entry:
  %window = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %file_label = alloca %struct._GtkWidget*, align 8
  %file_entry = alloca %struct._GtkWidget*, align 8
  %file_browse = alloca %struct._GtkWidget*, align 8
  %file_hbox = alloca %struct._GtkWidget*, align 8
  %vectorize_c = alloca %struct._GtkWidget*, align 8
  %ignore_hidden_c = alloca %struct._GtkWidget*, align 8
  %apply_c = alloca %struct._GtkWidget*, align 8
  %scroll = alloca %struct._GtkWidget*, align 8
  %page_view = alloca %struct._GtkWidget*, align 8
  %h_but_box = alloca %struct._GtkWidget*, align 8
  %del = alloca %struct._GtkWidget*, align 8
  %h_box = alloca %struct._GtkWidget*, align 8
  %img_combo = alloca %struct._GtkWidget*, align 8
  %add_image = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %temp = alloca i8*, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 0)
  %call = call %struct._GtkWidget* @gimp_export_dialog_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %window, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 10)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %0)
  %1 = bitcast %struct._GtkWidget* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %2, %struct._GtkWidget* %3, i32 1, i32 1, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %6, i32 12)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 5)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %file_hbox, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0)) #4
  %call9 = call %struct._GtkWidget* @gtk_label_new(i8* %call8)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %file_label, align 8
  %call10 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %file_entry, align 8
  %7 = load i8*, i8** @file_name, align 8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_entry_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call11)
  %10 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkEntry*
  %11 = load i8*, i8** @file_name, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #4
  %call14 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %file_browse, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0)) #4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call16)
  %14 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  %call18 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call15, %struct._GtkWindow* %14, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 -5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 -6, i8* null)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** @file_choose, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %file_hbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %file_label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %file_hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call21)
  %21 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 1, i32 1, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %file_hbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call23)
  %25 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %file_browse, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 0, i32 0, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call25)
  %29 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %file_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 1, i32 1, i32 0)
  %call27 = call %struct._GtkWidget* @gtk_icon_view_new()
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %page_view, align 8
  %call28 = call %struct._GtkTreeModel* @create_model()
  store %struct._GtkTreeModel* %call28, %struct._GtkTreeModel** @model, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_icon_view_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call29)
  %33 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkIconView*
  %34 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  call void @gtk_icon_view_set_model(%struct._GtkIconView* %33, %struct._GtkTreeModel* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_icon_view_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call31)
  %37 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkIconView*
  call void @gtk_icon_view_set_reorderable(%struct._GtkIconView* %37, i32 1)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_icon_view_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call33)
  %40 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkIconView*
  call void @gtk_icon_view_set_selection_mode(%struct._GtkIconView* %40, i32 3)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_icon_view_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call35)
  %43 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkIconView*
  call void @gtk_icon_view_set_pixbuf_column(%struct._GtkIconView* %43, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_icon_view_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call37)
  %46 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkIconView*
  call void @gtk_icon_view_set_text_column(%struct._GtkIconView* %46, i32 1)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_icon_view_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call39)
  %49 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkIconView*
  call void @gtk_icon_view_set_tooltip_column(%struct._GtkIconView* %49, i32 2)
  %call41 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %scroll, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %scroll, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %50, i32 -1, i32 300)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %scroll, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_scrolled_window_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call42)
  %53 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %53, i32 1, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %scroll, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_container_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call44)
  %56 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkContainer*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %56, %struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call46)
  %60 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %scroll, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %60, %struct._GtkWidget* %61, i32 1, i32 1, i32 0)
  %call48 = call %struct._GtkWidget* @gtk_button_box_new(i32 0)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %h_but_box, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %h_but_box, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_button_box_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call49)
  %64 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkButtonBox*
  call void @gtk_button_box_set_layout(%struct._GtkButtonBox* %64, i32 3)
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0)) #4
  %call52 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call51)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %del, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %h_but_box, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call53)
  %67 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %del, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 1, i32 1, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call55)
  %71 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %h_but_box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 0, i32 0, i32 0)
  %call57 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 5)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %h_box, align 8
  %call58 = call %struct._GtkWidget* @gimp_image_combo_box_new(i32 (i32, i8*)* null, i8* null)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %img_combo, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %h_box, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_box_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call59)
  %75 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %img_combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %75, %struct._GtkWidget* %76, i32 0, i32 0, i32 0)
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0)) #4
  %call62 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call61)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %add_image, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %h_box, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call63)
  %79 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %add_image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %79, %struct._GtkWidget* %80, i32 0, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_box_get_type() #8
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call65)
  %83 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %h_box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i32 0, i32 0)) #4
  %call68 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call67)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %ignore_hidden_c, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %ignore_hidden_c, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_toggle_button_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call69)
  %87 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkToggleButton*
  %88 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %87, i32 %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_box_get_type() #8
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call71)
  %91 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkBox*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %ignore_hidden_c, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %91, %struct._GtkWidget* %92, i32 0, i32 0, i32 0)
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0)) #4
  %call74 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call73)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %vectorize_c, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vectorize_c, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_toggle_button_get_type() #8
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call75)
  %95 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkToggleButton*
  %96 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %95, i32 %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #8
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call77)
  %99 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %vectorize_c, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 0, i32 0, i32 0)
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0)) #4
  %call80 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call79)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %apply_c, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_toggle_button_get_type() #8
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call81)
  %103 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkToggleButton*
  %104 = load i32, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %103, i32 %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_box_get_type() #8
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call83)
  %107 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkBox*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %107, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.45, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %109, i8* %call85, i8* null)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %file_browse, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 80)
  %113 = bitcast %struct._GTypeInstance* %call86 to %struct._GObject*
  %114 = bitcast %struct._GObject* %113 to i8*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 80)
  %117 = bitcast %struct._GTypeInstance* %call87 to %struct._GObject*
  %118 = bitcast %struct._GObject* %117 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @choose_file_call to void ()*), i8* %118, void (i8*, %struct._GClosure*)* null, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %add_image, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 80)
  %121 = bitcast %struct._GTypeInstance* %call89 to %struct._GObject*
  %122 = bitcast %struct._GObject* %121 to i8*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %img_combo, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 80)
  %125 = bitcast %struct._GTypeInstance* %call90 to %struct._GObject*
  %126 = bitcast %struct._GObject* %125 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @add_image_call to void ()*), i8* %126, void (i8*, %struct._GClosure*)* null, i32 0)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %del, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 80)
  %129 = bitcast %struct._GTypeInstance* %call92 to %struct._GObject*
  %130 = bitcast %struct._GObject* %129 to i8*
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %page_view, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 80)
  %133 = bitcast %struct._GTypeInstance* %call93 to %struct._GObject*
  %134 = bitcast %struct._GObject* %133 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @del_image_call to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 0)
  %135 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %136 = bitcast %struct._GtkTreeModel* %135 to %struct._GTypeInstance*
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 80)
  %137 = bitcast %struct._GTypeInstance* %call95 to %struct._GObject*
  %138 = bitcast %struct._GObject* %137 to i8*
  %call96 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeModel*, %struct._GtkTreePath*, i8*)* @remove_call to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_dialog_get_type() #8
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call97)
  %141 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkDialog*
  %call99 = call i32 @gtk_dialog_run(%struct._GtkDialog* %141)
  %cmp100 = icmp eq i32 %call99, -5
  %conv = zext i1 %cmp100 to i32
  store i32 %conv, i32* %run, align 4
  %call101 = call i32 @get_image_list()
  %142 = load i32, i32* %run, align 4
  %and = and i32 %142, %call101
  store i32 %and, i32* %run, align 4
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_entry_get_type() #8
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call102)
  %145 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkEntry*
  %call104 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %145)
  store i8* %call104, i8** %temp, align 8
  %146 = load i8*, i8** @file_name, align 8
  %147 = load i8*, i8** %temp, align 8
  %call105 = call i8* @g_stpcpy(i8* %146, i8* %147)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %ignore_hidden_c, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_toggle_button_get_type() #8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call106)
  %150 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkToggleButton*
  %call108 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %150)
  store i32 %call108, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 1), align 4
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %vectorize_c, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_toggle_button_get_type() #8
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call109)
  %153 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkToggleButton*
  %call111 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %153)
  store i32 %call111, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 0), align 4
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %apply_c, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_toggle_button_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call112)
  %156 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkToggleButton*
  %call114 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %156)
  store i32 %call114, i32* getelementptr inbounds (%struct.PdfOptimize, %struct.PdfOptimize* @optimize, i32 0, i32 2), align 4
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %157)
  %158 = load i32, i32* %run, align 4
  ret i32 %158
}

declare i32 @gimp_message(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare %struct._cairo_surface* @cairo_pdf_surface_create_for_stream(i32 (i8*, i8*, i32)*, i8*, double, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @write_func(i8* %fp, i8* %data, i32 %size) #0 {
entry:
  %fp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %fp, i8** %fp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %2 = load i8*, i8** %fp.addr, align 8
  %3 = bitcast i8* %2 to %struct._IO_FILE*
  %call = call i64 @fwrite(i8* %0, i64 1, i64 %conv, %struct._IO_FILE* %3)
  %4 = load i32, i32* %size.addr, align 4
  %conv1 = zext i32 %4 to i64
  %cmp = icmp eq i64 %call, %conv1
  %cond = select i1 %cmp, i32 0, i32 11
  ret i32 %cond
}

declare i32 @cairo_surface_status(%struct._cairo_surface*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @cairo_status_to_string(i32) #1

declare void @g_free(i8*) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

declare void @cairo_save(%struct._cairo*) #1

declare i32 @gimp_image_get_active_drawable(i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare void @cairo_pdf_surface_set_size(%struct._cairo_surface*, double, double) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare void @cairo_surface_set_fallback_resolution(%struct._cairo_surface*, double, double) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare double @gimp_layer_get_opacity(i32) #1

declare i32 @gimp_item_get_visible(i32) #1

declare i32 @gimp_layer_get_mask(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._cairo_surface* @get_drawable_image(%struct._GimpDrawable* %drawable, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._cairo_surface*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %drawable_ID = alloca i32, align 4
  %region = alloca %struct._GimpPixelRgn, align 8
  %image_type = alloca i32, align 4
  %surface = alloca %struct._cairo_surface*, align 8
  %status = alloca i32, align 4
  %format = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cmap = alloca [768 x i8], align 16
  %pixels = alloca i8*, align 8
  %stride = alloca i32, align 4
  %pr = alloca i8*, align 8
  %indexed = alloca i32, align 4
  %bpp = alloca i32, align 4
  %colors = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y31 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  store i32 %1, i32* %drawable_ID, align 4
  %2 = load i32, i32* %drawable_ID, align 4
  %call = call i32 @gimp_drawable_type(i32 %2)
  store i32 %call, i32* %image_type, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width1, align 4
  store i32 %4, i32* %width, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height2, align 4
  store i32 %6, i32* %height, align 4
  %7 = bitcast [768 x i8]* %cmap to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 768, i32 16, i1 false)
  store i32 0, i32* %indexed, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp3, align 4
  store i32 %9, i32* %bpp, align 4
  %10 = load i32, i32* %drawable_ID, align 4
  %call4 = call i32 @gimp_drawable_is_indexed(i32 %10)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %indexed, align 4
  %11 = load i32, i32* %drawable_ID, align 4
  %call5 = call i32 @gimp_item_get_image(i32 %11)
  %call6 = call i8* @gimp_image_get_colormap(i32 %call5, i32* %num_colors)
  store i8* %call6, i8** %colors, align 8
  %12 = bitcast [768 x i8]* %cmap to i8*
  %13 = load i8*, i8** %colors, align 8
  %14 = load i32, i32* %num_colors, align 4
  %mul = mul nsw i32 3, %14
  %conv = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 %conv, i32 1, i1 false)
  %15 = load i8*, i8** %colors, align 8
  call void @g_free(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %bpp, align 4
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.10
    i32 2, label %sw.bb.11
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load i32, i32* %indexed, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %sw.bb
  store i32 1, i32* %format, align 4
  br label %if.end.9

if.else:                                          ; preds = %sw.bb
  store i32 1, i32* %format, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  store i32 1, i32* %format, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end, %if.end
  store i32 0, i32* %format, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i32 1336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_drawable_image, i32 0, i32 0), i8* null) #10
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.10, %if.end.9
  %18 = load i32, i32* %format, align 4
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  %call12 = call %struct._cairo_surface* @cairo_image_surface_create(i32 %18, i32 %19, i32 %20)
  store %struct._cairo_surface* %call12, %struct._cairo_surface** %surface, align 8
  %21 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call13 = call i32 @cairo_surface_status(%struct._cairo_surface* %21)
  store i32 %call13, i32* %status, align 4
  %22 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %22, 0
  br i1 %cmp, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %sw.epilog
  %23 = load i32, i32* %status, align 4
  switch i32 %23, label %sw.default.18 [
    i32 32, label %sw.bb.16
  ]

sw.bb.16:                                         ; preds = %if.then.15
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.58, i32 0, i32 0)) #4
  call void @g_set_error_literal(%struct._GError** %24, i32 1, i32 0, i8* %call17)
  br label %sw.epilog.20

sw.default.18:                                    ; preds = %if.then.15
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %26 = load i32, i32* %status, align 4
  %call19 = call i8* @cairo_status_to_string(i32 %26)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %25, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i8* %call19)
  br label %sw.epilog.20

sw.epilog.20:                                     ; preds = %sw.default.18, %sw.bb.16
  store %struct._cairo_surface* null, %struct._cairo_surface** %retval
  br label %return

if.end.21:                                        ; preds = %sw.epilog
  %27 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call22 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %27)
  store i8* %call22, i8** %pixels, align 8
  %28 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call23 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %28)
  store i32 %call23, i32* %stride, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %region, %struct._GimpDrawable* %29, i32 0, i32 0, i32 %30, i32 %31, i32 0, i32 0)
  %call24 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %region)
  store i8* %call24, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %if.end.21
  %32 = load i8*, i8** %pr, align 8
  %cmp25 = icmp ne i8* %32, null
  br i1 %cmp25, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  store i8* %33, i8** %src, align 8
  %34 = load i8*, i8** %pixels, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 5
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %stride, align 4
  %mul27 = mul nsw i32 %35, %36
  %idx.ext = sext i32 %mul27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 4
  %37 = load i32, i32* %x, align 4
  %mul28 = mul nsw i32 %37, 4
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext29
  store i8* %add.ptr30, i8** %dest, align 8
  store i32 0, i32* %y31, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body
  %38 = load i32, i32* %y31, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 7
  %39 = load i32, i32* %h, align 4
  %cmp33 = icmp slt i32 %38, %39
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %40 = load i32, i32* %image_type, align 4
  switch i32 %40, label %sw.epilog.48 [
    i32 0, label %sw.bb.36
    i32 1, label %sw.bb.37
    i32 2, label %sw.bb.39
    i32 3, label %sw.bb.41
    i32 4, label %sw.bb.43
    i32 5, label %sw.bb.45
  ]

sw.bb.36:                                         ; preds = %for.body.35
  %41 = load i8*, i8** %src, align 8
  %42 = load i8*, i8** %dest, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %43 = load i32, i32* %w, align 4
  call void @convert_from_rgb_to_rgb(i8* %41, i8* %42, i32 %43)
  br label %sw.epilog.48

sw.bb.37:                                         ; preds = %for.body.35
  %44 = load i8*, i8** %src, align 8
  %45 = load i8*, i8** %dest, align 8
  %w38 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %46 = load i32, i32* %w38, align 4
  call void @convert_from_rgba_to_rgba(i8* %44, i8* %45, i32 %46)
  br label %sw.epilog.48

sw.bb.39:                                         ; preds = %for.body.35
  %47 = load i8*, i8** %src, align 8
  %48 = load i8*, i8** %dest, align 8
  %w40 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %49 = load i32, i32* %w40, align 4
  call void @convert_from_gray_to_rgb(i8* %47, i8* %48, i32 %49)
  br label %sw.epilog.48

sw.bb.41:                                         ; preds = %for.body.35
  %50 = load i8*, i8** %src, align 8
  %51 = load i8*, i8** %dest, align 8
  %w42 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %52 = load i32, i32* %w42, align 4
  call void @convert_from_graya_to_rgba(i8* %50, i8* %51, i32 %52)
  br label %sw.epilog.48

sw.bb.43:                                         ; preds = %for.body.35
  %53 = load i8*, i8** %src, align 8
  %54 = load i8*, i8** %dest, align 8
  %w44 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %55 = load i32, i32* %w44, align 4
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  call void @convert_from_indexed_to_rgb(i8* %53, i8* %54, i32 %55, i8* %arraydecay)
  br label %sw.epilog.48

sw.bb.45:                                         ; preds = %for.body.35
  %56 = load i8*, i8** %src, align 8
  %57 = load i8*, i8** %dest, align 8
  %w46 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %58 = load i32, i32* %w46, align 4
  %arraydecay47 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  call void @convert_from_indexeda_to_rgba(i8* %56, i8* %57, i32 %58, i8* %arraydecay47)
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %for.body.35, %sw.bb.45, %sw.bb.43, %sw.bb.41, %sw.bb.39, %sw.bb.37, %sw.bb.36
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 3
  %59 = load i32, i32* %rowstride, align 4
  %60 = load i8*, i8** %src, align 8
  %idx.ext49 = sext i32 %59 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %60, i64 %idx.ext49
  store i8* %add.ptr50, i8** %src, align 8
  %61 = load i32, i32* %stride, align 4
  %62 = load i8*, i8** %dest, align 8
  %idx.ext51 = sext i32 %61 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %62, i64 %idx.ext51
  store i8* %add.ptr52, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.48
  %63 = load i32, i32* %y31, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %y31, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end
  %64 = load i8*, i8** %pr, align 8
  %call54 = call i8* @gimp_pixel_rgns_process(i8* %64)
  store i8* %call54, i8** %pr, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %65 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %65)
  %66 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  store %struct._cairo_surface* %66, %struct._cairo_surface** %retval
  br label %return

return:                                           ; preds = %for.end.55, %sw.epilog.20
  %67 = load %struct._cairo_surface*, %struct._cairo_surface** %retval
  ret %struct._cairo_surface* %67
}

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_item_is_text_layer(i32) #1

; Function Attrs: nounwind uwtable
define internal void @get_layer_color(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpDrawable* %layer, i32* %single) #0 {
entry:
  %layer.addr = alloca %struct._GimpDrawable*, align 8
  %single.addr = alloca i32*, align 8
  %col = alloca %struct._GimpRGB, align 8
  %red = alloca double, align 8
  %green = alloca double, align 8
  %blue = alloca double, align 8
  %alpha = alloca double, align 8
  %dev = alloca double, align 8
  %devSum = alloca double, align 8
  %median = alloca double, align 8
  %pixels = alloca double, align 8
  %count = alloca double, align 8
  %precentile = alloca double, align 8
  %id = alloca i32, align 4
  store %struct._GimpDrawable* %layer, %struct._GimpDrawable** %layer.addr, align 8
  store i32* %single, i32** %single.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  store i32 %1, i32* %id, align 4
  store double 0.000000e+00, double* %devSum, align 8
  store double 0.000000e+00, double* %red, align 8
  store double 0.000000e+00, double* %green, align 8
  store double 0.000000e+00, double* %blue, align 8
  store double 0.000000e+00, double* %alpha, align 8
  store double 0.000000e+00, double* %dev, align 8
  %2 = load i32, i32* %id, align 4
  %call = call i32 @gimp_drawable_is_indexed(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %single.addr, align 8
  store i32 0, i32* %3, align 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 3
  store double 0.000000e+00, double* %a, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 2
  store double 0.000000e+00, double* %b, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 1
  store double 0.000000e+00, double* %g, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 0
  store double 0.000000e+00, double* %r, align 8
  %4 = bitcast %struct._GimpRGB* %agg.result to i8*
  %5 = bitcast %struct._GimpRGB* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp, align 4
  %cmp = icmp uge i32 %7, 3
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %8 = load i32, i32* %id, align 4
  %call2 = call i32 @gimp_histogram(i32 %8, i32 1, i32 0, i32 255, double* %red, double* %dev, double* %median, double* %pixels, double* %count, double* %precentile)
  %9 = load double, double* %dev, align 8
  %10 = load double, double* %devSum, align 8
  %add = fadd double %10, %9
  store double %add, double* %devSum, align 8
  %11 = load i32, i32* %id, align 4
  %call3 = call i32 @gimp_histogram(i32 %11, i32 2, i32 0, i32 255, double* %green, double* %dev, double* %median, double* %pixels, double* %count, double* %precentile)
  %12 = load double, double* %dev, align 8
  %13 = load double, double* %devSum, align 8
  %add4 = fadd double %13, %12
  store double %add4, double* %devSum, align 8
  %14 = load i32, i32* %id, align 4
  %call5 = call i32 @gimp_histogram(i32 %14, i32 3, i32 0, i32 255, double* %blue, double* %dev, double* %median, double* %pixels, double* %count, double* %precentile)
  %15 = load double, double* %dev, align 8
  %16 = load double, double* %devSum, align 8
  %add6 = fadd double %16, %15
  store double %add6, double* %devSum, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %id, align 4
  %call7 = call i32 @gimp_histogram(i32 %17, i32 0, i32 0, i32 255, double* %red, double* %dev, double* %median, double* %pixels, double* %count, double* %precentile)
  %18 = load double, double* %dev, align 8
  %19 = load double, double* %devSum, align 8
  %add8 = fadd double %19, %18
  store double %add8, double* %devSum, align 8
  %20 = load double, double* %red, align 8
  store double %20, double* %green, align 8
  %21 = load double, double* %red, align 8
  store double %21, double* %blue, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.1
  %22 = load i32, i32* %id, align 4
  %call10 = call i32 @gimp_drawable_has_alpha(i32 %22)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.end.9
  %23 = load i32, i32* %id, align 4
  %call13 = call i32 @gimp_histogram(i32 %23, i32 4, i32 0, i32 255, double* %alpha, double* %dev, double* %median, double* %pixels, double* %count, double* %precentile)
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.9
  store double 2.550000e+02, double* %alpha, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.12
  %24 = load double, double* %dev, align 8
  %25 = load double, double* %devSum, align 8
  %add16 = fadd double %25, %24
  store double %add16, double* %devSum, align 8
  %26 = load double, double* %devSum, align 8
  %cmp17 = fcmp oeq double %26, 0.000000e+00
  %conv = zext i1 %cmp17 to i32
  %27 = load i32*, i32** %single.addr, align 8
  store i32 %conv, i32* %27, align 4
  %28 = load double, double* %red, align 8
  %div = fdiv double %28, 2.550000e+02
  %r18 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 0
  store double %div, double* %r18, align 8
  %29 = load double, double* %green, align 8
  %div19 = fdiv double %29, 2.550000e+02
  %g20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 1
  store double %div19, double* %g20, align 8
  %30 = load double, double* %blue, align 8
  %div21 = fdiv double %30, 2.550000e+02
  %b22 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 2
  store double %div21, double* %b22, align 8
  %31 = load double, double* %alpha, align 8
  %div23 = fdiv double %31, 2.550000e+02
  %a24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %col, i32 0, i32 3
  store double %div23, double* %a24, align 8
  %32 = bitcast %struct._GimpRGB* %agg.result to i8*
  %33 = bitcast %struct._GimpRGB* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_mask_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_push_group(%struct._cairo*) #1

declare void @cairo_paint_with_alpha(%struct._cairo*, double) #1

declare void @cairo_pop_group_to_source(%struct._cairo*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_reset_clip(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @drawText(%struct._GimpDrawable* %text_layer, double %opacity, %struct._cairo* %cr, double %x_res, double %y_res) #0 {
entry:
  %text_layer.addr = alloca %struct._GimpDrawable*, align 8
  %opacity.addr = alloca double, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x_res.addr = alloca double, align 8
  %y_res.addr = alloca double, align 8
  %text_id = alloca i32, align 4
  %type = alloca i32, align 4
  %text = alloca i8*, align 8
  %markup = alloca i8*, align 8
  %font_family = alloca i8*, align 8
  %options = alloca %struct._cairo_font_options*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %unit = alloca i32, align 4
  %size = alloca double, align 8
  %hinting = alloca i32, align 4
  %j = alloca i32, align 4
  %justify = alloca i32, align 4
  %align = alloca i32, align 4
  %dir = alloca i32, align 4
  %pango_dir = alloca i32, align 4
  %layout = alloca %struct._PangoLayout*, align 8
  %context = alloca %struct._PangoContext*, align 8
  %font_description = alloca %struct._PangoFontDescription*, align 8
  %indent = alloca double, align 8
  %line_spacing = alloca double, align 8
  %letter_spacing = alloca double, align 8
  %letter_spacing_at = alloca %struct._PangoAttribute*, align 8
  %attr_list = alloca %struct._PangoAttrList*, align 8
  %fontmap = alloca %struct._PangoFontMap*, align 8
  store %struct._GimpDrawable* %text_layer, %struct._GimpDrawable** %text_layer.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %x_res, double* %x_res.addr, align 8
  store double %y_res, double* %y_res.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %text_layer.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  store i32 %1, i32* %text_id, align 4
  %2 = load i32, i32* %text_id, align 4
  %call = call i32 @gimp_drawable_type(i32 %2)
  store i32 %call, i32* %type, align 4
  %3 = load i32, i32* %text_id, align 4
  %call1 = call i8* @gimp_text_layer_get_text(i32 %3)
  store i8* %call1, i8** %text, align 8
  %4 = load i32, i32* %text_id, align 4
  %call2 = call i8* @gimp_text_layer_get_markup(i32 %4)
  store i8* %call2, i8** %markup, align 8
  %call3 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call3, %struct._PangoAttrList** %attr_list, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %5)
  %call4 = call %struct._cairo_font_options* @cairo_font_options_create()
  store %struct._cairo_font_options* %call4, %struct._cairo_font_options** %options, align 8
  %call5 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call5, %struct._PangoAttrList** %attr_list, align 8
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_get_font_options(%struct._cairo* %6, %struct._cairo_font_options* %7)
  %8 = load i32, i32* %text_id, align 4
  %call6 = call i32 @gimp_drawable_offsets(i32 %8, i32* %x, i32* %y)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load i32, i32* %x, align 4
  %conv = sitofp i32 %10 to double
  %11 = load i32, i32* %y, align 4
  %conv7 = sitofp i32 %11 to double
  call void @cairo_move_to(%struct._cairo* %9, double %conv, double %conv7)
  %12 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %text_id, align 4
  %call9 = call i32 @gimp_text_layer_get_color(i32 %13, %struct._GimpRGB* %color)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %text_id, align 4
  %call10 = call i32 @gimp_item_get_image(i32 %14)
  %15 = load i32, i32* %text_id, align 4
  %16 = load i32, i32* %x, align 4
  %conv11 = sitofp i32 %16 to double
  %17 = load i32, i32* %y, align 4
  %conv12 = sitofp i32 %17 to double
  %call13 = call i32 @gimp_image_pick_color(i32 %call10, i32 %15, double %conv11, double %conv12, i32 0, i32 0, double 0.000000e+00, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %19 = load double, double* %r, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %20 = load double, double* %g, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %21 = load double, double* %b, align 8
  %22 = load double, double* %opacity.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %18, double %19, double %20, double %21, double %22)
  %23 = load i32, i32* %text_id, align 4
  %call14 = call i32 @gimp_text_layer_get_hint_style(i32 %23)
  store i32 %call14, i32* %hinting, align 4
  %24 = load i32, i32* %hinting, align 4
  switch i32 %24, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.16
    i32 3, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end
  %25 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %25, i32 1)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %26 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %26, i32 2)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %27 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %27, i32 3)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %28 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %28, i32 4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb
  %29 = load i32, i32* %text_id, align 4
  %call18 = call i32 @gimp_text_layer_get_antialias(i32 %29)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %sw.epilog
  %30 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_antialias(%struct._cairo_font_options* %30, i32 0)
  br label %if.end.21

if.else.20:                                       ; preds = %sw.epilog
  %31 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_antialias(%struct._cairo_font_options* %31, i32 1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  %call22 = call %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32 1)
  store %struct._PangoFontMap* %call22, %struct._PangoFontMap** %fontmap, align 8
  %32 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %33 = bitcast %struct._PangoFontMap* %32 to %struct._GTypeInstance*
  %call23 = call i64 @pango_cairo_font_map_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._PangoCairoFontMap*
  %35 = load double, double* %y_res.addr, align 8
  call void @pango_cairo_font_map_set_resolution(%struct._PangoCairoFontMap* %34, double %35)
  %36 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %call25 = call %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap* %36)
  store %struct._PangoContext* %call25, %struct._PangoContext** %context, align 8
  %37 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %38 = bitcast %struct._PangoFontMap* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %40 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @pango_cairo_context_set_font_options(%struct._PangoContext* %39, %struct._cairo_font_options* %40)
  %41 = load i32, i32* %text_id, align 4
  %call26 = call i32 @gimp_text_layer_get_base_direction(i32 %41)
  store i32 %call26, i32* %dir, align 4
  %42 = load i32, i32* %dir, align 4
  %cmp27 = icmp eq i32 %42, 1
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.end.21
  store i32 1, i32* %pango_dir, align 4
  br label %if.end.31

if.else.30:                                       ; preds = %if.end.21
  store i32 0, i32* %pango_dir, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %43 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %44 = load i32, i32* %pango_dir, align 4
  call void @pango_context_set_base_dir(%struct._PangoContext* %43, i32 %44)
  %45 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %call32 = call %struct._PangoLayout* @pango_layout_new(%struct._PangoContext* %45)
  store %struct._PangoLayout* %call32, %struct._PangoLayout** %layout, align 8
  %46 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_set_wrap(%struct._PangoLayout* %46, i32 2)
  %47 = load i32, i32* %text_id, align 4
  %call33 = call i8* @gimp_text_layer_get_font(i32 %47)
  store i8* %call33, i8** %font_family, align 8
  %48 = load i8*, i8** %font_family, align 8
  %call34 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %48)
  store %struct._PangoFontDescription* %call34, %struct._PangoFontDescription** %font_description, align 8
  %49 = load i32, i32* %text_id, align 4
  %call35 = call double @gimp_text_layer_get_font_size(i32 %49, i32* %unit)
  store double %call35, double* %size, align 8
  %50 = load double, double* %size, align 8
  %51 = load i32, i32* %unit, align 4
  %52 = load double, double* %y_res.addr, align 8
  %call36 = call double @gimp_units_to_pixels(double %50, i32 %51, double %52)
  store double %call36, double* %size, align 8
  %53 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_description, align 8
  %54 = load double, double* %size, align 8
  %mul = fmul double %54, 1.024000e+03
  call void @pango_font_description_set_absolute_size(%struct._PangoFontDescription* %53, double %mul)
  %55 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %56 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_description, align 8
  call void @pango_layout_set_font_description(%struct._PangoLayout* %55, %struct._PangoFontDescription* %56)
  %57 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %text_layer.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 1
  %59 = load i32, i32* %width, align 4
  %mul37 = mul i32 %59, 1024
  call void @pango_layout_set_width(%struct._PangoLayout* %57, i32 %mul37)
  store i32 0, i32* %justify, align 4
  %60 = load i32, i32* %text_id, align 4
  %call38 = call i32 @gimp_text_layer_get_justification(i32 %60)
  store i32 %call38, i32* %j, align 4
  %61 = load i32, i32* %j, align 4
  %cmp39 = icmp eq i32 %61, 2
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.31
  store i32 1, i32* %align, align 4
  br label %if.end.58

if.else.42:                                       ; preds = %if.end.31
  %62 = load i32, i32* %j, align 4
  %cmp43 = icmp eq i32 %62, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.42
  store i32 0, i32* %align, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %if.else.42
  %63 = load i32, i32* %j, align 4
  %cmp47 = icmp eq i32 %63, 1
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.46
  store i32 2, i32* %align, align 4
  br label %if.end.56

if.else.50:                                       ; preds = %if.else.46
  %64 = load i32, i32* %dir, align 4
  %cmp51 = icmp eq i32 %64, 0
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.50
  store i32 0, i32* %align, align 4
  br label %if.end.55

if.else.54:                                       ; preds = %if.else.50
  store i32 2, i32* %align, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.53
  store i32 1, i32* %justify, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.41
  %65 = load i32, i32* %text_id, align 4
  %call59 = call double @gimp_text_layer_get_indent(i32 %65)
  store double %call59, double* %indent, align 8
  %66 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %67 = load double, double* %indent, align 8
  %mul60 = fmul double 1.024000e+03, %67
  %conv61 = fptosi double %mul60 to i32
  call void @pango_layout_set_indent(%struct._PangoLayout* %66, i32 %conv61)
  %68 = load i32, i32* %text_id, align 4
  %call62 = call double @gimp_text_layer_get_line_spacing(i32 %68)
  store double %call62, double* %line_spacing, align 8
  %69 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %70 = load double, double* %line_spacing, align 8
  %mul63 = fmul double 1.024000e+03, %70
  %conv64 = fptosi double %mul63 to i32
  call void @pango_layout_set_spacing(%struct._PangoLayout* %69, i32 %conv64)
  %71 = load i32, i32* %text_id, align 4
  %call65 = call double @gimp_text_layer_get_letter_spacing(i32 %71)
  store double %call65, double* %letter_spacing, align 8
  %72 = load double, double* %letter_spacing, align 8
  %mul66 = fmul double 1.024000e+03, %72
  %conv67 = fptosi double %mul66 to i32
  %call68 = call %struct._PangoAttribute* @pango_attr_letter_spacing_new(i32 %conv67)
  store %struct._PangoAttribute* %call68, %struct._PangoAttribute** %letter_spacing_at, align 8
  %73 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attr_list, align 8
  %74 = load %struct._PangoAttribute*, %struct._PangoAttribute** %letter_spacing_at, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %73, %struct._PangoAttribute* %74)
  %75 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %76 = load i32, i32* %justify, align 4
  call void @pango_layout_set_justify(%struct._PangoLayout* %75, i32 %76)
  %77 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %78 = load i32, i32* %align, align 4
  call void @pango_layout_set_alignment(%struct._PangoLayout* %77, i32 %78)
  %79 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %80 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attr_list, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %79, %struct._PangoAttrList* %80)
  %81 = load i8*, i8** %markup, align 8
  %cmp69 = icmp ne i8* %81, null
  br i1 %cmp69, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %if.end.58
  %82 = load i8*, i8** %markup, align 8
  %arrayidx = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx, align 1
  %conv71 = sext i8 %83 to i32
  %cmp72 = icmp ne i32 %conv71, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %land.lhs.true
  %84 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %85 = load i8*, i8** %markup, align 8
  call void @pango_layout_set_markup(%struct._PangoLayout* %84, i8* %85, i32 -1)
  br label %if.end.76

if.else.75:                                       ; preds = %land.lhs.true, %if.end.58
  %86 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %87 = load i8*, i8** %text, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %86, i8* %87, i32 -1)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  %88 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %89 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %88, %struct._PangoLayout* %89)
  %90 = load i8*, i8** %text, align 8
  call void @g_free(i8* %90)
  %91 = load i8*, i8** %font_family, align 8
  call void @g_free(i8* %91)
  %92 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %93 = bitcast %struct._PangoLayout* %92 to i8*
  call void @g_object_unref(i8* %93)
  %94 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_description, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %94)
  %95 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %96 = bitcast %struct._PangoContext* %95 to i8*
  call void @g_object_unref(i8* %96)
  %97 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attr_list, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %97)
  %98 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_destroy(%struct._cairo_font_options* %98)
  %99 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %99)
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @cairo_show_page(%struct._cairo*) #1

declare void @cairo_restore(%struct._cairo*) #1

declare i32 @gimp_image_delete(i32) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i64 @g_strlcpy(i8*, i8*, i64) #1

declare i32 @g_str_equal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @init_image_list_defaults(i32 %image) #0 {
entry:
  %image.addr = alloca i32, align 4
  store i32 %image, i32* %image.addr, align 4
  %0 = load i32, i32* %image.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %image.addr, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0, i64 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @validate_image_list() #0 {
entry:
  %valid = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %valid, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 350
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %cmp1 = icmp ult i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [350 x i32], [350 x i32]* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0), i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call = call i32 @gimp_image_is_valid(i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [350 x i32], [350 x i32]* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0), i32 0, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %8 = load i32, i32* %valid, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [350 x i32], [350 x i32]* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0), i32 0, i64 %idxprom4
  store i32 %7, i32* %arrayidx5, align 4
  %9 = load i32, i32* %valid, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc6 = add i32 %10, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %valid, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  ret void
}

declare i32 @gimp_image_is_valid(i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare %struct._GtkWidget* @gtk_button_new_with_label(i8*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gtk_icon_view_new() #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkTreeModel* @create_model() #0 {
entry:
  %model = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %i = alloca i32, align 4
  %image = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0, i64 0), align 4
  store i32 %0, i32* %image, align 4
  %call = call i64 @gdk_pixbuf_get_type() #8
  %call1 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 %call, i64 64, i64 64, i64 24)
  store %struct._GtkListStore* %call1, %struct._GtkListStore** %model, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp ult i32 %3, 350
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [350 x i32], [350 x i32]* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0), i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %image, align 4
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %model, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter)
  %8 = load %struct._GtkListStore*, %struct._GtkListStore** %model, align 8
  %9 = load i32, i32* %image, align 4
  %call3 = call %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32 %9, i32 90, i32 120, i32 1)
  %10 = load i32, i32* %i, align 4
  %add = add i32 %10, 1
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 %add)
  %11 = load i32, i32* %image, align 4
  %call5 = call i8* @gimp_image_get_name(i32 %11)
  %12 = load i32, i32* %image, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %8, %struct._GtkTreeIter* %iter, i32 0, %struct._GdkPixbuf* %call3, i32 1, i8* %call4, i32 2, i8* %call5, i32 3, i32 %12, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %model, align 8
  %15 = bitcast %struct._GtkListStore* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_tree_model_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTreeModel*
  ret %struct._GtkTreeModel* %16
}

declare void @gtk_icon_view_set_model(%struct._GtkIconView*, %struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_view_get_type() #3

declare void @gtk_icon_view_set_reorderable(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_selection_mode(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_pixbuf_column(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_text_column(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_tooltip_column(%struct._GtkIconView*, i32) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_button_box_new(i32) #1

declare void @gtk_button_box_set_layout(%struct._GtkButtonBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_box_get_type() #3

declare %struct._GtkWidget* @gimp_image_combo_box_new(i32 (i32, i8*)*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @choose_file_call(%struct._GtkWidget* %browse_button, i8* %file_entry) #0 {
entry:
  %browse_button.addr = alloca %struct._GtkWidget*, align 8
  %file_entry.addr = alloca i8*, align 8
  %file = alloca %struct._GFile*, align 8
  store %struct._GtkWidget* %browse_button, %struct._GtkWidget** %browse_button.addr, align 8
  store i8* %file_entry, i8** %file_entry.addr, align 8
  %0 = load i8*, i8** %file_entry.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call %struct._GFile* @g_file_new_for_path(i8* %call2)
  store %struct._GFile* %call3, %struct._GFile** %file, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @file_choose, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_file_chooser_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFileChooser*
  %6 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call6 = call i8* @g_file_get_uri(%struct._GFile* %6)
  %call7 = call i32 @gtk_file_chooser_set_uri(%struct._GtkFileChooser* %5, i8* %call6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @file_choose, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call i32 @gtk_dialog_run(%struct._GtkDialog* %9)
  %cmp = icmp eq i32 %call10, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @file_choose, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_file_chooser_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call11)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkFileChooser*
  %call13 = call %struct._GFile* @gtk_file_chooser_get_file(%struct._GtkFileChooser* %12)
  store %struct._GFile* %call13, %struct._GFile** %file, align 8
  %13 = load i8*, i8** %file_entry.addr, align 8
  %14 = bitcast i8* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_entry_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkEntry*
  %16 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call16 = call i8* @g_file_get_path(%struct._GFile* %16)
  call void @gtk_entry_set_text(%struct._GtkEntry* %15, i8* %call16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call17 = call i8* @g_file_get_path(%struct._GFile* %17)
  store i8* %call17, i8** @file_name, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** @file_choose, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_image_call(%struct._GtkWidget* %widget, i8* %img_combo) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %img_combo.addr = alloca i8*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %image = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %img_combo, i8** %img_combo.addr, align 8
  store i32 0, i32* @dnd_remove, align 4
  %0 = load i8*, i8** %img_combo.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpIntComboBox*
  %call = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %1, i32* %image)
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %3 = bitcast %struct._GtkTreeModel* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_list_store_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkListStore*
  store %struct._GtkListStore* %4, %struct._GtkListStore** %store, align 8
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %5, %struct._GtkTreeIter* %iter)
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %add = add i32 %7, 1
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 %add)
  %8 = load i32, i32* %image, align 4
  %call4 = call %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32 %8, i32 90, i32 120, i32 1)
  %9 = load i32, i32* %image, align 4
  %call5 = call i8* @gimp_image_get_name(i32 %9)
  %10 = load i32, i32* %image, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter, i32 1, i8* %call3, i32 0, %struct._GdkPixbuf* %call4, i32 2, i8* %call5, i32 3, i32 %10, i32 -1)
  %11 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  store i32 1, i32* @dnd_remove, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @del_image_call(%struct._GtkWidget* %widget, i8* %icon_view) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %icon_view.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %items = alloca %struct._GtkTreeRowReference**, align 8
  %item_path = alloca %struct._GtkTreePath*, align 8
  %item = alloca %struct._GtkTreeIter, align 8
  %i = alloca i32, align 4
  %temp = alloca i8*, align 8
  %len = alloca i32, align 4
  %thumb = alloca %struct._GdkPixbuf*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %icon_view, i8** %icon_view.addr, align 8
  store i32 0, i32* @dnd_remove, align 4
  %0 = load i8*, i8** %icon_view.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_icon_view_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkIconView*
  %call2 = call %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView* %2)
  store %struct._GList* %call2, %struct._GList** %list, align 8
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %call3 = call i32 @g_list_length(%struct._GList* %3)
  store i32 %call3, i32* %len, align 4
  %4 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %len, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 8, %conv
  %6 = alloca i8, i64 %mul
  %7 = bitcast i8* %6 to %struct._GtkTreeRowReference**
  store %struct._GtkTreeRowReference** %7, %struct._GtkTreeRowReference*** %items, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp4 = icmp ult i32 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %11 = load i32, i32* %i, align 4
  %call6 = call i8* @g_list_nth_data(%struct._GList* %10, i32 %11)
  store i8* %call6, i8** %temp, align 8
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %13 = load i8*, i8** %temp, align 8
  %14 = bitcast i8* %13 to %struct._GtkTreePath*
  %call7 = call %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel* %12, %struct._GtkTreePath* %14)
  %15 = load i32, i32* %i, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct._GtkTreeRowReference**, %struct._GtkTreeRowReference*** %items, align 8
  %arrayidx = getelementptr inbounds %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %16, i64 %idxprom
  store %struct._GtkTreeRowReference* %call7, %struct._GtkTreeRowReference** %arrayidx, align 8
  %17 = load i8*, i8** %temp, align 8
  %18 = bitcast i8* %17 to %struct._GtkTreePath*
  call void @gtk_tree_path_free(%struct._GtkTreePath* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  call void @g_list_free(%struct._GList* %20)
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.21, %for.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %len, align 4
  %cmp9 = icmp ult i32 %21, %22
  br i1 %cmp9, label %for.body.11, label %for.end.23

for.body.11:                                      ; preds = %for.cond.8
  %23 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %23 to i64
  %24 = load %struct._GtkTreeRowReference**, %struct._GtkTreeRowReference*** %items, align 8
  %arrayidx13 = getelementptr inbounds %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %24, i64 %idxprom12
  %25 = load %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %arrayidx13, align 8
  %call14 = call %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference* %25)
  store %struct._GtkTreePath* %call14, %struct._GtkTreePath** %item_path, align 8
  %26 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %27 = load %struct._GtkTreePath*, %struct._GtkTreePath** %item_path, align 8
  %call15 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %26, %struct._GtkTreeIter* %item, %struct._GtkTreePath* %27)
  %28 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %item, i32 0, %struct._GdkPixbuf** %thumb, i32 2, i8** %name, i32 -1)
  %29 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %30 = bitcast %struct._GtkTreeModel* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_list_store_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkListStore*
  %call18 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %31, %struct._GtkTreeIter* %item)
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumb, align 8
  %33 = bitcast %struct._GdkPixbuf* %32 to i8*
  call void @g_object_unref(i8* %33)
  %34 = load i8*, i8** %name, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GtkTreePath*, %struct._GtkTreePath** %item_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %35)
  %36 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %36 to i64
  %37 = load %struct._GtkTreeRowReference**, %struct._GtkTreeRowReference*** %items, align 8
  %arrayidx20 = getelementptr inbounds %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %37, i64 %idxprom19
  %38 = load %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %arrayidx20, align 8
  call void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference* %38)
  %39 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %dec = add i32 %39, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.11
  %40 = load i32, i32* %i, align 4
  %inc22 = add i32 %40, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.8

for.end.23:                                       ; preds = %for.cond.8
  br label %if.end

if.end:                                           ; preds = %for.end.23, %entry
  store i32 1, i32* @dnd_remove, align 4
  call void @recount_pages()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_call(%struct._GtkTreeModel* %tree_model, %struct._GtkTreePath* %path, i8* %user_data) #0 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32, i32* @dnd_remove, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @recount_pages()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_image_list() #0 {
entry:
  %retval = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %valid = alloca i32, align 4
  %image = alloca i32, align 4
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %call = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %iter)
  store i32 %call, i32* %valid, align 4
  store i32 0, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %1 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.56, i32 0, i32 0)) #4
  %call2 = call i32 @gimp_message(i8* %call1)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %valid, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 3, i32* %image, i32 -1)
  %4 = load i32, i32* %image, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [350 x i32], [350 x i32]* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 0), i32 0, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %call4 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %iter)
  store i32 %call4, i32* %valid, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.PdfMultiPage, %struct.PdfMultiPage* @multi_page, i32 0, i32 1), align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare i8* @g_stpcpy(i8*, i8*) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #3

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32, i32, i32, i32) #1

declare i8* @gimp_image_get_name(i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare %struct._GFile* @g_file_new_for_path(i8*) #1

declare i32 @gtk_file_chooser_set_uri(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare i8* @g_file_get_uri(%struct._GFile*) #1

declare %struct._GFile* @gtk_file_chooser_get_file(%struct._GtkFileChooser*) #1

declare i8* @g_file_get_path(%struct._GFile*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

declare %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

declare %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel*, %struct._GtkTreePath*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference*) #1

; Function Attrs: nounwind uwtable
define internal void @recount_pages() #0 {
entry:
  %store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %valid = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_list_store_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkListStore*
  store %struct._GtkListStore* %2, %struct._GtkListStore** %store, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter)
  store i32 %call2, i32* %valid, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 %add)
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %5, %struct._GtkTreeIter* %iter, i32 1, i8* %call3, i32 -1)
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** @model, align 8
  %call4 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter)
  store i32 %call4, i32* %valid, align 4
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @gimp_drawable_type(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_item_get_image(i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_rgb_to_rgb(i8* %src, i8* %dest, i32 %pixels) #7 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 2
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i8*, i8** %dest.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %2, i8* %arrayidx1, align 1
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %6 = load i8*, i8** %dest.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %5, i8* %arrayidx3, align 1
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %8, i8* %arrayidx5, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %add.ptr, i8** %src.addr, align 8
  %11 = load i8*, i8** %dest.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %add.ptr6, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_rgba_to_rgba(i8* %src, i8* %dest, i32 %pixels) #7 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 3
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %mul = mul nsw i32 %conv, %conv2
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tr, align 4
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 3
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %mul7 = mul nsw i32 %conv4, %conv6
  %add8 = add nsw i32 %mul7, 128
  store i32 %add8, i32* %tg, align 4
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 3
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %11 = load i8*, i8** %src.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %mul13 = mul nsw i32 %conv10, %conv12
  %add14 = add nsw i32 %mul13, 128
  store i32 %add14, i32* %tb, align 4
  %13 = load i32, i32* %tb, align 4
  %shr = lshr i32 %13, 8
  %14 = load i32, i32* %tb, align 4
  %add15 = add i32 %shr, %14
  %shr16 = lshr i32 %add15, 8
  %conv17 = trunc i32 %shr16 to i8
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %conv17, i8* %arrayidx18, align 1
  %16 = load i32, i32* %tg, align 4
  %shr19 = lshr i32 %16, 8
  %17 = load i32, i32* %tg, align 4
  %add20 = add i32 %shr19, %17
  %shr21 = lshr i32 %add20, 8
  %conv22 = trunc i32 %shr21 to i8
  %18 = load i8*, i8** %dest.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %19 = load i32, i32* %tr, align 4
  %shr24 = lshr i32 %19, 8
  %20 = load i32, i32* %tr, align 4
  %add25 = add i32 %shr24, %20
  %shr26 = lshr i32 %add25, 8
  %conv27 = trunc i32 %shr26 to i8
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %conv27, i8* %arrayidx28, align 1
  %22 = load i8*, i8** %src.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx29, align 1
  %24 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 3
  store i8 %23, i8* %arrayidx30, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %25 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 4
  store i8* %add.ptr, i8** %src.addr, align 8
  %26 = load i8*, i8** %dest.addr, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %add.ptr31, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_gray_to_rgb(i8* %src, i8* %dest, i32 %pixels) #7 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i8*, i8** %dest.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %2, i8* %arrayidx1, align 1
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %6 = load i8*, i8** %dest.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %5, i8* %arrayidx3, align 1
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %8, i8* %arrayidx5, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %add.ptr, i8** %src.addr, align 8
  %11 = load i8*, i8** %dest.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %add.ptr6, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_graya_to_rgba(i8* %src, i8* %dest, i32 %pixels) #7 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %mul = mul nsw i32 %conv, %conv2
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tr, align 4
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %mul7 = mul nsw i32 %conv4, %conv6
  %add8 = add nsw i32 %mul7, 128
  store i32 %add8, i32* %tg, align 4
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %11 = load i8*, i8** %src.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %mul13 = mul nsw i32 %conv10, %conv12
  %add14 = add nsw i32 %mul13, 128
  store i32 %add14, i32* %tb, align 4
  %13 = load i32, i32* %tb, align 4
  %shr = lshr i32 %13, 8
  %14 = load i32, i32* %tb, align 4
  %add15 = add i32 %shr, %14
  %shr16 = lshr i32 %add15, 8
  %conv17 = trunc i32 %shr16 to i8
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %conv17, i8* %arrayidx18, align 1
  %16 = load i32, i32* %tg, align 4
  %shr19 = lshr i32 %16, 8
  %17 = load i32, i32* %tg, align 4
  %add20 = add i32 %shr19, %17
  %shr21 = lshr i32 %add20, 8
  %conv22 = trunc i32 %shr21 to i8
  %18 = load i8*, i8** %dest.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %19 = load i32, i32* %tr, align 4
  %shr24 = lshr i32 %19, 8
  %20 = load i32, i32* %tr, align 4
  %add25 = add i32 %shr24, %20
  %shr26 = lshr i32 %add25, 8
  %conv27 = trunc i32 %shr26 to i8
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %conv27, i8* %arrayidx28, align 1
  %22 = load i8*, i8** %src.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx29, align 1
  %24 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 3
  store i8 %23, i8* %arrayidx30, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %25 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %add.ptr, i8** %src.addr, align 8
  %26 = load i8*, i8** %dest.addr, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %add.ptr31, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_indexed_to_rgb(i8* %src, i8* %dest, i32 %pixels, i8* %cmap) #7 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %cmap.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 3, %conv
  store i32 %mul, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 2
  %idxprom = sext i32 %add to i64
  %4 = load i8*, i8** %cmap.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i8*, i8** %dest.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %7, 1
  %idxprom4 = sext i32 %add3 to i64
  %8 = load i8*, i8** %cmap.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %10 = load i8*, i8** %dest.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %9, i8* %arrayidx6, align 1
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i8*, i8** %cmap.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %14 = load i8*, i8** %dest.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %13, i8* %arrayidx9, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr, i8** %src.addr, align 8
  %16 = load i8*, i8** %dest.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr10, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_indexeda_to_rgba(i8* %src, i8* %dest, i32 %pixels, i8* %cmap) #7 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %cmap.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 3, %conv
  store i32 %mul, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %cmap.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %mul5 = mul nsw i32 %conv2, %conv4
  %add = add nsw i32 %mul5, 128
  store i32 %add, i32* %tr, align 4
  %8 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %10 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %10, 1
  %idxprom9 = sext i32 %add8 to i64
  %11 = load i8*, i8** %cmap.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %mul12 = mul nsw i32 %conv7, %conv11
  %add13 = add nsw i32 %mul12, 128
  store i32 %add13, i32* %tg, align 4
  %13 = load i8*, i8** %src.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %15 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %15, 2
  %idxprom17 = sext i32 %add16 to i64
  %16 = load i8*, i8** %cmap.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %mul20 = mul nsw i32 %conv15, %conv19
  %add21 = add nsw i32 %mul20, 128
  store i32 %add21, i32* %tb, align 4
  %18 = load i32, i32* %tb, align 4
  %shr = lshr i32 %18, 8
  %19 = load i32, i32* %tb, align 4
  %add22 = add i32 %shr, %19
  %shr23 = lshr i32 %add22, 8
  %conv24 = trunc i32 %shr23 to i8
  %20 = load i8*, i8** %dest.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %conv24, i8* %arrayidx25, align 1
  %21 = load i32, i32* %tg, align 4
  %shr26 = lshr i32 %21, 8
  %22 = load i32, i32* %tg, align 4
  %add27 = add i32 %shr26, %22
  %shr28 = lshr i32 %add27, 8
  %conv29 = trunc i32 %shr28 to i8
  %23 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %conv29, i8* %arrayidx30, align 1
  %24 = load i32, i32* %tr, align 4
  %shr31 = lshr i32 %24, 8
  %25 = load i32, i32* %tr, align 4
  %add32 = add i32 %shr31, %25
  %shr33 = lshr i32 %add32, 8
  %conv34 = trunc i32 %shr33 to i8
  %26 = load i8*, i8** %dest.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 2
  store i8 %conv34, i8* %arrayidx35, align 1
  %27 = load i8*, i8** %src.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx36, align 1
  %29 = load i8*, i8** %dest.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %28, i8* %arrayidx37, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %30 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %add.ptr, i8** %src.addr, align 8
  %31 = load i8*, i8** %dest.addr, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %add.ptr38, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare i32 @gimp_histogram(i32, i32, i32, i32, double*, double*, double*, double*, double*, double*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i8* @gimp_text_layer_get_text(i32) #1

declare i8* @gimp_text_layer_get_markup(i32) #1

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._cairo_font_options* @cairo_font_options_create() #1

declare void @cairo_get_font_options(%struct._cairo*, %struct._cairo_font_options*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare i32 @gimp_text_layer_get_color(i32, %struct._GimpRGB*) #1

declare i32 @gimp_image_pick_color(i32, i32, double, double, i32, i32, double, %struct._GimpRGB*) #1

declare i32 @gimp_text_layer_get_hint_style(i32) #1

declare void @cairo_font_options_set_hint_style(%struct._cairo_font_options*, i32) #1

declare i32 @gimp_text_layer_get_antialias(i32) #1

declare void @cairo_font_options_set_antialias(%struct._cairo_font_options*, i32) #1

declare %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32) #1

declare void @pango_cairo_font_map_set_resolution(%struct._PangoCairoFontMap*, double) #1

; Function Attrs: nounwind readnone
declare i64 @pango_cairo_font_map_get_type() #3

declare %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap*) #1

declare void @pango_cairo_context_set_font_options(%struct._PangoContext*, %struct._cairo_font_options*) #1

declare i32 @gimp_text_layer_get_base_direction(i32) #1

declare void @pango_context_set_base_dir(%struct._PangoContext*, i32) #1

declare %struct._PangoLayout* @pango_layout_new(%struct._PangoContext*) #1

declare void @pango_layout_set_wrap(%struct._PangoLayout*, i32) #1

declare i8* @gimp_text_layer_get_font(i32) #1

declare %struct._PangoFontDescription* @pango_font_description_from_string(i8*) #1

declare double @gimp_text_layer_get_font_size(i32, i32*) #1

declare double @gimp_units_to_pixels(double, i32, double) #1

declare void @pango_font_description_set_absolute_size(%struct._PangoFontDescription*, double) #1

declare void @pango_layout_set_font_description(%struct._PangoLayout*, %struct._PangoFontDescription*) #1

declare void @pango_layout_set_width(%struct._PangoLayout*, i32) #1

declare i32 @gimp_text_layer_get_justification(i32) #1

declare double @gimp_text_layer_get_indent(i32) #1

declare void @pango_layout_set_indent(%struct._PangoLayout*, i32) #1

declare double @gimp_text_layer_get_line_spacing(i32) #1

declare void @pango_layout_set_spacing(%struct._PangoLayout*, i32) #1

declare double @gimp_text_layer_get_letter_spacing(i32) #1

declare %struct._PangoAttribute* @pango_attr_letter_spacing_new(i32) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @pango_layout_set_justify(%struct._PangoLayout*, i32) #1

declare void @pango_layout_set_alignment(%struct._PangoLayout*, i32) #1

declare void @pango_layout_set_attributes(%struct._PangoLayout*, %struct._PangoAttrList*) #1

declare void @pango_layout_set_markup(%struct._PangoLayout*, i8*, i32) #1

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @pango_font_description_free(%struct._PangoFontDescription*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare void @cairo_font_options_destroy(%struct._cairo_font_options*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
