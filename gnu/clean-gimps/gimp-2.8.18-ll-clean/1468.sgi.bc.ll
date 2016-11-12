; ModuleID = './plug-ins/file-sgi/sgi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct.sgi_t = type { %struct._IO_FILE*, i32, i32, i32, i32, i16, i16, i16, i64, i64, i64**, i64**, i16*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@query.save_args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Compression level (0 = none, 1 = RLE, 2 = ARLE)\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"file-sgi-load\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Loads files in SGI image file format\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"This plug-in loads SGI image files.\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Michael Sweet <mike@easysw.com>\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Copyright 1997-1998 by Michael Sweet\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"1.1.1 - 17 May 1998\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Silicon Graphics IRIS image\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"image/x-sgi\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"sgi,rgb,rgba,bw,icon\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"0,short,474\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"file-sgi-save\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Saves files in SGI image file format\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"This plug-in saves SGI image files.\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"RGB*,GRAY*\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"file-sgi\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"SGI\00", align 1
@compression = internal global i32 1, align 4
@.str.32 = private unnamed_addr constant [33 x i8] c"Could not open '%s' for reading.\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Invalid width: %hu\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Invalid height: %hu\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"Invalid number of channels: %hu\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"Could not allocate new image: %s\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"sgiGetRow(sgip, rows[i], %d, %d) failed!\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Compression type\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"No compression\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"RLE compression\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"Aggressive RLE\0A(not supported by SGI)\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"Could not open '%s' for writing.\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
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
  br label %if.end.63

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.61

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
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 19)
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
  switch i32 %17, label %sw.default.43 [
    i32 0, label %sw.bb.24
    i32 1, label %sw.bb.29
    i32 2, label %sw.bb.41
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  %call25 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* bitcast (i32* @compression to i8*))
  %call26 = call i32 @save_dialog()
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb.24
  store i32 4, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %sw.bb.24
  br label %sw.epilog.44

sw.bb.29:                                         ; preds = %sw.epilog
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp30 = icmp ne i32 %18, 6
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %sw.bb.29
  store i32 1, i32* %status, align 4
  br label %if.end.40

if.else.32:                                       ; preds = %sw.bb.29
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_int3235 = bitcast %union._GimpParamData* %data34 to i32*
  %20 = load i32, i32* %d_int3235, align 4
  store i32 %20, i32* @compression, align 4
  %21 = load i32, i32* @compression, align 4
  %cmp36 = icmp slt i32 %21, 0
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.32
  %22 = load i32, i32* @compression, align 4
  %cmp37 = icmp sgt i32 %22, 2
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.else.32
  store i32 1, i32* %status, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.31
  br label %sw.epilog.44

sw.bb.41:                                         ; preds = %sw.epilog
  %call42 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* bitcast (i32* @compression to i8*))
  br label %sw.epilog.44

sw.default.43:                                    ; preds = %sw.epilog
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %sw.default.43, %sw.bb.41, %if.end.40, %if.end.28
  %23 = load i32, i32* %status, align 4
  %cmp45 = icmp eq i32 %23, 3
  br i1 %cmp45, label %if.then.46, label %if.end.56

if.then.46:                                       ; preds = %sw.epilog.44
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 3
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_string49 = bitcast %union._GimpParamData* %data48 to i8**
  %25 = load i8*, i8** %d_string49, align 8
  %26 = load i32, i32* %image_ID, align 4
  %27 = load i32, i32* %drawable_ID, align 4
  %call50 = call i32 @save_image(i8* %25, i32 %26, i32 %27, %struct._GError** %error)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.then.46
  %call53 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* bitcast (i32* @compression to i8*), i32 4)
  br label %if.end.55

if.else.54:                                       ; preds = %if.then.46
  store i32 0, i32* %status, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %sw.epilog.44
  %28 = load i32, i32* %export, align 4
  %cmp57 = icmp eq i32 %28, 2
  br i1 %cmp57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.56
  %29 = load i32, i32* %image_ID, align 4
  %call59 = call i32 @gimp_image_delete(i32 %29)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.56
  br label %if.end.62

