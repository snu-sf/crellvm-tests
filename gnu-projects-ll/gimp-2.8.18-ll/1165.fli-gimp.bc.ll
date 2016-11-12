; ModuleID = './plug-ins/file-fli/fli-gimp.bc'
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._fli_header = type { i64, i16, i16, i16, i16, i16, i16, i64, i64, i64, i64, i16, i16, i64, i64 }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@.str = private unnamed_addr constant [14 x i8] c"file-fli-load\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"load FLI-movies\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"This is an experimantal plug-in to handle FLI movies\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Jens Ch. Restemeier\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"AutoDesk FLIC animation\00", align 1
@load_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0) }], align 16
@load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"image/x-flic\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fli,flc\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"file-fli-save\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"save FLI-movies\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"INDEXED,GRAY\00", align 1
@save_args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0) }], align 16
@.str.12 = private unnamed_addr constant [14 x i8] c"file-fli-info\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Get information about a Fli movie\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"This is a experimantal plug-in to handle FLI movies\00", align 1
@info_args = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0) }], align 16
@info_return_vals = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0) }], align 16
@.str.15 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"from-frame\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Load beginning from this frame\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"to-frame\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"End loading with this frame\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Input drawable (unused)\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"The name of the file to save\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Save beginning from this frame\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"End saving with this frame\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"The name of the file to get info\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Width of one frame\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Height of one frame\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Number of Frames\00", align 1
@run.values = internal global [5 x %struct._GimpParam] zeroinitializer, align 16
@.str.40 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@to_frame = internal global i32 0, align 4
@from_frame = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"file-fli\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"FLI\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Frame (%i)\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"GFLI 1.3 - Load framestack\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"gimp-file-fli\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"frame-range\04From:\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"frame-range\04To:\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"Sorry, I can save only INDEXED and GRAY images.\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"GFLI 1.3\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 1, i32 1, i32 3, %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @info_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @info_return_vals, i32 0, i32 0))
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
  %pc = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %orig_image_ID = alloca i32, align 4
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %frames = alloca i32, align 4
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.80

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.62
    i32 2, label %sw.bb.79
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load i32, i32* %nparams.addr, align 4
  %conv = sext i32 %6 to i64
  %cmp5 = icmp ult i64 %conv, 3
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %7 = load i32, i32* %nparams.addr, align 4
  %conv7 = sext i32 %7 to i64
  %cmp8 = icmp ult i64 5, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %sw.bb
  store i32 1, i32* %status, align 4
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %pc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %pc, align 4
  %conv11 = sext i32 %8 to i64
  %cmp12 = icmp ult i64 %conv11, 3
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %pc, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @load_args, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx14, i32 0, i32 0
  %10 = load i32, i32* %type, align 4
  %11 = load i32, i32* %pc, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 %idxprom15
  %type17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 0
  %13 = load i32, i32* %type17, align 4
  %cmp18 = icmp ne i32 %10, %13
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body
  store i32 1, i32* %status, align 4
  br label %for.end

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %14 = load i32, i32* %pc, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %pc, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.20, %for.cond
  store i32 3, i32* %pc, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %for.end
  %15 = load i32, i32* %pc, align 4
  %16 = load i32, i32* %nparams.addr, align 4
  %cmp23 = icmp slt i32 %15, %16
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.22
  %17 = load i32, i32* %pc, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @load_args, i32 0, i64 %idxprom26
  %type28 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx27, i32 0, i32 0
  %18 = load i32, i32* %type28, align 4
  %19 = load i32, i32* %pc, align 4
  %idxprom29 = sext i32 %19 to i64
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 %idxprom29
  %type31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 0
  %21 = load i32, i32* %type31, align 4
  %cmp32 = icmp ne i32 %18, %21
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.25
  store i32 1, i32* %status, align 4
  br label %for.end.38

if.end.35:                                        ; preds = %for.body.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %22 = load i32, i32* %pc, align 4
  %inc37 = add nsw i32 %22, 1
  store i32 %inc37, i32* %pc, align 4
  br label %for.cond.22

for.end.38:                                       ; preds = %if.then.34, %for.cond.22
  %23 = load i32, i32* %nparams.addr, align 4
  %conv39 = sext i32 %23 to i64
  %cmp40 = icmp ult i64 %conv39, 4
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.38
  br label %cond.end

cond.false:                                       ; preds = %for.end.38
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 3
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_int3244 = bitcast %union._GimpParamData* %data43 to i32*
  %25 = load i32, i32* %d_int3244, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* @to_frame, align 4
  %26 = load i32, i32* %nparams.addr, align 4
  %conv45 = sext i32 %26 to i64
  %cmp46 = icmp ult i64 %conv45, 5
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.end
  br label %cond.end.53

cond.false.49:                                    ; preds = %cond.end
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 4
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_int3252 = bitcast %union._GimpParamData* %data51 to i32*
  %28 = load i32, i32* %d_int3252, align 4
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.49, %cond.true.48
  %cond54 = phi i32 [ -1, %cond.true.48 ], [ %28, %cond.false.49 ]
  store i32 %cond54, i32* @from_frame, align 4
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 1
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data56 to i8**
  %30 = load i8*, i8** %d_string, align 8
  %31 = load i32, i32* @from_frame, align 4
  %32 = load i32, i32* @to_frame, align 4
  %call57 = call i32 @load_image(i8* %30, i32 %31, i32 %32, %struct._GError** %error)
  store i32 %call57, i32* %image_ID, align 4
  %33 = load i32, i32* %image_ID, align 4
  %cmp58 = icmp ne i32 %33, -1
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %cond.end.53
  %34 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %34, align 4
  store i32 13, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %35 = load i32, i32* %image_ID, align 4
  store i32 %35, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.61

if.else:                                          ; preds = %cond.end.53
  store i32 0, i32* %status, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.60
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.then
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 1
  %data64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 1
  %d_string65 = bitcast %union._GimpParamData* %data64 to i8**
  %37 = load i8*, i8** %d_string65, align 8
  %call66 = call i32 @load_dialog(i8* %37)
  %tobool = icmp ne i32 %call66, 0
  br i1 %tobool, label %if.then.67, label %if.else.77

if.then.67:                                       ; preds = %sw.bb.62
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 1
  %data69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx68, i32 0, i32 1
  %d_string70 = bitcast %union._GimpParamData* %data69 to i8**
  %39 = load i8*, i8** %d_string70, align 8
  %40 = load i32, i32* @from_frame, align 4
  %41 = load i32, i32* @to_frame, align 4
  %call71 = call i32 @load_image(i8* %39, i32 %40, i32 %41, %struct._GError** %error)
  store i32 %call71, i32* %image_ID, align 4
  %42 = load i32, i32* %image_ID, align 4
  %cmp72 = icmp ne i32 %42, -1
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.then.67
  %43 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %43, align 4
  store i32 13, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %44 = load i32, i32* %image_ID, align 4
  store i32 %44, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.76

if.else.75:                                       ; preds = %if.then.67
  store i32 0, i32* %status, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.78

if.else.77:                                       ; preds = %sw.bb.62
  store i32 4, i32* %status, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.end.76
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.then
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.79, %if.end.78, %if.end.61, %if.then.10
  br label %if.end.201

