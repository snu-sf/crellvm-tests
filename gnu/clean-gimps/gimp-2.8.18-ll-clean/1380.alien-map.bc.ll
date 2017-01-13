; ModuleID = './plug-ins/common/alien-map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.alienmap2_vals_t = type { double, double, double, double, double, double, i32, i32, i32, i32 }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._PangoLayout = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpHSL = type { double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [13 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"redfrequency\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Red/hue component frequency factor\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"redangle\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Red/hue component angle factor (0-360)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"greenfrequency\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Green/saturation component frequency factor\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"greenangle\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Green/saturation component angle factor (0-360)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"bluefrequency\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Blue/luminance component frequency factor\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"blueangle\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Blue/luminance component angle factor (0-360)\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"colormodel\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Color model { RGB-MODEL (0), HSL-MODEL (1) }\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"redmode\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"Red/hue application mode { TRUE, FALSE }\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"greenmode\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"Green/saturation application mode { TRUE, FALSE }\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"bluemode\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"Blue/luminance application mode { TRUE, FALSE }\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"plug-in-alienmap2\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Alter colors in various psychedelic ways\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"No help yet. Just try it and you'll see!\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Martin Weber (martweb@gmx.net)\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Martin Weber (martweb@gmx.net\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"24th April 1998\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"_Alien Map...\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"<Image>/Colors/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@drawable = internal global %struct._GimpDrawable* null, align 8
@wvals = internal global %struct.alienmap2_vals_t { double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 0, i32 1, i32 1, i32 1 }, align 8
@.str.37 = private unnamed_addr constant [24 x i8] c"Alien Map: Transforming\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"alien-map\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Alien Map\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"gimp-alien-map\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.43 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"Number of cycles covering full value range\00", align 1
@entry_freq_rh = internal global %struct._GtkObject* null, align 8
@.str.45 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@label_freq_rh = internal global %struct._GtkWidget* null, align 8
@.str.46 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Phase angle, range 0-360\00", align 1
@entry_phase_rh = internal global %struct._GtkObject* null, align 8
@label_phase_rh = internal global %struct._GtkWidget* null, align 8
@entry_freq_gs = internal global %struct._GtkObject* null, align 8
@label_freq_gs = internal global %struct._GtkWidget* null, align 8
@entry_phase_gs = internal global %struct._GtkObject* null, align 8
@label_phase_gs = internal global %struct._GtkWidget* null, align 8
@entry_freq_bl = internal global %struct._GtkObject* null, align 8
@label_freq_bl = internal global %struct._GtkWidget* null, align 8
@entry_phase_bl = internal global %struct._GtkObject* null, align 8
@label_phase_bl = internal global %struct._GtkWidget* null, align 8
@.str.48 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"_RGB color model\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"_HSL color model\00", align 1
@toggle_modify_rh = internal global %struct._GtkWidget* null, align 8
@.str.51 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@toggle_modify_gs = internal global %struct._GtkWidget* null, align 8
@toggle_modify_bl = internal global %struct._GtkWidget* null, align 8
@elabel_maxwidth = internal global i32 0, align 4
@etext = internal global [6 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0)]], align 16
@.str.52 = private unnamed_addr constant [16 x i8] c"Red _frequency:\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"Hue _frequency:\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Green fr_equency:\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Saturation fr_equency:\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Blue freq_uency:\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"Luminosity freq_uency:\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Red _phaseshift:\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"Hue _phaseshift:\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Green ph_aseshift:\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"Saturation ph_aseshift:\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"Blue pha_seshift:\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"Luminosity pha_seshift:\00", align 1
@ctext = internal global [3 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0)]], align 16
@.str.64 = private unnamed_addr constant [20 x i8] c"_Modify red channel\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"_Modify hue channel\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"Mo_dify green channel\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Mo_dify saturation channel\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Mod_ify blue channel\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"Mod_ify luminosity channel\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 1, i32 13, i32 0, %struct._GimpParamDef* getelementptr inbounds ([13 x %struct._GimpParamDef], [13 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0))
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
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** @drawable, align 8
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct.alienmap2_vals_t* @wvals to i8*))
  %call8 = call i32 @alienmap2_dialog()
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %8 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %8, 13
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %9 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %9, 3
  br i1 %cmp12, label %if.then.13, label %if.end.50

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data15 to double*
  %11 = load double, double* %d_float, align 8
  store double %11, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 0), align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_float18 = bitcast %union._GimpParamData* %data17 to double*
  %13 = load double, double* %d_float18, align 8
  store double %13, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 1), align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_float21 = bitcast %union._GimpParamData* %data20 to double*
  %15 = load double, double* %d_float21, align 8
  store double %15, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 2), align 8
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 6
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_float24 = bitcast %union._GimpParamData* %data23 to double*
  %17 = load double, double* %d_float24, align 8
  store double %17, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 3), align 8
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 7
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %19 = load double, double* %d_float27, align 8
  store double %19, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 4), align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 8
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_float30 = bitcast %union._GimpParamData* %data29 to double*
  %21 = load double, double* %d_float30, align 8
  store double %21, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 5), align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 9
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data32 to i8*
  %23 = load i8, i8* %d_int8, align 1
  %conv = zext i8 %23 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 10
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_int835 = bitcast %union._GimpParamData* %data34 to i8*
  %25 = load i8, i8* %d_int835, align 1
  %conv36 = zext i8 %25 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  %cond = select i1 %tobool37, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 7), align 4
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 11
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_int840 = bitcast %union._GimpParamData* %data39 to i8*
  %27 = load i8, i8* %d_int840, align 1
  %conv41 = zext i8 %27 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  %cond43 = select i1 %tobool42, i32 1, i32 0
  store i32 %cond43, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 8), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 12
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_int846 = bitcast %union._GimpParamData* %data45 to i8*
  %29 = load i8, i8* %d_int846, align 1
  %conv47 = zext i8 %29 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  %cond49 = select i1 %tobool48, i32 1, i32 0
  store i32 %cond49, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 9), align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.13, %if.end.11
  br label %sw.epilog

