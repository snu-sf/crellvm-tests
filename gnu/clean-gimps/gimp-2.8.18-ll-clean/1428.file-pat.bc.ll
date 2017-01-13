; ModuleID = './plug-ins/common/file-pat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._PatternHeader = type { i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
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
@query.save_args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Short description of the pattern\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"file-pat-load\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Loads Gimp's .PAT pattern files\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"The images in the pattern dialog can be loaded directly with this plug-in\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Tim Newsome\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"GIMP pattern\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"image/x-gimp-pat\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"pat\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"20,string,GPAT\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"file-pat-save\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Saves Gimp pattern file (.PAT)\00", align 1
@.str.26 = private unnamed_addr constant [92 x i8] c"New Gimp patterns can be created by saving them in the appropriate place with this plug-in.\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"file-pat\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"PAT\00", align 1
@description = internal global [256 x i8] c"GIMP Pattern\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.32 = private unnamed_addr constant [18 x i8] c"gimp-pattern-name\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Invalid UTF-8 string in pattern file '%s'.\00", align 1
@.str.36 = private unnamed_addr constant [64 x i8] c"Unsupported pattern depth: %d\0AGIMP Patterns must be GRAY or RGB\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"Invalid header data in '%s': width=%lu, height=%lu, bytes=%lu\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Pattern\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Description:\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  %call1 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0))
  %call2 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call3 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  %call4 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0))
  %call5 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
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
  %parasite68 = alloca %struct._GimpParasite*, align 8
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
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #7
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
  br label %if.end.77

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.75

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
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 19)
  store i32 %call20, i32* %export, align 4
  %17 = load i32, i32* %export, align 4
  %cmp21 = icmp eq i32 %17, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.23:                                        ; preds = %sw.bb
  %call24 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.23
  %18 = load i32, i32* %orig_image_ID, align 4
  %call25 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
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
  %call31 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0), i8* %23, i64 256) #5
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i64 255), align 1
  %24 = load i8*, i8** %name27, align 8
  call void @g_free(i8* %24)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %sw.epilog
  %25 = load i32, i32* %run_mode, align 4
  switch i32 %25, label %sw.default.47 [
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
  br label %sw.epilog.48

sw.bb.38:                                         ; preds = %if.end.32
  %26 = load i32, i32* %nparams.addr, align 4
  %cmp39 = icmp ne i32 %26, 6
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %sw.bb.38
  store i32 1, i32* %status, align 4
  br label %if.end.46

if.else.41:                                       ; preds = %sw.bb.38
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 5
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_string44 = bitcast %union._GimpParamData* %data43 to i8**
  %28 = load i8*, i8** %d_string44, align 8
  %call45 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0), i8* %28, i64 256) #5
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i64 255), align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.41, %if.then.40
  br label %sw.epilog.48

sw.default.47:                                    ; preds = %if.end.32
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.default.47, %if.end.46, %if.end.37
  %29 = load i32, i32* %status, align 4
  %cmp49 = icmp eq i32 %29, 3
  br i1 %cmp49, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %sw.epilog.48
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 3
  %data52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx51, i32 0, i32 1
  %d_string53 = bitcast %union._GimpParamData* %data52 to i8**
  %31 = load i8*, i8** %d_string53, align 8
  %32 = load i32, i32* %image_ID, align 4
  %33 = load i32, i32* %drawable_ID, align 4
  %call54 = call i32 @save_image(i8* %31, i32 %32, i32 %33, %struct._GError** %error)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.then.50
  %call57 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0), i32 256)
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.50
  store i32 0, i32* %status, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %sw.epilog.48
  %34 = load i32, i32* %export, align 4
  %cmp61 = icmp eq i32 %34, 2
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.60
  %35 = load i32, i32* %image_ID, align 4
  %call63 = call i32 @gimp_image_delete(i32 %35)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.60
  %call65 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %tobool66 = icmp ne i64 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.end.64
  %call69 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %add = add i64 %call69, 1
  %conv = trunc i64 %add to i32
  %call70 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 %conv, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0))
  store %struct._GimpParasite* %call70, %struct._GimpParasite** %parasite68, align 8
  %36 = load i32, i32* %orig_image_ID, align 4
  %37 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite68, align 8
  %call71 = call i32 @gimp_image_attach_parasite(i32 %36, %struct._GimpParasite* %37)
  %38 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite68, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %38)
  br label %if.end.74

