; ModuleID = './plug-ins/common/value-propagate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.VPValueType = type { i32, i32, double, i32, i32, i32 }
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
%struct.ModeParam = type { i32, i8*, void (i32, i32, i8*, i8*, i8**)*, void (i32, i32, i8*, i8*, i8*, i8*)*, void (i32, i32, i8*, i8*, i8*, i8*)* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct.MiddlePacket = type { i16, i16, i64, i64, [3 x i8], i64, [3 x i8] }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Input image (not used)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"propagate-mode\00", align 1
@.str.7 = private unnamed_addr constant [117 x i8] c"propagate 0:white, 1:black, 2:middle value 3:foreground to peak, 4:foreground, 5:background, 6:opaque, 7:transparent\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"propagating-channel\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"channels which values are propagated\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"propagating-rate\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"0.0 <= propagatating_rate <= 1.0\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"direction-mask\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"0 <= direction-mask <= 15\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"lower-limit\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"0 <= lower-limit <= 255\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"upper-limit\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"0 <= upper-limit <= 255\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"plug-in-vpropagate\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Propagate certain colors to neighboring pixels\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Propagate values of the layer\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Shuji Narazaki (narazaki@InetQ.or.jp)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Shuji Narazaki\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"1996-1997\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"_Value Propagate...\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"plug-in-erode\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Shrink lighter areas of the image\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Erode image\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"E_rode\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"plug-in-dilate\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"Grow lighter areas of the image\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Dilate image\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"_Dilate\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Generic\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@vpvals = internal global %struct.VPValueType { i32 0, i32 3, double 1.000000e+00, i32 15, i32 0, i32 255 }, align 8
@propagate_alpha = internal global i32 0, align 4
@propagate_value = internal global i32 0, align 4
@direction_mask_vec = internal global [4 x i32] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [16 x i8] c"value-propagate\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"Value Propagate\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"gimp-value-propagate\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.43 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@modes = internal global [8 x %struct.ModeParam] [%struct.ModeParam { i32 15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* @initialize_white, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_white, void (i32, i32, i8*, i8*, i8*, i8*)* @set_value }, %struct.ModeParam { i32 15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* @initialize_black, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_black, void (i32, i32, i8*, i8*, i8*, i8*)* @set_value }, %struct.ModeParam { i32 15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* @initialize_middle, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_middle, void (i32, i32, i8*, i8*, i8*, i8*)* @set_middle_to_peak }, %struct.ModeParam { i32 15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* @initialize_middle, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_middle, void (i32, i32, i8*, i8*, i8*, i8*)* @set_foreground_to_peak }, %struct.ModeParam { i32 13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* @initialize_foreground, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_a_color, void (i32, i32, i8*, i8*, i8*, i8*)* @set_value }, %struct.ModeParam { i32 13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* @initialize_background, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_a_color, void (i32, i32, i8*, i8*, i8*, i8*)* @set_value }, %struct.ModeParam { i32 7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* null, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_opaque, void (i32, i32, i8*, i8*, i8*, i8*)* @set_value }, %struct.ModeParam { i32 7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), void (i32, i32, i8*, i8*, i8**)* null, void (i32, i32, i8*, i8*, i8*, i8*)* @propagate_transparent, void (i32, i32, i8*, i8*, i8*, i8*)* @set_value }], align 16
@.str.45 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Propagate\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Lower t_hreshold:\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"_Upper threshold:\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"_Propagating rate:\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"To l_eft\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"To _right\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"To _top\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"To _bottom\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Propagating _alpha channel\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"Propagating value channel\00", align 1
@fore = internal global [3 x i8] zeroinitializer, align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"More _white (larger value)\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"More blac_k (smaller value)\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"_Middle value to peaks\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"_Foreground to peaks\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"O_nly foreground\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"Only b_ackground\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"Mor_e opaque\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"More t_ransparent\00", align 1
@channel_mask = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@peak_min = internal global i32 1, align 4
@peak_max = internal global i32 1, align 4
@peak_includes_equals = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0))
  %call2 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int323 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int323, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call4 = call i8* @gimp_locale_directory() #7
  %call5 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* %call4) #5
  %call6 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #5
  %call7 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.37
    i32 2, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %do.end
  %8 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.VPValueType* @vpvals to i8*))
  %9 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and = and i32 %9, 2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* @propagate_alpha, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and10 = and i32 %10, 1
  %tobool11 = icmp ne i32 %and10, 0
  %cond12 = select i1 %tobool11, i32 1, i32 0
  store i32 %cond12, i32* @propagate_value, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %11, 4
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %13 = load i32, i32* %i, align 4
  %shl = shl i32 1, %13
  %and14 = and i32 %12, %shl
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 1, i32 0
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* @direction_mask_vec, i32 0, i64 %idxprom
  store i32 %cond16, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call18 = call i32 @vpropagate_dialog(%struct._GimpDrawable* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %for.end
  br label %return

if.end:                                           ; preds = %for.end
  br label %if.end.36

if.else:                                          ; preds = %sw.bb
  %17 = load i8*, i8** %name.addr, align 8
  %call21 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %18 = load i8*, i8** %name.addr, align 8
  %call23 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  store double 1.000000e+00, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  store i32 15, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  store i32 255, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5), align 4
  %19 = load i8*, i8** %name.addr, align 8
  %call26 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.25
  store i32 1, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 0), align 4
  br label %if.end.34

if.else.29:                                       ; preds = %if.then.25
  %20 = load i8*, i8** %name.addr, align 8
  %call30 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.29
  store i32 0, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 0), align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.28
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %lor.lhs.false
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  br label %sw.epilog

sw.bb.37:                                         ; preds = %do.end
  %21 = load i8*, i8** %name.addr, align 8
  %call38 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #8
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.58

if.then.40:                                       ; preds = %sw.bb.37
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 3
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_int3243 = bitcast %union._GimpParamData* %data42 to i32*
  %23 = load i32, i32* %d_int3243, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 0), align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 4
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_int3246 = bitcast %union._GimpParamData* %data45 to i32*
  %25 = load i32, i32* %d_int3246, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 5
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data48 to double*
  %27 = load double, double* %d_float, align 8
  store double %27, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 6
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %29 = load i32, i32* %d_int3251, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 7
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_int3254 = bitcast %union._GimpParamData* %data53 to i32*
  %31 = load i32, i32* %d_int3254, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 8
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_int3257 = bitcast %union._GimpParamData* %data56 to i32*
  %33 = load i32, i32* %d_int3257, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5), align 4
  br label %if.end.75

if.else.58:                                       ; preds = %sw.bb.37
  %34 = load i8*, i8** %name.addr, align 8
  %call59 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then.64, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.else.58
  %35 = load i8*, i8** %name.addr, align 8
  %call62 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.64, label %if.end.74

if.then.64:                                       ; preds = %lor.lhs.false.61, %if.else.58
  store i32 1, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  store double 1.000000e+00, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  store i32 15, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  store i32 255, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5), align 4
  %36 = load i8*, i8** %name.addr, align 8
  %call65 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.then.64
  store i32 1, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 0), align 4
  br label %if.end.73

if.else.68:                                       ; preds = %if.then.64
  %37 = load i8*, i8** %name.addr, align 8
  %call69 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else.68
  store i32 0, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 0), align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.else.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %lor.lhs.false.61
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.40
  br label %sw.epilog