sw.bb.51:                                         ; preds = %do.end
  %call52 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct.alienmap2_vals_t* @wvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.51, %if.end.50, %if.end
  %30 = load i32, i32* %status, align 4
  %cmp53 = icmp eq i32 %30, 3
  br i1 %cmp53, label %if.then.55, label %if.end.74

if.then.55:                                       ; preds = %sw.epilog
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 0
  %32 = load i32, i32* %drawable_id, align 4
  %call56 = call i32 @gimp_drawable_is_rgb(i32 %32)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.then.55
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0)) #5
  %call60 = call i32 @gimp_progress_init(i8* %call59)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load i32, i32* %width, align 4
  %call61 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %34, %call61
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv62 = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv62)
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @alienmap2(%struct._GimpDrawable* %35)
  %36 = load i32, i32* %run_mode, align 4
  %cmp63 = icmp ne i32 %36, 1
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.58
  %call66 = call i32 @gimp_displays_flush()
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.58
  %37 = load i32, i32* %run_mode, align 4
  %cmp68 = icmp eq i32 %37, 0
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.67
  %call71 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct.alienmap2_vals_t* @wvals to i8*), i32 64)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.67
  br label %if.end.73

if.else:                                          ; preds = %if.then.55
  store i32 0, i32* %status, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %sw.epilog
  %38 = load i32, i32* %status, align 4
  store i32 %38, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %39)
  br label %return