if.else.61:                                       ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.end.60
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end
  %30 = load i32, i32* %status, align 4
  %cmp64 = icmp ne i32 %30, 3
  br i1 %cmp64, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.end.63
  %31 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool65 = icmp ne %struct._GError* %31, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true
  %32 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %32, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 2
  %34 = load i8*, i8** %message, align 8
  store i8* %34, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %land.lhs.true, %if.end.63
  %35 = load i32, i32* %status, align 4
  store i32 %35, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.67, %if.then.22
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
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %image_type = alloca i32, align 4
  %layer_type = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %count = alloca i32, align 4
  %bytes = alloca i32, align 4
  %sgip = alloca %struct.sgi_t*, align 8
  %image = alloca i32, align 4
  %layer = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %pixels = alloca i8**, align 8
  %pptr = alloca i8*, align 8
  %rows = alloca i16**, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.sgi_t* @sgiOpen(i8* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store %struct.sgi_t* %call, %struct.sgi_t** %sgip, align 8
  %1 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %cmp = icmp eq %struct.sgi_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)) #5
  %3 = load i8*, i8** %filename.addr, align 8
  %call3 = call i8* @gimp_filename_to_utf8(i8* %3)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 24, i8* %call2, i8* %call3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call4, i8* %call5)
  %5 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %5, i32 0, i32 5
  %6 = load i16, i16* %xsize, align 2
  %conv = zext i16 %6 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @g_file_error_quark()
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0)) #5
  %8 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize12 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %8, i32 0, i32 5
  %9 = load i16, i16* %xsize12, align 2
  %conv13 = zext i16 %9 to i32
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call10, i32 24, i8* %call11, i32 %conv13)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %10 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %10, i32 0, i32 6
  %11 = load i16, i16* %ysize, align 2
  %conv15 = zext i16 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.14
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @g_file_error_quark()
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)) #5
  %13 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize21 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %13, i32 0, i32 6
  %14 = load i16, i16* %ysize21, align 2
  %conv22 = zext i16 %14 to i32
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %call19, i32 24, i8* %call20, i32 %conv22)
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %15 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %15, i32 0, i32 7
  %16 = load i16, i16* %zsize, align 2
  %conv24 = zext i16 %16 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.23
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @g_file_error_quark()
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0)) #5
  %18 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize30 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %18, i32 0, i32 7
  %19 = load i16, i16* %zsize30, align 2
  %conv31 = zext i16 %19 to i32
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %17, i32 %call28, i32 24, i8* %call29, i32 %conv31)
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.23
  %20 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize33 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %20, i32 0, i32 7
  %21 = load i16, i16* %zsize33, align 2
  %conv34 = zext i16 %21 to i32
  store i32 %conv34, i32* %bytes, align 4
  %22 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize35 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %22, i32 0, i32 7
  %23 = load i16, i16* %zsize35, align 2
  %conv36 = zext i16 %23 to i32
  switch i32 %conv36, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.37
    i32 3, label %sw.bb.38
    i32 4, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.end.32
  store i32 1, i32* %image_type, align 4
  store i32 2, i32* %layer_type, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.32
  store i32 1, i32* %image_type, align 4
  store i32 3, i32* %layer_type, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.32
  store i32 0, i32* %image_type, align 4
  store i32 0, i32* %layer_type, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.32
  store i32 0, i32* %image_type, align 4
  store i32 1, i32* %layer_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.32
  store i32 0, i32* %image_type, align 4
  store i32 1, i32* %layer_type, align 4
  store i32 4, i32* %bytes, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb
  %24 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize40 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %24, i32 0, i32 5
  %25 = load i16, i16* %xsize40, align 2
  %conv41 = zext i16 %25 to i32
  %26 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize42 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %26, i32 0, i32 6
  %27 = load i16, i16* %ysize42, align 2
  %conv43 = zext i16 %27 to i32
  %28 = load i32, i32* %image_type, align 4
  %call44 = call i32 @gimp_image_new(i32 %conv41, i32 %conv43, i32 %28)
  store i32 %call44, i32* %image, align 4
  %29 = load i32, i32* %image, align 4
  %cmp45 = icmp eq i32 %29, -1
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %sw.epilog
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call48 = call i32 @g_file_error_quark()
  %call49 = call i8* @gimp_get_pdb_error()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %30, i32 %call48, i32 24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0), i8* %call49)
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %sw.epilog
  %31 = load i32, i32* %image, align 4
  %32 = load i8*, i8** %filename.addr, align 8
  %call51 = call i32 @gimp_image_set_filename(i32 %31, i8* %32)
  %33 = load i32, i32* %image, align 4
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0)) #5
  %34 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize53 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %34, i32 0, i32 5
  %35 = load i16, i16* %xsize53, align 2
  %conv54 = zext i16 %35 to i32
  %36 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize55 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %36, i32 0, i32 6
  %37 = load i16, i16* %ysize55, align 2
  %conv56 = zext i16 %37 to i32
  %38 = load i32, i32* %layer_type, align 4
  %call57 = call i32 @gimp_layer_new(i32 %33, i8* %call52, i32 %conv54, i32 %conv56, i32 %38, double 1.000000e+02, i32 0)
  store i32 %call57, i32* %layer, align 4
  %39 = load i32, i32* %image, align 4
  %40 = load i32, i32* %layer, align 4
  %call58 = call i32 @gimp_image_insert_layer(i32 %39, i32 %40, i32 -1, i32 0)
  %41 = load i32, i32* %layer, align 4
  %call59 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %41)
  store %struct._GimpDrawable* %call59, %struct._GimpDrawable** %drawable, align 8
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width, align 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 2
  %46 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %42, i32 0, i32 0, i32 %44, i32 %46, i32 1, i32 0)
  %call60 = call i32 @gimp_tile_height() #6
  store i32 %call60, i32* %tile_height, align 4
  %47 = load i32, i32* %tile_height, align 4
  %conv61 = sext i32 %47 to i64
  %call62 = call noalias i8* @g_malloc_n(i64 %conv61, i64 8)
  %48 = bitcast i8* %call62 to i8**
  store i8** %48, i8*** %pixels, align 8
  %49 = load i32, i32* %tile_height, align 4
  %conv63 = sext i32 %49 to i64
  %50 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize64 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %50, i32 0, i32 5
  %51 = load i16, i16* %xsize64, align 2
  %conv65 = zext i16 %51 to i64
  %mul = mul i64 %conv63, %conv65
  %52 = load i32, i32* %bytes, align 4
  %conv66 = sext i32 %52 to i64
  %mul67 = mul i64 %mul, %conv66
  %call68 = call noalias i8* @g_malloc_n(i64 %mul67, i64 1)
  %53 = load i8**, i8*** %pixels, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %call68, i8** %arrayidx, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %tile_height, align 4
  %cmp69 = icmp slt i32 %54, %55
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i8**, i8*** %pixels, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %56, i64 0
  %57 = load i8*, i8** %arrayidx71, align 8
  %58 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize72 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %58, i32 0, i32 5
  %59 = load i16, i16* %xsize72, align 2
  %conv73 = zext i16 %59 to i32
  %60 = load i32, i32* %bytes, align 4
  %mul74 = mul nsw i32 %conv73, %60
  %61 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 %mul74, %61
  %idx.ext = sext i32 %mul75 to i64
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  %62 = load i32, i32* %i, align 4
  %idxprom = sext i32 %62 to i64
  %63 = load i8**, i8*** %pixels, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %63, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx76, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize77 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %65, i32 0, i32 7
  %66 = load i16, i16* %zsize77, align 2
  %conv78 = zext i16 %66 to i64
  %call79 = call noalias i8* @g_malloc_n(i64 %conv78, i64 8)
  %67 = bitcast i8* %call79 to i16**
  store i16** %67, i16*** %rows, align 8
  %68 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize80 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %68, i32 0, i32 5
  %69 = load i16, i16* %xsize80, align 2
  %conv81 = zext i16 %69 to i64
  %70 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize82 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %70, i32 0, i32 7
  %71 = load i16, i16* %zsize82, align 2
  %conv83 = zext i16 %71 to i64
  %mul84 = mul i64 %conv81, %conv83
  %call85 = call noalias i8* @g_malloc_n(i64 %mul84, i64 2)
  %72 = bitcast i8* %call85 to i16*
  %73 = load i16**, i16*** %rows, align 8
  %arrayidx86 = getelementptr inbounds i16*, i16** %73, i64 0
  store i16* %72, i16** %arrayidx86, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.101, %for.end
  %74 = load i32, i32* %i, align 4
  %75 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize88 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %75, i32 0, i32 7
  %76 = load i16, i16* %zsize88, align 2
  %conv89 = zext i16 %76 to i32
  %cmp90 = icmp slt i32 %74, %conv89
  br i1 %cmp90, label %for.body.92, label %for.end.103