sw.bb.76:                                         ; preds = %do.end
  %38 = load i8*, i8** %name.addr, align 8
  %call77 = call i32 @gimp_procedural_db_get_data(i8* %38, i8* bitcast (%struct.VPValueType* @vpvals to i8*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.76, %if.end.75, %if.end.36
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call78 = call i32 @value_propagate(%struct._GimpDrawable* %39)
  store i32 %call78, i32* %status, align 4
  %40 = load i32, i32* %status, align 4
  %cmp79 = icmp eq i32 %40, 3
  br i1 %cmp79, label %if.then.80, label %if.end.89

if.then.80:                                       ; preds = %sw.epilog
  %41 = load i32, i32* %run_mode, align 4
  %cmp81 = icmp ne i32 %41, 1
  br i1 %cmp81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.80
  %call83 = call i32 @gimp_displays_flush()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.then.80
  %42 = load i32, i32* %run_mode, align 4
  %cmp85 = icmp eq i32 %42, 0
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.84
  %43 = load i8*, i8** %name.addr, align 8
  %call87 = call i32 @gimp_procedural_db_set_data(i8* %43, i8* bitcast (%struct.VPValueType* @vpvals to i8*), i32 32)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %sw.epilog
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %44 = load i32, i32* %status, align 4
  store i32 %44, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.89, %if.then.20
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

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @vpropagate_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %toggle_vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %group = alloca %struct._GSList*, align 8
  %index = alloca i32, align 4
  %run = alloca i32, align 4
  %toggle = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  store i32 0, i32* %index, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** @preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @value_propagate_body to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %hbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #5
  %call22 = call %struct._GtkWidget* @gimp_frame_new(i8* %call21)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %frame, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call23)
  %33 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 0, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call25 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %toggle_vbox, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %38, %struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %41 = load i32, i32* %index, align 4
  %cmp = icmp slt i32 %41, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GSList*, %struct._GSList** %group, align 8
  %43 = load i32, i32* %index, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.ModeParam], [8 x %struct.ModeParam]* @modes, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.ModeParam, %struct.ModeParam* %arrayidx, i32 0, i32 1
  %44 = load i8*, i8** %name, align 8
  %call28 = call i8* @gettext(i8* %44) #5
  %call29 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %42, i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %button, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_radio_button_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkRadioButton*
  %call32 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %47)
  store %struct._GSList* %call32, %struct._GSList** %group, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %56 = load i32, i32* %index, align 4
  %conv = sext i32 %56 to i64
  %57 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (%struct.VPValueType* @vpvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 2)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_toggle_button_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call38)
  %66 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkToggleButton*
  %67 = load i32, i32* %index, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 0), align 4
  %cmp40 = icmp eq i32 %67, %68
  %conv41 = zext i1 %cmp40 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %66, i32 %conv41)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %index, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #5
  %call43 = call %struct._GtkWidget* @gimp_frame_new(i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %frame, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call44)
  %72 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 0, i32 0, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %call46 = call %struct._GtkWidget* @gtk_table_new(i32 8, i32 3, i32 0)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %table, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call47)
  %77 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %77, i32 6)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call49)
  %80 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %80, i32 6)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call51)
  %83 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %83, i32 2, i32 12)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call53)
  %86 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %86, i32 5, i32 12)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_container_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call55)
  %89 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkContainer*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %89, %struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_table_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call57)
  %94 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkTable*
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0)) #5
  %95 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  %conv60 = sitofp i32 %95 to double
  %call61 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %94, i32 0, i32 0, i8* %call59, i32 100, i32 4, double %conv60, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call61, %struct._GtkObject** %adj, align 8
  %96 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %97 = bitcast %struct._GtkObject* %96 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %99 = bitcast %struct._GtkObject* %98 to i8*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %101, void (i8*, %struct._GClosure*)* null, i32 2)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call64)
  %104 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0)) #5
  %105 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5), align 4
  %conv67 = sitofp i32 %105 to double
  %call68 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %104, i32 0, i32 1, i8* %call66, i32 100, i32 4, double %conv67, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call68, %struct._GtkObject** %adj, align 8
  %106 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %107 = bitcast %struct._GtkObject* %106 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %109 = bitcast %struct._GtkObject* %108 to i8*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 2)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call71)
  %114 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0)) #5
  %115 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %call74 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %114, i32 0, i32 2, i8* %call73, i32 100, i32 4, double %115, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call74, %struct._GtkObject** %adj, align 8
  %116 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %117 = bitcast %struct._GtkObject* %116 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %118 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %119 = bitcast %struct._GtkObject* %118 to i8*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %121 = bitcast %struct._GtkWidget* %120 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %121, void (i8*, %struct._GClosure*)* null, i32 2)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0)) #5
  %call78 = call %struct._GtkWidget* @gtk_table_add_toggle(%struct._GtkWidget* %122, i8* %call77, i32 0, i32 1, i32 4, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @vpropagate_toggle_button_update to void ()*), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @direction_mask_vec, i32 0, i64 0))
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0)) #5
  %call80 = call %struct._GtkWidget* @gtk_table_add_toggle(%struct._GtkWidget* %123, i8* %call79, i32 2, i32 3, i32 4, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @vpropagate_toggle_button_update to void ()*), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @direction_mask_vec, i32 0, i64 2))
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0)) #5
  %call82 = call %struct._GtkWidget* @gtk_table_add_toggle(%struct._GtkWidget* %124, i8* %call81, i32 1, i32 2, i32 3, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @vpropagate_toggle_button_update to void ()*), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @direction_mask_vec, i32 0, i64 1))
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0)) #5
  %call84 = call %struct._GtkWidget* @gtk_table_add_toggle(%struct._GtkWidget* %125, i8* %call83, i32 1, i32 2, i32 5, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @vpropagate_toggle_button_update to void ()*), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @direction_mask_vec, i32 0, i64 3))
  %126 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %126, i32 0, i32 0
  %127 = load i32, i32* %drawable_id, align 4
  %call85 = call i32 @gimp_drawable_has_alpha(i32 %127)
  %tobool = icmp ne i32 %call85, 0
  br i1 %tobool, label %if.then, label %if.end.96

if.then:                                          ; preds = %for.end
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0)) #5
  %call87 = call %struct._GtkWidget* @gtk_table_add_toggle(%struct._GtkWidget* %128, i8* %call86, i32 0, i32 3, i32 6, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @vpropagate_toggle_button_update to void ()*), i32* @propagate_alpha)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %toggle, align 8
  %129 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id88 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %129, i32 0, i32 0
  %130 = load i32, i32* %drawable_id88, align 4
  %call89 = call i32 @gimp_layer_get_lock_alpha(i32 %130)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end

if.then.91:                                       ; preds = %if.then
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_toggle_button_get_type() #7
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call92)
  %133 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %133, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %134, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.91, %if.then
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0)) #5
  %call95 = call %struct._GtkWidget* @gtk_table_add_toggle(%struct._GtkWidget* %135, i8* %call94, i32 0, i32 3, i32 7, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @vpropagate_toggle_button_update to void ()*), i32* @propagate_value)
  br label %if.end.96

if.end.96:                                        ; preds = %if.end, %for.end
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_dialog_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call97)
  %139 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpDialog*
  %call99 = call i32 @gimp_dialog_run(%struct._GimpDialog* %139)
  %cmp100 = icmp eq i32 %call99, -5
  %conv101 = zext i1 %cmp100 to i32
  store i32 %conv101, i32* %run, align 4
  %140 = load i32, i32* %run, align 4
  %tobool102 = icmp ne i32 %140, 0
  br i1 %tobool102, label %if.then.103, label %if.end.119

if.then.103:                                      ; preds = %if.end.96
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.111, %if.then.103
  %141 = load i32, i32* %i, align 4
  %cmp105 = icmp slt i32 %141, 4
  br i1 %cmp105, label %for.body.107, label %for.end.113

for.body.107:                                     ; preds = %for.cond.104
  %142 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %142 to i64
  %arrayidx109 = getelementptr inbounds [4 x i32], [4 x i32]* @direction_mask_vec, i32 0, i64 %idxprom108
  %143 = load i32, i32* %arrayidx109, align 4
  %tobool110 = icmp ne i32 %143, 0
  %cond = select i1 %tobool110, i32 1, i32 0
  %144 = load i32, i32* %i, align 4
  %shl = shl i32 %cond, %144
  %145 = load i32, i32* %result, align 4
  %or = or i32 %145, %shl
  store i32 %or, i32* %result, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.107
  %146 = load i32, i32* %i, align 4
  %inc112 = add nsw i32 %146, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.104

for.end.113:                                      ; preds = %for.cond.104
  %147 = load i32, i32* %result, align 4
  store i32 %147, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %148 = load i32, i32* @propagate_alpha, align 4
  %tobool114 = icmp ne i32 %148, 0
  %cond115 = select i1 %tobool114, i32 2, i32 0
  %149 = load i32, i32* @propagate_value, align 4
  %tobool116 = icmp ne i32 %149, 0
  %cond117 = select i1 %tobool116, i32 1, i32 0
  %or118 = or i32 %cond115, %cond117
  store i32 %or118, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  br label %if.end.119

if.end.119:                                       ; preds = %for.end.113, %if.end.96
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %150)
  %151 = load i32, i32* %run, align 4
  ret i32 %151
}

; Function Attrs: nounwind uwtable
define internal i32 @value_propagate(%struct._GimpDrawable* %drawable) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and = and i32 %0, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %3 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  %cmp4 = icmp slt i32 255, %3
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5), align 4
  %cmp6 = icmp slt i32 %4, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.5
  %5 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  %cmp8 = icmp slt i32 255, %5
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %6 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  %cmp10 = icmp slt i32 %6, %7
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %lor.lhs.false.5, %lor.lhs.false, %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false.9
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @value_propagate_body(%struct._GimpDrawable* %8, %struct._GimpPreview* null)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.1, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

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

; Function Attrs: nounwind uwtable
define internal void @value_propagate_body(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %dtype = alloca i32, align 4
  %operation = alloca %struct.ModeParam, align 8
  %srcRgn = alloca %struct._GimpPixelRgn, align 8
  %destRgn = alloca %struct._GimpPixelRgn, align 8
  %here = alloca i8*, align 8
  %best = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %prev_row = alloca i8*, align 8
  %cur_row = alloca i8*, align 8
  %next_row = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %cr = alloca i8*, align 8
  %nr = alloca i8*, align 8
  %swap = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %index = alloca i32, align 4
  %begx = alloca i32, align 4
  %begy = alloca i32, align 4
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca i32, align 4
  %left_index = alloca i32, align 4
  %right_index = alloca i32, align 4
  %up_index = alloca i32, align 4
  %down_index = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %foreground = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  store i32 %cond, i32* %left_index, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %and2 = and i32 %1, 1
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 1, i32 0
  store i32 %cond4, i32* %right_index, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %and5 = and i32 %2, 8
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 -1, i32 0
  store i32 %cond7, i32* %up_index, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %and8 = and i32 %3, 2
  %tobool9 = icmp ne i32 %and8, 0
  %cond10 = select i1 %tobool9, i32 1, i32 0
  store i32 %cond10, i32* %down_index, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 0), align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.ModeParam], [8 x %struct.ModeParam]* @modes, i32 0, i64 %idxprom
  %5 = bitcast %struct.ModeParam* %operation to i8*
  %6 = bitcast %struct.ModeParam* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 40, i32 8, i1 false)
  store i8* null, i8** %tmp, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_type(i32 %8)
  store i32 %call, i32* %dtype, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 3
  %10 = load i32, i32* %bpp, align 4
  store i32 %10, i32* %bytes, align 4
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool11 = icmp ne %struct._GimpPreview* %11, null
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %12, i32* %begx, i32* %begy)
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %13, i32* %width, i32* %height)
  %14 = load i32, i32* %begx, align 4
  %15 = load i32, i32* %width, align 4
  %add = add nsw i32 %14, %15
  store i32 %add, i32* %endx, align 4
  %16 = load i32, i32* %begy, align 4
  %17 = load i32, i32* %height, align 4
  %add12 = add nsw i32 %16, %17
  store i32 %add12, i32* %endy, align 4
  br label %if.end.19

if.else:                                          ; preds = %entry
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id13, align 4
  %call14 = call i32 @gimp_drawable_mask_intersect(i32 %19, i32* %begx, i32* %begy, i32* %width, i32* %height)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.else
  br label %if.end.176

