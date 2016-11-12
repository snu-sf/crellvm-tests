; ModuleID = './plug-ins/common/convolution-matrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.config_struct = type { [5 x [5 x float]], float, float, i32, i32, [5 x i32], i32 }
%struct.anon = type { [5 x [5 x %struct._GtkWidget*]], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, [3 x %struct._GtkWidget*], [5 x %struct._GtkWidget*], %struct._GtkWidget* }
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkCursor = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [11 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.21, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"argc-matrix\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"The number of elements in the following array. Should be always 25.\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"The 5x5 convolution matrix\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"alpha-alg\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Enable weighting by alpha channel\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Divisor\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"argc-channels\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"The number of elements in following array. Should be always 5.\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Mask of the channels to be filtered\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"bmode\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"Mode for treating image borders { EXTEND (0), WRAP (1), CLEAR (2) }\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"plug-in-convmatrix\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Apply a generic 5x5 convolution matrix\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Lauri Alanko\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"_Convolution Matrix...\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Generic\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"Convolution does not work on layers smaller than 3x3 pixels.\00", align 1
@config = internal global %struct.config_struct zeroinitializer, align 4
@default_config = internal constant %struct.config_struct { [5 x [5 x float]] [[5 x float] zeroinitializer, [5 x float] zeroinitializer, [5 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [5 x float] zeroinitializer, [5 x float] zeroinitializer], float 1.000000e+00, float 0.000000e+00, i32 1, i32 2, [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], i32 0 }, align 4
@.str.33 = private unnamed_addr constant [21 x i8] c"Applying convolution\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"convolution-matrix\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Convolution Matrix\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"gimp-convolution-matrix\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@widget_set = internal global %struct.anon zeroinitializer, align 8
@.str.42 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"D_ivisor:\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"O_ffset:\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"N_ormalise\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"A_lpha-weighting\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Border\00", align 1
@bmode_labels = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)], align 16
@.str.49 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@channel_labels = internal constant [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0)], align 16
@.str.50 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@run_flag = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"E_xtend\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"_Wrap\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"Cro_p\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"Gr_ey\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"Re_d\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"_Green\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"_Blue\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"_Alpha\00", align 1
@convolve_pixel.matrixsum = internal global float 0.000000e+00, align 4
@convolve_pixel.bpp = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 1, i32 11, i32 0, %struct._GimpParamDef* getelementptr inbounds ([11 x %struct._GimpParamDef], [11 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %run_mode, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %5)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width, align 4
  %cmp = icmp ult i32 %7, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height, align 4
  %cmp7 = icmp ult i32 %9, 3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call8)
  store i32 0, i32* %status, align 4
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.config_struct* @config to i8*), i8* bitcast (%struct.config_struct* @default_config to i8*), i64 140, i32 4, i1 false)
  %11 = load i32, i32* %run_mode, align 4
  %cmp9 = icmp eq i32 %11, 1
  br i1 %cmp9, label %if.then.10, label %if.else.70

if.then.10:                                       ; preds = %if.end
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp11 = icmp ne i32 %12, 11
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.10
  %13 = load i32, i32* %nparams.addr, align 4
  %cmp12 = icmp ne i32 %13, 12
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true, %if.then.10
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %15 = load i32, i32* %d_int3216, align 4
  %cmp17 = icmp ne i32 %15, 25
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.34

if.else.19:                                       ; preds = %if.else
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %if.else.19
  %16 = load i32, i32* %y, align 4
  %cmp20 = icmp slt i32 %16, 5
  br i1 %cmp20, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %17 = load i32, i32* %x, align 4
  %cmp22 = icmp slt i32 %17, 5
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.21
  %18 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %18, 5
  %19 = load i32, i32* %y, align 4
  %add = add nsw i32 %mul, %19
  %idxprom = sext i32 %add to i64
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data25 to double**
  %21 = load double*, double** %d_floatarray, align 8
  %arrayidx26 = getelementptr inbounds double, double* %21, i64 %idxprom
  %22 = load double, double* %arrayidx26, align 8
  %conv = fptrunc double %22 to float
  %23 = load i32, i32* %y, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load i32, i32* %x, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx29, i32 0, i64 %idxprom27
  store float %conv, float* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %26 = load i32, i32* %y, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, i32* %y, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %if.then.18
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 5
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_int3237 = bitcast %union._GimpParamData* %data36 to i32*
  %28 = load i32, i32* %d_int3237, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 6
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data39 to double*
  %30 = load double, double* %d_float, align 8
  %conv40 = fptrunc double %30 to float
  store float %conv40, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 1), align 4
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 7
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_float43 = bitcast %union._GimpParamData* %data42 to double*
  %32 = load double, double* %d_float43, align 8
  %conv44 = fptrunc double %32 to float
  store float %conv44, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 2), align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 8
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_int3247 = bitcast %union._GimpParamData* %data46 to i32*
  %34 = load i32, i32* %d_int3247, align 4
  %cmp48 = icmp ne i32 %34, 5
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.end.34
  store i32 1, i32* %status, align 4
  br label %if.end.65

if.else.51:                                       ; preds = %if.end.34
  store i32 0, i32* %y, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.62, %if.else.51
  %35 = load i32, i32* %y, align 4
  %cmp53 = icmp slt i32 %35, 5
  br i1 %cmp53, label %for.body.55, label %for.end.64

for.body.55:                                      ; preds = %for.cond.52
  %36 = load i32, i32* %y, align 4
  %idxprom56 = sext i32 %36 to i64
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 9
  %data58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx57, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data58 to i32**
  %38 = load i32*, i32** %d_int32array, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %38, i64 %idxprom56
  %39 = load i32, i32* %arrayidx59, align 4
  %40 = load i32, i32* %y, align 4
  %idxprom60 = sext i32 %40 to i64
  %arrayidx61 = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 5), i32 0, i64 %idxprom60
  store i32 %39, i32* %arrayidx61, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.55
  %41 = load i32, i32* %y, align 4
  %inc63 = add nsw i32 %41, 1
  store i32 %inc63, i32* %y, align 4
  br label %for.cond.52

for.end.64:                                       ; preds = %for.cond.52
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %if.then.50
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 10
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int3268 = bitcast %union._GimpParamData* %data67 to i32*
  %43 = load i32, i32* %d_int3268, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @check_config(%struct._GimpDrawable* %44)
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.65, %if.then.13
  br label %if.end.79

if.else.70:                                       ; preds = %if.end
  %call71 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (%struct.config_struct* @config to i8*))
  %45 = load i32, i32* %run_mode, align 4
  %cmp72 = icmp eq i32 %45, 0
  br i1 %cmp72, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.else.70
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @check_config(%struct._GimpDrawable* %46)
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call75 = call i32 @convolve_image_dialog(%struct._GimpDrawable* %47)
  %tobool = icmp ne i32 %call75, 0
  br i1 %tobool, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.then.74
  store i32 0, i32* %status, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.else.70
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.69
  %48 = load i32, i32* %status, align 4
  %cmp80 = icmp eq i32 %48, 3
  br i1 %cmp80, label %if.then.82, label %if.end.109

if.then.82:                                       ; preds = %if.end.79
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id, align 4
  %call83 = call i32 @gimp_drawable_is_rgb(i32 %50)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.89, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.then.82
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id86 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 0
  %52 = load i32, i32* %drawable_id86, align 4
  %call87 = call i32 @gimp_drawable_is_gray(i32 %52)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.else.107

if.then.89:                                       ; preds = %lor.lhs.false.85, %if.then.82
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0)) #4
  %call91 = call i32 @gimp_progress_init(i8* %call90)
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width92 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 1
  %54 = load i32, i32* %width92, align 4
  %call93 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %54, %call93
  %add94 = add i32 %div, 1
  %mul95 = mul i32 2, %add94
  %conv96 = zext i32 %mul95 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv96)
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @convolve_image(%struct._GimpDrawable* %55, %struct._GimpPreview* null)
  %56 = load i32, i32* %run_mode, align 4
  %cmp97 = icmp ne i32 %56, 1
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.then.89
  %call100 = call i32 @gimp_displays_flush()
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.then.89
  %57 = load i32, i32* %run_mode, align 4
  %cmp102 = icmp eq i32 %57, 0
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.end.101
  %call105 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (%struct.config_struct* @config to i8*), i32 140)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.101
  br label %if.end.108