if.else.80:                                       ; preds = %do.end
  %45 = load i8*, i8** %name.addr, align 8
  %call81 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.else.154

if.then.84:                                       ; preds = %if.else.80
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 1
  %data86 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx85, i32 0, i32 1
  %d_int3287 = bitcast %union._GimpParamData* %data86 to i32*
  %47 = load i32, i32* %d_int3287, align 4
  store i32 %47, i32* %orig_image_ID, align 4
  store i32 %47, i32* %image_ID, align 4
  %48 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 2
  %data89 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx88, i32 0, i32 1
  %d_int3290 = bitcast %union._GimpParamData* %data89 to i32*
  %49 = load i32, i32* %d_int3290, align 4
  store i32 %49, i32* %drawable_ID, align 4
  %50 = load i32, i32* %run_mode, align 4
  switch i32 %50, label %sw.epilog.148 [
    i32 1, label %sw.bb.91
    i32 0, label %sw.bb.128
    i32 2, label %sw.bb.128
  ]

sw.bb.91:                                         ; preds = %if.then.84
  %51 = load i32, i32* %nparams.addr, align 4
  %conv92 = sext i32 %51 to i64
  %cmp93 = icmp ne i64 %conv92, 7
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %sw.bb.91
  store i32 1, i32* %status, align 4
  br label %sw.epilog.148

if.end.96:                                        ; preds = %sw.bb.91
  store i32 0, i32* %pc, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.112, %if.end.96
  %52 = load i32, i32* %pc, align 4
  %conv98 = sext i32 %52 to i64
  %cmp99 = icmp ult i64 %conv98, 7
  br i1 %cmp99, label %for.body.101, label %for.end.114

for.body.101:                                     ; preds = %for.cond.97
  %53 = load i32, i32* %pc, align 4
  %idxprom102 = sext i32 %53 to i64
  %arrayidx103 = getelementptr inbounds [7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @save_args, i32 0, i64 %idxprom102
  %type104 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx103, i32 0, i32 0
  %54 = load i32, i32* %type104, align 4
  %55 = load i32, i32* %pc, align 4
  %idxprom105 = sext i32 %55 to i64
  %56 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %56, i64 %idxprom105
  %type107 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx106, i32 0, i32 0
  %57 = load i32, i32* %type107, align 4
  %cmp108 = icmp ne i32 %54, %57
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %for.body.101
  store i32 1, i32* %status, align 4
  br label %for.end.114

if.end.111:                                       ; preds = %for.body.101
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %58 = load i32, i32* %pc, align 4
  %inc113 = add nsw i32 %58, 1
  store i32 %inc113, i32* %pc, align 4
  br label %for.cond.97

for.end.114:                                      ; preds = %if.then.110, %for.cond.97
  %59 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %59, i64 3
  %data116 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx115, i32 0, i32 1
  %d_string117 = bitcast %union._GimpParamData* %data116 to i8**
  %60 = load i8*, i8** %d_string117, align 8
  %61 = load i32, i32* %image_ID, align 4
  %62 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %62, i64 5
  %data119 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx118, i32 0, i32 1
  %d_int32120 = bitcast %union._GimpParamData* %data119 to i32*
  %63 = load i32, i32* %d_int32120, align 4
  %64 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx121 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %64, i64 6
  %data122 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx121, i32 0, i32 1
  %d_int32123 = bitcast %union._GimpParamData* %data122 to i32*
  %65 = load i32, i32* %d_int32123, align 4
  %call124 = call i32 @save_image(i8* %60, i32 %61, i32 %63, i32 %65, %struct._GError** %error)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %for.end.114
  store i32 0, i32* %status, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %for.end.114
  br label %sw.epilog.148

sw.bb.128:                                        ; preds = %if.then.84, %if.then.84
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 0)
  %call129 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 54)
  store i32 %call129, i32* %export, align 4
  %66 = load i32, i32* %export, align 4
  %cmp130 = icmp eq i32 %66, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %sw.bb.128
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.133:                                       ; preds = %sw.bb.128
  %67 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %67, i64 1
  %data135 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx134, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data135 to i32*
  %68 = load i32, i32* %d_image, align 4
  %call136 = call i32 @save_dialog(i32 %68)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then.138, label %if.else.146

if.then.138:                                      ; preds = %if.end.133
  %69 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx139 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %69, i64 3
  %data140 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx139, i32 0, i32 1
  %d_string141 = bitcast %union._GimpParamData* %data140 to i8**
  %70 = load i8*, i8** %d_string141, align 8
  %71 = load i32, i32* %image_ID, align 4
  %72 = load i32, i32* @from_frame, align 4
  %73 = load i32, i32* @to_frame, align 4
  %call142 = call i32 @save_image(i8* %70, i32 %71, i32 %72, i32 %73, %struct._GError** %error)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %if.then.138
  store i32 0, i32* %status, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.then.138
  br label %if.end.147

if.else.146:                                      ; preds = %if.end.133
  store i32 4, i32* %status, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.146, %if.end.145
  br label %sw.epilog.148

sw.epilog.148:                                    ; preds = %if.then.84, %if.end.147, %if.end.127, %if.then.95
  %74 = load i32, i32* %export, align 4
  %cmp149 = icmp eq i32 %74, 2
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %sw.epilog.148
  %75 = load i32, i32* %image_ID, align 4
  %call152 = call i32 @gimp_image_delete(i32 %75)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %sw.epilog.148
  br label %if.end.200

if.else.154:                                      ; preds = %if.else.80
  %76 = load i8*, i8** %name.addr, align 8
  %call155 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.else.198

if.then.158:                                      ; preds = %if.else.154
  %77 = load i32, i32* %nparams.addr, align 4
  %conv159 = sext i32 %77 to i64
  %cmp160 = icmp ne i64 %conv159, 1
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.then.158
  store i32 1, i32* %status, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %if.then.158
  %78 = load i32, i32* %status, align 4
  %cmp164 = icmp eq i32 %78, 3
  br i1 %cmp164, label %if.then.166, label %if.end.185

if.then.166:                                      ; preds = %if.end.163
  store i32 0, i32* %pc, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.182, %if.then.166
  %79 = load i32, i32* %pc, align 4
  %conv168 = sext i32 %79 to i64
  %cmp169 = icmp ult i64 %conv168, 7
  br i1 %cmp169, label %for.body.171, label %for.end.184