if.end:                                           ; preds = %if.else
  %20 = load i32, i32* %begx, align 4
  %21 = load i32, i32* %width, align 4
  %add17 = add nsw i32 %20, %21
  store i32 %add17, i32* %endx, align 4
  %22 = load i32, i32* %begy, align 4
  %23 = load i32, i32* %height, align 4
  %add18 = add nsw i32 %22, %23
  store i32 %add18, i32* %endy, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %24 = load i32, i32* %width, align 4
  %call20 = call i32 @gimp_tile_width() #7
  %div = udiv i32 %24, %call20
  %add21 = add i32 %div, 1
  %mul = mul i32 2, %add21
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %25 = load i32, i32* %width, align 4
  %add22 = add nsw i32 %25, 2
  %26 = load i32, i32* %bytes, align 4
  %mul23 = mul nsw i32 %add22, %26
  %conv24 = sext i32 %mul23 to i64
  %call25 = call noalias i8* @g_malloc_n(i64 %conv24, i64 1)
  store i8* %call25, i8** %prev_row, align 8
  %27 = load i32, i32* %width, align 4
  %add26 = add nsw i32 %27, 2
  %28 = load i32, i32* %bytes, align 4
  %mul27 = mul nsw i32 %add26, %28
  %conv28 = sext i32 %mul27 to i64
  %call29 = call noalias i8* @g_malloc_n(i64 %conv28, i64 1)
  store i8* %call29, i8** %cur_row, align 8
  %29 = load i32, i32* %width, align 4
  %add30 = add nsw i32 %29, 2
  %30 = load i32, i32* %bytes, align 4
  %mul31 = mul nsw i32 %add30, %30
  %conv32 = sext i32 %mul31 to i64
  %call33 = call noalias i8* @g_malloc_n(i64 %conv32, i64 1)
  store i8* %call33, i8** %next_row, align 8
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %bytes, align 4
  %mul34 = mul nsw i32 %31, %32
  %conv35 = sext i32 %mul34 to i64
  %call36 = call noalias i8* @g_malloc_n(i64 %conv35, i64 1)
  store i8* %call36, i8** %dest_row, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load i32, i32* %begx, align 4
  %35 = load i32, i32* %begy, align 4
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcRgn, %struct._GimpDrawable* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 0, i32 0)
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %39 = load i32, i32* %begx, align 4
  %40 = load i32, i32* %begy, align 4
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %height, align 4
  %43 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %43, null
  %conv37 = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destRgn, %struct._GimpDrawable* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %conv37, i32 1)
  %44 = load i8*, i8** %prev_row, align 8
  %45 = load i32, i32* %bytes, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr, i8** %pr, align 8
  %46 = load i8*, i8** %cur_row, align 8
  %47 = load i32, i32* %bytes, align 4
  %idx.ext38 = sext i32 %47 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %46, i64 %idx.ext38
  store i8* %add.ptr39, i8** %cr, align 8
  %48 = load i8*, i8** %next_row, align 8
  %49 = load i32, i32* %bytes, align 4
  %idx.ext40 = sext i32 %49 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %48, i64 %idx.ext40
  store i8* %add.ptr41, i8** %nr, align 8
  %50 = load i8*, i8** %pr, align 8
  %51 = load i32, i32* %begx, align 4
  %52 = load i32, i32* %begy, align 4
  %cmp42 = icmp slt i32 0, %52
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %53 = load i32, i32* %begy, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  %54 = load i32, i32* %begy, align 4
  %sub = sub nsw i32 %54, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond44 = phi i32 [ %53, %cond.true ], [ %sub, %cond.false ]
  %55 = load i32, i32* %endx, align 4
  %56 = load i32, i32* %begx, align 4
  %sub45 = sub nsw i32 %55, %56
  call void @prepare_row(%struct._GimpPixelRgn* %srcRgn, i8* %50, i32 %51, i32 %cond44, i32 %sub45)
  %57 = load i32, i32* %begy, align 4
  %cmp46 = icmp slt i32 0, %57
  br i1 %cmp46, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %cond.end
  %58 = load i8*, i8** %cr, align 8
  %59 = load i32, i32* %begx, align 4
  %60 = load i32, i32* %begy, align 4
  %61 = load i32, i32* %endx, align 4
  %62 = load i32, i32* %begx, align 4
  %sub49 = sub nsw i32 %61, %62
  call void @prepare_row(%struct._GimpPixelRgn* %srcRgn, i8* %58, i32 %59, i32 %60, i32 %sub49)
  br label %if.end.54

if.else.50:                                       ; preds = %cond.end
  %63 = load i8*, i8** %cur_row, align 8
  %64 = load i8*, i8** %prev_row, align 8
  %65 = load i32, i32* %width, align 4
  %add51 = add nsw i32 %65, 2
  %66 = load i32, i32* %bytes, align 4
  %mul52 = mul nsw i32 %add51, %66
  %conv53 = sext i32 %mul52 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 %conv53, i32 1, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.50, %if.then.48
  %67 = load i32, i32* %bytes, align 4
  %conv55 = sext i32 %67 to i64
  %call56 = call noalias i8* @g_malloc_n(i64 %conv55, i64 1)
  store i8* %call56, i8** %best, align 8
  %68 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool57 = icmp ne %struct._GimpPreview* %68, null
  br i1 %tobool57, label %if.end.61, label %if.then.58

if.then.58:                                       ; preds = %if.end.54
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0)) #5
  %call60 = call i32 @gimp_progress_init(i8* %call59)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.54
  %call62 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %foreground)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %foreground, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore, i32 0, i64 2))
  %69 = load i32, i32* %begy, align 4
  store i32 %69, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.161, %if.end.61
  %70 = load i32, i32* %y, align 4
  %71 = load i32, i32* %endy, align 4
  %cmp63 = icmp slt i32 %70, %71
  br i1 %cmp63, label %for.body, label %for.end.163

for.body:                                         ; preds = %for.cond
  %72 = load i8*, i8** %nr, align 8
  %73 = load i32, i32* %begx, align 4
  %74 = load i32, i32* %y, align 4
  %add65 = add nsw i32 %74, 1
  %75 = load i32, i32* %endy, align 4
  %cmp66 = icmp slt i32 %add65, %75
  br i1 %cmp66, label %cond.true.68, label %cond.false.70

cond.true.68:                                     ; preds = %for.body
  %76 = load i32, i32* %y, align 4
  %add69 = add nsw i32 %76, 1
  br label %cond.end.71

cond.false.70:                                    ; preds = %for.body
  %77 = load i32, i32* %endy, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.68
  %cond72 = phi i32 [ %add69, %cond.true.68 ], [ %77, %cond.false.70 ]
  %78 = load i32, i32* %endx, align 4
  %79 = load i32, i32* %begx, align 4
  %sub73 = sub nsw i32 %78, %79
  call void @prepare_row(%struct._GimpPixelRgn* %srcRgn, i8* %72, i32 %73, i32 %cond72, i32 %sub73)
  store i32 0, i32* %index, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc, %cond.end.71
  %80 = load i32, i32* %index, align 4
  %81 = load i32, i32* %endx, align 4
  %82 = load i32, i32* %begx, align 4
  %sub75 = sub nsw i32 %81, %82
  %83 = load i32, i32* %bytes, align 4
  %mul76 = mul nsw i32 %sub75, %83
  %cmp77 = icmp slt i32 %80, %mul76
  br i1 %cmp77, label %for.body.79, label %for.end

for.body.79:                                      ; preds = %for.cond.74
  %84 = load i32, i32* %index, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load i8*, i8** %cr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %85, i64 %idxprom80
  %86 = load i8, i8* %arrayidx81, align 1
  %87 = load i32, i32* %index, align 4
  %idxprom82 = sext i32 %87 to i64
  %88 = load i8*, i8** %dest_row, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %88, i64 %idxprom82
  store i8 %86, i8* %arrayidx83, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.79
  %89 = load i32, i32* %index, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond.74

for.end:                                          ; preds = %for.cond.74
  store i32 0, i32* %x, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.147, %for.end
  %90 = load i32, i32* %x, align 4
  %91 = load i32, i32* %endx, align 4
  %92 = load i32, i32* %begx, align 4
  %sub85 = sub nsw i32 %91, %92
  %cmp86 = icmp slt i32 %90, %sub85
  br i1 %cmp86, label %for.body.88, label %for.end.149

for.body.88:                                      ; preds = %for.cond.84
  %93 = load i8*, i8** %dest_row, align 8
  %94 = load i32, i32* %x, align 4
  %95 = load i32, i32* %bytes, align 4
  %mul89 = mul nsw i32 %94, %95
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %93, i64 %idx.ext90
  store i8* %add.ptr91, i8** %dest, align 8
  %96 = load i8*, i8** %cr, align 8
  %97 = load i32, i32* %x, align 4
  %98 = load i32, i32* %bytes, align 4
  %mul92 = mul nsw i32 %97, %98
  %idx.ext93 = sext i32 %mul92 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %96, i64 %idx.ext93
  store i8* %add.ptr94, i8** %here, align 8
  %99 = load i8*, i8** %best, align 8
  %100 = load i8*, i8** %here, align 8
  %101 = load i32, i32* %bytes, align 4
  %conv95 = sext i32 %101 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 %conv95, i32 1, i1 false)
  %initializer = getelementptr inbounds %struct.ModeParam, %struct.ModeParam* %operation, i32 0, i32 2
  %102 = load void (i32, i32, i8*, i8*, i8**)*, void (i32, i32, i8*, i8*, i8**)** %initializer, align 8
  %tobool96 = icmp ne void (i32, i32, i8*, i8*, i8**)* %102, null
  br i1 %tobool96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %for.body.88
  %initializer98 = getelementptr inbounds %struct.ModeParam, %struct.ModeParam* %operation, i32 0, i32 2
  %103 = load void (i32, i32, i8*, i8*, i8**)*, void (i32, i32, i8*, i8*, i8**)** %initializer98, align 8
  %104 = load i32, i32* %dtype, align 4
  %105 = load i32, i32* %bytes, align 4
  %106 = load i8*, i8** %best, align 8
  %107 = load i8*, i8** %here, align 8
  call void %103(i32 %104, i32 %105, i8* %106, i8* %107, i8** %tmp)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %for.body.88
  %108 = load i32, i32* %up_index, align 4
  %cmp100 = icmp eq i32 %108, -1
  br i1 %cmp100, label %if.then.102, label %if.end.114