if.else.107:                                      ; preds = %lor.lhs.false.85
  store i32 0, i32* %status, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.end.106
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %58)
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.79
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %59 = load i32, i32* %status, align 4
  store i32 %59, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.109, %if.then
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

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

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

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @check_config(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @convolve_image_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %inbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %group = alloca %struct._GSList*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0)) #4
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 1, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  %call12 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call13)
  %13 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @convolve_image to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call19 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %main_hbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call22 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %vbox, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call23)
  %33 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 1, i32 1, i32 0)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)) #4
  %call26 = call %struct._GtkWidget* @gimp_frame_new(i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %frame, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call27)
  %37 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %inbox, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call30)
  %41 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %41, %struct._GtkWidget* %42)
  %call32 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 5, i32 0)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %table, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call33)
  %45 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %45, i32 4)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call35)
  %48 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %48, i32 4)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call37)
  %51 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 1, i32 1, i32 0)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %53 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %53, 5
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body
  %54 = load i32, i32* %x, align 4
  %cmp40 = icmp slt i32 %54, 5
  br i1 %cmp40, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %for.cond.39
  %call42 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %entry1, align 8
  %55 = load i32, i32* %y, align 4
  %idxprom = sext i32 %55 to i64
  %56 = load i32, i32* %x, align 4
  %idxprom43 = sext i32 %56 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x %struct._GtkWidget*]], [5 x [5 x %struct._GtkWidget*]]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 0), i32 0, i64 %idxprom43
  %arrayidx44 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %arrayidx, i32 0, i64 %idxprom
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %arrayidx44, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %57, i32 40, i32 -1)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call45)
  %60 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %x, align 4
  %add = add nsw i32 %63, 1
  %64 = load i32, i32* %y, align 4
  %65 = load i32, i32* %y, align 4
  %add47 = add nsw i32 %65, 1
  call void @gtk_table_attach(%struct._GtkTable* %60, %struct._GtkWidget* %61, i32 %62, i32 %add, i32 %64, i32 %add47, i32 5, i32 5, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load i32, i32* %y, align 4
  %idxprom48 = sext i32 %69 to i64
  %70 = load i32, i32* %x, align 4
  %idxprom49 = sext i32 %70 to i64
  %arrayidx50 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx50, i32 0, i64 %idxprom48
  %71 = bitcast float* %arrayidx51 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %for.inc

for.inc:                                          ; preds = %for.body.41
  %76 = load i32, i32* %x, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end
  %77 = load i32, i32* %y, align 4
  %inc55 = add nsw i32 %77, 1
  store i32 %inc55, i32* %y, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %call57 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %box, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call58)
  %81 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %81, %struct._GtkWidget* %82, i32 0, i32 0, i32 0)
  %call60 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 2, i32 0)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %table, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call61)
  %85 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %85, i32 6)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call63)
  %88 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 1, i32 0, i32 0)
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0)) #4
  %call66 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call65)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %label, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_misc_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call67)
  %92 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %92, float 0.000000e+00, float 5.000000e-01)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call69)
  %95 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %95, %struct._GtkWidget* %96, i32 0, i32 1, i32 0, i32 1)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  %call71 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %call71, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 1), align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %98, i32 40, i32 -1)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call72)
  %101 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %101, %struct._GtkWidget* %102, i32 1, i32 2, i32 0, i32 1)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_label_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call74)
  %106 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkLabel*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %106, %struct._GtkWidget* %107)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* bitcast (float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %113, void (i8*, %struct._GClosure*)* null, i32 2)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %call78 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 2, i32 0)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %table, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call79)
  %117 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %117, i32 6)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_box_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call81)
  %120 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkBox*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %120, %struct._GtkWidget* %121, i32 1, i32 0, i32 0)
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0)) #4
  %call84 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call83)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %label, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_misc_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call85)
  %124 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %124, float 0.000000e+00, float 5.000000e-01)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_table_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call87)
  %127 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkTable*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %127, %struct._GtkWidget* %128, i32 0, i32 1, i32 0, i32 1)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %call89 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %call89, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 2), align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %130, i32 40, i32 -1)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call90)
  %133 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %133, %struct._GtkWidget* %134, i32 1, i32 2, i32 0, i32 1)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_label_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call92)
  %138 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkLabel*
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %138, %struct._GtkWidget* %139)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %141 = bitcast %struct._GtkWidget* %140 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* bitcast (float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %145 = bitcast %struct._GtkWidget* %144 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %145, void (i8*, %struct._GClosure*)* null, i32 2)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %148)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %call96 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %box, align 8
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call97)
  %152 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %152, %struct._GtkWidget* %153, i32 0, i32 0, i32 0)
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0)) #4
  %call100 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call99)
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %call100, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 6), align 8
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_box_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call101)
  %156 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkBox*
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %156, %struct._GtkWidget* %157, i32 1, i32 0, i32 0)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %160 = bitcast %struct._GtkWidget* %159 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32*)* @my_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %162 = bitcast %struct._GtkWidget* %161 to i8*
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %164, void (i8*, %struct._GClosure*)* null, i32 2)
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0)) #4
  %call106 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call105)
  store %struct._GtkWidget* %call106, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %call106, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 3), align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  %cmp107 = icmp eq i32 %165, -1
  br i1 %cmp107, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.56
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %166, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.56
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_box_get_type() #6
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call108)
  %169 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkBox*
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %169, %struct._GtkWidget* %170, i32 1, i32 0, i32 0)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %171)
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %173 = bitcast %struct._GtkWidget* %172 to i8*
  %call110 = call i64 @g_signal_connect_data(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32*)* @my_toggle_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %175 = bitcast %struct._GtkWidget* %174 to i8*
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %177 = bitcast %struct._GtkWidget* %176 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %177, void (i8*, %struct._GClosure*)* null, i32 2)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %178)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %179)
  %call112 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %inbox, align 8
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %181 = bitcast %struct._GtkWidget* %180 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_box_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 %call113)
  %182 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkBox*
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %182, %struct._GtkWidget* %183, i32 0, i32 0, i32 0)
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)) #4
  %call116 = call %struct._GtkWidget* @gimp_frame_new(i8* %call115)
  store %struct._GtkWidget* %call116, %struct._GtkWidget** %frame, align 8
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_box_get_type() #6
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call117)
  %186 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkBox*
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %186, %struct._GtkWidget* %187, i32 0, i32 0, i32 0)
  %call119 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %box, align 8
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %189 = bitcast %struct._GtkWidget* %188 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_container_get_type() #6
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call120)
  %190 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkContainer*
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %190, %struct._GtkWidget* %191)
  store %struct._GSList* null, %struct._GSList** %group, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.139, %if.end
  %192 = load i32, i32* %i, align 4
  %cmp123 = icmp slt i32 %192, 3
  br i1 %cmp123, label %for.body.124, label %for.end.141

for.body.124:                                     ; preds = %for.cond.122
  %193 = load %struct._GSList*, %struct._GSList** %group, align 8
  %194 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %194 to i64
  %arrayidx126 = getelementptr inbounds [3 x i8*], [3 x i8*]* @bmode_labels, i32 0, i64 %idxprom125
  %195 = load i8*, i8** %arrayidx126, align 8
  %call127 = call i8* @gettext(i8* %195) #4
  %call128 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %193, i8* %call127)
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %button, align 8
  %196 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %196 to i64
  %arrayidx130 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 4), i32 0, i64 %idxprom129
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %arrayidx130, align 8
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %198 = bitcast %struct._GtkWidget* %197 to %struct._GTypeInstance*
  %call131 = call i64 @gtk_radio_button_get_type() #6
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %198, i64 %call131)
  %199 = bitcast %struct._GTypeInstance* %call132 to %struct._GtkRadioButton*
  %call133 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %199)
  store %struct._GSList* %call133, %struct._GSList** %group, align 8
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %201 = bitcast %struct._GtkWidget* %200 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_box_get_type() #6
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call134)
  %202 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkBox*
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %202, %struct._GtkWidget* %203, i32 0, i32 0, i32 0)
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %204)
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %206 = bitcast %struct._GtkWidget* %205 to i8*
  %207 = load i32, i32* %i, align 4
  %add136 = add nsw i32 %207, 1
  %conv = sext i32 %add136 to i64
  %208 = inttoptr i64 %conv to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @my_bmode_callback to void ()*), i8* %208, void (i8*, %struct._GClosure*)* null, i32 0)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %210 = bitcast %struct._GtkWidget* %209 to i8*
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %212 = bitcast %struct._GtkWidget* %211 to i8*
  %call138 = call i64 @g_signal_connect_data(i8* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %212, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.124
  %213 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %213, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.122

for.end.141:                                      ; preds = %for.cond.122
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %214)
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %215)
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #4
  %call143 = call %struct._GtkWidget* @gimp_frame_new(i8* %call142)
  store %struct._GtkWidget* %call143, %struct._GtkWidget** %frame, align 8
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  %217 = bitcast %struct._GtkWidget* %216 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_box_get_type() #6
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call144)
  %218 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkBox*
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %218, %struct._GtkWidget* %219, i32 0, i32 0, i32 0)
  %call146 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call146, %struct._GtkWidget** %box, align 8
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_container_get_type() #6
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call147)
  %222 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkContainer*
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %222, %struct._GtkWidget* %223)
  store i32 0, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.188, %for.end.141
  %224 = load i32, i32* %i, align 4
  %cmp150 = icmp slt i32 %224, 5
  br i1 %cmp150, label %for.body.152, label %for.end.190