for.body.92:                                      ; preds = %for.cond.87
  %77 = load i16**, i16*** %rows, align 8
  %arrayidx93 = getelementptr inbounds i16*, i16** %77, i64 0
  %78 = load i16*, i16** %arrayidx93, align 8
  %79 = load i32, i32* %i, align 4
  %80 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize94 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %80, i32 0, i32 5
  %81 = load i16, i16* %xsize94, align 2
  %conv95 = zext i16 %81 to i32
  %mul96 = mul nsw i32 %79, %conv95
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds i16, i16* %78, i64 %idx.ext97
  %82 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %82 to i64
  %83 = load i16**, i16*** %rows, align 8
  %arrayidx100 = getelementptr inbounds i16*, i16** %83, i64 %idxprom99
  store i16* %add.ptr98, i16** %arrayidx100, align 8
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.92
  %84 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %84, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.87

for.end.103:                                      ; preds = %for.cond.87
  store i32 0, i32* %y, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.197, %for.end.103
  %85 = load i32, i32* %y, align 4
  %86 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize105 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %86, i32 0, i32 6
  %87 = load i16, i16* %ysize105, align 2
  %conv106 = zext i16 %87 to i32
  %cmp107 = icmp slt i32 %85, %conv106
  br i1 %cmp107, label %for.body.109, label %for.end.200