if.then.102:                                      ; preds = %if.end.99
  %109 = load i32, i32* %left_index, align 4
  store i32 %109, i32* %dx, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.111, %if.then.102
  %110 = load i32, i32* %dx, align 4
  %111 = load i32, i32* %right_index, align 4
  %cmp104 = icmp sle i32 %110, %111
  br i1 %cmp104, label %for.body.106, label %for.end.113

for.body.106:                                     ; preds = %for.cond.103
  %updater = getelementptr inbounds %struct.ModeParam, %struct.ModeParam* %operation, i32 0, i32 3
  %112 = load void (i32, i32, i8*, i8*, i8*, i8*)*, void (i32, i32, i8*, i8*, i8*, i8*)** %updater, align 8
  %113 = load i32, i32* %dtype, align 4
  %114 = load i32, i32* %bytes, align 4
  %115 = load i8*, i8** %here, align 8
  %116 = load i8*, i8** %pr, align 8
  %117 = load i32, i32* %x, align 4
  %118 = load i32, i32* %dx, align 4
  %add107 = add nsw i32 %117, %118
  %119 = load i32, i32* %bytes, align 4
  %mul108 = mul nsw i32 %add107, %119
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %116, i64 %idx.ext109
  %120 = load i8*, i8** %best, align 8
  %121 = load i8*, i8** %tmp, align 8
  call void %112(i32 %113, i32 %114, i8* %115, i8* %add.ptr110, i8* %120, i8* %121)
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.106
  %122 = load i32, i32* %dx, align 4
  %inc112 = add nsw i32 %122, 1
  store i32 %inc112, i32* %dx, align 4
  br label %for.cond.103

for.end.113:                                      ; preds = %for.cond.103
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.113, %if.end.99
  %123 = load i32, i32* %left_index, align 4
  store i32 %123, i32* %dx, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.128, %if.end.114
  %124 = load i32, i32* %dx, align 4
  %125 = load i32, i32* %right_index, align 4
  %cmp116 = icmp sle i32 %124, %125
  br i1 %cmp116, label %for.body.118, label %for.end.130

for.body.118:                                     ; preds = %for.cond.115
  %126 = load i32, i32* %dx, align 4
  %cmp119 = icmp ne i32 %126, 0
  br i1 %cmp119, label %if.then.121, label %if.end.127

if.then.121:                                      ; preds = %for.body.118
  %updater122 = getelementptr inbounds %struct.ModeParam, %struct.ModeParam* %operation, i32 0, i32 3
  %127 = load void (i32, i32, i8*, i8*, i8*, i8*)*, void (i32, i32, i8*, i8*, i8*, i8*)** %updater122, align 8
  %128 = load i32, i32* %dtype, align 4
  %129 = load i32, i32* %bytes, align 4
  %130 = load i8*, i8** %here, align 8
  %131 = load i8*, i8** %cr, align 8
  %132 = load i32, i32* %x, align 4
  %133 = load i32, i32* %dx, align 4
  %add123 = add nsw i32 %132, %133
  %134 = load i32, i32* %bytes, align 4
  %mul124 = mul nsw i32 %add123, %134
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %131, i64 %idx.ext125
  %135 = load i8*, i8** %best, align 8
  %136 = load i8*, i8** %tmp, align 8
  call void %127(i32 %128, i32 %129, i8* %130, i8* %add.ptr126, i8* %135, i8* %136)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.121, %for.body.118
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %137 = load i32, i32* %dx, align 4
  %inc129 = add nsw i32 %137, 1
  store i32 %inc129, i32* %dx, align 4
  br label %for.cond.115

for.end.130:                                      ; preds = %for.cond.115
  %138 = load i32, i32* %down_index, align 4
  %cmp131 = icmp eq i32 %138, 1
  br i1 %cmp131, label %if.then.133, label %if.end.146

if.then.133:                                      ; preds = %for.end.130
  %139 = load i32, i32* %left_index, align 4
  store i32 %139, i32* %dx, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.143, %if.then.133
  %140 = load i32, i32* %dx, align 4
  %141 = load i32, i32* %right_index, align 4
  %cmp135 = icmp sle i32 %140, %141
  br i1 %cmp135, label %for.body.137, label %for.end.145

for.body.137:                                     ; preds = %for.cond.134
  %updater138 = getelementptr inbounds %struct.ModeParam, %struct.ModeParam* %operation, i32 0, i32 3
  %142 = load void (i32, i32, i8*, i8*, i8*, i8*)*, void (i32, i32, i8*, i8*, i8*, i8*)** %updater138, align 8
  %143 = load i32, i32* %dtype, align 4
  %144 = load i32, i32* %bytes, align 4
  %145 = load i8*, i8** %here, align 8
  %146 = load i8*, i8** %nr, align 8
  %147 = load i32, i32* %x, align 4
  %148 = load i32, i32* %dx, align 4
  %add139 = add nsw i32 %147, %148
  %149 = load i32, i32* %bytes, align 4
  %mul140 = mul nsw i32 %add139, %149
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %146, i64 %idx.ext141
  %150 = load i8*, i8** %best, align 8
  %151 = load i8*, i8** %tmp, align 8
  call void %142(i32 %143, i32 %144, i8* %145, i8* %add.ptr142, i8* %150, i8* %151)
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.137
  %152 = load i32, i32* %dx, align 4
  %inc144 = add nsw i32 %152, 1
  store i32 %inc144, i32* %dx, align 4
  br label %for.cond.134

for.end.145:                                      ; preds = %for.cond.134
  br label %if.end.146

if.end.146:                                       ; preds = %for.end.145, %for.end.130
  %finalizer = getelementptr inbounds %struct.ModeParam, %struct.ModeParam* %operation, i32 0, i32 4
  %153 = load void (i32, i32, i8*, i8*, i8*, i8*)*, void (i32, i32, i8*, i8*, i8*, i8*)** %finalizer, align 8
  %154 = load i32, i32* %dtype, align 4
  %155 = load i32, i32* %bytes, align 4
  %156 = load i8*, i8** %best, align 8
  %157 = load i8*, i8** %here, align 8
  %158 = load i8*, i8** %dest, align 8
  %159 = load i8*, i8** %tmp, align 8
  call void %153(i32 %154, i32 %155, i8* %156, i8* %157, i8* %158, i8* %159)
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %160 = load i32, i32* %x, align 4
  %inc148 = add nsw i32 %160, 1
  store i32 %inc148, i32* %x, align 4
  br label %for.cond.84

for.end.149:                                      ; preds = %for.cond.84
  %161 = load i8*, i8** %dest_row, align 8
  %162 = load i32, i32* %begx, align 4
  %163 = load i32, i32* %y, align 4
  %164 = load i32, i32* %endx, align 4
  %165 = load i32, i32* %begx, align 4
  %sub150 = sub nsw i32 %164, %165
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destRgn, i8* %161, i32 %162, i32 %163, i32 %sub150)
  %166 = load i8*, i8** %pr, align 8
  store i8* %166, i8** %swap, align 8
  %167 = load i8*, i8** %cr, align 8
  store i8* %167, i8** %pr, align 8
  %168 = load i8*, i8** %nr, align 8
  store i8* %168, i8** %cr, align 8
  %169 = load i8*, i8** %swap, align 8
  store i8* %169, i8** %nr, align 8
  %170 = load i32, i32* %y, align 4
  %rem = srem i32 %170, 16
  %cmp151 = icmp eq i32 %rem, 0
  br i1 %cmp151, label %land.lhs.true, label %if.end.160

land.lhs.true:                                    ; preds = %for.end.149
  %171 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool153 = icmp ne %struct._GimpPreview* %171, null
  br i1 %tobool153, label %if.end.160, label %if.then.154

if.then.154:                                      ; preds = %land.lhs.true
  %172 = load i32, i32* %y, align 4
  %conv155 = sitofp i32 %172 to double
  %173 = load i32, i32* %endy, align 4
  %174 = load i32, i32* %begy, align 4
  %sub156 = sub nsw i32 %173, %174
  %conv157 = sitofp i32 %sub156 to double
  %div158 = fdiv double %conv155, %conv157
  %call159 = call i32 @gimp_progress_update(double %div158)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.154, %land.lhs.true, %for.end.149
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %175 = load i32, i32* %y, align 4
  %inc162 = add nsw i32 %175, 1
  store i32 %inc162, i32* %y, align 4
  br label %for.cond

for.end.163:                                      ; preds = %for.cond
  %176 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool164 = icmp ne %struct._GimpPreview* %176, null
  br i1 %tobool164, label %if.then.165, label %if.else.168

if.then.165:                                      ; preds = %for.end.163
  %177 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %178 = bitcast %struct._GimpPreview* %177 to %struct._GTypeInstance*
  %call166 = call i64 @gimp_drawable_preview_get_type() #7
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call166)
  %179 = bitcast %struct._GTypeInstance* %call167 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %179, %struct._GimpPixelRgn* %destRgn)
  br label %if.end.176