return:                                           ; preds = %if.end.74, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @alienmap2_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %top_table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %call14 = call %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable* %16)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** @preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @dialog_update_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %top_table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %top_table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 12)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %top_table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %31, i32 12)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %top_table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %top_table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call25 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 3, i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %table, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %39, i32 6)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %42, i32 4)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %top_table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call30)
  %45 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_table_attach(%struct._GtkTable* %45, %struct._GtkWidget* %46, i32 0, i32 2, i32 1, i32 2, i32 5, i32 0, i32 0, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call32)
  %50 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %51 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 0), align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0)) #5
  %call35 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %50, i32 0, i32 0, i8* null, i32 200, i32 6, double %51, double 0.000000e+00, double 2.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call34, i8* null)
  store %struct._GtkObject* %call35, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call35, %struct._GtkObject** @entry_freq_rh, align 8
  %52 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %53 = bitcast %struct._GtkObject* %52 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %call37 = call i8* @g_object_get_data(%struct._GObject* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %55 = bitcast i8* %call37 to %struct._GtkWidget*
  store %struct._GtkWidget* %55, %struct._GtkWidget** @label_freq_rh, align 8
  %56 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @dialog_scale_update to void ()*), i8* bitcast (%struct.alienmap2_vals_t* @wvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call39)
  %60 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %61 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 1), align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0)) #5
  %call42 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %60, i32 0, i32 1, i8* null, i32 200, i32 6, double %61, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call41, i8* null)
  store %struct._GtkObject* %call42, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call42, %struct._GtkObject** @entry_phase_rh, align 8
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %63 = bitcast %struct._GtkObject* %62 to %struct._GTypeInstance*
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 80)
  %64 = bitcast %struct._GTypeInstance* %call43 to %struct._GObject*
  %call44 = call i8* @g_object_get_data(%struct._GObject* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %65 = bitcast i8* %call44 to %struct._GtkWidget*
  store %struct._GtkWidget* %65, %struct._GtkWidget** @label_phase_rh, align 8
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @dialog_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call46)
  %70 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %71 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 2), align 8
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0)) #5
  %call49 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %70, i32 0, i32 2, i8* null, i32 200, i32 6, double %71, double 0.000000e+00, double 2.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call48, i8* null)
  store %struct._GtkObject* %call49, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call49, %struct._GtkObject** @entry_freq_gs, align 8
  %72 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %73 = bitcast %struct._GtkObject* %72 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 80)
  %74 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  %call51 = call i8* @g_object_get_data(%struct._GObject* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %75 = bitcast i8* %call51 to %struct._GtkWidget*
  store %struct._GtkWidget* %75, %struct._GtkWidget** @label_freq_gs, align 8
  %76 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %77 = bitcast %struct._GtkObject* %76 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @dialog_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call53)
  %80 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %81 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 1), align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0)) #5
  %call56 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %80, i32 0, i32 3, i8* null, i32 200, i32 6, double %81, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call55, i8* null)
  store %struct._GtkObject* %call56, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call56, %struct._GtkObject** @entry_phase_gs, align 8
  %82 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %83 = bitcast %struct._GtkObject* %82 to %struct._GTypeInstance*
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 80)
  %84 = bitcast %struct._GTypeInstance* %call57 to %struct._GObject*
  %call58 = call i8* @g_object_get_data(%struct._GObject* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %85 = bitcast i8* %call58 to %struct._GtkWidget*
  store %struct._GtkWidget* %85, %struct._GtkWidget** @label_phase_gs, align 8
  %86 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %87 = bitcast %struct._GtkObject* %86 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @dialog_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call60)
  %90 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %91 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 4), align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0)) #5
  %call63 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %90, i32 0, i32 4, i8* null, i32 200, i32 6, double %91, double 0.000000e+00, double 2.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call62, i8* null)
  store %struct._GtkObject* %call63, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call63, %struct._GtkObject** @entry_freq_bl, align 8
  %92 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %93 = bitcast %struct._GtkObject* %92 to %struct._GTypeInstance*
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call64 to %struct._GObject*
  %call65 = call i8* @g_object_get_data(%struct._GObject* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %95 = bitcast i8* %call65 to %struct._GtkWidget*
  store %struct._GtkWidget* %95, %struct._GtkWidget** @label_freq_bl, align 8
  %96 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %97 = bitcast %struct._GtkObject* %96 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @dialog_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call67)
  %100 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %101 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 5), align 8
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0)) #5
  %call70 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %100, i32 0, i32 5, i8* null, i32 200, i32 6, double %101, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call69, i8* null)
  store %struct._GtkObject* %call70, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call70, %struct._GtkObject** @entry_phase_bl, align 8
  %102 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %103 = bitcast %struct._GtkObject* %102 to %struct._GTypeInstance*
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 80)
  %104 = bitcast %struct._GTypeInstance* %call71 to %struct._GObject*
  %call72 = call i8* @g_object_get_data(%struct._GObject* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %105 = bitcast i8* %call72 to %struct._GtkWidget*
  store %struct._GtkWidget* %105, %struct._GtkWidget** @label_phase_bl, align 8
  %106 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %107 = bitcast %struct._GtkObject* %106 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @dialog_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call74 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %hbox, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %top_table, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #4
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call75)
  %110 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %110, %struct._GtkWidget* %111, i32 1, i32 2, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0)) #5
  %113 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0)) #5
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0)) #5
  %call80 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call77, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @alienmap2_radio_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6) to i8*), i32 %113, i8* %call78, i32 0, i8* null, i8* %call79, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %frame, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_box_get_type() #4
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call81)
  %116 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkBox*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %117, i32 0, i32 0, i32 0)
  %call83 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %vbox, align 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #4
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call84)
  %120 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %120, %struct._GtkWidget* %121, i32 0, i32 0, i32 0)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %call86 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* null)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %call86, %struct._GtkWidget** @toggle_modify_rh, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #4
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call87)
  %125 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %125, %struct._GtkWidget* %126, i32 0, i32 0, i32 0)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_toggle_button_get_type() #4
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call89)
  %129 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkToggleButton*
  %130 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 7), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %129, i32 %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %133 = bitcast %struct._GtkWidget* %132 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @alienmap2_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call92 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* null)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %call92, %struct._GtkWidget** @toggle_modify_gs, align 8
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_box_get_type() #4
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call93)
  %136 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkBox*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %136, %struct._GtkWidget* %137, i32 0, i32 0, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_toggle_button_get_type() #4
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call95)
  %140 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkToggleButton*
  %141 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 8), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %140, i32 %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %144 = bitcast %struct._GtkWidget* %143 to i8*
  %call97 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @alienmap2_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call98 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* null)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %call98, %struct._GtkWidget** @toggle_modify_bl, align 8
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #4
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call99)
  %147 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %147, %struct._GtkWidget* %148, i32 0, i32 0, i32 0)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_toggle_button_get_type() #4
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call101)
  %151 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkToggleButton*
  %152 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 9), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %151, i32 %152)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %155 = bitcast %struct._GtkWidget* %154 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @alienmap2_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %156)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %157)
  call void @alienmap2_get_label_size()
  call void @alienmap2_set_labels()
  call void @alienmap2_set_sensitive()
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_dialog_get_type() #4
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call104)
  %160 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpDialog*
  %call106 = call i32 @gimp_dialog_run(%struct._GimpDialog* %160)
  %cmp = icmp eq i32 %call106, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %161)
  %162 = load i32, i32* %run, align 4
  ret i32 %162
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @alienmap2(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %0, i32 0, void (i8*, i8*, i32, i8*)* @alienmap2_func, i8* null)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_preview(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpZoomPreview*
  %call2 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %2, i32* %width, i32* %height, i32* %bpp)
  store i8* %call2, i8** %src, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* %bpp, align 4
  %mul3 = mul nsw i32 %mul, %5
  %conv = sext i32 %mul3 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %dest, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  %mul5 = mul nsw i32 %7, %8
  %cmp = icmp slt i32 %6, %mul5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %src, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %bpp, align 4
  %mul7 = mul nsw i32 %10, %11
  %idx.ext = sext i32 %mul7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %12 = load i8*, i8** %dest, align 8
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %bpp, align 4
  %mul8 = mul nsw i32 %13, %14
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %12, i64 %idx.ext9
  %15 = load i32, i32* %bpp, align 4
  call void @alienmap2_func(i8* %add.ptr, i8* %add.ptr10, i32 %15, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %18 = load i8*, i8** %dest, align 8
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %bpp, align 4
  %mul11 = mul nsw i32 %19, %20
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %17, i8* %18, i32 %mul11)
  %21 = load i8*, i8** %src, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %22)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_scale_update(%struct._GtkAdjustment* %adjustment, double* %value) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value.addr = alloca double*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store double* %value, double** %value.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load double*, double** %value.addr, align 8
  %2 = bitcast double* %1 to i8*
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %0, i8* %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %5)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @alienmap2_radio_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @alienmap2_set_labels()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %4)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @alienmap2_toggle_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @alienmap2_set_sensitive()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alienmap2_get_label_size() #0 {
entry:
  %layout = alloca %struct._PangoLayout*, align 8
  %width = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* @elabel_maxwidth, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @label_freq_rh, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkLabel*
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [6 x [2 x i8*]], [6 x [2 x i8*]]* @etext, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i8* @gettext(i8* %7) #5
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %4, i8* %call7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @label_freq_rh, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %call10 = call %struct._PangoLayout* @gtk_label_get_layout(%struct._GtkLabel* %10)
  store %struct._PangoLayout* %call10, %struct._PangoLayout** %layout, align 8
  %11 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %11, i32* %width, i32* null)
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* @elabel_maxwidth, align 4
  %cmp11 = icmp sgt i32 %12, %13
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %14 = load i32, i32* %width, align 4
  store i32 %14, i32* @elabel_maxwidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alienmap2_set_labels() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_modify_rh, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkButton*
  %3 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([3 x [2 x i8*]], [3 x [2 x i8*]]* @ctext, i32 0, i64 0), i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call2 = call i8* @gettext(i8* %4) #5
  call void @gtk_button_set_label(%struct._GtkButton* %2, i8* %call2)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_modify_gs, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkButton*
  %8 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom5 = zext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([3 x [2 x i8*]], [3 x [2 x i8*]]* @ctext, i32 0, i64 1), i32 0, i64 %idxprom5
  %9 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i8* @gettext(i8* %9) #5
  call void @gtk_button_set_label(%struct._GtkButton* %7, i8* %call7)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_modify_bl, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkButton*
  %13 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom10 = zext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([3 x [2 x i8*]], [3 x [2 x i8*]]* @ctext, i32 0, i64 2), i32 0, i64 %idxprom10
  %14 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i8* @gettext(i8* %14) #5
  call void @gtk_button_set_label(%struct._GtkButton* %12, i8* %call12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @label_freq_rh, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_label_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkLabel*
  %18 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom15 = zext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([6 x [2 x i8*]], [6 x [2 x i8*]]* @etext, i32 0, i64 0), i32 0, i64 %idxprom15
  %19 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i8* @gettext(i8* %19) #5
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %17, i8* %call17)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @label_freq_gs, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_label_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkLabel*
  %23 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom20 = zext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([6 x [2 x i8*]], [6 x [2 x i8*]]* @etext, i32 0, i64 1), i32 0, i64 %idxprom20
  %24 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i8* @gettext(i8* %24) #5
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %22, i8* %call22)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** @label_freq_bl, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_label_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call23)
  %27 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkLabel*
  %28 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom25 = zext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([6 x [2 x i8*]], [6 x [2 x i8*]]* @etext, i32 0, i64 2), i32 0, i64 %idxprom25
  %29 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i8* @gettext(i8* %29) #5
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %27, i8* %call27)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** @label_phase_rh, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_label_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call28)
  %32 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkLabel*
  %33 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom30 = zext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([6 x [2 x i8*]], [6 x [2 x i8*]]* @etext, i32 0, i64 3), i32 0, i64 %idxprom30
  %34 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i8* @gettext(i8* %34) #5
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %32, i8* %call32)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** @label_phase_gs, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_label_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call33)
  %37 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkLabel*
  %38 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom35 = zext i32 %38 to i64
  %arrayidx36 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([6 x [2 x i8*]], [6 x [2 x i8*]]* @etext, i32 0, i64 4), i32 0, i64 %idxprom35
  %39 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i8* @gettext(i8* %39) #5
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %37, i8* %call37)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** @label_phase_bl, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_label_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call38)
  %42 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkLabel*
  %43 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  %idxprom40 = zext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([6 x [2 x i8*]], [6 x [2 x i8*]]* @etext, i32 0, i64 5), i32 0, i64 %idxprom40
  %44 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i8* @gettext(i8* %44) #5
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %42, i8* %call42)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** @label_freq_rh, align 8
  %46 = load i32, i32* @elabel_maxwidth, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %45, i32 %46, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alienmap2_set_sensitive() #0 {