for.body.109:                                     ; preds = %for.cond.104
  %88 = load i32, i32* %count, align 4
  %89 = load i32, i32* %tile_height, align 4
  %cmp110 = icmp sge i32 %88, %89
  br i1 %cmp110, label %if.then.112, label %if.end.119

if.then.112:                                      ; preds = %for.body.109
  %90 = load i8**, i8*** %pixels, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %90, i64 0
  %91 = load i8*, i8** %arrayidx113, align 8
  %92 = load i32, i32* %y, align 4
  %93 = load i32, i32* %count, align 4
  %sub = sub nsw i32 %92, %93
  %94 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width114 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %94, i32 0, i32 1
  %95 = load i32, i32* %width114, align 4
  %96 = load i32, i32* %count, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %91, i32 0, i32 %sub, i32 %95, i32 %96)
  store i32 0, i32* %count, align 4
  %97 = load i32, i32* %y, align 4
  %conv115 = sitofp i32 %97 to double
  %98 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize116 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %98, i32 0, i32 6
  %99 = load i16, i16* %ysize116, align 2
  %conv117 = uitofp i16 %99 to double
  %div = fdiv double %conv115, %conv117
  %call118 = call i32 @gimp_progress_update(double %div)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.112, %for.body.109
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.142, %if.end.119
  %100 = load i32, i32* %i, align 4
  %101 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize121 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %101, i32 0, i32 7
  %102 = load i16, i16* %zsize121, align 2
  %conv122 = zext i16 %102 to i32
  %cmp123 = icmp slt i32 %100, %conv122
  br i1 %cmp123, label %for.body.125, label %for.end.144

for.body.125:                                     ; preds = %for.cond.120
  %103 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %104 to i64
  %105 = load i16**, i16*** %rows, align 8
  %arrayidx127 = getelementptr inbounds i16*, i16** %105, i64 %idxprom126
  %106 = load i16*, i16** %arrayidx127, align 8
  %107 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize128 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %107, i32 0, i32 6
  %108 = load i16, i16* %ysize128, align 2
  %conv129 = zext i16 %108 to i32
  %sub130 = sub nsw i32 %conv129, 1
  %109 = load i32, i32* %y, align 4
  %sub131 = sub nsw i32 %sub130, %109
  %110 = load i32, i32* %i, align 4
  %call132 = call i32 @sgiGetRow(%struct.sgi_t* %103, i16* %106, i32 %sub131, i32 %110)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.141

if.then.135:                                      ; preds = %for.body.125
  %111 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize136 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %111, i32 0, i32 6
  %112 = load i16, i16* %ysize136, align 2
  %conv137 = zext i16 %112 to i32
  %sub138 = sub nsw i32 %conv137, 1
  %113 = load i32, i32* %y, align 4
  %sub139 = sub nsw i32 %sub138, %113
  %114 = load i32, i32* %i, align 4
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0), i32 %sub139, i32 %114)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.135, %for.body.125
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141
  %115 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %115, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond.120

for.end.144:                                      ; preds = %for.cond.120
  %116 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %bpp = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %116, i32 0, i32 2
  %117 = load i32, i32* %bpp, align 4
  %cmp145 = icmp eq i32 %117, 1
  br i1 %cmp145, label %if.then.147, label %if.else

if.then.147:                                      ; preds = %for.end.144
  store i32 0, i32* %x, align 4
  %118 = load i32, i32* %count, align 4
  %idxprom148 = sext i32 %118 to i64
  %119 = load i8**, i8*** %pixels, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %119, i64 %idxprom148
  %120 = load i8*, i8** %arrayidx149, align 8
  store i8* %120, i8** %pptr, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.168, %if.then.147
  %121 = load i32, i32* %x, align 4
  %122 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize151 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %122, i32 0, i32 5
  %123 = load i16, i16* %xsize151, align 2
  %conv152 = zext i16 %123 to i32
  %cmp153 = icmp slt i32 %121, %conv152
  br i1 %cmp153, label %for.body.155, label %for.end.170

