; ModuleID = './plug-ins/common/file-gbr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.BrushInfo = type { [256 x i8], i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._BrushHeader = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._PatternHeader = type { i32, i32, i32, i32, i32, i32 }
%union.anon = type { float }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

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
@query.save_args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Spacing of the brush\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Short description of the brush\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"file-gbr-load\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Loads GIMP brushes\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Loads GIMP brushes (1 or 4 bpp and old .gpb format)\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Tim Newsome, Jens Lautenbacher, Sven Neumann\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"1997-2005\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"GIMP brush\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"image/x-gimp-gbr\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"gbr, gpb\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"20, string, GIMP\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"file-gbr-save\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Saves files in the GIMP brush file format\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"1997-2000\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"gbr\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"file-gbr\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@info = internal global %struct.BrushInfo { [256 x i8] c"GIMP Brush\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"gimp-brush-name\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"Invalid header data in '%s': width=%lu, height=%lu, bytes=%lu\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Unsupported brush format\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Error in GIMP brush file '%s'\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"Invalid UTF-8 string in brush file '%s'.\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.43 = private unnamed_addr constant [63 x i8] c"Unsupported brush depth: %d\0AGIMP Brushes must be GRAY or RGBA\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Spacing:\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Description:\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"GIMP brushes are either GRAYSCALE or RGBA\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0))
  %call1 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  %call2 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call3 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0))
  %call4 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  %call5 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0))
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
  %parasite = alloca %struct._GimpParasite*, align 8
  %orig_image_ID = alloca i32, align 4
  %name27 = alloca i8*, align 8
  %parasite71 = alloca %struct._GimpParasite*, align 8
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
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0)) #7
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
  br label %if.end.80

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.78

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
  %15 = load i32, i32* %image_ID, align 4
  store i32 %15, i32* %orig_image_ID, align 4
  %16 = load i32, i32* %run_mode, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.13, %if.then.13
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 19)
  store i32 %call20, i32* %export, align 4
  %17 = load i32, i32* %export, align 4
  %cmp21 = icmp eq i32 %17, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.23:                                        ; preds = %sw.bb
  %call24 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.23
  %18 = load i32, i32* %orig_image_ID, align 4
  %call25 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0))
  store %struct._GimpParasite* %call25, %struct._GimpParasite** %parasite, align 8
  %19 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %19, null
  br i1 %tobool, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %sw.epilog
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call28 = call i8* @gimp_parasite_data(%struct._GimpParasite* %20)
  %21 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call29 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %21)
  %call30 = call noalias i8* @g_strndup(i8* %call28, i64 %call29)
  store i8* %call30, i8** %name27, align 8
  %22 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %22)
  %23 = load i8*, i8** %name27, align 8
  %call31 = call i8* @strncpy(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0), i8* %23, i64 256) #5
  store i8 0, i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i64 255), align 1
  %24 = load i8*, i8** %name27, align 8
  call void @g_free(i8* %24)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %sw.epilog
  %25 = load i32, i32* %run_mode, align 4
  switch i32 %25, label %sw.default.50 [
    i32 0, label %sw.bb.33
    i32 1, label %sw.bb.38
  ]

sw.bb.33:                                         ; preds = %if.end.32
  %call34 = call i32 @save_dialog()
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %sw.bb.33
  store i32 4, i32* %status, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %sw.bb.33
  br label %sw.epilog.51

sw.bb.38:                                         ; preds = %if.end.32
  %26 = load i32, i32* %nparams.addr, align 4
  %cmp39 = icmp ne i32 %26, 7
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %sw.bb.38
  store i32 1, i32* %status, align 4
  br label %if.end.49

if.else.41:                                       ; preds = %sw.bb.38
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 5
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_int3244 = bitcast %union._GimpParamData* %data43 to i32*
  %28 = load i32, i32* %d_int3244, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 1), align 4
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 6
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_string47 = bitcast %union._GimpParamData* %data46 to i8**
  %30 = load i8*, i8** %d_string47, align 8
  %call48 = call i8* @strncpy(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0), i8* %30, i64 256) #5
  store i8 0, i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i64 255), align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.41, %if.then.40
  br label %sw.epilog.51

sw.default.50:                                    ; preds = %if.end.32
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.default.50, %if.end.49, %if.end.37
  %31 = load i32, i32* %status, align 4
  %cmp52 = icmp eq i32 %31, 3
  br i1 %cmp52, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %sw.epilog.51
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 3
  %data55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx54, i32 0, i32 1
  %d_string56 = bitcast %union._GimpParamData* %data55 to i8**
  %33 = load i8*, i8** %d_string56, align 8
  %34 = load i32, i32* %image_ID, align 4
  %35 = load i32, i32* %drawable_ID, align 4
  %call57 = call i32 @save_image(i8* %33, i32 %34, i32 %35, %struct._GError** %error)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.53
  %call60 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0), i32 260)
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.53
  store i32 0, i32* %status, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %sw.epilog.51
  %36 = load i32, i32* %export, align 4
  %cmp64 = icmp eq i32 %36, 2
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %37 = load i32, i32* %image_ID, align 4
  %call66 = call i32 @gimp_image_delete(i32 %37)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.63
  br i1 true, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %if.end.67
  %call68 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %tobool69 = icmp ne i64 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.75

if.then.70:                                       ; preds = %land.lhs.true
  %call72 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %add = add i64 %call72, 1
  %conv = trunc i64 %add to i32
  %call73 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 %conv, i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0))
  store %struct._GimpParasite* %call73, %struct._GimpParasite** %parasite71, align 8
  %38 = load i32, i32* %orig_image_ID, align 4
  %39 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite71, align 8
  %call74 = call i32 @gimp_image_attach_parasite(i32 %38, %struct._GimpParasite* %39)
  %40 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite71, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %40)
  br label %if.end.77