for.body.171:                                     ; preds = %for.cond.167
  %80 = load i32, i32* %pc, align 4
  %idxprom172 = sext i32 %80 to i64
  %arrayidx173 = getelementptr inbounds [1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @info_args, i32 0, i64 %idxprom172
  %type174 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx173, i32 0, i32 0
  %81 = load i32, i32* %type174, align 4
  %82 = load i32, i32* %pc, align 4
  %idxprom175 = sext i32 %82 to i64
  %83 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx176 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %83, i64 %idxprom175
  %type177 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx176, i32 0, i32 0
  %84 = load i32, i32* %type177, align 4
  %cmp178 = icmp ne i32 %81, %84
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.body.171
  store i32 1, i32* %status, align 4
  br label %for.end.184

if.end.181:                                       ; preds = %for.body.171
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %85 = load i32, i32* %pc, align 4
  %inc183 = add nsw i32 %85, 1
  store i32 %inc183, i32* %pc, align 4
  br label %for.cond.167

for.end.184:                                      ; preds = %if.then.180, %for.cond.167
  br label %if.end.185

if.end.185:                                       ; preds = %for.end.184, %if.end.163
  %86 = load i32, i32* %status, align 4
  %cmp186 = icmp eq i32 %86, 3
  br i1 %cmp186, label %if.then.188, label %if.end.197

if.then.188:                                      ; preds = %if.end.185
  %87 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx189 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %87, i64 0
  %data190 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx189, i32 0, i32 1
  %d_string191 = bitcast %union._GimpParamData* %data190 to i8**
  %88 = load i8*, i8** %d_string191, align 8
  %call192 = call i32 @get_info(i8* %88, i32* %width, i32* %height, i32* %frames, %struct._GError** %error)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %if.then.188
  %89 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 4, i32* %89, align 4
  store i32 0, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %90 = load i32, i32* %width, align 4
  store i32 %90, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %91 = load i32, i32* %height, align 4
  store i32 %91, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 0), align 4
  %92 = load i32, i32* %frames, align 4
  store i32 %92, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 1) to i32*), align 4
  br label %if.end.196

if.else.195:                                      ; preds = %if.then.188
  store i32 0, i32* %status, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.195, %if.then.194
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.185
  br label %if.end.199

if.else.198:                                      ; preds = %if.else.154
  store i32 1, i32* %status, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.198, %if.end.197
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.153
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %sw.epilog
  %93 = load i32, i32* %status, align 4
  %cmp202 = icmp ne i32 %93, 3
  br i1 %cmp202, label %land.lhs.true, label %if.end.206

land.lhs.true:                                    ; preds = %if.end.201
  %94 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool204 = icmp ne %struct._GError* %94, null
  br i1 %tobool204, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %land.lhs.true
  %95 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %95, align 4
  store i32 4, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %96 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %96, i32 0, i32 2
  %97 = load i8*, i8** %message, align 8
  store i8* %97, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %land.lhs.true, %if.end.201
  %98 = load i32, i32* %status, align 4
  store i32 %98, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.206, %if.then.132
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
define internal i32 @load_image(i8* %filename, i32 %from_frame, i32 %to_frame, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %from_frame.addr = alloca i32, align 4
  %to_frame.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_id = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %fb = alloca i8*, align 8
  %ofb = alloca i8*, align 8
  %fb_x = alloca i8*, align 8
  %cm = alloca [768 x i8], align 16
  %ocm = alloca [768 x i8], align 16
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %fli_header = alloca %struct._fli_header, align 8
  %cnt = alloca i32, align 4
  %name_buf = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %from_frame, i32* %from_frame.addr, align 4
  store i32 %to_frame, i32* %to_frame.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @fli_read_header(%struct._IO_FILE* %7, %struct._fli_header* %fli_header)
  %magic = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 1
  %8 = load i16, i16* %magic, align 2
  %conv = zext i16 %8 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call13 = call i32 @fseek(%struct._IO_FILE* %9, i64 128, i32 0)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else
  %10 = load i32, i32* %from_frame.addr, align 4
  %cmp15 = icmp eq i32 %10, -1
  br i1 %cmp15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.14
  %11 = load i32, i32* %to_frame.addr, align 4
  %cmp17 = icmp eq i32 %11, -1
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  store i32 1, i32* %from_frame.addr, align 4
  %frames = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 2
  %12 = load i16, i16* %frames, align 2
  %conv20 = zext i16 %12 to i32
  store i32 %conv20, i32* %to_frame.addr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true, %if.end.14
  %13 = load i32, i32* %to_frame.addr, align 4
  %14 = load i32, i32* %from_frame.addr, align 4
  %cmp22 = icmp slt i32 %13, %14
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %frames25 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 2
  %15 = load i16, i16* %frames25, align 2
  %conv26 = zext i16 %15 to i32
  store i32 %conv26, i32* %to_frame.addr, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.21
  %16 = load i32, i32* %from_frame.addr, align 4
  %cmp28 = icmp slt i32 %16, 1
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store i32 1, i32* %from_frame.addr, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %17 = load i32, i32* %to_frame.addr, align 4
  %cmp32 = icmp slt i32 %17, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %18 = load i32, i32* %from_frame.addr, align 4
  %frames36 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 2
  %19 = load i16, i16* %frames36, align 2
  %conv37 = zext i16 %19 to i32
  %cmp38 = icmp sge i32 %18, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.35
  %20 = load i32, i32* %to_frame.addr, align 4
  %frames42 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 2
  %21 = load i16, i16* %frames42, align 2
  %conv43 = zext i16 %21 to i32
  %cmp44 = icmp sgt i32 %20, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.41
  %frames47 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 2
  %22 = load i16, i16* %frames47, align 2
  %conv48 = zext i16 %22 to i32
  store i32 %conv48, i32* %to_frame.addr, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.41
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %23 = load i16, i16* %width, align 2
  %conv50 = zext i16 %23 to i32
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %24 = load i16, i16* %height, align 2
  %conv51 = zext i16 %24 to i32
  %call52 = call i32 @gimp_image_new(i32 %conv50, i32 %conv51, i32 2)
  store i32 %call52, i32* %image_id, align 4
  %25 = load i32, i32* %image_id, align 4
  %26 = load i8*, i8** %filename.addr, align 8
  %call53 = call i32 @gimp_image_set_filename(i32 %25, i8* %26)
  %width54 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %27 = load i16, i16* %width54, align 2
  %conv55 = zext i16 %27 to i32
  %height56 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %28 = load i16, i16* %height56, align 2
  %conv57 = zext i16 %28 to i32
  %mul = mul nsw i32 %conv55, %conv57
  %conv58 = sext i32 %mul to i64
  %call59 = call noalias i8* @g_malloc(i64 %conv58)
  store i8* %call59, i8** %fb, align 8
  %width60 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %29 = load i16, i16* %width60, align 2
  %conv61 = zext i16 %29 to i32
  %height62 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %30 = load i16, i16* %height62, align 2
  %conv63 = zext i16 %30 to i32
  %mul64 = mul nsw i32 %conv61, %conv63
  %conv65 = sext i32 %mul64 to i64
  %call66 = call noalias i8* @g_malloc(i64 %conv65)
  store i8* %call66, i8** %ofb, align 8
  store i32 1, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %31 = load i32, i32* %cnt, align 4
  %32 = load i32, i32* %from_frame.addr, align 4
  %cmp67 = icmp slt i32 %31, %32
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %34 = load i8*, i8** %ofb, align 8
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %ocm, i32 0, i32 0
  %35 = load i8*, i8** %fb, align 8
  %arraydecay69 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i32 0
  call void @fli_read_frame(%struct._IO_FILE* %33, %struct._fli_header* %fli_header, i8* %34, i8* %arraydecay, i8* %35, i8* %arraydecay69)
  %36 = bitcast [768 x i8]* %ocm to i8*
  %37 = bitcast [768 x i8]* %cm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 768, i32 16, i1 false)
  %38 = load i8*, i8** %fb, align 8
  store i8* %38, i8** %fb_x, align 8
  %39 = load i8*, i8** %ofb, align 8
  store i8* %39, i8** %fb, align 8
  %40 = load i8*, i8** %fb_x, align 8
  store i8* %40, i8** %ofb, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %from_frame.addr, align 4
  store i32 %42, i32* %cnt, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.105, %for.end
  %43 = load i32, i32* %cnt, align 4
  %44 = load i32, i32* %to_frame.addr, align 4
  %cmp71 = icmp sle i32 %43, %44
  br i1 %cmp71, label %for.body.73, label %for.end.107