for.body.155:                                     ; preds = %for.cond.150
  store i32 0, i32* %i, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.165, %for.body.155
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %bytes, align 4
  %cmp157 = icmp slt i32 %124, %125
  br i1 %cmp157, label %for.body.159, label %for.end.167

for.body.159:                                     ; preds = %for.cond.156
  %126 = load i32, i32* %x, align 4
  %idxprom160 = sext i32 %126 to i64
  %127 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %127 to i64
  %128 = load i16**, i16*** %rows, align 8
  %arrayidx162 = getelementptr inbounds i16*, i16** %128, i64 %idxprom161
  %129 = load i16*, i16** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i16, i16* %129, i64 %idxprom160
  %130 = load i16, i16* %arrayidx163, align 2
  %conv164 = trunc i16 %130 to i8
  %131 = load i8*, i8** %pptr, align 8
  store i8 %conv164, i8* %131, align 1
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.159
  %132 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %132, 1
  store i32 %inc166, i32* %i, align 4
  %133 = load i8*, i8** %pptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr, i8** %pptr, align 8
  br label %for.cond.156

for.end.167:                                      ; preds = %for.cond.156
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %134 = load i32, i32* %x, align 4
  %inc169 = add nsw i32 %134, 1
  store i32 %inc169, i32* %x, align 4
  br label %for.cond.150

for.end.170:                                      ; preds = %for.cond.150
  br label %if.end.196

if.else:                                          ; preds = %for.end.144
  store i32 0, i32* %x, align 4
  %135 = load i32, i32* %count, align 4
  %idxprom171 = sext i32 %135 to i64
  %136 = load i8**, i8*** %pixels, align 8
  %arrayidx172 = getelementptr inbounds i8*, i8** %136, i64 %idxprom171
  %137 = load i8*, i8** %arrayidx172, align 8
  store i8* %137, i8** %pptr, align 8
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.193, %if.else
  %138 = load i32, i32* %x, align 4
  %139 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize174 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %139, i32 0, i32 5
  %140 = load i16, i16* %xsize174, align 2
  %conv175 = zext i16 %140 to i32
  %cmp176 = icmp slt i32 %138, %conv175
  br i1 %cmp176, label %for.body.178, label %for.end.195

for.body.178:                                     ; preds = %for.cond.173
  store i32 0, i32* %i, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.189, %for.body.178
  %141 = load i32, i32* %i, align 4
  %142 = load i32, i32* %bytes, align 4
  %cmp180 = icmp slt i32 %141, %142
  br i1 %cmp180, label %for.body.182, label %for.end.192

for.body.182:                                     ; preds = %for.cond.179
  %143 = load i32, i32* %x, align 4
  %idxprom183 = sext i32 %143 to i64
  %144 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %144 to i64
  %145 = load i16**, i16*** %rows, align 8
  %arrayidx185 = getelementptr inbounds i16*, i16** %145, i64 %idxprom184
  %146 = load i16*, i16** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %146, i64 %idxprom183
  %147 = load i16, i16* %arrayidx186, align 2
  %conv187 = zext i16 %147 to i32
  %shr = ashr i32 %conv187, 8
  %conv188 = trunc i32 %shr to i8
  %148 = load i8*, i8** %pptr, align 8
  store i8 %conv188, i8* %148, align 1
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.body.182
  %149 = load i32, i32* %i, align 4
  %inc190 = add nsw i32 %149, 1
  store i32 %inc190, i32* %i, align 4
  %150 = load i8*, i8** %pptr, align 8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr191, i8** %pptr, align 8
  br label %for.cond.179

for.end.192:                                      ; preds = %for.cond.179
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %151 = load i32, i32* %x, align 4
  %inc194 = add nsw i32 %151, 1
  store i32 %inc194, i32* %x, align 4
  br label %for.cond.173

for.end.195:                                      ; preds = %for.cond.173
  br label %if.end.196

if.end.196:                                       ; preds = %for.end.195, %for.end.170
  br label %for.inc.197

for.inc.197:                                      ; preds = %if.end.196
  %152 = load i32, i32* %y, align 4
  %inc198 = add nsw i32 %152, 1
  store i32 %inc198, i32* %y, align 4
  %153 = load i32, i32* %count, align 4
  %inc199 = add nsw i32 %153, 1
  store i32 %inc199, i32* %count, align 4
  br label %for.cond.104