if.else.75:                                       ; preds = %land.lhs.true, %if.end.67
  %41 = load i32, i32* %orig_image_ID, align 4
  %call76 = call i32 @gimp_image_detach_parasite(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.70
  br label %if.end.79

if.else.78:                                       ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.end.77
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end
  %42 = load i32, i32* %status, align 4
  %cmp81 = icmp ne i32 %42, 3
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.86

land.lhs.true.83:                                 ; preds = %if.end.80
  %43 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool84 = icmp ne %struct._GError* %43, null
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.83
  %44 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %44, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %45 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %45, i32 0, i32 2
  %46 = load i8*, i8** %message, align 8
  store i8* %46, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %land.lhs.true.83, %if.end.80
  %47 = load i32, i32* %status, align 4
  store i32 %47, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.86, %if.then.22
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

declare i32 @gimp_plugin_icon_register(i8*, i32, i8*) #1

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
  %name = alloca i8*, align 8
  %fd = alloca i32, align 4
  %bh = alloca %struct._BrushHeader, align 4
  %brush_buf = alloca i8*, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %bn_size = alloca i32, align 4
  %base_type = alloca i32, align 4
  %image_type = alloca i32, align 4
  %size = alloca i64, align 8
  %temp = alloca i8*, align 8
  %ph = alloca %struct._PatternHeader, align 4
  %plain_brush = alloca i8*, align 8
  %i = alloca i32, align 4
  %buf = alloca i16*, align 8
  %i385 = alloca i32, align 4
  %short_float = alloca %union.anon, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %brush_buf, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0, i32 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %7 = load i32, i32* %fd, align 4
  %8 = bitcast %struct._BrushHeader* %bh to i8*
  %call11 = call i64 @read(i32 %7, i8* %8, i64 28)
  %cmp12 = icmp ne i64 %call11, 28
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %9 = load i32, i32* %fd, align 4
  %call14 = call i32 @close(i32 %9)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %header_size = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %10 = load i32, i32* %header_size, align 4
  %and = and i32 %10, 255
  %shl = shl i32 %and, 24
  %header_size16 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %11 = load i32, i32* %header_size16, align 4
  %and17 = and i32 %11, 65280
  %shl18 = shl i32 %and17, 8
  %or = or i32 %shl, %shl18
  %header_size19 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %12 = load i32, i32* %header_size19, align 4
  %and20 = and i32 %12, 16711680
  %shr = lshr i32 %and20, 8
  %or21 = or i32 %or, %shr
  %header_size22 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %13 = load i32, i32* %header_size22, align 4
  %and23 = and i32 %13, -16777216
  %shr24 = lshr i32 %and23, 24
  %or25 = or i32 %or21, %shr24
  %header_size26 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  store i32 %or25, i32* %header_size26, align 4
  %version = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %14 = load i32, i32* %version, align 4
  %and27 = and i32 %14, 255
  %shl28 = shl i32 %and27, 24
  %version29 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %15 = load i32, i32* %version29, align 4
  %and30 = and i32 %15, 65280
  %shl31 = shl i32 %and30, 8
  %or32 = or i32 %shl28, %shl31
  %version33 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %16 = load i32, i32* %version33, align 4
  %and34 = and i32 %16, 16711680
  %shr35 = lshr i32 %and34, 8
  %or36 = or i32 %or32, %shr35
  %version37 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %17 = load i32, i32* %version37, align 4
  %and38 = and i32 %17, -16777216
  %shr39 = lshr i32 %and38, 24
  %or40 = or i32 %or36, %shr39
  %version41 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  store i32 %or40, i32* %version41, align 4
  %width = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %and42 = and i32 %18, 255
  %shl43 = shl i32 %and42, 24
  %width44 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %19 = load i32, i32* %width44, align 4
  %and45 = and i32 %19, 65280
  %shl46 = shl i32 %and45, 8
  %or47 = or i32 %shl43, %shl46
  %width48 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %20 = load i32, i32* %width48, align 4
  %and49 = and i32 %20, 16711680
  %shr50 = lshr i32 %and49, 8
  %or51 = or i32 %or47, %shr50
  %width52 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %21 = load i32, i32* %width52, align 4
  %and53 = and i32 %21, -16777216
  %shr54 = lshr i32 %and53, 24
  %or55 = or i32 %or51, %shr54
  %width56 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  store i32 %or55, i32* %width56, align 4
  %height = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %22 = load i32, i32* %height, align 4
  %and57 = and i32 %22, 255
  %shl58 = shl i32 %and57, 24
  %height59 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %23 = load i32, i32* %height59, align 4
  %and60 = and i32 %23, 65280
  %shl61 = shl i32 %and60, 8
  %or62 = or i32 %shl58, %shl61
  %height63 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %24 = load i32, i32* %height63, align 4
  %and64 = and i32 %24, 16711680
  %shr65 = lshr i32 %and64, 8
  %or66 = or i32 %or62, %shr65
  %height67 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %25 = load i32, i32* %height67, align 4
  %and68 = and i32 %25, -16777216
  %shr69 = lshr i32 %and68, 24
  %or70 = or i32 %or66, %shr69
  %height71 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  store i32 %or70, i32* %height71, align 4
  %bytes = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %26 = load i32, i32* %bytes, align 4
  %and72 = and i32 %26, 255
  %shl73 = shl i32 %and72, 24
  %bytes74 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %27 = load i32, i32* %bytes74, align 4
  %and75 = and i32 %27, 65280
  %shl76 = shl i32 %and75, 8
  %or77 = or i32 %shl73, %shl76
  %bytes78 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %28 = load i32, i32* %bytes78, align 4
  %and79 = and i32 %28, 16711680
  %shr80 = lshr i32 %and79, 8
  %or81 = or i32 %or77, %shr80
  %bytes82 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %29 = load i32, i32* %bytes82, align 4
  %and83 = and i32 %29, -16777216
  %shr84 = lshr i32 %and83, 24
  %or85 = or i32 %or81, %shr84
  %bytes86 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  store i32 %or85, i32* %bytes86, align 4
  %magic_number = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %30 = load i32, i32* %magic_number, align 4
  %and87 = and i32 %30, 255
  %shl88 = shl i32 %and87, 24
  %magic_number89 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %31 = load i32, i32* %magic_number89, align 4
  %and90 = and i32 %31, 65280
  %shl91 = shl i32 %and90, 8
  %or92 = or i32 %shl88, %shl91
  %magic_number93 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %32 = load i32, i32* %magic_number93, align 4
  %and94 = and i32 %32, 16711680
  %shr95 = lshr i32 %and94, 8
  %or96 = or i32 %or92, %shr95
  %magic_number97 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %33 = load i32, i32* %magic_number97, align 4
  %and98 = and i32 %33, -16777216
  %shr99 = lshr i32 %and98, 24
  %or100 = or i32 %or96, %shr99
  %magic_number101 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  store i32 %or100, i32* %magic_number101, align 4
  %spacing = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %34 = load i32, i32* %spacing, align 4
  %and102 = and i32 %34, 255
  %shl103 = shl i32 %and102, 24
  %spacing104 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %35 = load i32, i32* %spacing104, align 4
  %and105 = and i32 %35, 65280
  %shl106 = shl i32 %and105, 8
  %or107 = or i32 %shl103, %shl106
  %spacing108 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %36 = load i32, i32* %spacing108, align 4
  %and109 = and i32 %36, 16711680
  %shr110 = lshr i32 %and109, 8
  %or111 = or i32 %or107, %shr110
  %spacing112 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %37 = load i32, i32* %spacing112, align 4
  %and113 = and i32 %37, -16777216
  %shr114 = lshr i32 %and113, 24
  %or115 = or i32 %or111, %shr114
  %spacing116 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  store i32 %or115, i32* %spacing116, align 4
  %width117 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %38 = load i32, i32* %width117, align 4
  %cmp118 = icmp eq i32 %38, 0
  br i1 %cmp118, label %if.then.148, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %width119 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %39 = load i32, i32* %width119, align 4
  %cmp120 = icmp ugt i32 %39, 262144
  br i1 %cmp120, label %if.then.148, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false
  %height122 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %40 = load i32, i32* %height122, align 4
  %cmp123 = icmp eq i32 %40, 0
  br i1 %cmp123, label %if.then.148, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %lor.lhs.false.121
  %height125 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %41 = load i32, i32* %height125, align 4
  %cmp126 = icmp ugt i32 %41, 262144
  br i1 %cmp126, label %if.then.148, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.124
  %bytes128 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %42 = load i32, i32* %bytes128, align 4
  %cmp129 = icmp ne i32 %42, 1
  br i1 %cmp129, label %land.lhs.true, label %lor.lhs.false.138

land.lhs.true:                                    ; preds = %lor.lhs.false.127
  %bytes130 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %43 = load i32, i32* %bytes130, align 4
  %cmp131 = icmp ne i32 %43, 2
  br i1 %cmp131, label %land.lhs.true.132, label %lor.lhs.false.138

land.lhs.true.132:                                ; preds = %land.lhs.true
  %bytes133 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %44 = load i32, i32* %bytes133, align 4
  %cmp134 = icmp ne i32 %44, 4
  br i1 %cmp134, label %land.lhs.true.135, label %lor.lhs.false.138

land.lhs.true.135:                                ; preds = %land.lhs.true.132
  %bytes136 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %45 = load i32, i32* %bytes136, align 4
  %cmp137 = icmp ne i32 %45, 18
  br i1 %cmp137, label %if.then.148, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %land.lhs.true.135, %land.lhs.true.132, %land.lhs.true, %lor.lhs.false.127
  %width139 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %46 = load i32, i32* %width139, align 4
  %conv = zext i32 %46 to i64
  %div = udiv i64 -1, %conv
  %height140 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %47 = load i32, i32* %height140, align 4
  %conv141 = zext i32 %47 to i64
  %div142 = udiv i64 %div, %conv141
  %bytes143 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %48 = load i32, i32* %bytes143, align 4
  %conv144 = zext i32 %48 to i64
  %div145 = udiv i64 %div142, %conv144
  %cmp146 = icmp ult i64 %div145, 1
  br i1 %cmp146, label %if.then.148, label %if.end.158

if.then.148:                                      ; preds = %lor.lhs.false.138, %land.lhs.true.135, %lor.lhs.false.124, %lor.lhs.false.121, %lor.lhs.false, %if.end.15
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call149 = call i32 @g_file_error_quark()
  %call150 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i32 0, i32 0)) #5
  %50 = load i8*, i8** %filename.addr, align 8
  %call151 = call i8* @gimp_filename_to_utf8(i8* %50)
  %width152 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %51 = load i32, i32* %width152, align 4
  %conv153 = zext i32 %51 to i64
  %height154 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %52 = load i32, i32* %height154, align 4
  %conv155 = zext i32 %52 to i64
  %bytes156 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %53 = load i32, i32* %bytes156, align 4
  %conv157 = zext i32 %53 to i64
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %49, i32 %call149, i32 24, i8* %call150, i8* %call151, i64 %conv153, i64 %conv155, i64 %conv157)
  store i32 -1, i32* %retval
  br label %return