for.body.152:                                     ; preds = %for.cond.149
  %225 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %225, i32 0, i32 0
  %226 = load i32, i32* %drawable_id, align 4
  %call153 = call i32 @gimp_drawable_is_gray(i32 %226)
  %tobool = icmp ne i32 %call153, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body.152
  %227 = load i32, i32* %i, align 4
  %cmp154 = icmp eq i32 %227, 0
  br i1 %cmp154, label %if.then.172, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body.152
  %228 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id156 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %228, i32 0, i32 0
  %229 = load i32, i32* %drawable_id156, align 4
  %call157 = call i32 @gimp_drawable_is_rgb(i32 %229)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %land.lhs.true.159, label %lor.lhs.false.165

land.lhs.true.159:                                ; preds = %lor.lhs.false
  %230 = load i32, i32* %i, align 4
  %cmp160 = icmp sge i32 %230, 1
  br i1 %cmp160, label %land.lhs.true.162, label %lor.lhs.false.165

land.lhs.true.162:                                ; preds = %land.lhs.true.159
  %231 = load i32, i32* %i, align 4
  %cmp163 = icmp sle i32 %231, 3
  br i1 %cmp163, label %if.then.172, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %land.lhs.true.162, %land.lhs.true.159, %lor.lhs.false
  %232 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id166 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %232, i32 0, i32 0
  %233 = load i32, i32* %drawable_id166, align 4
  %call167 = call i32 @gimp_drawable_has_alpha(i32 %233)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %land.lhs.true.169, label %if.else

land.lhs.true.169:                                ; preds = %lor.lhs.false.165
  %234 = load i32, i32* %i, align 4
  %cmp170 = icmp eq i32 %234, 4
  br i1 %cmp170, label %if.then.172, label %if.else

if.then.172:                                      ; preds = %land.lhs.true.169, %land.lhs.true.162, %land.lhs.true
  %235 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %235 to i64
  %arrayidx174 = getelementptr inbounds [5 x i8*], [5 x i8*]* @channel_labels, i32 0, i64 %idxprom173
  %236 = load i8*, i8** %arrayidx174, align 8
  %call175 = call i8* @gettext(i8* %236) #4
  %call176 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call175)
  store %struct._GtkWidget* %call176, %struct._GtkWidget** %button, align 8
  %237 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %237 to i64
  %arrayidx178 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 5), i32 0, i64 %idxprom177
  store %struct._GtkWidget* %call176, %struct._GtkWidget** %arrayidx178, align 8
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %239 = bitcast %struct._GtkWidget* %238 to %struct._GTypeInstance*
  %call179 = call i64 @gtk_box_get_type() #6
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call179)
  %240 = bitcast %struct._GTypeInstance* %call180 to %struct._GtkBox*
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %240, %struct._GtkWidget* %241, i32 0, i32 0, i32 0)
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %242)
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %244 = bitcast %struct._GtkWidget* %243 to i8*
  %245 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %245 to i64
  %arrayidx182 = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 5), i32 0, i64 %idxprom181
  %246 = bitcast i32* %arrayidx182 to i8*
  %call183 = call i64 @g_signal_connect_data(i8* %244, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32*)* @my_toggle_callback to void ()*), i8* %246, void (i8*, %struct._GClosure*)* null, i32 0)
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %248 = bitcast %struct._GtkWidget* %247 to i8*
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %250 = bitcast %struct._GtkWidget* %249 to i8*
  %call184 = call i64 @g_signal_connect_data(i8* %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %250, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.187

if.else:                                          ; preds = %land.lhs.true.169, %lor.lhs.false.165
  %251 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %251 to i64
  %arrayidx186 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 5), i32 0, i64 %idxprom185
  store %struct._GtkWidget* null, %struct._GtkWidget** %arrayidx186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.else, %if.then.172
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %252 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %252, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond.149

for.end.190:                                      ; preds = %for.cond.149
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %253)
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %254)
  %255 = load %struct._GtkWidget*, %struct._GtkWidget** %inbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %255)
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %257 = bitcast %struct._GtkWidget* %256 to i8*
  %258 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %259 = bitcast %struct._GimpDrawable* %258 to i8*
  %call191 = call i64 @g_signal_connect_data(i8* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpDrawable*)* @response_callback to void ()*), i8* %259, void (i8*, %struct._GClosure*)* null, i32 0)
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %261 = bitcast %struct._GtkWidget* %260 to i8*
  %call192 = call i64 @g_signal_connect_data(i8* %261, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %262 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %262)
  call void @redraw_all()
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 4, i64 2), align 8
  %264 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  %cmp193 = icmp sgt i32 %264, 0
  %conv194 = zext i1 %cmp193 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %263, i32 %conv194)
  call void @gtk_main()
  %265 = load i32, i32* @run_flag, align 4
  ret i32 %265
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @convolve_image(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %src_w = alloca i32, align 4
  %src_row_w = alloca i32, align 4
  %src_h = alloca i32, align 4
  %i = alloca i32, align 4
  %src_x1 = alloca i32, align 4
  %src_y1 = alloca i32, align 4
  %src_x2 = alloca i32, align 4
  %src_y2 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %dest_row = alloca [3 x i8*], align 16
  %src_row = alloca [5 x i8*], align 16
  %tmp_row = alloca i8*, align 8
  %x_offset = alloca i32, align 4
  %chanmask = alloca [4 x i32], align 16
  %bpp = alloca i32, align 4
  %alpha_channel = alloca i32, align 4
  %channel = alloca i32, align 4
  %d = alloca i8, align 1
  %result = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %src_x1, i32* %src_y1)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %src_w, i32* %src_h)
  %3 = load i32, i32* %src_x1, align 4
  %4 = load i32, i32* %src_w, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %src_x2, align 4
  %5 = load i32, i32* %src_y1, align 4
  %6 = load i32, i32* %src_h, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %src_y2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %8, i32* %src_x1, i32* %src_y1, i32* %src_x2, i32* %src_y2)
  %9 = load i32, i32* %src_x2, align 4
  %10 = load i32, i32* %src_x1, align 4
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %src_w, align 4
  %11 = load i32, i32* %src_y2, align 4
  %12 = load i32, i32* %src_y1, align 4
  %sub2 = sub nsw i32 %11, %12
  store i32 %sub2, i32* %src_h, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width3, align 4
  store i32 %14, i32* %width, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 2
  %16 = load i32, i32* %height4, align 4
  store i32 %16, i32* %height, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 3
  %18 = load i32, i32* %bpp5, align 4
  store i32 %18, i32* %bpp, align 4
  %19 = load i32, i32* %bpp, align 4
  %sub6 = sub nsw i32 %19, 1
  store i32 %sub6, i32* %alpha_channel, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id7, align 4
  %call8 = call i32 @gimp_drawable_is_rgb(i32 %21)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %22 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %22, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %23, 1
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 5), i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %chanmask, i32 0, i64 %idxprom12
  store i32 %24, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.else.14:                                       ; preds = %if.end
  %27 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 5, i64 0), align 4
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %chanmask, i32 0, i64 0
  store i32 %27, i32* %arrayidx15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %for.end
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 0
  %29 = load i32, i32* %drawable_id17, align 4
  %call18 = call i32 @gimp_drawable_has_alpha(i32 %29)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.16
  %30 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 5, i64 4), align 4
  %31 = load i32, i32* %alpha_channel, align 4
  %idxprom21 = sext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %chanmask, i32 0, i64 %idxprom21
  store i32 %30, i32* %arrayidx22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.16
  %32 = load i32, i32* %src_w, align 4
  %add24 = add nsw i32 %32, 2
  %add25 = add nsw i32 %add24, 2
  store i32 %add25, i32* %src_row_w, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.32, %if.end.23
  %33 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %33, 5
  br i1 %cmp27, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.26
  %34 = load i32, i32* %src_row_w, align 4
  %35 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %34, %35
  %conv = sext i32 %mul to i64
  %call29 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %36 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %36 to i64
  %arrayidx31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 %idxprom30
  store i8* %call29, i8** %arrayidx31, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.28
  %37 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %37, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.26

for.end.34:                                       ; preds = %for.cond.26
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %for.end.34
  %38 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %38, 3
  br i1 %cmp36, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %39 = load i32, i32* %src_w, align 4
  %40 = load i32, i32* %bpp, align 4
  %mul39 = mul nsw i32 %39, %40
  %conv40 = sext i32 %mul39 to i64
  %call41 = call noalias i8* @g_malloc_n(i64 %conv40, i64 1)
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 %idxprom42
  store i8* %call41, i8** %arrayidx43, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %42 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %42, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %43 = load i32, i32* %src_x1, align 4
  %sub47 = sub nsw i32 %43, 2
  %cmp48 = icmp sgt i32 %sub47, 0
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.46
  %44 = load i32, i32* %src_x1, align 4
  %sub50 = sub nsw i32 %44, 2
  br label %cond.end