if.else.72:                                       ; preds = %if.end.64
  %39 = load i32, i32* %orig_image_ID, align 4
  %call73 = call i32 @gimp_image_detach_parasite(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.67
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.end.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end
  %40 = load i32, i32* %status, align 4
  %cmp78 = icmp ne i32 %40, 3
  br i1 %cmp78, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %if.end.77
  %41 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool80 = icmp ne %struct._GError* %41, null
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %land.lhs.true
  %42 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %42, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %43 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %43, i32 0, i32 2
  %44 = load i8*, i8** %message, align 8
  store i8* %44, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %land.lhs.true, %if.end.77
  %45 = load i32, i32* %status, align 4
  store i32 %45, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.82, %if.then.22
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
  %fd = alloca i32, align 4
  %ph = alloca %struct._PatternHeader, align 4
  %name = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %line = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %base_type = alloca i32, align 4
  %image_type = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %7 = load i32, i32* %fd, align 4
  %8 = bitcast %struct._PatternHeader* %ph to i8*
  %call11 = call i64 @read(i32 %7, i8* %8, i64 24)
  %cmp12 = icmp ne i64 %call11, 24
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %9 = load i32, i32* %fd, align 4
  %call14 = call i32 @close(i32 %9)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %header_size = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %10 = load i32, i32* %header_size, align 4
  %and = and i32 %10, 255
  %shl = shl i32 %and, 24
  %header_size16 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %11 = load i32, i32* %header_size16, align 4
  %and17 = and i32 %11, 65280
  %shl18 = shl i32 %and17, 8
  %or = or i32 %shl, %shl18
  %header_size19 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %12 = load i32, i32* %header_size19, align 4
  %and20 = and i32 %12, 16711680
  %shr = lshr i32 %and20, 8
  %or21 = or i32 %or, %shr
  %header_size22 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %13 = load i32, i32* %header_size22, align 4
  %and23 = and i32 %13, -16777216
  %shr24 = lshr i32 %and23, 24
  %or25 = or i32 %or21, %shr24
  %header_size26 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  store i32 %or25, i32* %header_size26, align 4
  %version = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %14 = load i32, i32* %version, align 4
  %and27 = and i32 %14, 255
  %shl28 = shl i32 %and27, 24
  %version29 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %15 = load i32, i32* %version29, align 4
  %and30 = and i32 %15, 65280
  %shl31 = shl i32 %and30, 8
  %or32 = or i32 %shl28, %shl31
  %version33 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %16 = load i32, i32* %version33, align 4
  %and34 = and i32 %16, 16711680
  %shr35 = lshr i32 %and34, 8
  %or36 = or i32 %or32, %shr35
  %version37 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %17 = load i32, i32* %version37, align 4
  %and38 = and i32 %17, -16777216
  %shr39 = lshr i32 %and38, 24
  %or40 = or i32 %or36, %shr39
  %version41 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  store i32 %or40, i32* %version41, align 4
  %width = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %and42 = and i32 %18, 255
  %shl43 = shl i32 %and42, 24
  %width44 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %19 = load i32, i32* %width44, align 4
  %and45 = and i32 %19, 65280
  %shl46 = shl i32 %and45, 8
  %or47 = or i32 %shl43, %shl46
  %width48 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %20 = load i32, i32* %width48, align 4
  %and49 = and i32 %20, 16711680
  %shr50 = lshr i32 %and49, 8
  %or51 = or i32 %or47, %shr50
  %width52 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %21 = load i32, i32* %width52, align 4
  %and53 = and i32 %21, -16777216
  %shr54 = lshr i32 %and53, 24
  %or55 = or i32 %or51, %shr54
  %width56 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  store i32 %or55, i32* %width56, align 4
  %height = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %22 = load i32, i32* %height, align 4
  %and57 = and i32 %22, 255
  %shl58 = shl i32 %and57, 24
  %height59 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %23 = load i32, i32* %height59, align 4
  %and60 = and i32 %23, 65280
  %shl61 = shl i32 %and60, 8
  %or62 = or i32 %shl58, %shl61
  %height63 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %24 = load i32, i32* %height63, align 4
  %and64 = and i32 %24, 16711680
  %shr65 = lshr i32 %and64, 8
  %or66 = or i32 %or62, %shr65
  %height67 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %25 = load i32, i32* %height67, align 4
  %and68 = and i32 %25, -16777216
  %shr69 = lshr i32 %and68, 24
  %or70 = or i32 %or66, %shr69
  %height71 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  store i32 %or70, i32* %height71, align 4
  %bytes = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %26 = load i32, i32* %bytes, align 4
  %and72 = and i32 %26, 255
  %shl73 = shl i32 %and72, 24
  %bytes74 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %27 = load i32, i32* %bytes74, align 4
  %and75 = and i32 %27, 65280
  %shl76 = shl i32 %and75, 8
  %or77 = or i32 %shl73, %shl76
  %bytes78 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %28 = load i32, i32* %bytes78, align 4
  %and79 = and i32 %28, 16711680
  %shr80 = lshr i32 %and79, 8
  %or81 = or i32 %or77, %shr80
  %bytes82 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %29 = load i32, i32* %bytes82, align 4
  %and83 = and i32 %29, -16777216
  %shr84 = lshr i32 %and83, 24
  %or85 = or i32 %or81, %shr84
  %bytes86 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  store i32 %or85, i32* %bytes86, align 4
  %magic_number = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %30 = load i32, i32* %magic_number, align 4
  %and87 = and i32 %30, 255
  %shl88 = shl i32 %and87, 24
  %magic_number89 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %31 = load i32, i32* %magic_number89, align 4
  %and90 = and i32 %31, 65280
  %shl91 = shl i32 %and90, 8
  %or92 = or i32 %shl88, %shl91
  %magic_number93 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %32 = load i32, i32* %magic_number93, align 4
  %and94 = and i32 %32, 16711680
  %shr95 = lshr i32 %and94, 8
  %or96 = or i32 %or92, %shr95
  %magic_number97 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %33 = load i32, i32* %magic_number97, align 4
  %and98 = and i32 %33, -16777216
  %shr99 = lshr i32 %and98, 24
  %or100 = or i32 %or96, %shr99
  %magic_number101 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  store i32 %or100, i32* %magic_number101, align 4
  %magic_number102 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %34 = load i32, i32* %magic_number102, align 4
  %cmp103 = icmp ne i32 %34, 1196441940
  br i1 %cmp103, label %if.then.110, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %version104 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %35 = load i32, i32* %version104, align 4
  %cmp105 = icmp ne i32 %35, 1
  br i1 %cmp105, label %if.then.110, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false
  %header_size107 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %36 = load i32, i32* %header_size107, align 4
  %conv = zext i32 %36 to i64
  %cmp108 = icmp ule i64 %conv, 24
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false, %if.end.15
  %37 = load i32, i32* %fd, align 4
  %call111 = call i32 @close(i32 %37)
  store i32 -1, i32* %retval
  br label %return

if.end.112:                                       ; preds = %lor.lhs.false.106
  %header_size113 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %38 = load i32, i32* %header_size113, align 4
  %conv114 = zext i32 %38 to i64
  %sub = sub i64 %conv114, 24
  %call115 = call noalias i8* @g_malloc_n(i64 %sub, i64 1)
  store i8* %call115, i8** %temp, align 8
  %39 = load i32, i32* %fd, align 4
  %40 = load i8*, i8** %temp, align 8
  %header_size116 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %41 = load i32, i32* %header_size116, align 4
  %conv117 = zext i32 %41 to i64
  %sub118 = sub i64 %conv117, 24
  %call119 = call i64 @read(i32 %39, i8* %40, i64 %sub118)
  %header_size120 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %42 = load i32, i32* %header_size120, align 4
  %conv121 = zext i32 %42 to i64
  %sub122 = sub i64 %conv121, 24
  %cmp123 = icmp ne i64 %call119, %sub122
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.112
  %43 = load i8*, i8** %temp, align 8
  call void @g_free(i8* %43)
  %44 = load i32, i32* %fd, align 4
  %call126 = call i32 @close(i32 %44)
  store i32 -1, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.112
  %45 = load i8*, i8** %temp, align 8
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i32 0, i32 0)) #5
  %46 = load i8*, i8** %filename.addr, align 8
  %call129 = call i8* @gimp_filename_to_utf8(i8* %46)
  %call130 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %45, i64 -1, i8* %call128, i8* %call129)
  store i8* %call130, i8** %name, align 8
  %47 = load i8*, i8** %temp, align 8
  call void @g_free(i8* %47)
  %bytes131 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %48 = load i32, i32* %bytes131, align 4
  switch i32 %48, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.132
    i32 3, label %sw.bb.133
    i32 4, label %sw.bb.134
  ]