for.end.200:                                      ; preds = %for.cond.104
  %call201 = call i32 @gimp_progress_update(double 1.000000e+00)
  %154 = load i8**, i8*** %pixels, align 8
  %arrayidx202 = getelementptr inbounds i8*, i8** %154, i64 0
  %155 = load i8*, i8** %arrayidx202, align 8
  %156 = load i32, i32* %y, align 4
  %157 = load i32, i32* %count, align 4
  %sub203 = sub nsw i32 %156, %157
  %158 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width204 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %158, i32 0, i32 1
  %159 = load i32, i32* %width204, align 4
  %160 = load i32, i32* %count, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %155, i32 0, i32 %sub203, i32 %159, i32 %160)
  %161 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call205 = call i32 @sgiClose(%struct.sgi_t* %161)
  %162 = load i8**, i8*** %pixels, align 8
  %arrayidx206 = getelementptr inbounds i8*, i8** %162, i64 0
  %163 = load i8*, i8** %arrayidx206, align 8
  call void @g_free(i8* %163)
  %164 = load i8**, i8*** %pixels, align 8
  %165 = bitcast i8** %164 to i8*
  call void @g_free(i8* %165)
  %166 = load i16**, i16*** %rows, align 8
  %arrayidx207 = getelementptr inbounds i16*, i16** %166, i64 0
  %167 = load i16*, i16** %arrayidx207, align 8
  %168 = bitcast i16* %167 to i8*
  call void @g_free(i8* %168)
  %169 = load i16**, i16*** %rows, align 8
  %170 = bitcast i16** %169 to i8*
  call void @g_free(i8* %170)
  %171 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %171)
  %172 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %172)
  %173 = load i32, i32* %image, align 4
  store i32 %173, i32* %retval
  br label %return

return:                                           ; preds = %for.end.200, %if.then.47, %if.then.27, %if.then.18, %if.then.9, %if.then
  %174 = load i32, i32* %retval
  ret i32 %174
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
  %call = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0)) #5
  %0 = load i32, i32* @compression, align 4
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0)) #5
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0)) #5
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0)) #5
  %call6 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call2, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* @compression to i8*), i32 %0, i8* %call3, i32 0, i8* null, i8* %call4, i32 1, i8* null, i8* %call5, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call7)
  %3 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %3, i32 12)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call9 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkWidget* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call10)
  %6 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 1, i32 1, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_dialog_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call12)
  %12 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDialog*
  %call14 = call i32 @gimp_dialog_run(%struct._GimpDialog* %12)
  %cmp = icmp eq i32 %call14, -5
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %count = alloca i32, align 4
  %zsize = alloca i32, align 4
  %sgip = alloca %struct.sgi_t*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %pixels = alloca i8**, align 8
  %pptr = alloca i8*, align 8
  %rows = alloca i16**, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %1, i32 0, i32 0, i32 %3, i32 %5, i32 0, i32 0)
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_type(i32 %6)
  switch i32 %call1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %zsize, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %zsize, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %zsize, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 4, i32* %zsize, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call5)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %7 = load i8*, i8** %filename.addr, align 8
  %8 = load i32, i32* @compression, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width6, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height7, align 4
  %13 = load i32, i32* %zsize, align 4
  %call8 = call %struct.sgi_t* @sgiOpen(i8* %7, i32 1, i32 %8, i32 1, i32 %10, i32 %12, i32 %13)
  store %struct.sgi_t* %call8, %struct.sgi_t** %sgip, align 8
  %14 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %cmp = icmp eq %struct.sgi_t* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @g_file_error_quark()
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0)) #5
  %16 = load i8*, i8** %filename.addr, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call9, i32 24, i8* %call10, i8* %call11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0)) #5
  %17 = load i8*, i8** %filename.addr, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %17)
  %call14 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call12, i8* %call13)
  %call15 = call i32 @gimp_tile_height() #6
  store i32 %call15, i32* %tile_height, align 4
  %18 = load i32, i32* %tile_height, align 4
  %conv = sext i32 %18 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %19 = bitcast i8* %call16 to i8**
  store i8** %19, i8*** %pixels, align 8
  %20 = load i32, i32* %tile_height, align 4
  %conv17 = sext i32 %20 to i64
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width18, align 4
  %conv19 = zext i32 %22 to i64
  %mul = mul i64 %conv17, %conv19
  %23 = load i32, i32* %zsize, align 4
  %conv20 = sext i32 %23 to i64
  %mul21 = mul i64 %mul, %conv20
  %call22 = call noalias i8* @g_malloc_n(i64 %mul21, i64 1)
  %24 = load i8**, i8*** %pixels, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %call22, i8** %arrayidx, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %tile_height, align 4
  %cmp23 = icmp slt i32 %25, %26
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8**, i8*** %pixels, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx25, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 1
  %30 = load i32, i32* %width26, align 4
  %31 = load i32, i32* %zsize, align 4
  %mul27 = mul i32 %30, %31
  %32 = load i32, i32* %i, align 4
  %mul28 = mul i32 %mul27, %32
  %idx.ext = zext i32 %mul28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load i8**, i8*** %pixels, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize30 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %36, i32 0, i32 7
  %37 = load i16, i16* %zsize30, align 2
  %conv31 = zext i16 %37 to i64
  %call32 = call noalias i8* @g_malloc_n(i64 %conv31, i64 8)
  %38 = bitcast i8* %call32 to i16**
  store i16** %38, i16*** %rows, align 8
  %39 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %39, i32 0, i32 5
  %40 = load i16, i16* %xsize, align 2
  %conv33 = zext i16 %40 to i64
  %41 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize34 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %41, i32 0, i32 7
  %42 = load i16, i16* %zsize34, align 2
  %conv35 = zext i16 %42 to i64
  %mul36 = mul i64 %conv33, %conv35
  %call37 = call noalias i8* @g_malloc_n(i64 %mul36, i64 2)
  %43 = bitcast i8* %call37 to i16*
  %44 = load i16**, i16*** %rows, align 8
  %arrayidx38 = getelementptr inbounds i16*, i16** %44, i64 0
  store i16* %43, i16** %arrayidx38, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.53, %for.end
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize40 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %46, i32 0, i32 7
  %47 = load i16, i16* %zsize40, align 2
  %conv41 = zext i16 %47 to i32
  %cmp42 = icmp slt i32 %45, %conv41
  br i1 %cmp42, label %for.body.44, label %for.end.55