entry:
  %0 = load %struct._GtkObject*, %struct._GtkObject** @entry_freq_rh, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 7), align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %0, i32 %1)
  %2 = load %struct._GtkObject*, %struct._GtkObject** @entry_phase_rh, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 7), align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %2, i32 %3)
  %4 = load %struct._GtkObject*, %struct._GtkObject** @entry_freq_gs, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 8), align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %4, i32 %5)
  %6 = load %struct._GtkObject*, %struct._GtkObject** @entry_phase_gs, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 8), align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %6, i32 %7)
  %8 = load %struct._GtkObject*, %struct._GtkObject** @entry_freq_bl, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 9), align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %8, i32 %9)
  %10 = load %struct._GtkObject*, %struct._GtkObject** @entry_phase_bl, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 9), align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %10, i32 %11)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @alienmap2_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %v1 = alloca i8, align 1
  %v2 = alloca i8, align 1
  %v3 = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %v1, align 1
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  store i8 %3, i8* %v2, align 1
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx2, align 1
  store i8 %5, i8* %v3, align 1
  call void @transform(i8* %v1, i8* %v2, i8* %v3)
  %6 = load i8, i8* %v1, align 1
  %7 = load i8*, i8** %dest.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %6, i8* %arrayidx3, align 1
  %8 = load i8, i8* %v2, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %8, i8* %arrayidx4, align 1
  %10 = load i8, i8* %v3, align 1
  %11 = load i8*, i8** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 %10, i8* %arrayidx5, align 1
  %12 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp eq i32 %12, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx6, align 1
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %14, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @transform(i8* %r, i8* %g, i8* %b) #0 {
entry:
  %r.addr = alloca i8*, align 8
  %g.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store i8* %r, i8** %r.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 6), align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %r.addr, align 8
  %2 = load i8, i8* %1, align 1
  %3 = load i8*, i8** %g.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i8, i8* %5, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %2, i8 zeroext %4, i8 zeroext %6)
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %7 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 7), align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %8 = load double, double* %h, align 8
  %mul = fmul double 2.000000e+00, %8
  %sub = fsub double %mul, 1.000000e+00
  %9 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 0), align 8
  %mul1 = fmul double %sub, %9
  %10 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 1), align 8
  %div = fdiv double %10, 1.800000e+02
  %add = fadd double %mul1, %div
  %mul2 = fmul double %add, 0x400921FB54442D18
  %call = call double @sin(double %mul2) #5
  %add3 = fadd double 1.000000e+00, %call
  %mul4 = fmul double 5.000000e-01, %add3
  %h5 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  store double %mul4, double* %h5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %11 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 8), align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %if.end
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  %12 = load double, double* %s, align 8
  %mul8 = fmul double 2.000000e+00, %12
  %sub9 = fsub double %mul8, 1.000000e+00
  %13 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 2), align 8
  %mul10 = fmul double %sub9, %13
  %14 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 3), align 8
  %div11 = fdiv double %14, 1.800000e+02
  %add12 = fadd double %mul10, %div11
  %mul13 = fmul double %add12, 0x400921FB54442D18
  %call14 = call double @sin(double %mul13) #5
  %add15 = fadd double 1.000000e+00, %call14
  %mul16 = fmul double 5.000000e-01, %add15
  %s17 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  store double %mul16, double* %s17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.7, %if.end
  %15 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 9), align 4
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %if.end.18
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %16 = load double, double* %l, align 8
  %mul21 = fmul double 2.000000e+00, %16
  %sub22 = fsub double %mul21, 1.000000e+00
  %17 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 4), align 8
  %mul23 = fmul double %sub22, %17
  %18 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 5), align 8
  %div24 = fdiv double %18, 1.800000e+02
  %add25 = fadd double %mul23, %div24
  %mul26 = fmul double %add25, 0x400921FB54442D18
  %call27 = call double @sin(double %mul26) #5
  %add28 = fadd double 1.000000e+00, %call27
  %mul29 = fmul double 5.000000e-01, %add28
  %l30 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  store double %mul29, double* %l30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.20, %if.end.18
  call void @gimp_hsl_to_rgb(%struct._GimpHSL* %hsl, %struct._GimpRGB* %rgb)
  %19 = load i8*, i8** %r.addr, align 8
  %20 = load i8*, i8** %g.addr, align 8
  %21 = load i8*, i8** %b.addr, align 8
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %rgb, i8* %19, i8* %20, i8* %21)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %22 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 7), align 4
  %tobool33 = icmp ne i32 %22, 0
  br i1 %tobool33, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %sw.bb.32
  %23 = load i8*, i8** %r.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  %conv35 = sitofp i32 %conv to double
  %div36 = fdiv double %conv35, 1.275000e+02
  %sub37 = fsub double %div36, 1.000000e+00
  %25 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 0), align 8
  %mul38 = fmul double %sub37, %25
  %26 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 1), align 8
  %div39 = fdiv double %26, 1.800000e+02
  %add40 = fadd double %mul38, %div39
  %mul41 = fmul double %add40, 0x400921FB54442D18
  %call42 = call double @sin(double %mul41) #5
  %add43 = fadd double 1.000000e+00, %call42
  %mul44 = fmul double 1.275000e+02, %add43
  %add45 = fadd double %mul44, 5.000000e-01
  %conv46 = fptosi double %add45 to i32
  %conv47 = trunc i32 %conv46 to i8
  %27 = load i8*, i8** %r.addr, align 8
  store i8 %conv47, i8* %27, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.34, %sw.bb.32
  %28 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 8), align 4
  %tobool49 = icmp ne i32 %28, 0
  br i1 %tobool49, label %if.then.50, label %if.end.65