for.body.73:                                      ; preds = %for.cond.70
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #5
  %45 = load i32, i32* %cnt, align 4
  %call75 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call74, i32 %45)
  store i8* %call75, i8** %name_buf, align 8
  %46 = load i32, i32* %image_id, align 4
  %47 = load i8*, i8** %name_buf, align 8
  %width76 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %48 = load i16, i16* %width76, align 2
  %conv77 = zext i16 %48 to i32
  %height78 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %49 = load i16, i16* %height78, align 2
  %conv79 = zext i16 %49 to i32
  %call80 = call i32 @gimp_layer_new(i32 %46, i8* %47, i32 %conv77, i32 %conv79, i32 4, double 1.000000e+02, i32 0)
  store i32 %call80, i32* %layer_ID, align 4
  %50 = load i8*, i8** %name_buf, align 8
  call void @g_free(i8* %50)
  %51 = load i32, i32* %layer_ID, align 4
  %call81 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %51)
  store %struct._GimpDrawable* %call81, %struct._GimpDrawable** %drawable, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %53 = load i8*, i8** %ofb, align 8
  %arraydecay82 = getelementptr inbounds [768 x i8], [768 x i8]* %ocm, i32 0, i32 0
  %54 = load i8*, i8** %fb, align 8
  %arraydecay83 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i32 0
  call void @fli_read_frame(%struct._IO_FILE* %52, %struct._fli_header* %fli_header, i8* %53, i8* %arraydecay82, i8* %54, i8* %arraydecay83)
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width84 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %56 = load i16, i16* %width84, align 2
  %conv85 = zext i16 %56 to i32
  %height86 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %57 = load i16, i16* %height86, align 2
  %conv87 = zext i16 %57 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %55, i32 0, i32 0, i32 %conv85, i32 %conv87, i32 1, i32 0)
  %58 = load i8*, i8** %fb, align 8
  %width88 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %59 = load i16, i16* %width88, align 2
  %conv89 = zext i16 %59 to i32
  %height90 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %60 = load i16, i16* %height90, align 2
  %conv91 = zext i16 %60 to i32
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %58, i32 0, i32 0, i32 %conv89, i32 %conv91)
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %61)
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %62)
  %63 = load i32, i32* %cnt, align 4
  %cmp92 = icmp sgt i32 %63, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %for.body.73
  %64 = load i32, i32* %layer_ID, align 4
  %call95 = call i32 @gimp_layer_add_alpha(i32 %64)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %for.body.73
  %65 = load i32, i32* %image_id, align 4
  %66 = load i32, i32* %layer_ID, align 4
  %call97 = call i32 @gimp_image_insert_layer(i32 %65, i32 %66, i32 -1, i32 0)
  %67 = load i32, i32* %cnt, align 4
  %68 = load i32, i32* %to_frame.addr, align 4
  %cmp98 = icmp slt i32 %67, %68
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.96
  %69 = bitcast [768 x i8]* %ocm to i8*
  %70 = bitcast [768 x i8]* %cm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 768, i32 16, i1 false)
  %71 = load i8*, i8** %fb, align 8
  store i8* %71, i8** %fb_x, align 8
  %72 = load i8*, i8** %ofb, align 8
  store i8* %72, i8** %fb, align 8
  %73 = load i8*, i8** %fb_x, align 8
  store i8* %73, i8** %ofb, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.96
  %74 = load i32, i32* %cnt, align 4
  %conv102 = sitofp i32 %74 to double
  %75 = load i32, i32* %to_frame.addr, align 4
  %76 = load i32, i32* %from_frame.addr, align 4
  %sub = sub nsw i32 %75, %76
  %conv103 = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv103
  %add = fadd double %conv102, %div
  %call104 = call i32 @gimp_progress_update(double %add)
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.101
  %77 = load i32, i32* %cnt, align 4
  %inc106 = add nsw i32 %77, 1
  store i32 %inc106, i32* %cnt, align 4
  br label %for.cond.70

for.end.107:                                      ; preds = %for.cond.70
  %call108 = call i32 @gimp_progress_update(double 1.000000e+00)
  %78 = load i32, i32* %image_id, align 4
  %arraydecay109 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i32 0
  %call110 = call i32 @gimp_image_set_colormap(i32 %78, i8* %arraydecay109, i32 256)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call111 = call i32 @fclose(%struct._IO_FILE* %79)
  %80 = load i8*, i8** %fb, align 8
  call void @g_free(i8* %80)
  %81 = load i8*, i8** %ofb, align 8
  call void @g_free(i8* %81)
  %82 = load i32, i32* %image_id, align 4
  store i32 %82, i32* %retval
  br label %return