if.else.168:                                      ; preds = %for.end.163
  %call169 = call i32 @gimp_progress_update(double 1.000000e+00)
  %180 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %180)
  %181 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id170 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %181, i32 0, i32 0
  %182 = load i32, i32* %drawable_id170, align 4
  %call171 = call i32 @gimp_drawable_merge_shadow(i32 %182, i32 1)
  %183 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id172 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %183, i32 0, i32 0
  %184 = load i32, i32* %drawable_id172, align 4
  %185 = load i32, i32* %begx, align 4
  %186 = load i32, i32* %begy, align 4
  %187 = load i32, i32* %endx, align 4
  %188 = load i32, i32* %begx, align 4
  %sub173 = sub nsw i32 %187, %188
  %189 = load i32, i32* %endy, align 4
  %190 = load i32, i32* %begy, align 4
  %sub174 = sub nsw i32 %189, %190
  %call175 = call i32 @gimp_drawable_update(i32 %184, i32 %185, i32 %186, i32 %sub173, i32 %sub174)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.16, %if.else.168, %if.then.165
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gtk_table_add_toggle(%struct._GtkWidget* %table, i8* %name, i32 %x1, i32 %x2, i32 %y, void ()* %update, i32* %value) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %name.addr = alloca i8*, align 8
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %update.addr = alloca void ()*, align 8
  %value.addr = alloca i32*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %update, void ()** %update.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %toggle, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %5 = load i32, i32* %x1.addr, align 4
  %6 = load i32, i32* %x2.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %8, 1
  call void @gtk_table_attach(%struct._GtkTable* %3, %struct._GtkWidget* %4, i32 %5, i32 %6, i32 %7, i32 %add, i32 5, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load void ()*, void ()** %update.addr, align 8
  %13 = load i32*, i32** %value.addr, align 8
  %14 = bitcast i32* %13 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* %12, i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_button_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call4)
  %17 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleButton*
  %18 = load i32*, i32** %value.addr, align 8
  %19 = load i32, i32* %18, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %17, i32 %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  ret %struct._GtkWidget* %20
}

; Function Attrs: nounwind uwtable
define internal void @vpropagate_toggle_button_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @direction_mask_vec, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load i32, i32* %i, align 4
  %shl = shl i32 %cond, %5
  %6 = load i32, i32* %result, align 4
  %or = or i32 %6, %shl
  store i32 %or, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %result, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 3), align 4
  %9 = load i32, i32* @propagate_alpha, align 4
  %tobool1 = icmp ne i32 %9, 0
  %cond2 = select i1 %tobool1, i32 2, i32 0
  %10 = load i32, i32* @propagate_value, align 4
  %tobool3 = icmp ne i32 %10, 0
  %cond4 = select i1 %tobool3, i32 1, i32 0
  %or5 = or i32 %cond2, %cond4
  store i32 %or5, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %13)
  ret void
}

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_layer_get_lock_alpha(i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gimp_drawable_type(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @prepare_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %data, i32 %x, i32 %y, i32 %w) #0 {
entry:
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %data.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %1, i8* %2, i32 %3, i32 %add, i32 %5)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 7
  %8 = load i32, i32* %h, align 4
  %cmp1 = icmp sge i32 %6, %8
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %9, i8* %10, i32 %11, i32 %sub, i32 %13)
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %14, i8* %15, i32 %16, i32 %17, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %19 = load i32, i32* %b, align 4
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 2
  %21 = load i32, i32* %bpp, align 4
  %cmp5 = icmp slt i32 %19, %21
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %b, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp6 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 2
  %26 = load i32, i32* %bpp6, align 4
  %sub7 = sub nsw i32 0, %26
  %27 = load i32, i32* %b, align 4
  %add8 = add nsw i32 %sub7, %27
  %idxprom9 = sext i32 %add8 to i64
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %28, i64 %idxprom9
  store i8 %24, i8* %arrayidx10, align 1
  %29 = load i32, i32* %w.addr, align 4
  %sub11 = sub nsw i32 %29, 1
  %30 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp12 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %30, i32 0, i32 2
  %31 = load i32, i32* %bpp12, align 4
  %mul = mul nsw i32 %sub11, %31
  %32 = load i32, i32* %b, align 4
  %add13 = add nsw i32 %mul, %32
  %idxprom14 = sext i32 %add13 to i64
  %33 = load i8*, i8** %data.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %33, i64 %idxprom14
  %34 = load i8, i8* %arrayidx15, align 1
  %35 = load i32, i32* %w.addr, align 4
  %36 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %36, i32 0, i32 2
  %37 = load i32, i32* %bpp16, align 4
  %mul17 = mul nsw i32 %35, %37
  %38 = load i32, i32* %b, align 4
  %add18 = add nsw i32 %mul17, %38
  %idxprom19 = sext i32 %add18 to i64
  %39 = load i8*, i8** %data.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %39, i64 %idxprom19
  store i8 %34, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %b, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @initialize_white(i32 %dtype, i32 %bytes, i8* %best, i8* %here, i8** %tmp) #0 {
entry:
  %dtype.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %best.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %tmp.addr = alloca i8**, align 8
  store i32 %dtype, i32* %dtype.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %best, i8** %best.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8** %tmp, i8*** %tmp.addr, align 8
  %0 = load i32, i32* %dtype.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.18
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8**, i8*** %tmp.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %call = call noalias i8* @g_malloc_n(i64 1, i64 4)
  %3 = bitcast i8* %call to float*
  %4 = bitcast float* %3 to i8*
  %5 = load i8**, i8*** %tmp.addr, align 8
  store i8* %4, i8** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %6 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 0), align 4
  %7 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %mul = mul nsw i32 %6, %conv
  %9 = load i8*, i8** %here.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %10 to i32
  %mul3 = mul nsw i32 %mul, %conv2
  %11 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 1), align 4
  %12 = load i8*, i8** %here.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %mul6 = mul nsw i32 %11, %conv5
  %14 = load i8*, i8** %here.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %15 to i32
  %mul9 = mul nsw i32 %mul6, %conv8
  %add = add nsw i32 %mul3, %mul9
  %16 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 2), align 4
  %17 = load i8*, i8** %here.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %mul12 = mul nsw i32 %16, %conv11
  %19 = load i8*, i8** %here.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %20 to i32
  %mul15 = mul nsw i32 %mul12, %conv14
  %add16 = add nsw i32 %add, %mul15
  %conv17 = sitofp i32 %add16 to float
  %21 = load i8**, i8*** %tmp.addr, align 8
  %22 = bitcast i8** %21 to float**
  %23 = load float*, float** %22, align 8
  store float %conv17, float* %23, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_white(i32 %dtype, i32 %bytes, i8* %orig, i8* %here, i8* %best, i8* %tmp) #0 {