sw.bb:                                            ; preds = %if.end.127
  store i32 1, i32* %base_type, align 4
  store i32 2, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.end.127
  store i32 1, i32* %base_type, align 4
  store i32 3, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.end.127
  store i32 0, i32* %base_type, align 4
  store i32 0, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.end.127
  store i32 0, i32* %base_type, align 4
  store i32 1, i32* %image_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.127
  %bytes135 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %49 = load i32, i32* %bytes135, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.36, i32 0, i32 0), i32 %49)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.134, %sw.bb.133, %sw.bb.132, %sw.bb
  %width136 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %50 = load i32, i32* %width136, align 4
  %cmp137 = icmp eq i32 %50, 0
  br i1 %cmp137, label %if.then.159, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %sw.epilog
  %width140 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %51 = load i32, i32* %width140, align 4
  %cmp141 = icmp ugt i32 %51, 262144
  br i1 %cmp141, label %if.then.159, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.139
  %height144 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %52 = load i32, i32* %height144, align 4
  %cmp145 = icmp eq i32 %52, 0
  br i1 %cmp145, label %if.then.159, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.143
  %height148 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %53 = load i32, i32* %height148, align 4
  %cmp149 = icmp ugt i32 %53, 262144
  br i1 %cmp149, label %if.then.159, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %lor.lhs.false.147
  %width152 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %54 = load i32, i32* %width152, align 4
  %conv153 = zext i32 %54 to i64
  %div = udiv i64 -1, %conv153
  %bytes154 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %55 = load i32, i32* %bytes154, align 4
  %conv155 = zext i32 %55 to i64
  %div156 = udiv i64 %div, %conv155
  %cmp157 = icmp ult i64 %div156, 1
  br i1 %cmp157, label %if.then.159, label %if.end.169