return:                                           ; preds = %for.end.107, %if.then.40, %if.then.34, %if.then.12, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @load_dialog(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %nframes = alloca i32, align 4
  %run = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @get_info(i8* %0, i32* %width, i32* %height, i32* %nframes, %struct._GError** null)
  store i32 1, i32* @from_frame, align 4
  %1 = load i32, i32* %nframes, align 4
  store i32 %1, i32* @to_frame, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %4, i32 -5, i32 -6, i32 -1)
  %call5 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %table, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %7, i32 12)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %13, i32 6)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %16)
  %17 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load i32, i32* @from_frame, align 4
  %conv = sitofp i32 %21 to double
  %22 = load i32, i32* %nframes, align 4
  %conv17 = sitofp i32 %22 to double
  %call18 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 1.000000e+00, double %conv17, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %spinbutton, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i64 12)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call22 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %25, i32 0, i32 0, i8* %call21, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %26, i32 1, i32 1)
  %27 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %28 = bitcast %struct._GtkObject* %27 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* @from_frame to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %29 = load i32, i32* @to_frame, align 4
  %conv24 = sitofp i32 %29 to double
  %30 = load i32, i32* %nframes, align 4
  %conv25 = sitofp i32 %30 to double
  %call26 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv24, double 1.000000e+00, double %conv25, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %spinbutton, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call27)
  %33 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %call29 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i64 12)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call30 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %33, i32 0, i32 1, i8* %call29, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %34, i32 1, i32 1)
  %35 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %36 = bitcast %struct._GtkObject* %35 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* @to_frame to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_dialog_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call32)
  %40 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpDialog*
  %call34 = call i32 @gimp_dialog_run(%struct._GimpDialog* %40)
  %cmp = icmp eq i32 %call34, -5
  %conv35 = zext i1 %cmp to i32
  store i32 %conv35, i32* %run, align 4
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %41)
  %42 = load i32, i32* %run, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_id, i32 %from_frame, i32 %to_frame, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_id.addr = alloca i32, align 4
  %from_frame.addr = alloca i32, align 4
  %to_frame.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %framelist = alloca i32*, align 8
  %nframes = alloca i32, align 4
  %colors = alloca i32, align 4
  %i = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %bg = alloca i8, align 1
  %red = alloca i8, align 1
  %green = alloca i8, align 1
  %blue = alloca i8, align 1
  %diff = alloca i32, align 4
  %sum = alloca i32, align 4
  %max = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %bytes = alloca i32, align 4
  %src_row = alloca i8*, align 8
  %fb = alloca i8*, align 8
  %ofb = alloca i8*, align 8
  %cm = alloca [768 x i8], align 16
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %background = alloca %struct._GimpRGB, align 8
  %fli_header = alloca %struct._fli_header, align 8
  %cnt = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %from_frame, i32* %from_frame.addr, align 4
  store i32 %to_frame, i32* %to_frame.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %image_id.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %nframes)
  store i32* %call, i32** %framelist, align 8
  %1 = load i32, i32* %from_frame.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %to_frame.addr, align 4
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %from_frame.addr, align 4
  %3 = load i32, i32* %nframes, align 4
  store i32 %3, i32* %to_frame.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* %to_frame.addr, align 4
  %5 = load i32, i32* %from_frame.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %nframes, align 4
  store i32 %6, i32* %to_frame.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %7 = load i32, i32* %from_frame.addr, align 4
  %cmp5 = icmp slt i32 %7, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %from_frame.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %8 = load i32, i32* %to_frame.addr, align 4
  %cmp8 = icmp slt i32 %8, 1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %9 = load i32, i32* %from_frame.addr, align 4
  %10 = load i32, i32* %nframes, align 4
  %cmp11 = icmp sgt i32 %9, %10
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %11 = load i32, i32* %to_frame.addr, align 4
  %12 = load i32, i32* %nframes, align 4
  %cmp14 = icmp sgt i32 %11, %12
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %13 = load i32, i32* %nframes, align 4
  store i32 %13, i32* %to_frame.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %call17 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %background, i8* %red, i8* %green, i8* %blue)
  %14 = load i32, i32* %image_id.addr, align 4
  %call18 = call i32 @gimp_image_base_type(i32 %14)
  switch i32 %call18, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %if.end.16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %15 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %15, 256
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %conv = trunc i32 %16 to i8
  %17 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %17, 3
  %add = add nsw i32 %mul, 2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %18 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %18, 3
  %add21 = add nsw i32 %mul20, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom22
  store i8 %conv, i8* %arrayidx23, align 1
  %19 = load i32, i32* %i, align 4
  %mul24 = mul nsw i32 %19, 3
  %add25 = add nsw i32 %mul24, 0
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom26
  store i8 %conv, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8, i8* %red, align 1
  %conv28 = zext i8 %21 to i32
  %conv29 = sitofp i32 %conv28 to double
  %mul30 = fmul double %conv29, 2.126000e-01
  %22 = load i8, i8* %green, align 1
  %conv31 = zext i8 %22 to i32
  %conv32 = sitofp i32 %conv31 to double
  %mul33 = fmul double %conv32, 7.152000e-01
  %add34 = fadd double %mul30, %mul33
  %23 = load i8, i8* %blue, align 1
  %conv35 = zext i8 %23 to i32
  %conv36 = sitofp i32 %conv35 to double
  %mul37 = fmul double %conv36, 7.220000e-02
  %add38 = fadd double %add34, %mul37
  %add39 = fadd double %add38, 5.000000e-01
  %conv40 = fptoui double %add39 to i8
  store i8 %conv40, i8* %bg, align 1
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.16
  store i32 195075, i32* %max, align 4
  store i8 0, i8* %bg, align 1
  %24 = load i32, i32* %image_id.addr, align 4
  %call42 = call i8* @gimp_image_get_colormap(i32 %24, i32* %colors)
  store i8* %call42, i8** %cmap, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.103, %sw.bb.41
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %colors, align 4
  %cmp44 = icmp slt i32 %26, 256
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.43
  %27 = load i32, i32* %colors, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond.43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 256, %cond.false ]
  %cmp46 = icmp slt i32 %25, %cond
  br i1 %cmp46, label %for.body.48, label %for.end.105

for.body.48:                                      ; preds = %cond.end
  %28 = load i32, i32* %i, align 4
  %mul49 = mul nsw i32 %28, 3
  %add50 = add nsw i32 %mul49, 0
  %idxprom51 = sext i32 %add50 to i64
  %29 = load i8*, i8** %cmap, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %29, i64 %idxprom51
  %30 = load i8, i8* %arrayidx52, align 1
  %31 = load i32, i32* %i, align 4
  %mul53 = mul nsw i32 %31, 3
  %add54 = add nsw i32 %mul53, 0
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom55
  store i8 %30, i8* %arrayidx56, align 1
  %32 = load i32, i32* %i, align 4
  %mul57 = mul nsw i32 %32, 3
  %add58 = add nsw i32 %mul57, 1
  %idxprom59 = sext i32 %add58 to i64
  %33 = load i8*, i8** %cmap, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %33, i64 %idxprom59
  %34 = load i8, i8* %arrayidx60, align 1
  %35 = load i32, i32* %i, align 4
  %mul61 = mul nsw i32 %35, 3
  %add62 = add nsw i32 %mul61, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom63
  store i8 %34, i8* %arrayidx64, align 1
  %36 = load i32, i32* %i, align 4
  %mul65 = mul nsw i32 %36, 3
  %add66 = add nsw i32 %mul65, 2
  %idxprom67 = sext i32 %add66 to i64
  %37 = load i8*, i8** %cmap, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %37, i64 %idxprom67
  %38 = load i8, i8* %arrayidx68, align 1
  %39 = load i32, i32* %i, align 4
  %mul69 = mul nsw i32 %39, 3
  %add70 = add nsw i32 %mul69, 2
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom71
  store i8 %38, i8* %arrayidx72, align 1
  %40 = load i8, i8* %red, align 1
  %conv73 = zext i8 %40 to i32
  %41 = load i32, i32* %i, align 4
  %mul74 = mul nsw i32 %41, 3
  %add75 = add nsw i32 %mul74, 0
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom76
  %42 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %42 to i32
  %sub = sub nsw i32 %conv73, %conv78
  store i32 %sub, i32* %diff, align 4
  %43 = load i32, i32* %diff, align 4
  %44 = load i32, i32* %diff, align 4
  %mul79 = mul nsw i32 %43, %44
  store i32 %mul79, i32* %sum, align 4
  %45 = load i8, i8* %green, align 1
  %conv80 = zext i8 %45 to i32
  %46 = load i32, i32* %i, align 4
  %mul81 = mul nsw i32 %46, 3
  %add82 = add nsw i32 %mul81, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom83
  %47 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %47 to i32
  %sub86 = sub nsw i32 %conv80, %conv85
  store i32 %sub86, i32* %diff, align 4
  %48 = load i32, i32* %diff, align 4
  %49 = load i32, i32* %diff, align 4
  %mul87 = mul nsw i32 %48, %49
  %50 = load i32, i32* %sum, align 4
  %add88 = add nsw i32 %50, %mul87
  store i32 %add88, i32* %sum, align 4
  %51 = load i8, i8* %blue, align 1
  %conv89 = zext i8 %51 to i32
  %52 = load i32, i32* %i, align 4
  %mul90 = mul nsw i32 %52, 3
  %add91 = add nsw i32 %mul90, 2
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom92
  %53 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %53 to i32
  %sub95 = sub nsw i32 %conv89, %conv94
  store i32 %sub95, i32* %diff, align 4
  %54 = load i32, i32* %diff, align 4
  %55 = load i32, i32* %diff, align 4
  %mul96 = mul nsw i32 %54, %55
  %56 = load i32, i32* %sum, align 4
  %add97 = add nsw i32 %56, %mul96
  store i32 %add97, i32* %sum, align 4
  %57 = load i32, i32* %sum, align 4
  %58 = load i32, i32* %max, align 4
  %cmp98 = icmp slt i32 %57, %58
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %for.body.48
  %59 = load i32, i32* %i, align 4
  %conv101 = trunc i32 %59 to i8
  store i8 %conv101, i8* %bg, align 1
  %60 = load i32, i32* %sum, align 4
  store i32 %60, i32* %max, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %for.body.48
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %61 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %61, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.43