if.end.158:                                       ; preds = %lor.lhs.false.138
  %version159 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %54 = load i32, i32* %version159, align 4
  switch i32 %54, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.163
    i32 2, label %sw.bb.172
  ]

sw.bb:                                            ; preds = %if.end.158
  %spacing160 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  store i32 25, i32* %spacing160, align 4
  %55 = load i32, i32* %fd, align 4
  %call161 = call i64 @lseek(i32 %55, i64 -8, i32 1) #5
  %header_size162 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %56 = load i32, i32* %header_size162, align 4
  %add = add i32 %56, 8
  store i32 %add, i32* %header_size162, align 4
  br label %sw.epilog

sw.bb.163:                                        ; preds = %if.end.158
  %bytes164 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %57 = load i32, i32* %bytes164, align 4
  %cmp165 = icmp eq i32 %57, 18
  br i1 %cmp165, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %sw.bb.163
  %bytes168 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  store i32 2, i32* %bytes168, align 4
  br label %if.end.171

if.else:                                          ; preds = %sw.bb.163
  %call169 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call169)
  %58 = load i32, i32* %fd, align 4
  %call170 = call i32 @close(i32 %58)
  store i32 -1, i32* %retval
  br label %return

if.end.171:                                       ; preds = %if.then.167
  br label %sw.bb.172

sw.bb.172:                                        ; preds = %if.end.158, %if.end.171
  %magic_number173 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %59 = load i32, i32* %magic_number173, align 4
  %cmp174 = icmp eq i32 %59, 1195986256
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.182

land.lhs.true.176:                                ; preds = %sw.bb.172
  %header_size177 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %60 = load i32, i32* %header_size177, align 4
  %conv178 = zext i32 %60 to i64
  %cmp179 = icmp ugt i64 %conv178, 28
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %land.lhs.true.176
  br label %sw.epilog

if.end.182:                                       ; preds = %land.lhs.true.176, %sw.bb.172
  br label %sw.default

sw.default:                                       ; preds = %if.end.158, %if.end.182
  %call183 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call183)
  %61 = load i32, i32* %fd, align 4
  %call184 = call i32 @close(i32 %61)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.181, %sw.bb
  %header_size185 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %62 = load i32, i32* %header_size185, align 4
  %conv186 = zext i32 %62 to i64
  %sub = sub i64 %conv186, 28
  %conv187 = trunc i64 %sub to i32
  store i32 %conv187, i32* %bn_size, align 4
  %cmp188 = icmp sgt i32 %conv187, 0
  br i1 %cmp188, label %if.then.190, label %if.else.207

if.then.190:                                      ; preds = %sw.epilog
  %63 = load i32, i32* %bn_size, align 4
  %conv191 = sext i32 %63 to i64
  %call192 = call noalias i8* @g_malloc_n(i64 %conv191, i64 1)
  store i8* %call192, i8** %temp, align 8
  %64 = load i32, i32* %fd, align 4
  %65 = load i8*, i8** %temp, align 8
  %66 = load i32, i32* %bn_size, align 4
  %conv193 = sext i32 %66 to i64
  %call194 = call i64 @read(i32 %64, i8* %65, i64 %conv193)
  %67 = load i32, i32* %bn_size, align 4
  %conv195 = sext i32 %67 to i64
  %cmp196 = icmp slt i64 %call194, %conv195
  br i1 %cmp196, label %if.then.198, label %if.end.203

if.then.198:                                      ; preds = %if.then.190
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call199 = call i32 @g_file_error_quark()
  %call200 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0)) #5
  %69 = load i8*, i8** %filename.addr, align 8
  %call201 = call i8* @gimp_filename_to_utf8(i8* %69)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %68, i32 %call199, i32 24, i8* %call200, i8* %call201)
  %70 = load i32, i32* %fd, align 4
  %call202 = call i32 @close(i32 %70)
  %71 = load i8*, i8** %temp, align 8
  call void @g_free(i8* %71)
  store i32 -1, i32* %retval
  br label %return

if.end.203:                                       ; preds = %if.then.190
  %72 = load i8*, i8** %temp, align 8
  %call204 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0)) #5
  %73 = load i8*, i8** %filename.addr, align 8
  %call205 = call i8* @gimp_filename_to_utf8(i8* %73)
  %call206 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %72, i64 -1, i8* %call204, i8* %call205)
  store i8* %call206, i8** %name, align 8
  %74 = load i8*, i8** %temp, align 8
  call void @g_free(i8* %74)
  br label %if.end.210

if.else.207:                                      ; preds = %sw.epilog
  %call208 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #5
  %call209 = call noalias i8* @g_strdup(i8* %call208)
  store i8* %call209, i8** %name, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.207, %if.end.203
  %width211 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %75 = load i32, i32* %width211, align 4
  %height212 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %76 = load i32, i32* %height212, align 4
  %mul = mul i32 %75, %76
  %bytes213 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %77 = load i32, i32* %bytes213, align 4
  %mul214 = mul i32 %mul, %77
  %conv215 = zext i32 %mul214 to i64
  store i64 %conv215, i64* %size, align 8
  %78 = load i64, i64* %size, align 8
  %call216 = call noalias i8* @g_malloc(i64 %78)
  store i8* %call216, i8** %brush_buf, align 8
  %79 = load i32, i32* %fd, align 4
  %80 = load i8*, i8** %brush_buf, align 8
  %81 = load i64, i64* %size, align 8
  %call217 = call i64 @read(i32 %79, i8* %80, i64 %81)
  %82 = load i64, i64* %size, align 8
  %cmp218 = icmp ne i64 %call217, %82
  br i1 %cmp218, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %if.end.210
  %83 = load i32, i32* %fd, align 4
  %call221 = call i32 @close(i32 %83)
  %84 = load i8*, i8** %brush_buf, align 8
  call void @g_free(i8* %84)
  %85 = load i8*, i8** %name, align 8
  call void @g_free(i8* %85)
  store i32 -1, i32* %retval
  br label %return