cond.false:                                       ; preds = %for.end.46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub50, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %x1, align 4
  %45 = load i32, i32* %src_y1, align 4
  %sub51 = sub nsw i32 %45, 2
  %cmp52 = icmp sgt i32 %sub51, 0
  br i1 %cmp52, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %cond.end
  %46 = load i32, i32* %src_y1, align 4
  %sub55 = sub nsw i32 %46, 2
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.54
  %cond58 = phi i32 [ %sub55, %cond.true.54 ], [ 0, %cond.false.56 ]
  store i32 %cond58, i32* %y1, align 4
  %47 = load i32, i32* %src_x2, align 4
  %add59 = add nsw i32 %47, 2
  %48 = load i32, i32* %width, align 4
  %cmp60 = icmp slt i32 %add59, %48
  br i1 %cmp60, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.end.57
  %49 = load i32, i32* %src_x2, align 4
  %add63 = add nsw i32 %49, 2
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.end.57
  %50 = load i32, i32* %width, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i32 [ %add63, %cond.true.62 ], [ %50, %cond.false.64 ]
  store i32 %cond66, i32* %x2, align 4
  %51 = load i32, i32* %src_y2, align 4
  %add67 = add nsw i32 %51, 2
  %52 = load i32, i32* %height, align 4
  %cmp68 = icmp slt i32 %add67, %52
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %cond.end.65
  %53 = load i32, i32* %src_y2, align 4
  %add71 = add nsw i32 %53, 2
  br label %cond.end.73

cond.false.72:                                    ; preds = %cond.end.65
  %54 = load i32, i32* %height, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.70
  %cond74 = phi i32 [ %add71, %cond.true.70 ], [ %54, %cond.false.72 ]
  store i32 %cond74, i32* %y2, align 4
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %56 = load i32, i32* %x1, align 4
  %57 = load i32, i32* %y1, align 4
  %58 = load i32, i32* %x2, align 4
  %59 = load i32, i32* %x1, align 4
  %sub75 = sub nsw i32 %58, %59
  %60 = load i32, i32* %y2, align 4
  %61 = load i32, i32* %y1, align 4
  %sub76 = sub nsw i32 %60, %61
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %55, i32 %56, i32 %57, i32 %sub75, i32 %sub76, i32 0, i32 0)
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %63 = load i32, i32* %src_x1, align 4
  %64 = load i32, i32* %src_y1, align 4
  %65 = load i32, i32* %src_w, align 4
  %66 = load i32, i32* %src_h, align 4
  %67 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp77 = icmp eq %struct._GimpPreview* %67, null
  %conv78 = zext i1 %cmp77 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %conv78, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.88, %cond.end.73
  %68 = load i32, i32* %i, align 4
  %cmp80 = icmp slt i32 %68, 5
  br i1 %cmp80, label %for.body.82, label %for.end.90

for.body.82:                                      ; preds = %for.cond.79
  %69 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %69 to i64
  %arrayidx84 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 %idxprom83
  %70 = load i8*, i8** %arrayidx84, align 8
  %71 = load i32, i32* %src_x1, align 4
  %sub85 = sub nsw i32 %71, 2
  %72 = load i32, i32* %src_y1, align 4
  %sub86 = sub nsw i32 %72, 2
  %73 = load i32, i32* %i, align 4
  %add87 = add nsw i32 %sub86, %73
  %74 = load i32, i32* %src_row_w, align 4
  call void @my_get_row(%struct._GimpPixelRgn* %srcPR, i8* %70, i32 %sub85, i32 %add87, i32 %74)
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.82
  %75 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %75, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.79

for.end.90:                                       ; preds = %for.cond.79
  %76 = load i32, i32* %src_y1, align 4
  store i32 %76, i32* %row, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.194, %for.end.90
  %77 = load i32, i32* %row, align 4
  %78 = load i32, i32* %src_y2, align 4
  %cmp92 = icmp slt i32 %77, %78
  br i1 %cmp92, label %for.body.94, label %for.end.196

for.body.94:                                      ; preds = %for.cond.91
  store i32 0, i32* %x_offset, align 4
  %79 = load i32, i32* %src_x1, align 4
  store i32 %79, i32* %col, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.138, %for.body.94
  %80 = load i32, i32* %col, align 4
  %81 = load i32, i32* %src_x2, align 4
  %cmp96 = icmp slt i32 %80, %81
  br i1 %cmp96, label %for.body.98, label %for.end.140

for.body.98:                                      ; preds = %for.cond.95
  store i32 0, i32* %channel, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.135, %for.body.98
  %82 = load i32, i32* %channel, align 4
  %83 = load i32, i32* %bpp, align 4
  %cmp100 = icmp slt i32 %82, %83
  br i1 %cmp100, label %for.body.102, label %for.end.137

for.body.102:                                     ; preds = %for.cond.99
  %84 = load i32, i32* %channel, align 4
  %idxprom103 = sext i32 %84 to i64
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %chanmask, i32 0, i64 %idxprom103
  %85 = load i32, i32* %arrayidx104, align 4
  %tobool105 = icmp ne i32 %85, 0
  br i1 %tobool105, label %if.then.106, label %if.else.124

if.then.106:                                      ; preds = %for.body.102
  %arraydecay = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i32 0
  %86 = load i32, i32* %x_offset, align 4
  %87 = load i32, i32* %channel, align 4
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call107 = call float @convolve_pixel(i8** %arraydecay, i32 %86, i32 %87, %struct._GimpDrawable* %88)
  %conv108 = fpext float %call107 to double
  %add109 = fadd double %conv108, 5.000000e-01
  %conv110 = fptosi double %add109 to i32
  store i32 %conv110, i32* %result, align 4
  %89 = load i32, i32* %result, align 4
  %cmp111 = icmp sgt i32 %89, 255
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %if.then.106
  br label %cond.end.121

cond.false.114:                                   ; preds = %if.then.106
  %90 = load i32, i32* %result, align 4
  %cmp115 = icmp slt i32 %90, 0
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.false.114
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.false.114
  %91 = load i32, i32* %result, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ 0, %cond.true.117 ], [ %91, %cond.false.118 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.113
  %cond122 = phi i32 [ 255, %cond.true.113 ], [ %cond120, %cond.end.119 ]
  %conv123 = trunc i32 %cond122 to i8
  store i8 %conv123, i8* %d, align 1
  br label %if.end.130

if.else.124:                                      ; preds = %for.body.102
  %92 = load i32, i32* %x_offset, align 4
  %93 = load i32, i32* %bpp, align 4
  %mul125 = mul nsw i32 2, %93
  %add126 = add nsw i32 %92, %mul125
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 2
  %94 = load i8*, i8** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %94, i64 %idxprom127
  %95 = load i8, i8* %arrayidx129, align 1
  store i8 %95, i8* %d, align 1
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.124, %cond.end.121
  %96 = load i8, i8* %d, align 1
  %97 = load i32, i32* %x_offset, align 4
  %idxprom131 = sext i32 %97 to i64
  %arrayidx132 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 2
  %98 = load i8*, i8** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %98, i64 %idxprom131
  store i8 %96, i8* %arrayidx133, align 1
  %99 = load i32, i32* %x_offset, align 4
  %inc134 = add nsw i32 %99, 1
  store i32 %inc134, i32* %x_offset, align 4
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.130
  %100 = load i32, i32* %channel, align 4
  %inc136 = add nsw i32 %100, 1
  store i32 %inc136, i32* %channel, align 4
  br label %for.cond.99

for.end.137:                                      ; preds = %for.cond.99
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.137
  %101 = load i32, i32* %col, align 4
  %inc139 = add nsw i32 %101, 1
  store i32 %inc139, i32* %col, align 4
  br label %for.cond.95

for.end.140:                                      ; preds = %for.cond.95
  %102 = load i32, i32* %row, align 4
  %103 = load i32, i32* %src_y1, align 4
  %add141 = add nsw i32 %103, 2
  %cmp142 = icmp sge i32 %102, %add141
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %for.end.140
  %arrayidx145 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 0
  %104 = load i8*, i8** %arrayidx145, align 8
  %105 = load i32, i32* %src_x1, align 4
  %106 = load i32, i32* %row, align 4
  %sub146 = sub nsw i32 %106, 2
  %107 = load i32, i32* %src_w, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %104, i32 %105, i32 %sub146, i32 %107)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %for.end.140
  %108 = load i32, i32* %row, align 4
  %109 = load i32, i32* %src_y2, align 4
  %sub148 = sub nsw i32 %109, 1
  %cmp149 = icmp slt i32 %108, %sub148
  br i1 %cmp149, label %if.then.151, label %if.end.184

if.then.151:                                      ; preds = %if.end.147
  %arrayidx152 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 0
  %110 = load i8*, i8** %arrayidx152, align 8
  store i8* %110, i8** %tmp_row, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.162, %if.then.151
  %111 = load i32, i32* %i, align 4
  %cmp154 = icmp slt i32 %111, 2
  br i1 %cmp154, label %for.body.156, label %for.end.164