for.end.105:                                      ; preds = %cond.end
  %62 = load i32, i32* %colors, align 4
  store i32 %62, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.123, %for.end.105
  %63 = load i32, i32* %i, align 4
  %cmp107 = icmp slt i32 %63, 256
  br i1 %cmp107, label %for.body.109, label %for.end.125

for.body.109:                                     ; preds = %for.cond.106
  %64 = load i32, i32* %i, align 4
  %conv110 = trunc i32 %64 to i8
  %65 = load i32, i32* %i, align 4
  %mul111 = mul nsw i32 %65, 3
  %add112 = add nsw i32 %mul111, 2
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom113
  store i8 %conv110, i8* %arrayidx114, align 1
  %66 = load i32, i32* %i, align 4
  %mul115 = mul nsw i32 %66, 3
  %add116 = add nsw i32 %mul115, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom117
  store i8 %conv110, i8* %arrayidx118, align 1
  %67 = load i32, i32* %i, align 4
  %mul119 = mul nsw i32 %67, 3
  %add120 = add nsw i32 %mul119, 0
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i64 %idxprom121
  store i8 %conv110, i8* %arrayidx122, align 1
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.109
  %68 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %68, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.106

for.end.125:                                      ; preds = %for.cond.106
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.16
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call126)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.125, %for.end
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0)) #5
  %69 = load i8*, i8** %filename.addr, align 8
  %call128 = call i8* @gimp_filename_to_utf8(i8* %69)
  %call129 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call127, i8* %call128)
  %filesize = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 0
  store i64 0, i64* %filesize, align 8
  %frames = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 2
  store i16 0, i16* %frames, align 2
  %70 = load i32, i32* %image_id.addr, align 4
  %call130 = call i32 @gimp_image_width(i32 %70)
  %conv131 = trunc i32 %call130 to i16
  %width = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  store i16 %conv131, i16* %width, align 2
  %71 = load i32, i32* %image_id.addr, align 4
  %call132 = call i32 @gimp_image_height(i32 %71)
  %conv133 = trunc i32 %call132 to i16
  %height = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  store i16 %conv133, i16* %height, align 2
  %width134 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %72 = load i16, i16* %width134, align 2
  %conv135 = zext i16 %72 to i32
  %cmp136 = icmp eq i32 %conv135, 320
  br i1 %cmp136, label %land.lhs.true.138, label %if.else

land.lhs.true.138:                                ; preds = %sw.epilog
  %height139 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %73 = load i16, i16* %height139, align 2
  %conv140 = zext i16 %73 to i32
  %cmp141 = icmp eq i32 %conv140, 200
  br i1 %cmp141, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %land.lhs.true.138
  %magic = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 1
  store i16 -20719, i16* %magic, align 2
  br label %if.end.145

if.else:                                          ; preds = %land.lhs.true.138, %sw.epilog
  %magic144 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 1
  store i16 -20718, i16* %magic144, align 2
  br label %if.end.145

if.end.145:                                       ; preds = %if.else, %if.then.143
  %depth = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 5
  store i16 8, i16* %depth, align 2
  %flags = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 6
  store i16 3, i16* %flags, align 2
  %speed = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 7
  store i64 40, i64* %speed, align 8
  %created = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 8
  store i64 0, i64* %created, align 8
  %updated = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 10
  store i64 0, i64* %updated, align 8
  %aspect_x = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 11
  store i16 1, i16* %aspect_x, align 2
  %aspect_y = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 12
  store i16 1, i16* %aspect_y, align 2
  %oframe2 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 14
  store i64 0, i64* %oframe2, align 8
  %oframe1 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 13
  store i64 0, i64* %oframe1, align 8
  %74 = load i8*, i8** %filename.addr, align 8
  %call146 = call %struct._IO_FILE* @fopen(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  store %struct._IO_FILE* %call146, %struct._IO_FILE** %file, align 8
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %75, null
  br i1 %tobool, label %if.end.155, label %if.then.147

if.then.147:                                      ; preds = %if.end.145
  %76 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call148 = call i32 @g_file_error_quark()
  %call149 = call i32* @__errno_location() #6
  %77 = load i32, i32* %call149, align 4
  %call150 = call i32 @g_file_error_from_errno(i32 %77)
  %call151 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0)) #5
  %78 = load i8*, i8** %filename.addr, align 8
  %call152 = call i8* @gimp_filename_to_utf8(i8* %78)
  %call153 = call i32* @__errno_location() #6
  %79 = load i32, i32* %call153, align 4
  %call154 = call i8* @g_strerror(i32 %79) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %76, i32 %call148, i32 %call150, i8* %call151, i8* %call152, i8* %call154)
  store i32 0, i32* %retval
  br label %return