if.then.159:                                      ; preds = %lor.lhs.false.151, %lor.lhs.false.147, %lor.lhs.false.143, %lor.lhs.false.139, %sw.epilog
  %56 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call160 = call i32 @g_file_error_quark()
  %call161 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i32 0, i32 0)) #5
  %57 = load i8*, i8** %filename.addr, align 8
  %call162 = call i8* @gimp_filename_to_utf8(i8* %57)
  %width163 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %58 = load i32, i32* %width163, align 4
  %conv164 = zext i32 %58 to i64
  %height165 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %59 = load i32, i32* %height165, align 4
  %conv166 = zext i32 %59 to i64
  %bytes167 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %60 = load i32, i32* %bytes167, align 4
  %conv168 = zext i32 %60 to i64
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %56, i32 %call160, i32 24, i8* %call161, i8* %call162, i64 %conv164, i64 %conv166, i64 %conv168)
  store i32 -1, i32* %retval
  br label %return

if.end.169:                                       ; preds = %lor.lhs.false.151
  %width170 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %61 = load i32, i32* %width170, align 4
  %height171 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %62 = load i32, i32* %height171, align 4
  %63 = load i32, i32* %base_type, align 4
  %call172 = call i32 @gimp_image_new(i32 %61, i32 %62, i32 %63)
  store i32 %call172, i32* %image_ID, align 4
  %64 = load i32, i32* %image_ID, align 4
  %65 = load i8*, i8** %filename.addr, align 8
  %call173 = call i32 @gimp_image_set_filename(i32 %64, i8* %65)
  %66 = load i8*, i8** %name, align 8
  %call174 = call i64 @strlen(i8* %66) #7
  %add = add i64 %call174, 1
  %conv175 = trunc i64 %add to i32
  %67 = load i8*, i8** %name, align 8
  %call176 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 %conv175, i8* %67)
  store %struct._GimpParasite* %call176, %struct._GimpParasite** %parasite, align 8
  %68 = load i32, i32* %image_ID, align 4
  %69 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call177 = call i32 @gimp_image_attach_parasite(i32 %68, %struct._GimpParasite* %69)
  %70 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %70)
  %71 = load i32, i32* %image_ID, align 4
  %72 = load i8*, i8** %name, align 8
  %width178 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %73 = load i32, i32* %width178, align 4
  %height179 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %74 = load i32, i32* %height179, align 4
  %75 = load i32, i32* %image_type, align 4
  %call180 = call i32 @gimp_layer_new(i32 %71, i8* %72, i32 %73, i32 %74, i32 %75, double 1.000000e+02, i32 0)
  store i32 %call180, i32* %layer_ID, align 4
  %76 = load i32, i32* %image_ID, align 4
  %77 = load i32, i32* %layer_ID, align 4
  %call181 = call i32 @gimp_image_insert_layer(i32 %76, i32 %77, i32 -1, i32 0)
  %78 = load i8*, i8** %name, align 8
  call void @g_free(i8* %78)
  %79 = load i32, i32* %layer_ID, align 4
  %call182 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %79)
  store %struct._GimpDrawable* %call182, %struct._GimpDrawable** %drawable, align 8
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width183 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %81, i32 0, i32 1
  %82 = load i32, i32* %width183, align 4
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height184 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %83, i32 0, i32 2
  %84 = load i32, i32* %height184, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %80, i32 0, i32 0, i32 %82, i32 %84, i32 1, i32 0)
  %width185 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %85 = load i32, i32* %width185, align 4
  %bytes186 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %86 = load i32, i32* %bytes186, align 4
  %mul = mul i32 %85, %86
  %conv187 = zext i32 %mul to i64
  %call188 = call noalias i8* @g_malloc(i64 %conv187)
  store i8* %call188, i8** %buffer, align 8
  store i32 0, i32* %line, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.169
  %87 = load i32, i32* %line, align 4
  %height189 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %88 = load i32, i32* %height189, align 4
  %cmp190 = icmp ult i32 %87, %88
  br i1 %cmp190, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i32, i32* %fd, align 4
  %90 = load i8*, i8** %buffer, align 8
  %width192 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %91 = load i32, i32* %width192, align 4
  %bytes193 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %92 = load i32, i32* %bytes193, align 4
  %mul194 = mul i32 %91, %92
  %conv195 = zext i32 %mul194 to i64
  %call196 = call i64 @read(i32 %89, i8* %90, i64 %conv195)
  %width197 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %93 = load i32, i32* %width197, align 4
  %bytes198 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %94 = load i32, i32* %bytes198, align 4
  %mul199 = mul i32 %93, %94
  %conv200 = zext i32 %mul199 to i64
  %cmp201 = icmp ne i64 %call196, %conv200
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %for.body
  %95 = load i32, i32* %fd, align 4
  %call204 = call i32 @close(i32 %95)
  %96 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %96)
  store i32 -1, i32* %retval
  br label %return