if.end.222:                                       ; preds = %if.end.210
  %bytes223 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %86 = load i32, i32* %bytes223, align 4
  switch i32 %86, label %sw.default.416 [
    i32 1, label %sw.bb.224
    i32 2, label %sw.bb.384
  ]

sw.bb.224:                                        ; preds = %if.end.222
  %87 = load i32, i32* %fd, align 4
  %88 = bitcast %struct._PatternHeader* %ph to i8*
  %call225 = call i64 @read(i32 %87, i8* %88, i64 24)
  %cmp226 = icmp eq i64 %call225, 24
  br i1 %cmp226, label %if.then.228, label %if.end.383

if.then.228:                                      ; preds = %sw.bb.224
  %header_size229 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %89 = load i32, i32* %header_size229, align 4
  %and230 = and i32 %89, 255
  %shl231 = shl i32 %and230, 24
  %header_size232 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %90 = load i32, i32* %header_size232, align 4
  %and233 = and i32 %90, 65280
  %shl234 = shl i32 %and233, 8
  %or235 = or i32 %shl231, %shl234
  %header_size236 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %91 = load i32, i32* %header_size236, align 4
  %and237 = and i32 %91, 16711680
  %shr238 = lshr i32 %and237, 8
  %or239 = or i32 %or235, %shr238
  %header_size240 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %92 = load i32, i32* %header_size240, align 4
  %and241 = and i32 %92, -16777216
  %shr242 = lshr i32 %and241, 24
  %or243 = or i32 %or239, %shr242
  %header_size244 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  store i32 %or243, i32* %header_size244, align 4
  %version245 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %93 = load i32, i32* %version245, align 4
  %and246 = and i32 %93, 255
  %shl247 = shl i32 %and246, 24
  %version248 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %94 = load i32, i32* %version248, align 4
  %and249 = and i32 %94, 65280
  %shl250 = shl i32 %and249, 8
  %or251 = or i32 %shl247, %shl250
  %version252 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %95 = load i32, i32* %version252, align 4
  %and253 = and i32 %95, 16711680
  %shr254 = lshr i32 %and253, 8
  %or255 = or i32 %or251, %shr254
  %version256 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %96 = load i32, i32* %version256, align 4
  %and257 = and i32 %96, -16777216
  %shr258 = lshr i32 %and257, 24
  %or259 = or i32 %or255, %shr258
  %version260 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  store i32 %or259, i32* %version260, align 4
  %width261 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %97 = load i32, i32* %width261, align 4
  %and262 = and i32 %97, 255
  %shl263 = shl i32 %and262, 24
  %width264 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %98 = load i32, i32* %width264, align 4
  %and265 = and i32 %98, 65280
  %shl266 = shl i32 %and265, 8
  %or267 = or i32 %shl263, %shl266
  %width268 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %99 = load i32, i32* %width268, align 4
  %and269 = and i32 %99, 16711680
  %shr270 = lshr i32 %and269, 8
  %or271 = or i32 %or267, %shr270
  %width272 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %100 = load i32, i32* %width272, align 4
  %and273 = and i32 %100, -16777216
  %shr274 = lshr i32 %and273, 24
  %or275 = or i32 %or271, %shr274
  %width276 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  store i32 %or275, i32* %width276, align 4
  %height277 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %101 = load i32, i32* %height277, align 4
  %and278 = and i32 %101, 255
  %shl279 = shl i32 %and278, 24
  %height280 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %102 = load i32, i32* %height280, align 4
  %and281 = and i32 %102, 65280
  %shl282 = shl i32 %and281, 8
  %or283 = or i32 %shl279, %shl282
  %height284 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %103 = load i32, i32* %height284, align 4
  %and285 = and i32 %103, 16711680
  %shr286 = lshr i32 %and285, 8
  %or287 = or i32 %or283, %shr286
  %height288 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %104 = load i32, i32* %height288, align 4
  %and289 = and i32 %104, -16777216
  %shr290 = lshr i32 %and289, 24
  %or291 = or i32 %or287, %shr290
  %height292 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  store i32 %or291, i32* %height292, align 4
  %bytes293 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %105 = load i32, i32* %bytes293, align 4
  %and294 = and i32 %105, 255
  %shl295 = shl i32 %and294, 24
  %bytes296 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %106 = load i32, i32* %bytes296, align 4
  %and297 = and i32 %106, 65280
  %shl298 = shl i32 %and297, 8
  %or299 = or i32 %shl295, %shl298
  %bytes300 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %107 = load i32, i32* %bytes300, align 4
  %and301 = and i32 %107, 16711680
  %shr302 = lshr i32 %and301, 8
  %or303 = or i32 %or299, %shr302
  %bytes304 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %108 = load i32, i32* %bytes304, align 4
  %and305 = and i32 %108, -16777216
  %shr306 = lshr i32 %and305, 24
  %or307 = or i32 %or303, %shr306
  %bytes308 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  store i32 %or307, i32* %bytes308, align 4
  %magic_number309 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %109 = load i32, i32* %magic_number309, align 4
  %and310 = and i32 %109, 255
  %shl311 = shl i32 %and310, 24
  %magic_number312 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %110 = load i32, i32* %magic_number312, align 4
  %and313 = and i32 %110, 65280
  %shl314 = shl i32 %and313, 8
  %or315 = or i32 %shl311, %shl314
  %magic_number316 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %111 = load i32, i32* %magic_number316, align 4
  %and317 = and i32 %111, 16711680
  %shr318 = lshr i32 %and317, 8
  %or319 = or i32 %or315, %shr318
  %magic_number320 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %112 = load i32, i32* %magic_number320, align 4
  %and321 = and i32 %112, -16777216
  %shr322 = lshr i32 %and321, 24
  %or323 = or i32 %or319, %shr322
  %magic_number324 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  store i32 %or323, i32* %magic_number324, align 4
  %magic_number325 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %113 = load i32, i32* %magic_number325, align 4
  %cmp326 = icmp eq i32 %113, 1196441940
  br i1 %cmp326, label %land.lhs.true.328, label %if.end.382

land.lhs.true.328:                                ; preds = %if.then.228
  %version329 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %114 = load i32, i32* %version329, align 4
  %cmp330 = icmp eq i32 %114, 1
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.382

land.lhs.true.332:                                ; preds = %land.lhs.true.328
  %header_size333 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %115 = load i32, i32* %header_size333, align 4
  %conv334 = zext i32 %115 to i64
  %cmp335 = icmp ugt i64 %conv334, 24
  br i1 %cmp335, label %land.lhs.true.337, label %if.end.382

land.lhs.true.337:                                ; preds = %land.lhs.true.332
  %bytes338 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %116 = load i32, i32* %bytes338, align 4
  %cmp339 = icmp eq i32 %116, 3
  br i1 %cmp339, label %land.lhs.true.341, label %if.end.382

land.lhs.true.341:                                ; preds = %land.lhs.true.337
  %width342 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %117 = load i32, i32* %width342, align 4
  %width343 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %118 = load i32, i32* %width343, align 4
  %cmp344 = icmp eq i32 %117, %118
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.382

land.lhs.true.346:                                ; preds = %land.lhs.true.341
  %height347 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %119 = load i32, i32* %height347, align 4
  %height348 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %120 = load i32, i32* %height348, align 4
  %cmp349 = icmp eq i32 %119, %120
  br i1 %cmp349, label %land.lhs.true.351, label %if.end.382