if.end.155:                                       ; preds = %if.end.145
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call156 = call i32 @fseek(%struct._IO_FILE* %80, i64 128, i32 0)
  %width157 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %81 = load i16, i16* %width157, align 2
  %conv158 = zext i16 %81 to i32
  %height159 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %82 = load i16, i16* %height159, align 2
  %conv160 = zext i16 %82 to i32
  %mul161 = mul nsw i32 %conv158, %conv160
  %conv162 = sext i32 %mul161 to i64
  %call163 = call noalias i8* @g_malloc(i64 %conv162)
  store i8* %call163, i8** %fb, align 8
  %width164 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %83 = load i16, i16* %width164, align 2
  %conv165 = zext i16 %83 to i32
  %height166 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %84 = load i16, i16* %height166, align 2
  %conv167 = zext i16 %84 to i32
  %mul168 = mul nsw i32 %conv165, %conv167
  %conv169 = sext i32 %mul168 to i64
  %call170 = call noalias i8* @g_malloc(i64 %conv169)
  store i8* %call170, i8** %ofb, align 8
  %85 = load i8*, i8** %fb, align 8
  %86 = load i8, i8* %bg, align 1
  %conv171 = zext i8 %86 to i32
  %87 = trunc i32 %conv171 to i8
  %width172 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %88 = load i16, i16* %width172, align 2
  %conv173 = zext i16 %88 to i32
  %height174 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %89 = load i16, i16* %height174, align 2
  %conv175 = zext i16 %89 to i32
  %mul176 = mul nsw i32 %conv173, %conv175
  %conv177 = sext i32 %mul176 to i64
  call void @llvm.memset.p0i8.i64(i8* %85, i8 %87, i64 %conv177, i32 1, i1 false)
  %90 = load i32, i32* %from_frame.addr, align 4
  store i32 %90, i32* %cnt, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.260, %if.end.155
  %91 = load i32, i32* %cnt, align 4
  %92 = load i32, i32* %to_frame.addr, align 4
  %cmp179 = icmp sle i32 %91, %92
  br i1 %cmp179, label %for.body.181, label %for.end.262

for.body.181:                                     ; preds = %for.cond.178
  %93 = load i32, i32* %nframes, align 4
  %94 = load i32, i32* %cnt, align 4
  %sub182 = sub nsw i32 %93, %94
  %idxprom183 = sext i32 %sub182 to i64
  %95 = load i32*, i32** %framelist, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %95, i64 %idxprom183
  %96 = load i32, i32* %arrayidx184, align 4
  %call185 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %96)
  store %struct._GimpDrawable* %call185, %struct._GimpDrawable** %drawable, align 8
  %97 = load i32, i32* %nframes, align 4
  %98 = load i32, i32* %cnt, align 4
  %sub186 = sub nsw i32 %97, %98
  %idxprom187 = sext i32 %sub186 to i64
  %99 = load i32*, i32** %framelist, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %99, i64 %idxprom187
  %100 = load i32, i32* %arrayidx188, align 4
  %call189 = call i32 @gimp_drawable_offsets(i32 %100, i32* %offset_x, i32* %offset_y)
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width190 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %101, i32 0, i32 1
  %102 = load i32, i32* %width190, align 4
  store i32 %102, i32* %cols, align 4
  %103 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height191 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %103, i32 0, i32 2
  %104 = load i32, i32* %height191, align 4
  store i32 %104, i32* %rows, align 4
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %105, i32 0, i32 3
  %106 = load i32, i32* %bpp, align 4
  store i32 %106, i32* %bytes, align 4
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %108 = load i32, i32* %cols, align 4
  %109 = load i32, i32* %rows, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %107, i32 0, i32 0, i32 %108, i32 %109, i32 0, i32 0)
  %110 = load i32, i32* %cols, align 4
  %111 = load i32, i32* %bytes, align 4
  %mul192 = mul i32 %110, %111
  %conv193 = zext i32 %mul192 to i64
  %call194 = call noalias i8* @g_malloc(i64 %conv193)
  store i8* %call194, i8** %src_row, align 8
  store i32 0, i32* %yc, align 4
  %112 = load i32, i32* %offset_y, align 4
  store i32 %112, i32* %yy, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.234, %for.body.181
  %113 = load i32, i32* %yc, align 4
  %114 = load i32, i32* %rows, align 4
  %cmp196 = icmp ult i32 %113, %114
  br i1 %cmp196, label %for.body.198, label %for.end.237

for.body.198:                                     ; preds = %for.cond.195
  %115 = load i32, i32* %yy, align 4
  %cmp199 = icmp sge i32 %115, 0
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.233

land.lhs.true.201:                                ; preds = %for.body.198
  %116 = load i32, i32* %yy, align 4
  %height202 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %117 = load i16, i16* %height202, align 2
  %conv203 = zext i16 %117 to i32
  %cmp204 = icmp slt i32 %116, %conv203
  br i1 %cmp204, label %if.then.206, label %if.end.233

if.then.206:                                      ; preds = %land.lhs.true.201
  %118 = load i8*, i8** %src_row, align 8
  %119 = load i32, i32* %yc, align 4
  %120 = load i32, i32* %cols, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %118, i32 0, i32 %119, i32 %120)
  store i32 0, i32* %xc, align 4
  %121 = load i32, i32* %offset_x, align 4
  store i32 %121, i32* %xx, align 4
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.229, %if.then.206
  %122 = load i32, i32* %xc, align 4
  %123 = load i32, i32* %cols, align 4
  %cmp208 = icmp ult i32 %122, %123
  br i1 %cmp208, label %for.body.210, label %for.end.232

for.body.210:                                     ; preds = %for.cond.207
  %124 = load i32, i32* %xx, align 4
  %cmp211 = icmp sge i32 %124, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.228

land.lhs.true.213:                                ; preds = %for.body.210
  %125 = load i32, i32* %xx, align 4
  %width214 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %126 = load i16, i16* %width214, align 2
  %conv215 = zext i16 %126 to i32
  %cmp216 = icmp slt i32 %125, %conv215
  br i1 %cmp216, label %if.then.218, label %if.end.228

if.then.218:                                      ; preds = %land.lhs.true.213
  %127 = load i32, i32* %xc, align 4
  %128 = load i32, i32* %bytes, align 4
  %mul219 = mul i32 %127, %128
  %idxprom220 = zext i32 %mul219 to i64
  %129 = load i8*, i8** %src_row, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %129, i64 %idxprom220
  %130 = load i8, i8* %arrayidx221, align 1
  %131 = load i32, i32* %yy, align 4
  %width222 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %132 = load i16, i16* %width222, align 2
  %conv223 = zext i16 %132 to i32
  %mul224 = mul nsw i32 %131, %conv223
  %133 = load i32, i32* %xx, align 4
  %add225 = add nsw i32 %mul224, %133
  %idxprom226 = sext i32 %add225 to i64
  %134 = load i8*, i8** %fb, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %134, i64 %idxprom226
  store i8 %130, i8* %arrayidx227, align 1
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.218, %land.lhs.true.213, %for.body.210
  br label %for.inc.229

for.inc.229:                                      ; preds = %if.end.228
  %135 = load i32, i32* %xc, align 4
  %inc230 = add nsw i32 %135, 1
  store i32 %inc230, i32* %xc, align 4
  %136 = load i32, i32* %xx, align 4
  %inc231 = add nsw i32 %136, 1
  store i32 %inc231, i32* %xx, align 4
  br label %for.cond.207

for.end.232:                                      ; preds = %for.cond.207
  br label %if.end.233

if.end.233:                                       ; preds = %for.end.232, %land.lhs.true.201, %for.body.198
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.233
  %137 = load i32, i32* %yc, align 4
  %inc235 = add nsw i32 %137, 1
  store i32 %inc235, i32* %yc, align 4
  %138 = load i32, i32* %yy, align 4
  %inc236 = add nsw i32 %138, 1
  store i32 %inc236, i32* %yy, align 4
  br label %for.cond.195