if.end.205:                                       ; preds = %for.body
  %97 = load i8*, i8** %buffer, align 8
  %98 = load i32, i32* %line, align 4
  %width206 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %99 = load i32, i32* %width206, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %97, i32 0, i32 %98, i32 %99)
  %100 = load i32, i32* %line, align 4
  %conv207 = sitofp i32 %100 to double
  %height208 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %101 = load i32, i32* %height208, align 4
  %conv209 = uitofp i32 %101 to double
  %div210 = fdiv double %conv207, %conv209
  %call211 = call i32 @gimp_progress_update(double %div210)
  br label %for.inc

for.inc:                                          ; preds = %if.end.205
  %102 = load i32, i32* %line, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %line, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call212 = call i32 @gimp_progress_update(double 1.000000e+00)
  %103 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %103)
  %104 = load i32, i32* %image_ID, align 4
  store i32 %104, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.203, %if.then.159, %sw.default, %if.then.125, %if.then.110, %if.then.13, %if.then
  %105 = load i32, i32* %retval
  ret i32 %105
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
  %run = alloca i32, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 2, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %table, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call4)
  %2 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %2, i32 6)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %5, i32 12)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call8 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %6)
  %7 = bitcast %struct._GtkWidget* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 1, i32 1, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call11 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %entry1, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %11, i32 200, i32 -1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_entry_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %14, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0))
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
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
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0)) #5
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call19 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %20, i32 0, i32 0, i8* %call18, float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %21, i32 1, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_dialog_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpDialog*
  %call22 = call i32 @gimp_dialog_run(%struct._GimpDialog* %26)
  %cmp = icmp eq i32 %call22, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %27 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_entry_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call23)
  %30 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkEntry*
  %call25 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %30)
  %call26 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0), i8* %call25, i64 256) #5
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i64 255), align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %31)
  %32 = load i32, i32* %run, align 4
  ret i32 %32
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
  %ph = alloca %struct._PatternHeader, align 4
  %buffer = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %line = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 577, i32 438)
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
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %7 = load i32, i32* %drawable_ID.addr, align 4
  %call11 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %7)
  store %struct._GimpDrawable* %call11, %struct._GimpDrawable** %drawable, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %8, i32 0, i32 0, i32 %10, i32 %12, i32 0, i32 0)
  %call12 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %add = add i64 24, %call12
  %add13 = add i64 %add, 1
  %conv = trunc i64 %add13 to i32
  %and = and i32 %conv, 255
  %shl = shl i32 %and, 24
  %call14 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %add15 = add i64 24, %call14
  %add16 = add i64 %add15, 1
  %conv17 = trunc i64 %add16 to i32
  %and18 = and i32 %conv17, 65280
  %shl19 = shl i32 %and18, 8
  %or = or i32 %shl, %shl19
  %call20 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %add21 = add i64 24, %call20
  %add22 = add i64 %add21, 1
  %conv23 = trunc i64 %add22 to i32
  %and24 = and i32 %conv23, 16711680
  %shr = lshr i32 %and24, 8
  %or25 = or i32 %or, %shr
  %call26 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %add27 = add i64 24, %call26
  %add28 = add i64 %add27, 1
  %conv29 = trunc i64 %add28 to i32
  %and30 = and i32 %conv29, -16777216
  %shr31 = lshr i32 %and30, 24
  %or32 = or i32 %or25, %shr31
  %header_size = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  store i32 %or32, i32* %header_size, align 4
  %version = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  store i32 16777216, i32* %version, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width33, align 4
  %and34 = and i32 %14, 255
  %shl35 = shl i32 %and34, 24
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width36, align 4
  %and37 = and i32 %16, 65280
  %shl38 = shl i32 %and37, 8
  %or39 = or i32 %shl35, %shl38
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width40 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width40, align 4
  %and41 = and i32 %18, 16711680
  %shr42 = lshr i32 %and41, 8
  %or43 = or i32 %or39, %shr42
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width44, align 4
  %and45 = and i32 %20, -16777216
  %shr46 = lshr i32 %and45, 24
  %or47 = or i32 %or43, %shr46
  %width48 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  store i32 %or47, i32* %width48, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height49 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 2
  %22 = load i32, i32* %height49, align 4
  %and50 = and i32 %22, 255
  %shl51 = shl i32 %and50, 24
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height52 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 2
  %24 = load i32, i32* %height52, align 4
  %and53 = and i32 %24, 65280
  %shl54 = shl i32 %and53, 8
  %or55 = or i32 %shl51, %shl54
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height56 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 2
  %26 = load i32, i32* %height56, align 4
  %and57 = and i32 %26, 16711680
  %shr58 = lshr i32 %and57, 8
  %or59 = or i32 %or55, %shr58
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height60 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 2
  %28 = load i32, i32* %height60, align 4
  %and61 = and i32 %28, -16777216
  %shr62 = lshr i32 %and61, 24
  %or63 = or i32 %or59, %shr62
  %height64 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  store i32 %or63, i32* %height64, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 3
  %30 = load i32, i32* %bpp, align 4
  %and65 = and i32 %30, 255
  %shl66 = shl i32 %and65, 24
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp67 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 3
  %32 = load i32, i32* %bpp67, align 4
  %and68 = and i32 %32, 65280
  %shl69 = shl i32 %and68, 8
  %or70 = or i32 %shl66, %shl69
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp71 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 3
  %34 = load i32, i32* %bpp71, align 4
  %and72 = and i32 %34, 16711680
  %shr73 = lshr i32 %and72, 8
  %or74 = or i32 %or70, %shr73
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp75 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 3
  %36 = load i32, i32* %bpp75, align 4
  %and76 = and i32 %36, -16777216
  %shr77 = lshr i32 %and76, 24
  %or78 = or i32 %or74, %shr77
  %bytes = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  store i32 %or78, i32* %bytes, align 4
  %magic_number = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  store i32 1413566535, i32* %magic_number, align 4
  %37 = load i32, i32* %fd, align 4
  %38 = bitcast %struct._PatternHeader* %ph to i8*
  %call79 = call i64 @write(i32 %37, i8* %38, i64 24)
  %cmp80 = icmp ne i64 %call79, 24
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end
  %39 = load i32, i32* %fd, align 4
  %call83 = call i32 @close(i32 %39)
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.end
  %40 = load i32, i32* %fd, align 4
  %call85 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %add86 = add i64 %call85, 1
  %call87 = call i64 @write(i32 %40, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0), i64 %add86)
  %call88 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @description, i32 0, i32 0)) #7
  %add89 = add i64 %call88, 1
  %cmp90 = icmp ne i64 %call87, %add89
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.84
  %41 = load i32, i32* %fd, align 4
  %call93 = call i32 @close(i32 %41)
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.84
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width95 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 1
  %43 = load i32, i32* %width95, align 4
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp96 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 3
  %45 = load i32, i32* %bpp96, align 4
  %mul = mul i32 %43, %45
  %conv97 = zext i32 %mul to i64
  %call98 = call noalias i8* @g_malloc(i64 %conv97)
  store i8* %call98, i8** %buffer, align 8
  %46 = load i8*, i8** %buffer, align 8
  %cmp99 = icmp eq i8* %46, null
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.94
  %47 = load i32, i32* %fd, align 4
  %call102 = call i32 @close(i32 %47)
  store i32 0, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.end.94
  store i32 0, i32* %line, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.103
  %48 = load i32, i32* %line, align 4
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height104 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 2
  %50 = load i32, i32* %height104, align 4
  %cmp105 = icmp ult i32 %48, %50
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i8*, i8** %buffer, align 8
  %52 = load i32, i32* %line, align 4
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width107 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 1
  %54 = load i32, i32* %width107, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %51, i32 0, i32 %52, i32 %54)
  %55 = load i32, i32* %fd, align 4
  %56 = load i8*, i8** %buffer, align 8
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width108 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %57, i32 0, i32 1
  %58 = load i32, i32* %width108, align 4
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp109 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %59, i32 0, i32 3
  %60 = load i32, i32* %bpp109, align 4
  %mul110 = mul i32 %58, %60
  %conv111 = zext i32 %mul110 to i64
  %call112 = call i64 @write(i32 %55, i8* %56, i64 %conv111)
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width113 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 1
  %62 = load i32, i32* %width113, align 4
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp114 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 3
  %64 = load i32, i32* %bpp114, align 4
  %mul115 = mul i32 %62, %64
  %conv116 = zext i32 %mul115 to i64
  %cmp117 = icmp ne i64 %call112, %conv116
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %for.body
  %65 = load i32, i32* %fd, align 4
  %call120 = call i32 @close(i32 %65)
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %for.body
  %66 = load i32, i32* %line, align 4
  %conv122 = sitofp i32 %66 to double
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height123 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %67, i32 0, i32 2
  %68 = load i32, i32* %height123, align 4
  %conv124 = uitofp i32 %68 to double
  %div = fdiv double %conv122, %conv124
  %call125 = call i32 @gimp_progress_update(double %div)
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %69 = load i32, i32* %line, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %line, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %70)
  %71 = load i32, i32* %fd, align 4
  %call126 = call i32 @close(i32 %71)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.119, %if.then.101, %if.then.92, %if.then.82, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
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

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

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

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i64 @write(i32, i8*, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

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