land.lhs.true.351:                                ; preds = %land.lhs.true.346
  %121 = load i32, i32* %fd, align 4
  %header_size352 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %122 = load i32, i32* %header_size352, align 4
  %conv353 = zext i32 %122 to i64
  %sub354 = sub i64 %conv353, 24
  %call355 = call i64 @lseek(i32 %121, i64 %sub354, i32 1) #5
  %cmp356 = icmp sgt i64 %call355, 0
  br i1 %cmp356, label %if.then.358, label %if.end.382

if.then.358:                                      ; preds = %land.lhs.true.351
  %123 = load i8*, i8** %brush_buf, align 8
  store i8* %123, i8** %plain_brush, align 8
  %bytes359 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  store i32 4, i32* %bytes359, align 4
  %width360 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %124 = load i32, i32* %width360, align 4
  %mul361 = mul i32 4, %124
  %height362 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %125 = load i32, i32* %height362, align 4
  %mul363 = mul i32 %mul361, %125
  %conv364 = zext i32 %mul363 to i64
  %call365 = call noalias i8* @g_malloc(i64 %conv364)
  store i8* %call365, i8** %brush_buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.358
  %126 = load i32, i32* %i, align 4
  %width366 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %127 = load i32, i32* %width366, align 4
  %height367 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %128 = load i32, i32* %height367, align 4
  %mul368 = mul i32 %127, %128
  %cmp369 = icmp ult i32 %126, %mul368
  br i1 %cmp369, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %129 = load i32, i32* %fd, align 4
  %130 = load i8*, i8** %brush_buf, align 8
  %131 = load i32, i32* %i, align 4
  %mul371 = mul nsw i32 %131, 4
  %idx.ext = sext i32 %mul371 to i64
  %add.ptr = getelementptr inbounds i8, i8* %130, i64 %idx.ext
  %call372 = call i64 @read(i32 %129, i8* %add.ptr, i64 3)
  %cmp373 = icmp ne i64 %call372, 3
  br i1 %cmp373, label %if.then.375, label %if.end.377

if.then.375:                                      ; preds = %for.body
  %132 = load i32, i32* %fd, align 4
  %call376 = call i32 @close(i32 %132)
  %133 = load i8*, i8** %name, align 8
  call void @g_free(i8* %133)
  %134 = load i8*, i8** %plain_brush, align 8
  call void @g_free(i8* %134)
  %135 = load i8*, i8** %brush_buf, align 8
  call void @g_free(i8* %135)
  store i32 -1, i32* %retval
  br label %return

if.end.377:                                       ; preds = %for.body
  %136 = load i32, i32* %i, align 4
  %idxprom = sext i32 %136 to i64
  %137 = load i8*, i8** %plain_brush, align 8
  %arrayidx = getelementptr inbounds i8, i8* %137, i64 %idxprom
  %138 = load i8, i8* %arrayidx, align 1
  %139 = load i32, i32* %i, align 4
  %mul378 = mul nsw i32 %139, 4
  %add379 = add nsw i32 %mul378, 3
  %idxprom380 = sext i32 %add379 to i64
  %140 = load i8*, i8** %brush_buf, align 8
  %arrayidx381 = getelementptr inbounds i8, i8* %140, i64 %idxprom380
  store i8 %138, i8* %arrayidx381, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.377
  %141 = load i32, i32* %i, align 4
  %inc = add nsw i32 %141, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %142 = load i8*, i8** %plain_brush, align 8
  call void @g_free(i8* %142)
  br label %if.end.382

if.end.382:                                       ; preds = %for.end, %land.lhs.true.351, %land.lhs.true.346, %land.lhs.true.341, %land.lhs.true.337, %land.lhs.true.332, %land.lhs.true.328, %if.then.228
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %sw.bb.224
  br label %sw.epilog.417

sw.bb.384:                                        ; preds = %if.end.222
  %143 = load i8*, i8** %brush_buf, align 8
  %144 = bitcast i8* %143 to i16*
  store i16* %144, i16** %buf, align 8
  store i32 0, i32* %i385, align 4
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.412, %sw.bb.384
  %145 = load i32, i32* %i385, align 4
  %width387 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %146 = load i32, i32* %width387, align 4
  %height388 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %147 = load i32, i32* %height388, align 4
  %mul389 = mul i32 %146, %147
  %cmp390 = icmp ult i32 %145, %mul389
  br i1 %cmp390, label %for.body.392, label %for.end.414

for.body.392:                                     ; preds = %for.cond.386
  %u = bitcast %union.anon* %short_float to [2 x i16]*
  %arrayidx393 = getelementptr inbounds [2 x i16], [2 x i16]* %u, i32 0, i64 0
  store i16 0, i16* %arrayidx393, align 2
  %148 = load i16*, i16** %buf, align 8
  %149 = load i16, i16* %148, align 2
  %conv394 = zext i16 %149 to i32
  %shr395 = ashr i32 %conv394, 8
  %conv396 = trunc i32 %shr395 to i16
  %conv397 = zext i16 %conv396 to i32
  %150 = load i16*, i16** %buf, align 8
  %151 = load i16, i16* %150, align 2
  %conv398 = zext i16 %151 to i32
  %shl399 = shl i32 %conv398, 8
  %conv400 = trunc i32 %shl399 to i16
  %conv401 = zext i16 %conv400 to i32
  %or402 = or i32 %conv397, %conv401
  %conv403 = trunc i32 %or402 to i16
  %u404 = bitcast %union.anon* %short_float to [2 x i16]*
  %arrayidx405 = getelementptr inbounds [2 x i16], [2 x i16]* %u404, i32 0, i64 1
  store i16 %conv403, i16* %arrayidx405, align 2
  %f = bitcast %union.anon* %short_float to float*
  %152 = load float, float* %f, align 4
  %conv406 = fpext float %152 to double
  %mul407 = fmul double %conv406, 2.550000e+02
  %add408 = fadd double %mul407, 5.000000e-01
  %conv409 = fptoui double %add408 to i8
  %153 = load i32, i32* %i385, align 4
  %idxprom410 = sext i32 %153 to i64
  %154 = load i8*, i8** %brush_buf, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %154, i64 %idxprom410
  store i8 %conv409, i8* %arrayidx411, align 1
  br label %for.inc.412

for.inc.412:                                      ; preds = %for.body.392
  %155 = load i32, i32* %i385, align 4
  %inc413 = add nsw i32 %155, 1
  store i32 %inc413, i32* %i385, align 4
  %156 = load i16*, i16** %buf, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %156, i32 1
  store i16* %incdec.ptr, i16** %buf, align 8
  br label %for.cond.386

for.end.414:                                      ; preds = %for.cond.386
  %bytes415 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  store i32 1, i32* %bytes415, align 4
  br label %sw.epilog.417

sw.default.416:                                   ; preds = %if.end.222
  br label %sw.epilog.417

sw.epilog.417:                                    ; preds = %sw.default.416, %for.end.414, %if.end.383
  %bytes418 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %157 = load i32, i32* %bytes418, align 4
  switch i32 %157, label %sw.default.421 [
    i32 1, label %sw.bb.419
    i32 4, label %sw.bb.420
  ]

sw.bb.419:                                        ; preds = %sw.epilog.417
  store i32 1, i32* %base_type, align 4
  store i32 2, i32* %image_type, align 4
  br label %sw.epilog.423

sw.bb.420:                                        ; preds = %sw.epilog.417
  store i32 0, i32* %base_type, align 4
  store i32 1, i32* %image_type, align 4
  br label %sw.epilog.423