for.body.156:                                     ; preds = %for.cond.153
  %112 = load i32, i32* %i, align 4
  %add157 = add nsw i32 %112, 1
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 %idxprom158
  %113 = load i8*, i8** %arrayidx159, align 8
  %114 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %114 to i64
  %arrayidx161 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 %idxprom160
  store i8* %113, i8** %arrayidx161, align 8
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.156
  %115 = load i32, i32* %i, align 4
  %inc163 = add nsw i32 %115, 1
  store i32 %inc163, i32* %i, align 4
  br label %for.cond.153

for.end.164:                                      ; preds = %for.cond.153
  %116 = load i8*, i8** %tmp_row, align 8
  %arrayidx165 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 2
  store i8* %116, i8** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 0
  %117 = load i8*, i8** %arrayidx166, align 8
  store i8* %117, i8** %tmp_row, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.176, %for.end.164
  %118 = load i32, i32* %i, align 4
  %cmp168 = icmp slt i32 %118, 4
  br i1 %cmp168, label %for.body.170, label %for.end.178

for.body.170:                                     ; preds = %for.cond.167
  %119 = load i32, i32* %i, align 4
  %add171 = add nsw i32 %119, 1
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 %idxprom172
  %120 = load i8*, i8** %arrayidx173, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %121 to i64
  %arrayidx175 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 %idxprom174
  store i8* %120, i8** %arrayidx175, align 8
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.170
  %122 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %122, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.167

for.end.178:                                      ; preds = %for.cond.167
  %123 = load i8*, i8** %tmp_row, align 8
  %arrayidx179 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 4
  store i8* %123, i8** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 4
  %124 = load i8*, i8** %arrayidx180, align 8
  %125 = load i32, i32* %src_x1, align 4
  %sub181 = sub nsw i32 %125, 2
  %126 = load i32, i32* %row, align 4
  %add182 = add nsw i32 %126, 2
  %add183 = add nsw i32 %add182, 1
  %127 = load i32, i32* %src_row_w, align 4
  call void @my_get_row(%struct._GimpPixelRgn* %srcPR, i8* %124, i32 %sub181, i32 %add183, i32 %127)
  br label %if.end.184

if.end.184:                                       ; preds = %for.end.178, %if.end.147
  %128 = load i32, i32* %row, align 4
  %rem = srem i32 %128, 10
  %cmp185 = icmp eq i32 %rem, 0
  br i1 %cmp185, label %land.lhs.true, label %if.end.193

land.lhs.true:                                    ; preds = %if.end.184
  %129 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool187 = icmp ne %struct._GimpPreview* %129, null
  br i1 %tobool187, label %if.end.193, label %if.then.188

if.then.188:                                      ; preds = %land.lhs.true
  %130 = load i32, i32* %row, align 4
  %131 = load i32, i32* %src_y1, align 4
  %sub189 = sub nsw i32 %130, %131
  %conv190 = sitofp i32 %sub189 to double
  %132 = load i32, i32* %src_h, align 4
  %conv191 = sitofp i32 %132 to double
  %div = fdiv double %conv190, %conv191
  %call192 = call i32 @gimp_progress_update(double %div)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.188, %land.lhs.true, %if.end.184
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193
  %133 = load i32, i32* %row, align 4
  %inc195 = add nsw i32 %133, 1
  store i32 %inc195, i32* %row, align 4
  br label %for.cond.91

for.end.196:                                      ; preds = %for.cond.91
  store i32 1, i32* %i, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.206, %for.end.196
  %134 = load i32, i32* %i, align 4
  %cmp198 = icmp slt i32 %134, 3
  br i1 %cmp198, label %for.body.200, label %for.end.208

for.body.200:                                     ; preds = %for.cond.197
  %135 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %135 to i64
  %arrayidx202 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 %idxprom201
  %136 = load i8*, i8** %arrayidx202, align 8
  %137 = load i32, i32* %src_x1, align 4
  %138 = load i32, i32* %src_y2, align 4
  %139 = load i32, i32* %i, align 4
  %add203 = add nsw i32 %138, %139
  %sub204 = sub nsw i32 %add203, 1
  %sub205 = sub nsw i32 %sub204, 2
  %140 = load i32, i32* %src_w, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %136, i32 %137, i32 %sub205, i32 %140)
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.200
  %141 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %141, 1
  store i32 %inc207, i32* %i, align 4
  br label %for.cond.197

for.end.208:                                      ; preds = %for.cond.197
  %142 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool209 = icmp ne %struct._GimpPreview* %142, null
  br i1 %tobool209, label %if.then.210, label %if.else.213

if.then.210:                                      ; preds = %for.end.208
  %143 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %144 = bitcast %struct._GimpPreview* %143 to %struct._GTypeInstance*
  %call211 = call i64 @gimp_drawable_preview_get_type() #6
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call211)
  %145 = bitcast %struct._GTypeInstance* %call212 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %145, %struct._GimpPixelRgn* %destPR)
  br label %if.end.221

if.else.213:                                      ; preds = %for.end.208
  %call214 = call i32 @gimp_progress_update(double 1.000000e+00)
  %146 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %146)
  %147 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id215 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %147, i32 0, i32 0
  %148 = load i32, i32* %drawable_id215, align 4
  %call216 = call i32 @gimp_drawable_merge_shadow(i32 %148, i32 1)
  %149 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id217 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %149, i32 0, i32 0
  %150 = load i32, i32* %drawable_id217, align 4
  %151 = load i32, i32* %src_x1, align 4
  %152 = load i32, i32* %src_y1, align 4
  %153 = load i32, i32* %src_x2, align 4
  %154 = load i32, i32* %src_x1, align 4
  %sub218 = sub nsw i32 %153, %154
  %155 = load i32, i32* %src_y2, align 4
  %156 = load i32, i32* %src_y1, align 4
  %sub219 = sub nsw i32 %155, %156
  %call220 = call i32 @gimp_drawable_update(i32 %150, i32 %151, i32 %152, i32 %sub218, i32 %sub219)
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.213, %if.then.210
  store i32 0, i32* %i, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.228, %if.end.221
  %157 = load i32, i32* %i, align 4
  %cmp223 = icmp slt i32 %157, 5
  br i1 %cmp223, label %for.body.225, label %for.end.230

for.body.225:                                     ; preds = %for.cond.222
  %158 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %158 to i64
  %arrayidx227 = getelementptr inbounds [5 x i8*], [5 x i8*]* %src_row, i32 0, i64 %idxprom226
  %159 = load i8*, i8** %arrayidx227, align 8
  call void @g_free(i8* %159)
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.225
  %160 = load i32, i32* %i, align 4
  %inc229 = add nsw i32 %160, 1
  store i32 %inc229, i32* %i, align 4
  br label %for.cond.222

for.end.230:                                      ; preds = %for.cond.222
  store i32 0, i32* %i, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.237, %for.end.230
  %161 = load i32, i32* %i, align 4
  %cmp232 = icmp slt i32 %161, 3
  br i1 %cmp232, label %for.body.234, label %for.end.239

for.body.234:                                     ; preds = %for.cond.231
  %162 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %162 to i64
  %arrayidx236 = getelementptr inbounds [3 x i8*], [3 x i8*]* %dest_row, i32 0, i64 %idxprom235
  %163 = load i8*, i8** %arrayidx236, align 8
  call void @g_free(i8* %163)
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.body.234
  %164 = load i32, i32* %i, align 4
  %inc238 = add nsw i32 %164, 1
  store i32 %inc238, i32* %i, align 4
  br label %for.cond.231

for.end.239:                                      ; preds = %for.cond.231
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %value = alloca float*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to float*
  store float* %1, float** %value, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %4)
  %call3 = call double @atof(i8* %call2) #7
  %conv = fptrunc double %call3 to float
  %5 = load float*, float** %value, align 8
  store float %conv, float* %5, align 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 1), align 8
  %cmp = icmp eq %struct._GtkWidget* %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call5 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %8)
  %9 = bitcast %struct._GtkWidget* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  %11 = load float*, float** %value, align 8
  %12 = load float, float* %11, align 4
  %conv8 = fpext float %12 to double
  %cmp9 = fcmp une double %conv8, 0.000000e+00
  %conv10 = zext i1 %cmp9 to i32
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %10, i32 -5, i32 %conv10)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 2), align 8
  %cmp11 = icmp ne %struct._GtkWidget* %13, %14
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  call void @check_matrix()
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @my_toggle_callback(%struct._GtkWidget* %widget, i32* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i32*, align 8
  %val = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* %val, align 4
  %3 = load i32, i32* %val, align 4
  %4 = load i32*, i32** %data.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 3), align 8
  %cmp = icmp eq %struct._GtkWidget* %5, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 4, i64 2), align 8
  %8 = load i32, i32* %val, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 %8)
  %9 = load i32, i32* %val, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %10 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  %cmp4 = icmp eq i32 %10, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  call void @redraw_bmode()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.12