if.then.50:                                       ; preds = %if.end.48
  %29 = load i8*, i8** %g.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv51 = zext i8 %30 to i32
  %conv52 = sitofp i32 %conv51 to double
  %div53 = fdiv double %conv52, 1.275000e+02
  %sub54 = fsub double %div53, 1.000000e+00
  %31 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 2), align 8
  %mul55 = fmul double %sub54, %31
  %32 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 3), align 8
  %div56 = fdiv double %32, 1.800000e+02
  %add57 = fadd double %mul55, %div56
  %mul58 = fmul double %add57, 0x400921FB54442D18
  %call59 = call double @sin(double %mul58) #5
  %add60 = fadd double 1.000000e+00, %call59
  %mul61 = fmul double 1.275000e+02, %add60
  %add62 = fadd double %mul61, 5.000000e-01
  %conv63 = fptosi double %add62 to i32
  %conv64 = trunc i32 %conv63 to i8
  %33 = load i8*, i8** %g.addr, align 8
  store i8 %conv64, i8* %33, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.50, %if.end.48
  %34 = load i32, i32* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 9), align 4
  %tobool66 = icmp ne i32 %34, 0
  br i1 %tobool66, label %if.then.67, label %if.end.82

if.then.67:                                       ; preds = %if.end.65
  %35 = load i8*, i8** %b.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv68 = zext i8 %36 to i32
  %conv69 = sitofp i32 %conv68 to double
  %div70 = fdiv double %conv69, 1.275000e+02
  %sub71 = fsub double %div70, 1.000000e+00
  %37 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 4), align 8
  %mul72 = fmul double %sub71, %37
  %38 = load double, double* getelementptr inbounds (%struct.alienmap2_vals_t, %struct.alienmap2_vals_t* @wvals, i32 0, i32 5), align 8
  %div73 = fdiv double %38, 1.800000e+02
  %add74 = fadd double %mul72, %div73
  %mul75 = fmul double %add74, 0x400921FB54442D18
  %call76 = call double @sin(double %mul75) #5
  %add77 = fadd double 1.000000e+00, %call76
  %mul78 = fmul double 1.275000e+02, %add77
  %add79 = fadd double %mul78, 5.000000e-01
  %conv80 = fptosi double %add79 to i32
  %conv81 = trunc i32 %conv80 to i8
  %39 = load i8*, i8** %b.addr, align 8
  store i8 %conv81, i8* %39, align 1
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.67, %if.end.65
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.82, %if.end.31
  ret void
}

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare void @gimp_rgb_to_hsl(%struct._GimpRGB*, %struct._GimpHSL*) #1

; Function Attrs: nounwind
declare double @sin(double) #2

declare void @gimp_hsl_to_rgb(%struct._GimpHSL*, %struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare %struct._PangoLayout* @gtk_label_get_layout(%struct._GtkLabel*) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare void @gtk_button_set_label(%struct._GtkButton*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_scale_entry_set_sensitive(%struct._GtkObject*, i32) #1

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