sw.default.421:                                   ; preds = %sw.epilog.417
  %bytes422 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %158 = load i32, i32* %bytes422, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.43, i32 0, i32 0), i32 %158)
  %159 = load i8*, i8** %name, align 8
  call void @g_free(i8* %159)
  store i32 -1, i32* %retval
  br label %return

sw.epilog.423:                                    ; preds = %sw.bb.420, %sw.bb.419
  %width424 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %160 = load i32, i32* %width424, align 4
  %height425 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %161 = load i32, i32* %height425, align 4
  %162 = load i32, i32* %base_type, align 4
  %call426 = call i32 @gimp_image_new(i32 %160, i32 %161, i32 %162)
  store i32 %call426, i32* %image_ID, align 4
  %163 = load i32, i32* %image_ID, align 4
  %164 = load i8*, i8** %filename.addr, align 8
  %call427 = call i32 @gimp_image_set_filename(i32 %163, i8* %164)
  %165 = load i8*, i8** %name, align 8
  %call428 = call i64 @strlen(i8* %165) #7
  %add429 = add i64 %call428, 1
  %conv430 = trunc i64 %add429 to i32
  %166 = load i8*, i8** %name, align 8
  %call431 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 %conv430, i8* %166)
  store %struct._GimpParasite* %call431, %struct._GimpParasite** %parasite, align 8
  %167 = load i32, i32* %image_ID, align 4
  %168 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call432 = call i32 @gimp_image_attach_parasite(i32 %167, %struct._GimpParasite* %168)
  %169 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %169)
  %170 = load i32, i32* %image_ID, align 4
  %171 = load i8*, i8** %name, align 8
  %width433 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %172 = load i32, i32* %width433, align 4
  %height434 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %173 = load i32, i32* %height434, align 4
  %174 = load i32, i32* %image_type, align 4
  %call435 = call i32 @gimp_layer_new(i32 %170, i8* %171, i32 %172, i32 %173, i32 %174, double 1.000000e+02, i32 0)
  store i32 %call435, i32* %layer_ID, align 4
  %175 = load i32, i32* %image_ID, align 4
  %176 = load i32, i32* %layer_ID, align 4
  %call436 = call i32 @gimp_image_insert_layer(i32 %175, i32 %176, i32 -1, i32 0)
  %177 = load i8*, i8** %name, align 8
  call void @g_free(i8* %177)
  %178 = load i32, i32* %layer_ID, align 4
  %call437 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %178)
  store %struct._GimpDrawable* %call437, %struct._GimpDrawable** %drawable, align 8
  %179 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %180 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width438 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %180, i32 0, i32 1
  %181 = load i32, i32* %width438, align 4
  %182 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height439 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %182, i32 0, i32 2
  %183 = load i32, i32* %height439, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %179, i32 0, i32 0, i32 %181, i32 %183, i32 1, i32 0)
  %184 = load i8*, i8** %brush_buf, align 8
  %width440 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %185 = load i32, i32* %width440, align 4
  %height441 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %186 = load i32, i32* %height441, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %184, i32 0, i32 0, i32 %185, i32 %186)
  %187 = load i8*, i8** %brush_buf, align 8
  call void @g_free(i8* %187)
  %188 = load i32, i32* %image_type, align 4
  %cmp442 = icmp eq i32 %188, 2
  br i1 %cmp442, label %if.then.444, label %if.end.446

if.then.444:                                      ; preds = %sw.epilog.423
  %189 = load i32, i32* %layer_ID, align 4
  %call445 = call i32 @gimp_invert(i32 %189)
  br label %if.end.446

if.end.446:                                       ; preds = %if.then.444, %sw.epilog.423
  %190 = load i32, i32* %fd, align 4
  %call447 = call i32 @close(i32 %190)
  %191 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %191)
  %call448 = call i32 @gimp_progress_update(double 1.000000e+00)
  %192 = load i32, i32* %image_ID, align 4
  store i32 %192, i32* %retval
  br label %return