for.body.44:                                      ; preds = %for.cond.39
  %48 = load i16**, i16*** %rows, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %48, i64 0
  %49 = load i16*, i16** %arrayidx45, align 8
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize46 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %51, i32 0, i32 5
  %52 = load i16, i16* %xsize46, align 2
  %conv47 = zext i16 %52 to i32
  %mul48 = mul nsw i32 %50, %conv47
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds i16, i16* %49, i64 %idx.ext49
  %53 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load i16**, i16*** %rows, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %54, i64 %idxprom51
  store i16* %add.ptr50, i16** %arrayidx52, align 8
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.44
  %55 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %55, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.39

for.end.55:                                       ; preds = %for.cond.39
  store i32 0, i32* %y, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.115, %for.end.55
  %56 = load i32, i32* %y, align 4
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %57, i32 0, i32 2
  %58 = load i32, i32* %height57, align 4
  %cmp58 = icmp ult i32 %56, %58
  br i1 %cmp58, label %for.body.60, label %for.end.117

for.body.60:                                      ; preds = %for.cond.56
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* %tile_height, align 4
  %add = add nsw i32 %59, %60
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 2
  %62 = load i32, i32* %height61, align 4
  %cmp62 = icmp uge i32 %add, %62
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %for.body.60
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height65 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 2
  %64 = load i32, i32* %height65, align 4
  %65 = load i32, i32* %y, align 4
  %sub = sub i32 %64, %65
  store i32 %sub, i32* %count, align 4
  br label %if.end.66

if.else:                                          ; preds = %for.body.60
  %66 = load i32, i32* %tile_height, align 4
  store i32 %66, i32* %count, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.64
  %67 = load i8**, i8*** %pixels, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %67, i64 0
  %68 = load i8*, i8** %arrayidx67, align 8
  %69 = load i32, i32* %y, align 4
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %70, i32 0, i32 1
  %71 = load i32, i32* %width68, align 4
  %72 = load i32, i32* %count, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %68, i32 0, i32 %69, i32 %71, i32 %72)
  store i32 0, i32* %i, align 4
  %73 = load i8**, i8*** %pixels, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %73, i64 0
  %74 = load i8*, i8** %arrayidx69, align 8
  store i8* %74, i8** %pptr, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.108, %if.end.66
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %count, align 4
  %cmp71 = icmp slt i32 %75, %76
  br i1 %cmp71, label %for.body.73, label %for.end.110

for.body.73:                                      ; preds = %for.cond.70
  store i32 0, i32* %x, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.91, %for.body.73
  %77 = load i32, i32* %x, align 4
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width75 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %78, i32 0, i32 1
  %79 = load i32, i32* %width75, align 4
  %cmp76 = icmp ult i32 %77, %79
  br i1 %cmp76, label %for.body.78, label %for.end.93