entry:
  %dtype.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %orig.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %v_here = alloca float, align 4
  store i32 %dtype, i32* %dtype.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  %0 = load i32, i32* %dtype.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.20
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 0), align 4
  %2 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nsw i32 %1, %conv
  %4 = load i8*, i8** %here.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %mul4 = mul nsw i32 %mul, %conv3
  %6 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 1), align 4
  %7 = load i8*, i8** %here.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %mul7 = mul nsw i32 %6, %conv6
  %9 = load i8*, i8** %here.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %mul10 = mul nsw i32 %mul7, %conv9
  %add = add nsw i32 %mul4, %mul10
  %11 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 2), align 4
  %12 = load i8*, i8** %here.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %mul13 = mul nsw i32 %11, %conv12
  %14 = load i8*, i8** %here.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %mul16 = mul nsw i32 %mul13, %conv15
  %add17 = add nsw i32 %add, %mul16
  %conv18 = sitofp i32 %add17 to float
  store float %conv18, float* %v_here, align 4
  %16 = load i8*, i8** %tmp.addr, align 8
  %17 = bitcast i8* %16 to float*
  %18 = load float, float* %17, align 4
  %19 = load float, float* %v_here, align 4
  %cmp = fcmp olt float %18, %19
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %20 = load i8*, i8** %orig.addr, align 8
  %21 = load i8*, i8** %here.addr, align 8
  %call = call i32 @value_difference_check(i8* %20, i8* %21, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load float, float* %v_here, align 4
  %23 = load i8*, i8** %tmp.addr, align 8
  %24 = bitcast i8* %23 to float*
  store float %22, float* %24, align 4
  %25 = load i8*, i8** %best.addr, align 8
  %26 = load i8*, i8** %here.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 3, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry, %entry
  %27 = load i8*, i8** %best.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv21 = zext i8 %28 to i32
  %29 = load i8*, i8** %here.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv22 = zext i8 %30 to i32
  %cmp23 = icmp slt i32 %conv21, %conv22
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %sw.bb.20
  %31 = load i8*, i8** %orig.addr, align 8
  %32 = load i8*, i8** %here.addr, align 8
  %call26 = call i32 @value_difference_check(i8* %31, i8* %32, i32 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.25
  %33 = load i8*, i8** %here.addr, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %best.addr, align 8
  store i8 %34, i8* %35, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.25, %sw.bb.20
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.29, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_value(i32 %dtype, i32 %bytes, i8* %best, i8* %here, i8* %dest, i8* %tmp) #0 {
entry:
  %dtype.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %best.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %value_chs = alloca i32, align 4
  %alpha = alloca i32, align 4
  %ch = alloca i32, align 4
  store i32 %dtype, i32* %dtype.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %best, i8** %best.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  store i32 0, i32* %value_chs, align 4
  store i32 0, i32* %alpha, align 4
  %0 = load i32, i32* %dtype.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %value_chs, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 3, i32* %value_chs, align 4
  store i32 3, i32* %alpha, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 1, i32* %value_chs, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i32 1, i32* %value_chs, align 4
  store i32 1, i32* %alpha, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  store i32 0, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %1 = load i32, i32* %ch, align 4
  %2 = load i32, i32* %value_chs, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %5 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %best.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %conv7 = sitofp i32 %conv to double
  %mul = fmul double %4, %conv7
  %8 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %sub = fsub double 1.000000e+00, %8
  %9 = load i32, i32* %ch, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8*, i8** %here.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %conv11 = sitofp i32 %conv10 to double
  %mul12 = fmul double %sub, %conv11
  %add = fadd double %mul, %mul12
  %conv13 = fptoui double %add to i8
  %12 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %conv13, i8* %12, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %ch, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i8*, i8** %here.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 %idxprom14
  %15 = load i8, i8* %arrayidx15, align 1
  %16 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr16, i8** %dest.addr, align 8
  store i8 %15, i8* %16, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %ch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %alpha, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %if.then.18, label %if.end.41

if.then.18:                                       ; preds = %for.end
  %19 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and19 = and i32 %19, 2
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.36

if.then.21:                                       ; preds = %if.then.18
  %20 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %21 = load i32, i32* %alpha, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i8*, i8** %best.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %23 to i32
  %conv25 = sitofp i32 %conv24 to double
  %mul26 = fmul double %20, %conv25
  %24 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %sub27 = fsub double 1.000000e+00, %24
  %25 = load i32, i32* %alpha, align 4
  %idxprom28 = sext i32 %25 to i64
  %26 = load i8*, i8** %here.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %26, i64 %idxprom28
  %27 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %27 to i32
  %conv31 = sitofp i32 %conv30 to double
  %mul32 = fmul double %sub27, %conv31
  %add33 = fadd double %mul26, %mul32
  %conv34 = fptoui double %add33 to i8
  %28 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr35, i8** %dest.addr, align 8
  store i8 %conv34, i8* %28, align 1
  br label %if.end.40

if.else.36:                                       ; preds = %if.then.18
  %29 = load i32, i32* %alpha, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load i8*, i8** %here.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %30, i64 %idxprom37
  %31 = load i8, i8* %arrayidx38, align 1
  %32 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr39, i8** %dest.addr, align 8
  store i8 %31, i8* %32, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.36, %if.then.21
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initialize_black(i32 %dtype, i32 %channels, i8* %best, i8* %here, i8** %tmp) #0 {
entry:
  %dtype.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %best.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %tmp.addr = alloca i8**, align 8
  store i32 %dtype, i32* %dtype.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %best, i8** %best.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8** %tmp, i8*** %tmp.addr, align 8
  %0 = load i32, i32* %dtype.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.18
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8**, i8*** %tmp.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %call = call noalias i8* @g_malloc_n(i64 1, i64 4)
  %3 = bitcast i8* %call to float*
  %4 = bitcast float* %3 to i8*
  %5 = load i8**, i8*** %tmp.addr, align 8
  store i8* %4, i8** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %6 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 0), align 4
  %7 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %mul = mul nsw i32 %6, %conv
  %9 = load i8*, i8** %here.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %10 to i32
  %mul3 = mul nsw i32 %mul, %conv2
  %11 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 1), align 4
  %12 = load i8*, i8** %here.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %mul6 = mul nsw i32 %11, %conv5
  %14 = load i8*, i8** %here.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %15 to i32
  %mul9 = mul nsw i32 %mul6, %conv8
  %add = add nsw i32 %mul3, %mul9
  %16 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 2), align 4
  %17 = load i8*, i8** %here.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %mul12 = mul nsw i32 %16, %conv11
  %19 = load i8*, i8** %here.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %20 to i32
  %mul15 = mul nsw i32 %mul12, %conv14
  %add16 = add nsw i32 %add, %mul15
  %conv17 = sitofp i32 %add16 to float
  %21 = load i8**, i8*** %tmp.addr, align 8
  %22 = bitcast i8** %21 to float**
  %23 = load float*, float** %22, align 8
  store float %conv17, float* %23, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_black(i32 %image_type, i32 %channels, i8* %orig, i8* %here, i8* %best, i8* %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %orig.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %v_here = alloca float, align 4
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  %0 = load i32, i32* %image_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.20
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 0), align 4
  %2 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nsw i32 %1, %conv
  %4 = load i8*, i8** %here.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %mul4 = mul nsw i32 %mul, %conv3
  %6 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 1), align 4
  %7 = load i8*, i8** %here.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %mul7 = mul nsw i32 %6, %conv6
  %9 = load i8*, i8** %here.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %mul10 = mul nsw i32 %mul7, %conv9
  %add = add nsw i32 %mul4, %mul10
  %11 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 2), align 4
  %12 = load i8*, i8** %here.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %mul13 = mul nsw i32 %11, %conv12
  %14 = load i8*, i8** %here.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %mul16 = mul nsw i32 %mul13, %conv15
  %add17 = add nsw i32 %add, %mul16
  %conv18 = sitofp i32 %add17 to float
  store float %conv18, float* %v_here, align 4
  %16 = load float, float* %v_here, align 4
  %17 = load i8*, i8** %tmp.addr, align 8
  %18 = bitcast i8* %17 to float*
  %19 = load float, float* %18, align 4
  %cmp = fcmp olt float %16, %19
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %20 = load i8*, i8** %orig.addr, align 8
  %21 = load i8*, i8** %here.addr, align 8
  %call = call i32 @value_difference_check(i8* %20, i8* %21, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load float, float* %v_here, align 4
  %23 = load i8*, i8** %tmp.addr, align 8
  %24 = bitcast i8* %23 to float*
  store float %22, float* %24, align 4
  %25 = load i8*, i8** %best.addr, align 8
  %26 = load i8*, i8** %here.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 3, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry, %entry
  %27 = load i8*, i8** %here.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv21 = zext i8 %28 to i32
  %29 = load i8*, i8** %best.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv22 = zext i8 %30 to i32
  %cmp23 = icmp slt i32 %conv21, %conv22
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %sw.bb.20
  %31 = load i8*, i8** %orig.addr, align 8
  %32 = load i8*, i8** %here.addr, align 8
  %call26 = call i32 @value_difference_check(i8* %31, i8* %32, i32 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.25
  %33 = load i8*, i8** %here.addr, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %best.addr, align 8
  store i8 %34, i8* %35, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.25, %sw.bb.20
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.29, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initialize_middle(i32 %image_type, i32 %channels, i8* %best, i8* %here, i8** %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %best.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %tmp.addr = alloca i8**, align 8
  %index = alloca i32, align 4
  %data = alloca %struct.MiddlePacket*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %best, i8** %best.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8** %tmp, i8*** %tmp.addr, align 8
  %0 = load i8**, i8*** %tmp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %2 = bitcast i8* %call to %struct.MiddlePacket*
  %3 = bitcast %struct.MiddlePacket* %2 to i8*
  %4 = load i8**, i8*** %tmp.addr, align 8
  store i8* %3, i8** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8**, i8*** %tmp.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.MiddlePacket*
  store %struct.MiddlePacket* %7, %struct.MiddlePacket** %data, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %index, align 4
  %9 = load i32, i32* %channels.addr, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %index, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %13 = load i32, i32* %index, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %14, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [3 x i8], [3 x i8]* %max, i32 0, i64 %idxprom4
  store i8 %12, i8* %arrayidx5, align 1
  %15 = load i32, i32* %index, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %16, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %min, i32 0, i64 %idxprom6
  store i8 %12, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %index, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %image_type.addr, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.26
    i32 2, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %for.end, %for.end
  %19 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 0), align 4
  %20 = load i8*, i8** %here.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %21 to i32
  %mul = mul nsw i32 %19, %conv
  %22 = load i8*, i8** %here.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %23 to i32
  %mul11 = mul nsw i32 %mul, %conv10
  %24 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 1), align 4
  %25 = load i8*, i8** %here.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %26 to i32
  %mul14 = mul nsw i32 %24, %conv13
  %27 = load i8*, i8** %here.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %28 to i32
  %mul17 = mul nsw i32 %mul14, %conv16
  %add = add nsw i32 %mul11, %mul17
  %29 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 2), align 4
  %30 = load i8*, i8** %here.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %31 to i32
  %mul20 = mul nsw i32 %29, %conv19
  %32 = load i8*, i8** %here.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %33 to i32
  %mul23 = mul nsw i32 %mul20, %conv22
  %add24 = add nsw i32 %add, %mul23
  %conv25 = sext i32 %add24 to i64
  %34 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %original_value = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %34, i32 0, i32 2
  store i64 %conv25, i64* %original_value, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.end, %for.end
  %35 = load i8*, i8** %here.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv27 = zext i8 %36 to i64
  %37 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %original_value28 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %37, i32 0, i32 2
  store i64 %conv27, i64* %original_value28, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %sw.bb
  %38 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %original_value29 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %38, i32 0, i32 2
  %39 = load i64, i64* %original_value29, align 8
  %40 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %maxv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %40, i32 0, i32 5
  store i64 %39, i64* %maxv, align 8
  %41 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %minv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %41, i32 0, i32 3
  store i64 %39, i64* %minv, align 8
  %42 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %42, i32 0, i32 1
  store i16 0, i16* %max_modified, align 2
  %43 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %43, i32 0, i32 0
  store i16 0, i16* %min_modified, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_middle(i32 %image_type, i32 %channels, i8* %orig, i8* %here, i8* %best, i8* %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %orig.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %v_here = alloca float, align 4
  %data = alloca %struct.MiddlePacket*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  %0 = load i8*, i8** %tmp.addr, align 8
  %1 = bitcast i8* %0 to %struct.MiddlePacket*
  store %struct.MiddlePacket* %1, %struct.MiddlePacket** %data, align 8
  %2 = load i32, i32* %image_type.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.34
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 0), align 4
  %4 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nsw i32 %3, %conv
  %6 = load i8*, i8** %here.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %mul5 = mul nsw i32 %mul, %conv4
  %8 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 1), align 4
  %9 = load i8*, i8** %here.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %mul8 = mul nsw i32 %8, %conv7
  %11 = load i8*, i8** %here.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %mul11 = mul nsw i32 %mul8, %conv10
  %add = add nsw i32 %mul5, %mul11
  %13 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @channel_mask, i32 0, i64 2), align 4
  %14 = load i8*, i8** %here.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %mul14 = mul nsw i32 %13, %conv13
  %16 = load i8*, i8** %here.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %mul17 = mul nsw i32 %mul14, %conv16
  %add18 = add nsw i32 %add, %mul17
  %conv19 = sitofp i32 %add18 to float
  store float %conv19, float* %v_here, align 4
  %18 = load float, float* %v_here, align 4
  %19 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %minv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %19, i32 0, i32 3
  %20 = load i64, i64* %minv, align 8
  %conv20 = sitofp i64 %20 to float
  %cmp = fcmp ole float %18, %conv20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %21 = load i8*, i8** %orig.addr, align 8
  %22 = load i8*, i8** %here.addr, align 8
  %call = call i32 @value_difference_check(i8* %21, i8* %22, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %23 = load float, float* %v_here, align 4
  %conv22 = fptosi float %23 to i64
  %24 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %minv23 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %24, i32 0, i32 3
  store i64 %conv22, i64* %minv23, align 8
  %25 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %25, i32 0, i32 4
  %26 = bitcast [3 x i8]* %min to i8*
  %27 = load i8*, i8** %here.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 3, i32 1, i1 false)
  %28 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %28, i32 0, i32 0
  store i16 1, i16* %min_modified, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  %29 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %maxv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %29, i32 0, i32 5
  %30 = load i64, i64* %maxv, align 8
  %conv24 = sitofp i64 %30 to float
  %31 = load float, float* %v_here, align 4
  %cmp25 = fcmp ole float %conv24, %31
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %if.end
  %32 = load i8*, i8** %orig.addr, align 8
  %33 = load i8*, i8** %here.addr, align 8
  %call28 = call i32 @value_difference_check(i8* %32, i8* %33, i32 3)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true.27
  %34 = load float, float* %v_here, align 4
  %conv31 = fptosi float %34 to i64
  %35 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %maxv32 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %35, i32 0, i32 5
  store i64 %conv31, i64* %maxv32, align 8
  %36 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %36, i32 0, i32 6
  %37 = bitcast [3 x i8]* %max to i8*
  %38 = load i8*, i8** %here.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 3, i32 1, i1 false)
  %39 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %39, i32 0, i32 1
  store i16 1, i16* %max_modified, align 2
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %land.lhs.true.27, %if.end
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry, %entry
  %40 = load i8*, i8** %here.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv35 = zext i8 %41 to i32
  %42 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min36 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %42, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [3 x i8], [3 x i8]* %min36, i32 0, i64 0
  %43 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %43 to i32
  %cmp39 = icmp sle i32 %conv35, %conv38
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.48