if.else:                                          ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 6), align 8
  %cmp6 = icmp eq %struct._GtkWidget* %11, %12
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.else
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 1), align 8
  %14 = load i32, i32* %val, align 4
  %tobool = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %13, i32 %lnot.ext)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 2), align 8
  %16 = load i32, i32* %val, align 4
  %tobool8 = icmp ne i32 %16, 0
  %lnot9 = xor i1 %tobool8, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %15, i32 %lnot.ext10)
  call void @check_matrix()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @my_bmode_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @response_callback(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpDrawable* %drawable) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.config_struct* @config to i8*), i8* bitcast (%struct.config_struct* @default_config to i8*), i64 140, i32 4, i1 false)
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @check_config(%struct._GimpDrawable* %1)
  call void @redraw_all()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* @run_flag, align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

; Function Attrs: nounwind uwtable
define internal void @redraw_all() #0 {
entry:
  call void @redraw_matrix()
  call void @redraw_off_and_div()
  call void @redraw_autoset()
  call void @redraw_alpha_weighting()
  call void @redraw_bmode()
  call void @redraw_channels()
  ret void
}

declare void @gtk_main() #1

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @check_matrix() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sum = alloca float, align 4
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %1, 5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %y, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx, i32 0, i64 %idxprom
  %4 = load float, float* %arrayidx5, align 4
  %5 = load float, float* %sum, align 4
  %add = fadd float %5, %4
  store float %add, float* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %7 = load i32, i32* %y, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %y, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %8 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 6), align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.end.8
  %9 = load float, float* %sum, align 4
  %cmp9 = fcmp ogt float %9, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  store float 0.000000e+00, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 2), align 4
  %10 = load float, float* %sum, align 4
  store float %10, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 1), align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %11 = load float, float* %sum, align 4
  %cmp11 = fcmp olt float %11, 0.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store float 2.550000e+02, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 2), align 4
  %12 = load float, float* %sum, align 4
  %sub = fsub float -0.000000e+00, %12
  store float %sub, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 1), align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  store float 1.280000e+02, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 2), align 4
  store float 1.000000e+00, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.10
  call void @redraw_off_and_div()
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redraw_off_and_div() #0 {
entry:
  %buffer = alloca [12 x i8], align 1
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i32 0, i32 0
  %0 = load float, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 1), align 4
  %conv = fpext float %0 to double
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), double %conv)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 1), align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %arraydecay3 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %3, i8* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i32 0, i32 0
  %4 = load float, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 2), align 4
  %conv5 = fpext float %4 to double
  %call6 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay4, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), double %conv5)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 2), align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call7)
  %7 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  %arraydecay9 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %7, i8* %arraydecay9)
  ret void
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @redraw_bmode() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 4), i32 0, i64 %idxprom
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %3, i32 1)
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @redraw_matrix() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %buffer = alloca [12 x i8], align 1
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %1, 5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i32 0, i32 0
  %2 = load i32, i32* %y, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx, i32 0, i64 %idxprom
  %4 = load float, float* %arrayidx5, align 4
  %conv = fpext float %4 to double
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), double %conv)
  %5 = load i32, i32* %y, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [5 x [5 x %struct._GtkWidget*]], [5 x [5 x %struct._GtkWidget*]]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 0), i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %arrayidx8, i32 0, i64 %idxprom6
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx9, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_entry_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call10)
  %9 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkEntry*
  %arraydecay12 = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %9, i8* %arraydecay12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %11 = load i32, i32* %y, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, i32* %y, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redraw_autoset() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 6), align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %3 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 6), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redraw_alpha_weighting() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 3), align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %3 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  %cmp = icmp sgt i32 %3, 0
  %conv = zext i1 %cmp to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %2, i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redraw_channels() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 5), i32 0, i64 %idxprom
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %tobool = icmp ne %struct._GtkWidget* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* getelementptr inbounds (%struct.anon, %struct.anon* @widget_set, i32 0, i32 5), i32 0, i64 %idxprom1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx2, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 5), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %6, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @my_get_row(%struct._GimpPixelRgn* %PR, i8* %dest, i32 %x, i32 %y, i32 %w) #0 {
entry:
  %PR.addr = alloca %struct._GimpPixelRgn*, align 8
  %dest.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpPixelRgn* %PR, %struct._GimpPixelRgn** %PR.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width1, align 4
  store i32 %2, i32* %width, align 4
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %drawable2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height3, align 4
  store i32 %5, i32* %height, align 4
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %drawable4 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %6, i32 0, i32 1
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  %bpp5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 3
  %8 = load i32, i32* %bpp5, align 4
  store i32 %8, i32* %bpp, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  switch i32 %9, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.10
    i32 0, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %10 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %height, align 4
  %12 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %y.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.8, %while.end
  %13 = load i32, i32* %y.addr, align 4
  %14 = load i32, i32* %height, align 4
  %cmp7 = icmp sge i32 %13, %14
  br i1 %cmp7, label %while.body.8, label %while.end.9

while.body.8:                                     ; preds = %while.cond.6
  %15 = load i32, i32* %height, align 4
  %16 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %y.addr, align 4
  br label %while.cond.6

while.end.9:                                      ; preds = %while.cond.6
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %17 = load i32, i32* %y.addr, align 4
  %cmp11 = icmp slt i32 %17, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.10
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %height, align 4
  %cmp12 = icmp sge i32 %18, %19
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.10
  %20 = load i8*, i8** %dest.addr, align 8
  %21 = load i32, i32* %w.addr, align 4
  %22 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %21, %22
  %conv = sext i32 %mul to i64
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 %conv, i32 1, i1 false)
  br label %sw.epilog.148

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.bb.13

sw.bb.13:                                         ; preds = %entry, %if.end
  %23 = load i32, i32* %y.addr, align 4
  %24 = load i32, i32* %height, align 4
  %sub14 = sub nsw i32 %24, 1
  %cmp15 = icmp sgt i32 %23, %sub14
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.13
  %25 = load i32, i32* %height, align 4
  %sub17 = sub nsw i32 %25, 1
  br label %cond.end.22

cond.false:                                       ; preds = %sw.bb.13
  %26 = load i32, i32* %y.addr, align 4
  %cmp18 = icmp slt i32 %26, 0
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %27 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi i32 [ 0, %cond.true.20 ], [ %27, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi i32 [ %sub17, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond23, i32* %y.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end.22, %while.end.9
  %28 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 4), align 4
  switch i32 %28, label %sw.epilog.148 [
    i32 2, label %sw.bb.24
    i32 1, label %sw.bb.60
    i32 0, label %sw.bb.93
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  %29 = load i32, i32* %x.addr, align 4
  %cmp25 = icmp slt i32 %29, 0
  br i1 %cmp25, label %if.then.27, label %if.end.41

if.then.27:                                       ; preds = %sw.bb.24
  %30 = load i32, i32* %w.addr, align 4
  %31 = load i32, i32* %x.addr, align 4
  %sub28 = sub nsw i32 0, %31
  %cmp29 = icmp slt i32 %30, %sub28
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.then.27
  %32 = load i32, i32* %w.addr, align 4
  br label %cond.end.34

cond.false.32:                                    ; preds = %if.then.27
  %33 = load i32, i32* %x.addr, align 4
  %sub33 = sub nsw i32 0, %33
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.31
  %cond35 = phi i32 [ %32, %cond.true.31 ], [ %sub33, %cond.false.32 ]
  store i32 %cond35, i32* %i, align 4
  %34 = load i8*, i8** %dest.addr, align 8
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %bpp, align 4
  %mul36 = mul nsw i32 %35, %36
  %conv37 = sext i32 %mul36 to i64
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 %conv37, i32 1, i1 false)
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %bpp, align 4
  %mul38 = mul nsw i32 %37, %38
  %39 = load i8*, i8** %dest.addr, align 8
  %idx.ext = sext i32 %mul38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %dest.addr, align 8
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %w.addr, align 4
  %sub39 = sub nsw i32 %41, %40
  store i32 %sub39, i32* %w.addr, align 4
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %x.addr, align 4
  %add40 = add nsw i32 %43, %42
  store i32 %add40, i32* %x.addr, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end.34, %sw.bb.24
  %44 = load i32, i32* %w.addr, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %if.end.41
  %45 = load i32, i32* %w.addr, align 4
  %46 = load i32, i32* %width, align 4
  %cmp43 = icmp slt i32 %45, %46
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.then.42
  %47 = load i32, i32* %w.addr, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.then.42
  %48 = load i32, i32* %width, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi i32 [ %47, %cond.true.45 ], [ %48, %cond.false.46 ]
  store i32 %cond48, i32* %i, align 4
  %49 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %50 = load i8*, i8** %dest.addr, align 8
  %51 = load i32, i32* %x.addr, align 4
  %52 = load i32, i32* %y.addr, align 4
  %53 = load i32, i32* %i, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %49, i8* %50, i32 %51, i32 %52, i32 %53)
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %bpp, align 4
  %mul49 = mul nsw i32 %54, %55
  %56 = load i8*, i8** %dest.addr, align 8
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %56, i64 %idx.ext50
  store i8* %add.ptr51, i8** %dest.addr, align 8
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %w.addr, align 4
  %sub52 = sub nsw i32 %58, %57
  store i32 %sub52, i32* %w.addr, align 4
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %x.addr, align 4
  %add53 = add nsw i32 %60, %59
  store i32 %add53, i32* %x.addr, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.47, %if.end.41
  %61 = load i32, i32* %w.addr, align 4
  %tobool55 = icmp ne i32 %61, 0
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.54
  %62 = load i8*, i8** %dest.addr, align 8
  %63 = load i32, i32* %w.addr, align 4
  %64 = load i32, i32* %bpp, align 4
  %mul57 = mul nsw i32 %63, %64
  %conv58 = sext i32 %mul57 to i64
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 %conv58, i32 1, i1 false)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.54
  br label %sw.epilog.148