return:                                           ; preds = %if.end.446, %sw.default.421, %if.then.375, %if.then.220, %if.then.198, %sw.default, %if.else, %if.then.148, %if.then.13, %if.then
  %193 = load i32, i32* %retval
  ret i32 %193
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %table, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call4)
  %2 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %5, i32 6)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %8, i32 6)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call10 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %9)
  %10 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 1, i32 1, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load i32, i32* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 1), align 4
  %conv = sitofp i32 %14 to double
  %call13 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 1.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %spinbutton, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_entry_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %17, i32 1)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)) #5
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call19 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %20, i32 0, i32 0, i8* %call18, float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %21, i32 1, i32 1)
  %22 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %23 = bitcast %struct._GtkObject* %22 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call21 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %entry1, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %24, i32 200, i32 -1)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_entry_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %27, i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0))
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_entry_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call24)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %30, i32 1)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call26)
  %33 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0)) #5
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call29 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %33, i32 0, i32 1, i8* %call28, float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %34, i32 1, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_dialog_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call31)
  %40 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpDialog*
  %call33 = call i32 @gimp_dialog_run(%struct._GimpDialog* %40)
  %cmp = icmp eq i32 %call33, -5
  %conv34 = zext i1 %cmp to i32
  store i32 %conv34, i32* %run, align 4
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %41)
  %42 = load i32, i32* %run, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %fd = alloca i32, align 4
  %bh = alloca %struct._BrushHeader, align 4
  %buffer = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %line = alloca i32, align 4
  %x = alloca i32, align 4
  %bpp = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %gray = alloca %struct._GimpRGB, align 8
  %white = alloca %struct._GimpRGB, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %white, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1)
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_drawable_type(i32 %0)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 4, i32* %bpp, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 1, i32* %bpp, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call2)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 (i8*, i32, ...) @open(i8* %1, i32 577, i32 438)
  store i32 %call3, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #6
  %4 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %4)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0)) #5
  %5 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call9 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %6) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %3, i32 %call4, i32 %call6, i8* %call7, i8* %call8, i8* %call10)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0)) #5
  %7 = load i8*, i8** %filename.addr, align 8
  %call12 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call13 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call11, i8* %call12)
  %8 = load i32, i32* %drawable_ID.addr, align 4
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call14, %struct._GimpDrawable** %drawable, align 8
  %call15 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %add = add i64 28, %call15
  %add16 = add i64 %add, 1
  %conv = trunc i64 %add16 to i32
  %and = and i32 %conv, 255
  %shl = shl i32 %and, 24
  %call17 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %add18 = add i64 28, %call17
  %add19 = add i64 %add18, 1
  %conv20 = trunc i64 %add19 to i32
  %and21 = and i32 %conv20, 65280
  %shl22 = shl i32 %and21, 8
  %or = or i32 %shl, %shl22
  %call23 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %add24 = add i64 28, %call23
  %add25 = add i64 %add24, 1
  %conv26 = trunc i64 %add25 to i32
  %and27 = and i32 %conv26, 16711680
  %shr = lshr i32 %and27, 8
  %or28 = or i32 %or, %shr
  %call29 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %add30 = add i64 28, %call29
  %add31 = add i64 %add30, 1
  %conv32 = trunc i64 %add31 to i32
  %and33 = and i32 %conv32, -16777216
  %shr34 = lshr i32 %and33, 24
  %or35 = or i32 %or28, %shr34
  %header_size = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  store i32 %or35, i32* %header_size, align 4
  %version = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  store i32 33554432, i32* %version, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %and36 = and i32 %10, 255
  %shl37 = shl i32 %and36, 24
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 1
  %12 = load i32, i32* %width38, align 4
  %and39 = and i32 %12, 65280
  %shl40 = shl i32 %and39, 8
  %or41 = or i32 %shl37, %shl40
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width42, align 4
  %and43 = and i32 %14, 16711680
  %shr44 = lshr i32 %and43, 8
  %or45 = or i32 %or41, %shr44
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width46, align 4
  %and47 = and i32 %16, -16777216
  %shr48 = lshr i32 %and47, 24
  %or49 = or i32 %or45, %shr48
  %width50 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  store i32 %or49, i32* %width50, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 2
  %18 = load i32, i32* %height, align 4
  %and51 = and i32 %18, 255
  %shl52 = shl i32 %and51, 24
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height53 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height53, align 4
  %and54 = and i32 %20, 65280
  %shl55 = shl i32 %and54, 8
  %or56 = or i32 %shl52, %shl55
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 2
  %22 = load i32, i32* %height57, align 4
  %and58 = and i32 %22, 16711680
  %shr59 = lshr i32 %and58, 8
  %or60 = or i32 %or56, %shr59
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 2
  %24 = load i32, i32* %height61, align 4
  %and62 = and i32 %24, -16777216
  %shr63 = lshr i32 %and62, 24
  %or64 = or i32 %or60, %shr63
  %height65 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  store i32 %or64, i32* %height65, align 4
  %25 = load i32, i32* %bpp, align 4
  %and66 = and i32 %25, 255
  %shl67 = shl i32 %and66, 24
  %26 = load i32, i32* %bpp, align 4
  %and68 = and i32 %26, 65280
  %shl69 = shl i32 %and68, 8
  %or70 = or i32 %shl67, %shl69
  %27 = load i32, i32* %bpp, align 4
  %and71 = and i32 %27, 16711680
  %shr72 = lshr i32 %and71, 8
  %or73 = or i32 %or70, %shr72
  %28 = load i32, i32* %bpp, align 4
  %and74 = and i32 %28, -16777216
  %shr75 = lshr i32 %and74, 24
  %or76 = or i32 %or73, %shr75
  %bytes = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  store i32 %or76, i32* %bytes, align 4
  %magic_number = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  store i32 1347242311, i32* %magic_number, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 1), align 4
  %and77 = and i32 %29, 255
  %shl78 = shl i32 %and77, 24
  %30 = load i32, i32* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 1), align 4
  %and79 = and i32 %30, 65280
  %shl80 = shl i32 %and79, 8
  %or81 = or i32 %shl78, %shl80
  %31 = load i32, i32* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 1), align 4
  %and82 = and i32 %31, 16711680
  %shr83 = lshr i32 %and82, 8
  %or84 = or i32 %or81, %shr83
  %32 = load i32, i32* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 1), align 4
  %and85 = and i32 %32, -16777216
  %shr86 = lshr i32 %and85, 24
  %or87 = or i32 %or84, %shr86
  %spacing = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  store i32 %or87, i32* %spacing, align 4
  %33 = load i32, i32* %fd, align 4
  %34 = bitcast %struct._BrushHeader* %bh to i8*
  %call88 = call i64 @write(i32 %33, i8* %34, i64 28)
  %cmp89 = icmp ne i64 %call88, 28
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end
  %35 = load i32, i32* %fd, align 4
  %call92 = call i32 @close(i32 %35)
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end
  %36 = load i32, i32* %fd, align 4
  %call94 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %add95 = add i64 %call94, 1
  %call96 = call i64 @write(i32 %36, i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0), i64 %add95)
  %call97 = call i64 @strlen(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0)) #7
  %add98 = add i64 %call97, 1
  %cmp99 = icmp ne i64 %call96, %add98
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.93
  %37 = load i32, i32* %fd, align 4
  %call102 = call i32 @close(i32 %37)
  store i32 0, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.end.93
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width104 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load i32, i32* %width104, align 4
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height105 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 2
  %42 = load i32, i32* %height105, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %38, i32 0, i32 0, i32 %40, i32 %42, i32 0, i32 0)
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width106 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width106, align 4
  %45 = load i32, i32* %bpp, align 4
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp107 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %46, i32 0, i32 3
  %47 = load i32, i32* %bpp107, align 4
  %cmp108 = icmp ugt i32 %45, %47
  br i1 %cmp108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.103
  %48 = load i32, i32* %bpp, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.103
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp110 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 3
  %50 = load i32, i32* %bpp110, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %50, %cond.false ]
  %mul = mul i32 %44, %cond
  %conv111 = zext i32 %mul to i64
  %call112 = call noalias i8* @g_malloc_n(i64 %conv111, i64 1)
  store i8* %call112, i8** %buffer, align 8
  store i32 0, i32* %line, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.213, %cond.end
  %51 = load i32, i32* %line, align 4
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height113 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 2
  %53 = load i32, i32* %height113, align 4
  %cmp114 = icmp ult i32 %51, %53
  br i1 %cmp114, label %for.body, label %for.end.215

for.body:                                         ; preds = %for.cond
  %54 = load i8*, i8** %buffer, align 8
  %55 = load i32, i32* %line, align 4
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width116 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %56, i32 0, i32 1
  %57 = load i32, i32* %width116, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %54, i32 0, i32 %55, i32 %57)
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp117 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 3
  %59 = load i32, i32* %bpp117, align 4
  switch i32 %59, label %sw.epilog.196 [
    i32 1, label %sw.bb.118
    i32 2, label %sw.bb.128
    i32 3, label %sw.bb.159
  ]

sw.bb.118:                                        ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc, %sw.bb.118
  %60 = load i32, i32* %x, align 4
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width120 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 1
  %62 = load i32, i32* %width120, align 4
  %cmp121 = icmp ult i32 %60, %62
  br i1 %cmp121, label %for.body.123, label %for.end

for.body.123:                                     ; preds = %for.cond.119
  %63 = load i32, i32* %x, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %64, i64 %idxprom
  %65 = load i8, i8* %arrayidx, align 1
  %conv124 = zext i8 %65 to i32
  %sub = sub nsw i32 255, %conv124
  %conv125 = trunc i32 %sub to i8
  %66 = load i32, i32* %x, align 4
  %idxprom126 = sext i32 %66 to i64
  %67 = load i8*, i8** %buffer, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %67, i64 %idxprom126
  store i8 %conv125, i8* %arrayidx127, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.123
  %68 = load i32, i32* %x, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.119

for.end:                                          ; preds = %for.cond.119
  br label %sw.epilog.196

sw.bb.128:                                        ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.156, %sw.bb.128
  %69 = load i32, i32* %x, align 4
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width130 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %70, i32 0, i32 1
  %71 = load i32, i32* %width130, align 4
  %cmp131 = icmp ult i32 %69, %71
  br i1 %cmp131, label %for.body.133, label %for.end.158