land.lhs.true.41:                                 ; preds = %sw.bb.34
  %44 = load i8*, i8** %orig.addr, align 8
  %45 = load i8*, i8** %here.addr, align 8
  %call42 = call i32 @value_difference_check(i8* %44, i8* %45, i32 1)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %land.lhs.true.41
  %46 = load i8*, i8** %here.addr, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min45 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %48, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [3 x i8], [3 x i8]* %min45, i32 0, i64 0
  store i8 %47, i8* %arrayidx46, align 1
  %49 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min_modified47 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %49, i32 0, i32 0
  store i16 1, i16* %min_modified47, align 2
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %land.lhs.true.41, %sw.bb.34
  %50 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max49 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %50, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [3 x i8], [3 x i8]* %max49, i32 0, i64 0
  %51 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %51 to i32
  %52 = load i8*, i8** %here.addr, align 8
  %53 = load i8, i8* %52, align 1
  %conv52 = zext i8 %53 to i32
  %cmp53 = icmp sle i32 %conv51, %conv52
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.62

land.lhs.true.55:                                 ; preds = %if.end.48
  %54 = load i8*, i8** %orig.addr, align 8
  %55 = load i8*, i8** %here.addr, align 8
  %call56 = call i32 @value_difference_check(i8* %54, i8* %55, i32 1)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %land.lhs.true.55
  %56 = load i8*, i8** %here.addr, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max59 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %58, i32 0, i32 6
  %arrayidx60 = getelementptr inbounds [3 x i8], [3 x i8]* %max59, i32 0, i64 0
  store i8 %57, i8* %arrayidx60, align 1
  %59 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max_modified61 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %59, i32 0, i32 1
  store i16 1, i16* %max_modified61, align 2
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %land.lhs.true.55, %if.end.48
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.62, %if.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_middle_to_peak(i32 %image_type, i32 %channels, i8* %here, i8* %best, i8* %dest, i8* %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %value_chs = alloca i32, align 4
  %alpha = alloca i32, align 4
  %ch = alloca i32, align 4
  %data = alloca %struct.MiddlePacket*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  store i32 0, i32* %value_chs, align 4
  store i32 0, i32* %alpha, align 4
  %0 = load i8*, i8** %tmp.addr, align 8
  %1 = bitcast i8* %0 to %struct.MiddlePacket*
  store %struct.MiddlePacket* %1, %struct.MiddlePacket** %data, align 8
  %2 = load i32, i32* @peak_min, align 4
  %3 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %minv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %3, i32 0, i32 3
  %4 = load i64, i64* %minv, align 8
  %5 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %original_value = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %5, i32 0, i32 2
  %6 = load i64, i64* %original_value, align 8
  %cmp = icmp eq i64 %4, %6
  %conv = zext i1 %cmp to i32
  %and = and i32 %2, %conv
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* @peak_max, align 4
  %8 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %maxv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %8, i32 0, i32 5
  %9 = load i64, i64* %maxv, align 8
  %10 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %original_value5 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %10, i32 0, i32 2
  %11 = load i64, i64* %original_value5, align 8
  %cmp6 = icmp eq i64 %9, %11
  %conv7 = zext i1 %cmp6 to i32
  %and8 = and i32 %7, %conv7
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  br label %if.end.71

if.end:                                           ; preds = %lor.lhs.false, %entry
  %12 = load i32, i32* @peak_includes_equals, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.end.21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* @peak_min, align 4
  %14 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %14, i32 0, i32 0
  %15 = load i16, i16* %min_modified, align 2
  %tobool11 = icmp ne i16 %15, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  %and12 = and i32 %13, %lnot.ext
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* @peak_max, align 4
  %17 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %17, i32 0, i32 1
  %18 = load i16, i16* %max_modified, align 2
  %tobool15 = icmp ne i16 %18, 0
  %lnot16 = xor i1 %tobool15, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %and18 = and i32 %16, %lnot.ext17
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.14, %land.lhs.true
  br label %if.end.71

if.end.21:                                        ; preds = %lor.lhs.false.14, %if.end
  %19 = load i32, i32* %image_type.addr, align 4
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.23
    i32 3, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %if.end.21
  store i32 3, i32* %value_chs, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.21
  store i32 3, i32* %value_chs, align 4
  store i32 3, i32* %alpha, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.21
  store i32 1, i32* %value_chs, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.21
  store i32 1, i32* %value_chs, align 4
  store i32 1, i32* %alpha, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb
  store i32 0, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %20 = load i32, i32* %ch, align 4
  %21 = load i32, i32* %value_chs, align 4
  %cmp25 = icmp slt i32 %20, %21
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and27 = and i32 %22, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.body
  %23 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %mul = fmul double %23, 5.000000e-01
  %24 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %25, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %min, i32 0, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  %conv30 = zext i8 %26 to i32
  %27 = load i32, i32* %ch, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %28, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [3 x i8], [3 x i8]* %max, i32 0, i64 %idxprom31
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %add = add nsw i32 %conv30, %conv33
  %conv34 = sitofp i32 %add to double
  %mul35 = fmul double %mul, %conv34
  %30 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %sub = fsub double 1.000000e+00, %30
  %31 = load i32, i32* %ch, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load i8*, i8** %here.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %32, i64 %idxprom36
  %33 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  %conv39 = sitofp i32 %conv38 to double
  %mul40 = fmul double %sub, %conv39
  %add41 = fadd double %mul35, %mul40
  %conv42 = fptoui double %add41 to i8
  %34 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %conv42, i8* %34, align 1
  br label %if.end.46

if.else:                                          ; preds = %for.body
  %35 = load i32, i32* %ch, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load i8*, i8** %here.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %36, i64 %idxprom43
  %37 = load i8, i8* %arrayidx44, align 1
  %38 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr45, i8** %dest.addr, align 8
  store i8 %37, i8* %38, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %39 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %ch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %alpha, align 4
  %tobool47 = icmp ne i32 %40, 0
  br i1 %tobool47, label %if.then.48, label %if.end.71

if.then.48:                                       ; preds = %for.end
  %41 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and49 = and i32 %41, 2
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.66

if.then.51:                                       ; preds = %if.then.48
  %42 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %43 = load i32, i32* %alpha, align 4
  %idxprom52 = sext i32 %43 to i64
  %44 = load i8*, i8** %best.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %44, i64 %idxprom52
  %45 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %45 to i32
  %conv55 = sitofp i32 %conv54 to double
  %mul56 = fmul double %42, %conv55
  %46 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %sub57 = fsub double 1.000000e+00, %46
  %47 = load i32, i32* %alpha, align 4
  %idxprom58 = sext i32 %47 to i64
  %48 = load i8*, i8** %here.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %48, i64 %idxprom58
  %49 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %49 to i32
  %conv61 = sitofp i32 %conv60 to double
  %mul62 = fmul double %sub57, %conv61
  %add63 = fadd double %mul56, %mul62
  %conv64 = fptoui double %add63 to i8
  %50 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr65, i8** %dest.addr, align 8
  store i8 %conv64, i8* %50, align 1
  br label %if.end.70

if.else.66:                                       ; preds = %if.then.48
  %51 = load i32, i32* %alpha, align 4
  %idxprom67 = sext i32 %51 to i64
  %52 = load i8*, i8** %here.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %52, i64 %idxprom67
  %53 = load i8, i8* %arrayidx68, align 1
  %54 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr69, i8** %dest.addr, align 8
  store i8 %53, i8* %54, align 1
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.66, %if.then.51
  br label %if.end.71

if.end.71:                                        ; preds = %if.then, %if.then.20, %if.end.70, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_foreground_to_peak(i32 %image_type, i32 %channels, i8* %here, i8* %best, i8* %dest, i8* %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %value_chs = alloca i32, align 4
  %ch = alloca i32, align 4
  %data = alloca %struct.MiddlePacket*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  store i32 0, i32* %value_chs, align 4
  %0 = load i8*, i8** %tmp.addr, align 8
  %1 = bitcast i8* %0 to %struct.MiddlePacket*
  store %struct.MiddlePacket* %1, %struct.MiddlePacket** %data, align 8
  %2 = load i32, i32* @peak_min, align 4
  %3 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %minv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %3, i32 0, i32 3
  %4 = load i64, i64* %minv, align 8
  %5 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %original_value = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %5, i32 0, i32 2
  %6 = load i64, i64* %original_value, align 8
  %cmp = icmp eq i64 %4, %6
  %conv = zext i1 %cmp to i32
  %and = and i32 %2, %conv
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* @peak_max, align 4
  %8 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %maxv = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %8, i32 0, i32 5
  %9 = load i64, i64* %maxv, align 8
  %10 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %original_value4 = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %10, i32 0, i32 2
  %11 = load i64, i64* %original_value4, align 8
  %cmp5 = icmp eq i64 %9, %11
  %conv6 = zext i1 %cmp5 to i32
  %and7 = and i32 %7, %conv6
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %12 = load i32, i32* @peak_includes_equals, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* @peak_min, align 4
  %14 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %min_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %14, i32 0, i32 0
  %15 = load i16, i16* %min_modified, align 2
  %tobool10 = icmp ne i16 %15, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  %and11 = and i32 %13, %lnot.ext
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.19, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* @peak_max, align 4
  %17 = load %struct.MiddlePacket*, %struct.MiddlePacket** %data, align 8
  %max_modified = getelementptr inbounds %struct.MiddlePacket, %struct.MiddlePacket* %17, i32 0, i32 1
  %18 = load i16, i16* %max_modified, align 2
  %tobool14 = icmp ne i16 %18, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %and17 = and i32 %16, %lnot.ext16
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.13, %land.lhs.true
  br label %for.end

if.end.20:                                        ; preds = %lor.lhs.false.13, %if.end
  %19 = load i32, i32* %image_type.addr, align 4
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end.20
  store i32 3, i32* %value_chs, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.20
  store i32 3, i32* %value_chs, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.20
  store i32 1, i32* %value_chs, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.20
  store i32 1, i32* %value_chs, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb
  store i32 0, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %20 = load i32, i32* %ch, align 4
  %21 = load i32, i32* %value_chs, align 4
  %cmp24 = icmp slt i32 %20, %21
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 1), align 4
  %and26 = and i32 %22, 1
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.body
  %23 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %24 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* @fore, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv29 = zext i8 %25 to i32
  %conv30 = sitofp i32 %conv29 to double
  %mul = fmul double %23, %conv30
  %26 = load double, double* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 2), align 8
  %sub = fsub double 1.000000e+00, %26
  %27 = load i32, i32* %ch, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i8*, i8** %here.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %28, i64 %idxprom31
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %conv34 = sitofp i32 %conv33 to double
  %mul35 = fmul double %sub, %conv34
  %add = fadd double %mul, %mul35
  %conv36 = fptoui double %add to i8
  %30 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %conv36, i8* %30, align 1
  br label %if.end.40