for.end.237:                                      ; preds = %for.cond.195
  %139 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %139)
  %140 = load i32, i32* %cnt, align 4
  %141 = load i32, i32* %from_frame.addr, align 4
  %cmp238 = icmp sgt i32 %140, %141
  br i1 %cmp238, label %if.then.240, label %if.else.242

if.then.240:                                      ; preds = %for.end.237
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %143 = load i8*, i8** %ofb, align 8
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i32 0
  %144 = load i8*, i8** %fb, align 8
  %arraydecay241 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i32 0
  call void @fli_write_frame(%struct._IO_FILE* %142, %struct._fli_header* %fli_header, i8* %143, i8* %arraydecay, i8* %144, i8* %arraydecay241, i16 zeroext -1)
  br label %if.end.244

if.else.242:                                      ; preds = %for.end.237
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %146 = load i8*, i8** %fb, align 8
  %arraydecay243 = getelementptr inbounds [768 x i8], [768 x i8]* %cm, i32 0, i32 0
  call void @fli_write_frame(%struct._IO_FILE* %145, %struct._fli_header* %fli_header, i8* null, i8* null, i8* %146, i8* %arraydecay243, i16 zeroext -1)
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.242, %if.then.240
  %147 = load i32, i32* %cnt, align 4
  %148 = load i32, i32* %to_frame.addr, align 4
  %cmp245 = icmp slt i32 %147, %148
  br i1 %cmp245, label %if.then.247, label %if.end.254

if.then.247:                                      ; preds = %if.end.244
  %149 = load i8*, i8** %ofb, align 8
  %150 = load i8*, i8** %fb, align 8
  %width248 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %151 = load i16, i16* %width248, align 2
  %conv249 = zext i16 %151 to i32
  %height250 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %152 = load i16, i16* %height250, align 2
  %conv251 = zext i16 %152 to i32
  %mul252 = mul nsw i32 %conv249, %conv251
  %conv253 = sext i32 %mul252 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %150, i64 %conv253, i32 1, i1 false)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.247, %if.end.244
  %153 = load i32, i32* %cnt, align 4
  %conv255 = sitofp i32 %153 to double
  %154 = load i32, i32* %to_frame.addr, align 4
  %155 = load i32, i32* %from_frame.addr, align 4
  %sub256 = sub nsw i32 %154, %155
  %conv257 = sitofp i32 %sub256 to double
  %div = fdiv double 1.000000e+00, %conv257
  %add258 = fadd double %conv255, %div
  %call259 = call i32 @gimp_progress_update(double %add258)
  br label %for.inc.260

for.inc.260:                                      ; preds = %if.end.254
  %156 = load i32, i32* %cnt, align 4
  %inc261 = add nsw i32 %156, 1
  store i32 %inc261, i32* %cnt, align 4
  br label %for.cond.178

for.end.262:                                      ; preds = %for.cond.178
  %call263 = call i32 @gimp_progress_update(double 1.000000e+00)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @fli_write_header(%struct._IO_FILE* %157, %struct._fli_header* %fli_header)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call264 = call i32 @fclose(%struct._IO_FILE* %158)
  %159 = load i8*, i8** %fb, align 8
  call void @g_free(i8* %159)
  %160 = load i8*, i8** %ofb, align 8
  call void @g_free(i8* %160)
  %161 = load i32*, i32** %framelist, align 8
  %162 = bitcast i32* %161 to i8*
  call void @g_free(i8* %162)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.262, %if.then.147, %sw.default, %if.then.12, %if.then.9
  %163 = load i32, i32* %retval
  ret i32 %163
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i32 %image_id) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %nframes = alloca i32, align 4
  %run = alloca i32, align 4
  store i32 %image_id, i32* %image_id.addr, align 4
  %0 = load i32, i32* %image_id.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %nframes)
  %1 = bitcast i32* %call to i8*
  call void @g_free(i8* %1)
  store i32 1, i32* @from_frame, align 4
  %2 = load i32, i32* %nframes, align 4
  store i32 %2, i32* @to_frame, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %table, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %5, i32 12)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %8, i32 6)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %11, i32 6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call10 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %12)
  %13 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load i32, i32* @from_frame, align 4
  %conv = sitofp i32 %17 to double
  %18 = load i32, i32* %nframes, align 4
  %conv13 = sitofp i32 %18 to double
  %call14 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 1.000000e+00, double %conv13, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %spinbutton, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %call17 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i64 12)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call18 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %21, i32 0, i32 0, i8* %call17, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %22, i32 1, i32 1)
  %23 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %24 = bitcast %struct._GtkObject* %23 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* @from_frame to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load i32, i32* @to_frame, align 4
  %conv20 = sitofp i32 %25 to double
  %26 = load i32, i32* %nframes, align 4
  %conv21 = sitofp i32 %26 to double
  %call22 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv20, double 1.000000e+00, double %conv21, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %spinbutton, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %call25 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i64 12)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call26 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %29, i32 0, i32 1, i8* %call25, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %30, i32 1, i32 1)
  %31 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %32 = bitcast %struct._GtkObject* %31 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* @to_frame to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_dialog_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call28)
  %36 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDialog*
  %call30 = call i32 @gimp_dialog_run(%struct._GimpDialog* %36)
  %cmp = icmp eq i32 %call30, -5
  %conv31 = zext i1 %cmp to i32
  store i32 %conv31, i32* %run, align 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %37)
  %38 = load i32, i32* %run, align 4
  ret i32 %38
}

declare i32 @gimp_image_delete(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_info(i8* %filename, i32* %width, i32* %height, i32* %frames, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %frames.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %fli_header = alloca %struct._fli_header, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %frames, i32** %frames.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** %frames.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %6)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0)) #5
  %7 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call6 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %8) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @fli_read_header(%struct._IO_FILE* %9, %struct._fli_header* %fli_header)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %10)
  %width9 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 3
  %11 = load i16, i16* %width9, align 2
  %conv = zext i16 %11 to i32
  %12 = load i32*, i32** %width.addr, align 8
  store i32 %conv, i32* %12, align 4
  %height10 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 4
  %13 = load i16, i16* %height10, align 2
  %conv11 = zext i16 %13 to i32
  %14 = load i32*, i32** %height.addr, align 8
  store i32 %conv11, i32* %14, align 4
  %frames12 = getelementptr inbounds %struct._fli_header, %struct._fli_header* %fli_header, i32 0, i32 2
  %15 = load i16, i16* %frames12, align 2
  %conv13 = zext i16 %15 to i32
  %16 = load i32*, i32** %frames.addr, align 8
  store i32 %conv13, i32* %16, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

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

declare void @fli_read_header(%struct._IO_FILE*, %struct._fli_header*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare noalias i8* @g_malloc(i64) #1

declare void @fli_read_frame(%struct._IO_FILE*, %struct._fli_header*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare void @g_free(i8*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @gimp_image_base_type(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

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

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @fli_write_frame(%struct._IO_FILE*, %struct._fli_header*, i8*, i8*, i8*, i8*, i16 zeroext) #1

declare void @fli_write_header(%struct._IO_FILE*, %struct._fli_header*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

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