sw.bb.60:                                         ; preds = %sw.epilog
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.64, %sw.bb.60
  %65 = load i32, i32* %x.addr, align 4
  %cmp62 = icmp slt i32 %65, 0
  br i1 %cmp62, label %while.body.64, label %while.end.66

while.body.64:                                    ; preds = %while.cond.61
  %66 = load i32, i32* %width, align 4
  %67 = load i32, i32* %x.addr, align 4
  %add65 = add nsw i32 %67, %66
  store i32 %add65, i32* %x.addr, align 4
  br label %while.cond.61

while.end.66:                                     ; preds = %while.cond.61
  %68 = load i32, i32* %w.addr, align 4
  %69 = load i32, i32* %width, align 4
  %70 = load i32, i32* %x.addr, align 4
  %sub67 = sub nsw i32 %69, %70
  %cmp68 = icmp slt i32 %68, %sub67
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %while.end.66
  %71 = load i32, i32* %w.addr, align 4
  br label %cond.end.73

cond.false.71:                                    ; preds = %while.end.66
  %72 = load i32, i32* %width, align 4
  %73 = load i32, i32* %x.addr, align 4
  %sub72 = sub nsw i32 %72, %73
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.70
  %cond74 = phi i32 [ %71, %cond.true.70 ], [ %sub72, %cond.false.71 ]
  store i32 %cond74, i32* %i, align 4
  %74 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %75 = load i8*, i8** %dest.addr, align 8
  %76 = load i32, i32* %x.addr, align 4
  %77 = load i32, i32* %y.addr, align 4
  %78 = load i32, i32* %i, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %74, i8* %75, i32 %76, i32 %77, i32 %78)
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %w.addr, align 4
  %sub75 = sub nsw i32 %80, %79
  store i32 %sub75, i32* %w.addr, align 4
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %bpp, align 4
  %mul76 = mul nsw i32 %81, %82
  %83 = load i8*, i8** %dest.addr, align 8
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %83, i64 %idx.ext77
  store i8* %add.ptr78, i8** %dest.addr, align 8
  store i32 0, i32* %x.addr, align 4
  br label %while.cond.79

while.cond.79:                                    ; preds = %cond.end.86, %cond.end.73
  %84 = load i32, i32* %w.addr, align 4
  %tobool80 = icmp ne i32 %84, 0
  br i1 %tobool80, label %while.body.81, label %while.end.92

while.body.81:                                    ; preds = %while.cond.79
  %85 = load i32, i32* %w.addr, align 4
  %86 = load i32, i32* %width, align 4
  %cmp82 = icmp slt i32 %85, %86
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %while.body.81
  %87 = load i32, i32* %w.addr, align 4
  br label %cond.end.86

cond.false.85:                                    ; preds = %while.body.81
  %88 = load i32, i32* %width, align 4
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.84
  %cond87 = phi i32 [ %87, %cond.true.84 ], [ %88, %cond.false.85 ]
  store i32 %cond87, i32* %i, align 4
  %89 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %90 = load i8*, i8** %dest.addr, align 8
  %91 = load i32, i32* %x.addr, align 4
  %92 = load i32, i32* %y.addr, align 4
  %93 = load i32, i32* %i, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %89, i8* %90, i32 %91, i32 %92, i32 %93)
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %w.addr, align 4
  %sub88 = sub nsw i32 %95, %94
  store i32 %sub88, i32* %w.addr, align 4
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %bpp, align 4
  %mul89 = mul nsw i32 %96, %97
  %98 = load i8*, i8** %dest.addr, align 8
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %98, i64 %idx.ext90
  store i8* %add.ptr91, i8** %dest.addr, align 8
  br label %while.cond.79

while.end.92:                                     ; preds = %while.cond.79
  br label %sw.epilog.148

sw.bb.93:                                         ; preds = %sw.epilog
  %99 = load i32, i32* %x.addr, align 4
  %cmp94 = icmp slt i32 %99, 0
  br i1 %cmp94, label %if.then.96, label %if.end.112

if.then.96:                                       ; preds = %sw.bb.93
  %100 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %101 = load i8*, i8** %dest.addr, align 8
  %102 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %100, i8* %101, i32 0, i32 %102)
  %103 = load i32, i32* %x.addr, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %x.addr, align 4
  %104 = load i32, i32* %w.addr, align 4
  %dec = add nsw i32 %104, -1
  store i32 %dec, i32* %w.addr, align 4
  %105 = load i32, i32* %bpp, align 4
  %106 = load i8*, i8** %dest.addr, align 8
  %idx.ext97 = sext i32 %105 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %106, i64 %idx.ext97
  store i8* %add.ptr98, i8** %dest.addr, align 8
  br label %while.cond.99

while.cond.99:                                    ; preds = %for.end, %if.then.96
  %107 = load i32, i32* %x.addr, align 4
  %cmp100 = icmp slt i32 %107, 0
  br i1 %cmp100, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.99
  %108 = load i32, i32* %w.addr, align 4
  %tobool102 = icmp ne i32 %108, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.99
  %109 = phi i1 [ false, %while.cond.99 ], [ %tobool102, %land.rhs ]
  br i1 %109, label %while.body.103, label %while.end.111

while.body.103:                                   ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.103
  %110 = load i32, i32* %i, align 4
  %111 = load i32, i32* %bpp, align 4
  %cmp104 = icmp slt i32 %110, %111
  br i1 %cmp104, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %112 = load i8*, i8** %dest.addr, align 8
  %113 = load i32, i32* %bpp, align 4
  %idx.ext106 = sext i32 %113 to i64
  %idx.neg = sub i64 0, %idx.ext106
  %add.ptr107 = getelementptr inbounds i8, i8* %112, i64 %idx.neg
  %114 = load i8, i8* %add.ptr107, align 1
  %115 = load i8*, i8** %dest.addr, align 8
  store i8 %114, i8* %115, align 1
  %116 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %117 = load i32, i32* %i, align 4
  %inc108 = add nsw i32 %117, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %118 = load i32, i32* %x.addr, align 4
  %inc109 = add nsw i32 %118, 1
  store i32 %inc109, i32* %x.addr, align 4
  %119 = load i32, i32* %w.addr, align 4
  %dec110 = add nsw i32 %119, -1
  store i32 %dec110, i32* %w.addr, align 4
  br label %while.cond.99

while.end.111:                                    ; preds = %land.end
  br label %if.end.112

if.end.112:                                       ; preds = %while.end.111, %sw.bb.93
  %120 = load i32, i32* %w.addr, align 4
  %tobool113 = icmp ne i32 %120, 0
  br i1 %tobool113, label %land.lhs.true, label %if.end.130

land.lhs.true:                                    ; preds = %if.end.112
  %121 = load i32, i32* %width, align 4
  %122 = load i32, i32* %x.addr, align 4
  %sub114 = sub nsw i32 %121, %122
  %cmp115 = icmp sgt i32 %sub114, 0
  br i1 %cmp115, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %land.lhs.true
  %123 = load i32, i32* %w.addr, align 4
  %124 = load i32, i32* %width, align 4
  %125 = load i32, i32* %x.addr, align 4
  %sub118 = sub nsw i32 %124, %125
  %cmp119 = icmp slt i32 %123, %sub118
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %if.then.117
  %126 = load i32, i32* %w.addr, align 4
  br label %cond.end.124

cond.false.122:                                   ; preds = %if.then.117
  %127 = load i32, i32* %width, align 4
  %128 = load i32, i32* %x.addr, align 4
  %sub123 = sub nsw i32 %127, %128
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.121
  %cond125 = phi i32 [ %126, %cond.true.121 ], [ %sub123, %cond.false.122 ]
  store i32 %cond125, i32* %i, align 4
  %129 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %PR.addr, align 8
  %130 = load i8*, i8** %dest.addr, align 8
  %131 = load i32, i32* %x.addr, align 4
  %132 = load i32, i32* %y.addr, align 4
  %133 = load i32, i32* %i, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %129, i8* %130, i32 %131, i32 %132, i32 %133)
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %w.addr, align 4
  %sub126 = sub nsw i32 %135, %134
  store i32 %sub126, i32* %w.addr, align 4
  %136 = load i32, i32* %i, align 4
  %137 = load i32, i32* %bpp, align 4
  %mul127 = mul nsw i32 %136, %137
  %138 = load i8*, i8** %dest.addr, align 8
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %138, i64 %idx.ext128
  store i8* %add.ptr129, i8** %dest.addr, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %cond.end.124, %land.lhs.true, %if.end.112
  br label %while.cond.131