if.else:                                          ; preds = %for.body
  %31 = load i32, i32* %ch, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load i8*, i8** %here.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 %idxprom37
  %33 = load i8, i8* %arrayidx38, align 1
  %34 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr39, i8** %dest.addr, align 8
  store i8 %33, i8* %34, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %35 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %ch, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.19, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initialize_foreground(i32 %image_type, i32 %channels, i8* %here, i8* %best, i8** %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8**, align 8
  %foreground = alloca %struct._GimpRGB, align 8
  %ch = alloca i8*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8** %tmp, i8*** %tmp.addr, align 8
  %0 = load i8**, i8*** %tmp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc_n(i64 3, i64 1)
  %2 = load i8**, i8*** %tmp.addr, align 8
  store i8* %call, i8** %2, align 8
  %3 = load i8**, i8*** %tmp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %ch, align 8
  %call3 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %foreground)
  %5 = load i8*, i8** %ch, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8*, i8** %ch, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8*, i8** %ch, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %foreground, i8* %arrayidx, i8* %arrayidx4, i8* %arrayidx5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_a_color(i32 %image_type, i32 %channels, i8* %orig, i8* %here, i8* %best, i8* %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %orig.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %fg = alloca i8*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  %0 = load i8*, i8** %tmp.addr, align 8
  store i8* %0, i8** %fg, align 8
  %1 = load i32, i32* %image_type.addr, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.19
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %fg, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load i8*, i8** %here.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i8*, i8** %fg, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %10 = load i8*, i8** %here.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %12 = load i8*, i8** %fg, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv13, %conv15
  br i1 %cmp16, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true.11
  %14 = load i8*, i8** %orig.addr, align 8
  %15 = load i8*, i8** %here.addr, align 8
  %call = call i32 @value_difference_check(i8* %14, i8* %15, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.18
  %16 = load i8*, i8** %best.addr, align 8
  %17 = load i8*, i8** %here.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 3, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.18, %land.lhs.true.11, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.19, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initialize_background(i32 %image_type, i32 %channels, i8* %here, i8* %best, i8** %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8**, align 8
  %background = alloca %struct._GimpRGB, align 8
  %ch = alloca i8*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8** %tmp, i8*** %tmp.addr, align 8
  %0 = load i8**, i8*** %tmp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc_n(i64 3, i64 1)
  %2 = load i8**, i8*** %tmp.addr, align 8
  store i8* %call, i8** %2, align 8
  %3 = load i8**, i8*** %tmp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %ch, align 8
  %call3 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %5 = load i8*, i8** %ch, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8*, i8** %ch, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8*, i8** %ch, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %background, i8* %arrayidx, i8* %arrayidx4, i8* %arrayidx5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_opaque(i32 %image_type, i32 %channels, i8* %orig, i8* %here, i8* %best, i8* %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %orig.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  %0 = load i32, i32* %image_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %best.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 3
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %here.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 3
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i8*, i8** %orig.addr, align 8
  %6 = load i8*, i8** %here.addr, align 8
  %call = call i32 @value_difference_check(i8* %5, i8* %6, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %best.addr, align 8
  %8 = load i8*, i8** %here.addr, align 8
  %9 = load i32, i32* %channels.addr, align 4
  %conv4 = sext i32 %9 to i64
  %mul = mul i64 %conv4, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load i8*, i8** %best.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %12 = load i8*, i8** %here.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp slt i32 %conv7, %conv9
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %sw.bb.5
  %14 = load i8*, i8** %orig.addr, align 8
  %15 = load i8*, i8** %here.addr, align 8
  %call13 = call i32 @value_difference_check(i8* %14, i8* %15, i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true.12
  %16 = load i8*, i8** %best.addr, align 8
  %17 = load i8*, i8** %here.addr, align 8
  %18 = load i32, i32* %channels.addr, align 4
  %conv16 = sext i32 %18 to i64
  %mul17 = mul i64 %conv16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %mul17, i32 1, i1 false)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true.12, %sw.bb.5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_transparent(i32 %image_type, i32 %channels, i8* %orig, i8* %here, i8* %best, i8* %tmp) #0 {
entry:
  %image_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %orig.addr = alloca i8*, align 8
  %here.addr = alloca i8*, align 8
  %best.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  store i32 %image_type, i32* %image_type.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %here, i8** %here.addr, align 8
  store i8* %best, i8** %best.addr, align 8
  store i8* %tmp, i8** %tmp.addr, align 8
  %0 = load i32, i32* %image_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %here.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 3
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %best.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 3
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i8*, i8** %orig.addr, align 8
  %6 = load i8*, i8** %here.addr, align 8
  %call = call i32 @value_difference_check(i8* %5, i8* %6, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %best.addr, align 8
  %8 = load i8*, i8** %here.addr, align 8
  %9 = load i32, i32* %channels.addr, align 4
  %conv4 = sext i32 %9 to i64
  %mul = mul i64 %conv4, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load i8*, i8** %here.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %12 = load i8*, i8** %best.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp slt i32 %conv7, %conv9
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %sw.bb.5
  %14 = load i8*, i8** %orig.addr, align 8
  %15 = load i8*, i8** %here.addr, align 8
  %call13 = call i32 @value_difference_check(i8* %14, i8* %15, i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true.12
  %16 = load i8*, i8** %best.addr, align 8
  %17 = load i8*, i8** %here.addr, align 8
  %18 = load i32, i32* %channels.addr, align 4
  %conv16 = sext i32 %18 to i64
  %mul17 = mul i64 %conv16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %mul17, i32 1, i1 false)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true.12, %sw.bb.5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18, %if.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @value_difference_check(i8* %pos1, i8* %pos2, i32 %ch) #6 {
entry:
  %retval = alloca i32, align 4
  %pos1.addr = alloca i8*, align 8
  %pos2.addr = alloca i8*, align 8
  %ch.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %diff = alloca i32, align 4
  store i8* %pos1, i8** %pos1.addr, align 8
  store i8* %pos2, i8** %pos2.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %index, align 4
  %1 = load i32, i32* %ch.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %index, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @channel_mask, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %index, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i8*, i8** %pos1.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %index, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i8*, i8** %pos2.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %sub = sub nsw i32 %conv, %conv6
  %call = call i32 @abs(i32 %sub) #7
  store i32 %call, i32* %diff, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 4), align 4
  %11 = load i32, i32* %diff, align 4
  %cmp7 = icmp sle i32 %10, %11
  br i1 %cmp7, label %land.lhs.true, label %if.then.11

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, i32* %diff, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.VPValueType, %struct.VPValueType* @vpvals, i32 0, i32 5), align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %14 = load i32, i32* %index, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