for.body.133:                                     ; preds = %for.cond.129
  %72 = load i32, i32* %x, align 4
  %mul134 = mul nsw i32 2, %72
  %idxprom135 = sext i32 %mul134 to i64
  %73 = load i8*, i8** %buffer, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %73, i64 %idxprom135
  %74 = load i8, i8* %arrayidx136, align 1
  %75 = load i32, i32* %x, align 4
  %mul137 = mul nsw i32 2, %75
  %idxprom138 = sext i32 %mul137 to i64
  %76 = load i8*, i8** %buffer, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %76, i64 %idxprom138
  %77 = load i8, i8* %arrayidx139, align 1
  %78 = load i32, i32* %x, align 4
  %mul140 = mul nsw i32 2, %78
  %idxprom141 = sext i32 %mul140 to i64
  %79 = load i8*, i8** %buffer, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %79, i64 %idxprom141
  %80 = load i8, i8* %arrayidx142, align 1
  %81 = load i32, i32* %x, align 4
  %mul143 = mul nsw i32 2, %81
  %add144 = add nsw i32 %mul143, 1
  %idxprom145 = sext i32 %add144 to i64
  %82 = load i8*, i8** %buffer, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %82, i64 %idxprom145
  %83 = load i8, i8* %arrayidx146, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %gray, i8 zeroext %74, i8 zeroext %77, i8 zeroext %80, i8 zeroext %83)
  call void @gimp_rgb_composite(%struct._GimpRGB* %gray, %struct._GimpRGB* %white, i32 2)
  %84 = load i32, i32* %x, align 4
  %idxprom147 = sext i32 %84 to i64
  %85 = load i8*, i8** %buffer, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %85, i64 %idxprom147
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %gray, i8* %arrayidx148, i8* null, i8* null, i8* null)
  %86 = load i32, i32* %x, align 4
  %idxprom149 = sext i32 %86 to i64
  %87 = load i8*, i8** %buffer, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %87, i64 %idxprom149
  %88 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %88 to i32
  %sub152 = sub nsw i32 255, %conv151
  %conv153 = trunc i32 %sub152 to i8
  %89 = load i32, i32* %x, align 4
  %idxprom154 = sext i32 %89 to i64
  %90 = load i8*, i8** %buffer, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %90, i64 %idxprom154
  store i8 %conv153, i8* %arrayidx155, align 1
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.133
  %91 = load i32, i32* %x, align 4
  %inc157 = add nsw i32 %91, 1
  store i32 %inc157, i32* %x, align 4
  br label %for.cond.129

for.end.158:                                      ; preds = %for.cond.129
  br label %sw.epilog.196

sw.bb.159:                                        ; preds = %for.body
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width160 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %92, i32 0, i32 1
  %93 = load i32, i32* %width160, align 4
  %sub161 = sub i32 %93, 1
  store i32 %sub161, i32* %x, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.194, %sw.bb.159
  %94 = load i32, i32* %x, align 4
  %cmp163 = icmp sge i32 %94, 0
  br i1 %cmp163, label %for.body.165, label %for.end.195

for.body.165:                                     ; preds = %for.cond.162
  %95 = load i32, i32* %x, align 4
  %mul166 = mul nsw i32 %95, 4
  %add167 = add nsw i32 %mul166, 3
  %idxprom168 = sext i32 %add167 to i64
  %96 = load i8*, i8** %buffer, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %96, i64 %idxprom168
  store i8 -1, i8* %arrayidx169, align 1
  %97 = load i32, i32* %x, align 4
  %mul170 = mul nsw i32 %97, 3
  %add171 = add nsw i32 %mul170, 2
  %idxprom172 = sext i32 %add171 to i64
  %98 = load i8*, i8** %buffer, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %98, i64 %idxprom172
  %99 = load i8, i8* %arrayidx173, align 1
  %100 = load i32, i32* %x, align 4
  %mul174 = mul nsw i32 %100, 4
  %add175 = add nsw i32 %mul174, 2
  %idxprom176 = sext i32 %add175 to i64
  %101 = load i8*, i8** %buffer, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %101, i64 %idxprom176
  store i8 %99, i8* %arrayidx177, align 1
  %102 = load i32, i32* %x, align 4
  %mul178 = mul nsw i32 %102, 3
  %add179 = add nsw i32 %mul178, 1
  %idxprom180 = sext i32 %add179 to i64
  %103 = load i8*, i8** %buffer, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %103, i64 %idxprom180
  %104 = load i8, i8* %arrayidx181, align 1
  %105 = load i32, i32* %x, align 4
  %mul182 = mul nsw i32 %105, 4
  %add183 = add nsw i32 %mul182, 1
  %idxprom184 = sext i32 %add183 to i64
  %106 = load i8*, i8** %buffer, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %106, i64 %idxprom184
  store i8 %104, i8* %arrayidx185, align 1
  %107 = load i32, i32* %x, align 4
  %mul186 = mul nsw i32 %107, 3
  %add187 = add nsw i32 %mul186, 0
  %idxprom188 = sext i32 %add187 to i64
  %108 = load i8*, i8** %buffer, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %108, i64 %idxprom188
  %109 = load i8, i8* %arrayidx189, align 1
  %110 = load i32, i32* %x, align 4
  %mul190 = mul nsw i32 %110, 4
  %add191 = add nsw i32 %mul190, 0
  %idxprom192 = sext i32 %add191 to i64
  %111 = load i8*, i8** %buffer, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %111, i64 %idxprom192
  store i8 %109, i8* %arrayidx193, align 1
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.165
  %112 = load i32, i32* %x, align 4
  %dec = add nsw i32 %112, -1
  store i32 %dec, i32* %x, align 4
  br label %for.cond.162

for.end.195:                                      ; preds = %for.cond.162
  br label %sw.epilog.196

sw.epilog.196:                                    ; preds = %for.body, %for.end.195, %for.end.158, %for.end
  %113 = load i32, i32* %fd, align 4
  %114 = load i8*, i8** %buffer, align 8
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width197 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %115, i32 0, i32 1
  %116 = load i32, i32* %width197, align 4
  %117 = load i32, i32* %bpp, align 4
  %mul198 = mul i32 %116, %117
  %conv199 = zext i32 %mul198 to i64
  %call200 = call i64 @write(i32 %113, i8* %114, i64 %conv199)
  %118 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width201 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %118, i32 0, i32 1
  %119 = load i32, i32* %width201, align 4
  %120 = load i32, i32* %bpp, align 4
  %mul202 = mul i32 %119, %120
  %conv203 = zext i32 %mul202 to i64
  %cmp204 = icmp ne i64 %call200, %conv203
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %sw.epilog.196
  %121 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %121)
  %122 = load i32, i32* %fd, align 4
  %call207 = call i32 @close(i32 %122)
  store i32 0, i32* %retval
  br label %return

if.end.208:                                       ; preds = %sw.epilog.196
  %123 = load i32, i32* %line, align 4
  %conv209 = sitofp i32 %123 to double
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height210 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %124, i32 0, i32 2
  %125 = load i32, i32* %height210, align 4
  %conv211 = uitofp i32 %125 to double
  %div = fdiv double %conv209, %conv211
  %call212 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.208
  %126 = load i32, i32* %line, align 4
  %inc214 = add nsw i32 %126, 1
  store i32 %inc214, i32* %line, align 4
  br label %for.cond

for.end.215:                                      ; preds = %for.cond
  %127 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %127)
  %128 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %128)
  %129 = load i32, i32* %fd, align 4
  %call216 = call i32 @close(i32 %129)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.215, %if.then.206, %if.then.101, %if.then.91, %if.then, %sw.default
  %130 = load i32, i32* %retval
  ret i32 %130
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare i32 @gimp_image_detach_parasite(i32, i8*) #1

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

declare i64 @read(i32, i8*, i64) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

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

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_malloc(i64) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_invert(i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i32 0), i8* %call2, i64 256) #5
  store i8 0, i8* getelementptr inbounds (%struct.BrushInfo, %struct.BrushInfo* @info, i32 0, i32 0, i64 255), align 1
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare i32 @gimp_drawable_type(i32) #1

declare i64 @write(i32, i8*, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_rgb_composite(%struct._GimpRGB*, %struct._GimpRGB*, i32) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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