while.cond.131:                                   ; preds = %for.end.144, %if.end.130
  %139 = load i32, i32* %w.addr, align 4
  %tobool132 = icmp ne i32 %139, 0
  br i1 %tobool132, label %while.body.133, label %while.end.147

while.body.133:                                   ; preds = %while.cond.131
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.142, %while.body.133
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %bpp, align 4
  %cmp135 = icmp slt i32 %140, %141
  br i1 %cmp135, label %for.body.137, label %for.end.144

for.body.137:                                     ; preds = %for.cond.134
  %142 = load i8*, i8** %dest.addr, align 8
  %143 = load i32, i32* %bpp, align 4
  %idx.ext138 = sext i32 %143 to i64
  %idx.neg139 = sub i64 0, %idx.ext138
  %add.ptr140 = getelementptr inbounds i8, i8* %142, i64 %idx.neg139
  %144 = load i8, i8* %add.ptr140, align 1
  %145 = load i8*, i8** %dest.addr, align 8
  store i8 %144, i8* %145, align 1
  %146 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr141, i8** %dest.addr, align 8
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.137
  %147 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %147, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond.134

for.end.144:                                      ; preds = %for.cond.134
  %148 = load i32, i32* %x.addr, align 4
  %inc145 = add nsw i32 %148, 1
  store i32 %inc145, i32* %x.addr, align 4
  %149 = load i32, i32* %w.addr, align 4
  %dec146 = add nsw i32 %149, -1
  store i32 %dec146, i32* %w.addr, align 4
  br label %while.cond.131

while.end.147:                                    ; preds = %while.cond.131
  br label %sw.epilog.148

sw.epilog.148:                                    ; preds = %if.then, %sw.epilog, %while.end.147, %while.end.92, %if.end.59
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @convolve_pixel(i8** %src_row, i32 %x_offset, i32 %channel, %struct._GimpDrawable* %drawable) #0 {
entry:
  %src_row.addr = alloca i8**, align 8
  %x_offset.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %sum = alloca float, align 4
  %alphasum = alloca float, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %alpha_channel = alloca i32, align 4
  %temp = alloca float, align 4
  store i8** %src_row, i8*** %src_row.addr, align 8
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store float 0.000000e+00, float* %sum, align 4
  store float 0.000000e+00, float* %alphasum, align 4
  %0 = load i32, i32* @convolve_pixel.bpp, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 3
  %2 = load i32, i32* %bpp, align 4
  store i32 %2, i32* @convolve_pixel.bpp, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.then
  %3 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %3, 5
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %4, 5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %y, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx, i32 0, i64 %idxprom
  %7 = load float, float* %arrayidx5, align 4
  %cmp6 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %8 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx9, i32 0, i64 %idxprom7
  %10 = load float, float* %arrayidx10, align 4
  %sub = fsub float -0.000000e+00, %10
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %11 = load i32, i32* %y, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx13, i32 0, i64 %idxprom11
  %13 = load float, float* %arrayidx14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub, %cond.true ], [ %13, %cond.false ]
  %14 = load float, float* @convolve_pixel.matrixsum, align 4
  %add = fadd float %14, %cond
  store float %add, float* @convolve_pixel.matrixsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %15 = load i32, i32* %x, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %16 = load i32, i32* %y, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %y, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.17, %entry
  %17 = load i32, i32* @convolve_pixel.bpp, align 4
  %sub18 = sub nsw i32 %17, 1
  store i32 %sub18, i32* %alpha_channel, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.63, %if.end
  %18 = load i32, i32* %y, align 4
  %cmp20 = icmp slt i32 %18, 5
  br i1 %cmp20, label %for.body.21, label %for.end.65

for.body.21:                                      ; preds = %for.cond.19
  store i32 0, i32* %x, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.60, %for.body.21
  %19 = load i32, i32* %x, align 4
  %cmp23 = icmp slt i32 %19, 5
  br i1 %cmp23, label %for.body.24, label %for.end.62

for.body.24:                                      ; preds = %for.cond.22
  %20 = load i32, i32* %y, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i32, i32* %x, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 0), i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx27, i32 0, i64 %idxprom25
  %22 = load float, float* %arrayidx28, align 4
  store float %22, float* %temp, align 4
  %23 = load i32, i32* %channel.addr, align 4
  %24 = load i32, i32* %alpha_channel, align 4
  %cmp29 = icmp ne i32 %23, %24
  br i1 %cmp29, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %for.body.24
  %25 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  %cmp30 = icmp eq i32 %25, 1
  br i1 %cmp30, label %if.then.31, label %if.end.49

if.then.31:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %x_offset.addr, align 4
  %27 = load i32, i32* %x, align 4
  %28 = load i32, i32* @convolve_pixel.bpp, align 4
  %mul = mul nsw i32 %27, %28
  %add32 = add nsw i32 %26, %mul
  %29 = load i32, i32* %alpha_channel, align 4
  %add33 = add nsw i32 %add32, %29
  %30 = load i32, i32* %channel.addr, align 4
  %sub34 = sub nsw i32 %add33, %30
  %idxprom35 = sext i32 %sub34 to i64
  %31 = load i32, i32* %y, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load i8**, i8*** %src_row.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %32, i64 %idxprom36
  %33 = load i8*, i8** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 %idxprom35
  %34 = load i8, i8* %arrayidx38, align 1
  %conv = zext i8 %34 to i32
  %conv39 = sitofp i32 %conv to float
  %35 = load float, float* %temp, align 4
  %mul40 = fmul float %35, %conv39
  store float %mul40, float* %temp, align 4
  %36 = load float, float* %temp, align 4
  %cmp41 = fcmp olt float %36, 0.000000e+00
  br i1 %cmp41, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %if.then.31
  %37 = load float, float* %temp, align 4
  %sub44 = fsub float -0.000000e+00, %37
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.then.31
  %38 = load float, float* %temp, align 4
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.43
  %cond47 = phi float [ %sub44, %cond.true.43 ], [ %38, %cond.false.45 ]
  %39 = load float, float* %alphasum, align 4
  %add48 = fadd float %39, %cond47
  store float %add48, float* %alphasum, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end.46, %land.lhs.true, %for.body.24
  %40 = load i32, i32* %x_offset.addr, align 4
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* @convolve_pixel.bpp, align 4
  %mul50 = mul nsw i32 %41, %42
  %add51 = add nsw i32 %40, %mul50
  %idxprom52 = sext i32 %add51 to i64
  %43 = load i32, i32* %y, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load i8**, i8*** %src_row.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %44, i64 %idxprom53
  %45 = load i8*, i8** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %45, i64 %idxprom52
  %46 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %46 to i32
  %conv57 = sitofp i32 %conv56 to float
  %47 = load float, float* %temp, align 4
  %mul58 = fmul float %47, %conv57
  store float %mul58, float* %temp, align 4
  %48 = load float, float* %temp, align 4
  %49 = load float, float* %sum, align 4
  %add59 = fadd float %49, %48
  store float %add59, float* %sum, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.49
  %50 = load i32, i32* %x, align 4
  %inc61 = add nsw i32 %50, 1
  store i32 %inc61, i32* %x, align 4
  br label %for.cond.22

for.end.62:                                       ; preds = %for.cond.22
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %51 = load i32, i32* %y, align 4
  %inc64 = add nsw i32 %51, 1
  store i32 %inc64, i32* %y, align 4
  br label %for.cond.19

for.end.65:                                       ; preds = %for.cond.19
  %52 = load float, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 1), align 4
  %53 = load float, float* %sum, align 4
  %div = fdiv float %53, %52
  store float %div, float* %sum, align 4
  %54 = load i32, i32* %channel.addr, align 4
  %55 = load i32, i32* %alpha_channel, align 4
  %cmp66 = icmp ne i32 %54, %55
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.78

land.lhs.true.68:                                 ; preds = %for.end.65
  %56 = load i32, i32* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 3), align 4
  %cmp69 = icmp eq i32 %56, 1
  br i1 %cmp69, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %land.lhs.true.68
  %57 = load float, float* %alphasum, align 4
  %cmp72 = fcmp une float %57, 0.000000e+00
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %if.then.71
  %58 = load float, float* %sum, align 4
  %59 = load float, float* @convolve_pixel.matrixsum, align 4
  %mul75 = fmul float %58, %59
  %60 = load float, float* %alphasum, align 4
  %div76 = fdiv float %mul75, %60
  store float %div76, float* %sum, align 4
  br label %if.end.77

if.else:                                          ; preds = %if.then.71
  store float 0.000000e+00, float* %sum, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true.68, %for.end.65
  %61 = load float, float* getelementptr inbounds (%struct.config_struct, %struct.config_struct* @config, i32 0, i32 2), align 4
  %62 = load float, float* %sum, align 4
  %add79 = fadd float %62, %61
  store float %add79, float* %sum, align 4
  %63 = load float, float* %sum, align 4
  ret float %63
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