for.body.78:                                      ; preds = %for.cond.74
  store i32 0, i32* %j, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.88, %for.body.78
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %zsize, align 4
  %cmp80 = icmp slt i32 %80, %81
  br i1 %cmp80, label %for.body.82, label %for.end.90

for.body.82:                                      ; preds = %for.cond.79
  %82 = load i8*, i8** %pptr, align 8
  %83 = load i8, i8* %82, align 1
  %conv83 = zext i8 %83 to i16
  %84 = load i32, i32* %x, align 4
  %idxprom84 = sext i32 %84 to i64
  %85 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %85 to i64
  %86 = load i16**, i16*** %rows, align 8
  %arrayidx86 = getelementptr inbounds i16*, i16** %86, i64 %idxprom85
  %87 = load i16*, i16** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %87, i64 %idxprom84
  store i16 %conv83, i16* %arrayidx87, align 2
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.82
  %88 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %88, 1
  store i32 %inc89, i32* %j, align 4
  %89 = load i8*, i8** %pptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr, i8** %pptr, align 8
  br label %for.cond.79

for.end.90:                                       ; preds = %for.cond.79
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %90 = load i32, i32* %x, align 4
  %inc92 = add nsw i32 %90, 1
  store i32 %inc92, i32* %x, align 4
  br label %for.cond.74

for.end.93:                                       ; preds = %for.cond.74
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.105, %for.end.93
  %91 = load i32, i32* %j, align 4
  %92 = load i32, i32* %zsize, align 4
  %cmp95 = icmp slt i32 %91, %92
  br i1 %cmp95, label %for.body.97, label %for.end.107

for.body.97:                                      ; preds = %for.cond.94
  %93 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %94 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %94 to i64
  %95 = load i16**, i16*** %rows, align 8
  %arrayidx99 = getelementptr inbounds i16*, i16** %95, i64 %idxprom98
  %96 = load i16*, i16** %arrayidx99, align 8
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height100 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %97, i32 0, i32 2
  %98 = load i32, i32* %height100, align 4
  %sub101 = sub i32 %98, 1
  %99 = load i32, i32* %y, align 4
  %sub102 = sub i32 %sub101, %99
  %100 = load i32, i32* %i, align 4
  %sub103 = sub i32 %sub102, %100
  %101 = load i32, i32* %j, align 4
  %call104 = call i32 @sgiPutRow(%struct.sgi_t* %93, i16* %96, i32 %sub103, i32 %101)
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.97
  %102 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %102, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.94

for.end.107:                                      ; preds = %for.cond.94
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %103 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %103, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.70

for.end.110:                                      ; preds = %for.cond.70
  %104 = load i32, i32* %y, align 4
  %conv111 = sitofp i32 %104 to double
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height112 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %105, i32 0, i32 2
  %106 = load i32, i32* %height112, align 4
  %conv113 = uitofp i32 %106 to double
  %div = fdiv double %conv111, %conv113
  %call114 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.end.110
  %107 = load i32, i32* %count, align 4
  %108 = load i32, i32* %y, align 4
  %add116 = add nsw i32 %108, %107
  store i32 %add116, i32* %y, align 4
  br label %for.cond.56

for.end.117:                                      ; preds = %for.cond.56
  %call118 = call i32 @gimp_progress_update(double 1.000000e+00)
  %109 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call119 = call i32 @sgiClose(%struct.sgi_t* %109)
  %110 = load i8**, i8*** %pixels, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %110, i64 0
  %111 = load i8*, i8** %arrayidx120, align 8
  call void @g_free(i8* %111)
  %112 = load i8**, i8*** %pixels, align 8
  %113 = bitcast i8** %112 to i8*
  call void @g_free(i8* %113)
  %114 = load i16**, i16*** %rows, align 8
  %arrayidx121 = getelementptr inbounds i16*, i16** %114, i64 0
  %115 = load i16*, i16** %arrayidx121, align 8
  %116 = bitcast i16* %115 to i8*
  call void @g_free(i8* %116)
  %117 = load i16**, i16*** %rows, align 8
  %118 = bitcast i16** %117 to i8*
  call void @g_free(i8* %118)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.117, %if.then, %sw.default
  %119 = load i32, i32* %retval
  ret i32 %119
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

declare %struct.sgi_t* @sgiOpen(i8*, i32, i32, i32, i32, i32, i32) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i8* @gimp_get_pdb_error() #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare i32 @sgiGetRow(%struct.sgi_t*, i16*, i32, i32) #1

declare i32 @printf(i8*, ...) #1

declare i32 @sgiClose(%struct.sgi_t*) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @sgiPutRow(%struct.sgi_t*, i16*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
