; ModuleID = './plug-ins/common/filter-pack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.FPValues = type { double, double, double, i32, i32, i32, i8, i8, [3 x i8], [3 x i32], [3 x [256 x i32]], [3 x [256 x i32]], [3 x [256 x i32]], [3 x [256 x i32]] }
%struct.ReducedImage = type { i32, i32, i8*, double*, i8* }
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
%struct.anon = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.fpInterface = type { i32 }
%struct.AdvancedWindow = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.FPWidgets = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, [12 x %struct._GtkWidget*] }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpHSV = type { double, double, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._cairo = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Input image (used for indexed images)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@query.args = private unnamed_addr constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"plug-in-filter-pack\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Interactively modify the image colors\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Interactively modify the image colors.\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Pavel Grinfeld (pavel@ml.com)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"27th March 1997\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"_Filter Pack...\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"<Image>/Colors/Modify\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@drawable = internal global %struct._GimpDrawable* null, align 8
@mask = internal global %struct._GimpDrawable* null, align 8
@fpvals = internal global %struct.FPValues { double 2.500000e-01, double 6.000000e-01, double 8.000000e+01, i32 1, i32 2, i32 1, i8 0, i8 0, [3 x i8] c" \E0\FF", [3 x i32] zeroinitializer, [3 x [256 x i32]] zeroinitializer, [3 x [256 x i32]] zeroinitializer, [3 x [256 x i32]] zeroinitializer, [3 x [256 x i32]] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [35 x i8] c"FP can only be used on RGB images.\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"FP can only be run interactively.\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Applying filter pack\00", align 1
@reduced = internal global %struct.ReducedImage* null, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"filter-pack\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Filter Pack Simulation\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"gimp-filter-pack\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@dlg = internal global %struct._GtkWidget* null, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@fp_frames = internal global %struct.anon zeroinitializer, align 8
@FPint = internal global %struct.fpInterface zeroinitializer, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"Shadows:\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Midtones:\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Highlights:\00", align 1
@fp_advanced_dialog.rangeNames = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)], align 16
@AW = internal global %struct.AdvancedWindow zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [29 x i8] c"Advanced Filter Pack Options\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Affected Range\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@fp_widgets = internal global %struct.FPWidgets zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Preview Size\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"ctrlButton\00", align 1
@fp_range_change_events.new = internal global i8* null, align 8
@fp_scale_update.prevValue = internal global double 2.500000e-01, align 8
@nudgeArray = internal global [256 x i32] zeroinitializer, align 16
@origPreview = internal global %struct._GtkWidget* null, align 8
@curPreview = internal global %struct._GtkWidget* null, align 8
@rPreview = internal global %struct._GtkWidget* null, align 8
@gPreview = internal global %struct._GtkWidget* null, align 8
@bPreview = internal global %struct._GtkWidget* null, align 8
@cPreview = internal global %struct._GtkWidget* null, align 8
@yPreview = internal global %struct._GtkWidget* null, align 8
@mPreview = internal global %struct._GtkWidget* null, align 8
@centerPreview = internal global %struct._GtkWidget* null, align 8
@lighterPreview = internal global %struct._GtkWidget* null, align 8
@darkerPreview = internal global %struct._GtkWidget* null, align 8
@middlePreview = internal global %struct._GtkWidget* null, align 8
@minusSatPreview = internal global %struct._GtkWidget* null, align 8
@SatPreview = internal global %struct._GtkWidget* null, align 8
@plusSatPreview = internal global %struct._GtkWidget* null, align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Original:\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Current:\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@colorSign = internal constant [3 x [6 x i32]] [[6 x i32] [i32 1, i32 -1, i32 -1, i32 -1, i32 1, i32 1], [6 x i32] [i32 -1, i32 1, i32 -1, i32 1, i32 1, i32 -1], [6 x i32] [i32 -1, i32 -1, i32 1, i32 1, i32 -1, i32 1]], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"Roughness\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Sha_dows\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"_Midtones\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"H_ighlights\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Hue Variations\00", align 1
@hue_red = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), align 8
@hue_green = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), align 8
@hue_blue = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), align 8
@hue_cyan = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), align 8
@hue_yellow = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), align 8
@hue_magenta = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), align 8
@current_val = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), align 8
@.str.49 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@val_darker = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), align 8
@val_lighter = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), align 8
@sat_more = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), align 8
@sat_less = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), align 8
@.str.50 = private unnamed_addr constant [8 x i8] c"Darker:\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Lighter:\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"More Sat:\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Less Sat:\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"Red:\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Green:\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"Blue:\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"Cyan:\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Yellow:\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"Magenta:\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Value Variations\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"Show\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"_Entire image\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Se_lection only\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"Selec_tion in context\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Saturation Variations\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Select Pixels By\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"H_ue\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"Satu_ration\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"V_alue\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"Windows\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"_Hue\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"_Saturation\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"_Value\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"A_dvanced\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %args = alloca [3 x %struct._GimpParamDef], align 16
  %0 = bitcast [3 x %struct._GimpParamDef]* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x %struct._GimpParamDef]* @query.args to i8*), i64 72, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* %args, i32 0, i32 0
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* %arraydecay, %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #2
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #2
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #2
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  call void @fp_init_filter_packs()
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** @drawable, align 8
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data8 to i32*
  %8 = load i32, i32* %d_image, align 4
  %call9 = call i32 @gimp_selection_is_empty(i32 %8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store %struct._GimpDrawable* null, %struct._GimpDrawable** @mask, align 8
  br label %if.end

if.else:                                          ; preds = %do.end
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_image12 = bitcast %union._GimpParamData* %data11 to i32*
  %10 = load i32, i32* %d_image12, align 4
  %call13 = call i32 @gimp_image_get_selection(i32 %10)
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %call13)
  store %struct._GimpDrawable* %call14, %struct._GimpDrawable** @mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %run_mode, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end
  %call15 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.FPValues* @fpvals to i8*))
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id, align 4
  %call16 = call i32 @gimp_drawable_is_indexed(i32 %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id18, align 4
  %call19 = call i32 @gimp_drawable_is_gray(i32 %15)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %lor.lhs.false, %sw.bb
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0)) #2
  %call23 = call i32 @gimp_message(i8* %call22)
  store i32 0, i32* %status, align 4
  br label %if.end.29

if.else.24:                                       ; preds = %lor.lhs.false
  %call25 = call i32 @fp_dialog()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.24
  store i32 4, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.21
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0)) #2
  %call32 = call i32 @gimp_message(i8* %call31)
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %call34 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.FPValues* @fpvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.33, %sw.bb.30, %if.end.29
  %16 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %16, 3
  br i1 %cmp, label %if.then.35, label %if.end.51

if.then.35:                                       ; preds = %sw.epilog
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id36, align 4
  %call37 = call i32 @gimp_drawable_is_rgb(i32 %18)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.49

if.then.39:                                       ; preds = %if.then.35
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #2
  %call41 = call i32 @gimp_progress_init(i8* %call40)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width, align 4
  %call42 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %20, %call42
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @fp(%struct._GimpDrawable* %21)
  %22 = load i32, i32* %run_mode, align 4
  %cmp43 = icmp eq i32 %22, 0
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.39
  %call46 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.FPValues* @fpvals to i8*), i32 12344)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.39
  %call48 = call i32 @gimp_displays_flush()
  br label %if.end.50

if.else.49:                                       ; preds = %if.then.35
  store i32 0, i32* %status, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.end.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %sw.epilog
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %23)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** @mask, align 8
  %tobool52 = icmp ne %struct._GimpDrawable* %24, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** @mask, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %25)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @fp_init_filter_packs() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 10), i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %4 to i64
  %5 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 12), i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  store i32 0, i32* %arrayidx9, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 11), i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  store i32 0, i32* %arrayidx13, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %8 to i64
  %9 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 13), i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx16, i32 0, i64 %idxprom14
  store i32 0, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %11, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_message(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @fp_dialog() #0 {
entry:
  %bna = alloca %struct._GtkWidget*, align 8
  %palette = alloca %struct._GtkWidget*, align 8
  %lnd = alloca %struct._GtkWidget*, align 8
  %show = alloca %struct._GtkWidget*, align 8
  %rough = alloca %struct._GtkWidget*, align 8
  %range = alloca %struct._GtkWidget*, align 8
  %pixelsBy = alloca %struct._GtkWidget*, align 8
  %satur = alloca %struct._GtkWidget*, align 8
  %control = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** @mask, align 8
  %2 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 2), align 8
  %conv = fptosi double %2 to i32
  %3 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 5), align 4
  %call = call %struct.ReducedImage* @fp_reduce_image(%struct._GimpDrawable* %0, %struct._GimpDrawable* %1, i32 %conv, i32 %3)
  store %struct.ReducedImage* %call, %struct.ReducedImage** @reduced, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #2
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** @dlg, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 1, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @fp_response to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  call void @fp_advanced_dialog(%struct._GtkWidget* %16)
  %call9 = call %struct._GtkWidget* @fp_create_bna()
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %bna, align 8
  store %struct._GtkWidget* %call9, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 0), align 8
  %call10 = call %struct._GtkWidget* @fp_create_rough()
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %rough, align 8
  store %struct._GtkWidget* %call10, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 2), align 8
  %call11 = call %struct._GtkWidget* @fp_create_range()
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %range, align 8
  store %struct._GtkWidget* %call11, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 3), align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %call12 = call %struct._GtkWidget* @fp_create_circle_palette(%struct._GtkWidget* %17)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %palette, align 8
  store %struct._GtkWidget* %call12, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 1), align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %call13 = call %struct._GtkWidget* @fp_create_lnd(%struct._GtkWidget* %18)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %lnd, align 8
  store %struct._GtkWidget* %call13, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 5), align 8
  %call14 = call %struct._GtkWidget* @fp_create_show()
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %show, align 8
  store %struct._GtkWidget* %call14, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 4), align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %call15 = call %struct._GtkWidget* @fp_create_msnls(%struct._GtkWidget* %19)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %satur, align 8
  store %struct._GtkWidget* %call15, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 8), align 8
  %call16 = call %struct._GtkWidget* @fp_create_pixels_select_by()
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %pixelsBy, align 8
  store %struct._GtkWidget* %call16, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 6), align 8
  %call17 = call %struct._GtkWidget* @fp_create_control()
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %control, align 8
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 2, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %22, i32 6)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %25, i32 6)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %28, i32 12)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_dialog_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkDialog*
  %call27 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %31)
  %32 = bitcast %struct._GtkWidget* %call27 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call28)
  %33 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 1, i32 1, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call30)
  %38 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %bna, align 8
  call void @gtk_table_attach(%struct._GtkTable* %38, %struct._GtkWidget* %39, i32 0, i32 2, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %control, align 8
  call void @gtk_table_attach(%struct._GtkTable* %42, %struct._GtkWidget* %43, i32 1, i32 2, i32 1, i32 3, i32 6, i32 6, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call34)
  %46 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %rough, align 8
  call void @gtk_table_attach(%struct._GtkTable* %46, %struct._GtkWidget* %47, i32 1, i32 2, i32 3, i32 4, i32 6, i32 6, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call36)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %show, align 8
  call void @gtk_table_attach(%struct._GtkTable* %50, %struct._GtkWidget* %51, i32 0, i32 1, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call38)
  %54 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %range, align 8
  call void @gtk_table_attach(%struct._GtkTable* %54, %struct._GtkWidget* %55, i32 0, i32 1, i32 2, i32 3, i32 6, i32 6, i32 0, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call40)
  %58 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %pixelsBy, align 8
  call void @gtk_table_attach(%struct._GtkTable* %58, %struct._GtkWidget* %59, i32 0, i32 1, i32 3, i32 4, i32 6, i32 6, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv42 = zext i8 %61 to i32
  call void @fp_refresh_previews(i32 %conv42)
  call void @gtk_main()
  %62 = load i32, i32* getelementptr inbounds (%struct.fpInterface, %struct.fpInterface* @FPint, i32 0, i32 0), align 4
  ret i32 %62
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #4

; Function Attrs: nounwind uwtable
define internal void @fp(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %0, i32 0, void (i8*, i8*, i32, i8*)* @fp_func, i8* null)
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal %struct.ReducedImage* @fp_reduce_image(%struct._GimpDrawable* %drawable, %struct._GimpDrawable* %mask, i32 %longer_size, i32 %selection) #0 {
entry:
  %retval = alloca %struct.ReducedImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %mask.addr = alloca %struct._GimpDrawable*, align 8
  %longer_size.addr = alloca i32, align 4
  %selection.addr = alloca i32, align 4
  %RH = alloca i32, align 4
  %RW = alloca i32, align 4
  %bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %temp = alloca %struct.ReducedImage*, align 8
  %tempRGB = alloca i8*, align 8
  %src_row = alloca i8*, align 8
  %tempmask = alloca i8*, align 8
  %src_mask_row = alloca i8*, align 8
  %R = alloca i8, align 1
  %G = alloca i8, align 1
  %B = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %whichcol = alloca i32, align 4
  %whichrow = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %srcMask = alloca %struct._GimpPixelRgn, align 8
  %tempHSV = alloca double*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %mask, %struct._GimpDrawable** %mask.addr, align 8
  store i32 %longer_size, i32* %longer_size.addr, align 4
  store i32 %selection, i32* %selection.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 32)
  %2 = bitcast i8* %call to %struct.ReducedImage*
  store %struct.ReducedImage* %2, %struct.ReducedImage** %temp, align 8
  %3 = load i32, i32* %selection.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %x, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load i32, i32* %width1, align 4
  store i32 %5, i32* %width, align 4
  store i32 0, i32* %y, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 2
  %7 = load i32, i32* %height2, align 4
  store i32 %7, i32* %height, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call4 = call i32 @gimp_drawable_mask_intersect(i32 %9, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  %10 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  store %struct.ReducedImage* %10, %struct.ReducedImage** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_mask_intersect(i32 %12, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %sw.bb.5
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %width, align 4
  %div = sdiv i32 %14, 2
  %sub = sub nsw i32 %13, %div
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %height, align 4
  %div9 = sdiv i32 %16, 2
  %sub10 = sub nsw i32 %15, %div9
  %17 = load i32, i32* %width, align 4
  %mul = mul nsw i32 2, %17
  %18 = load i32, i32* %height, align 4
  %mul11 = mul nsw i32 2, %18
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width12, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 2
  %22 = load i32, i32* %height13, align 4
  %call14 = call i32 @gimp_rectangle_intersect(i32 %sub, i32 %sub10, i32 %mul, i32 %mul11, i32 0, i32 0, i32 %20, i32 %22, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false, %sw.bb.5
  %23 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  store %struct.ReducedImage* %23, %struct.ReducedImage** %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %24 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  store %struct.ReducedImage* %24, %struct.ReducedImage** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.17, %if.end, %sw.bb
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %25, %26
  br i1 %cmp, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.epilog
  %27 = load i32, i32* %longer_size.addr, align 4
  store i32 %27, i32* %RW, align 4
  %28 = load i32, i32* %height, align 4
  %conv = sitofp i32 %28 to double
  %29 = load i32, i32* %longer_size.addr, align 4
  %conv19 = sitofp i32 %29 to double
  %mul20 = fmul double %conv, %conv19
  %30 = load i32, i32* %width, align 4
  %conv21 = sitofp i32 %30 to double
  %div22 = fdiv double %mul20, %conv21
  %conv23 = fptosi double %div22 to i32
  store i32 %conv23, i32* %RH, align 4
  br label %if.end.30

if.else:                                          ; preds = %sw.epilog
  %31 = load i32, i32* %longer_size.addr, align 4
  store i32 %31, i32* %RH, align 4
  %32 = load i32, i32* %width, align 4
  %conv24 = sitofp i32 %32 to double
  %33 = load i32, i32* %longer_size.addr, align 4
  %conv25 = sitofp i32 %33 to double
  %mul26 = fmul double %conv24, %conv25
  %34 = load i32, i32* %height, align 4
  %conv27 = sitofp i32 %34 to double
  %div28 = fdiv double %mul26, %conv27
  %conv29 = fptosi double %div28 to i32
  store i32 %conv29, i32* %RW, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.18
  %35 = load i32, i32* %RW, align 4
  %36 = load i32, i32* %RH, align 4
  %mul31 = mul nsw i32 %35, %36
  %37 = load i32, i32* %bytes, align 4
  %mul32 = mul nsw i32 %mul31, %37
  %conv33 = sext i32 %mul32 to i64
  %call34 = call noalias i8* @g_malloc_n(i64 %conv33, i64 1)
  store i8* %call34, i8** %tempRGB, align 8
  %38 = load i32, i32* %RW, align 4
  %39 = load i32, i32* %RH, align 4
  %mul35 = mul nsw i32 %38, %39
  %40 = load i32, i32* %bytes, align 4
  %mul36 = mul nsw i32 %mul35, %40
  %conv37 = sext i32 %mul36 to i64
  %call38 = call noalias i8* @g_malloc_n(i64 %conv37, i64 8)
  %41 = bitcast i8* %call38 to double*
  store double* %41, double** %tempHSV, align 8
  %42 = load i32, i32* %RW, align 4
  %43 = load i32, i32* %RH, align 4
  %mul39 = mul nsw i32 %42, %43
  %conv40 = sext i32 %mul39 to i64
  %call41 = call noalias i8* @g_malloc_n(i64 %conv40, i64 1)
  store i8* %call41, i8** %tempmask, align 8
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %bytes, align 4
  %mul42 = mul nsw i32 %44, %45
  %conv43 = sext i32 %mul42 to i64
  %call44 = call noalias i8* @g_malloc_n(i64 %conv43, i64 1)
  store i8* %call44, i8** %src_row, align 8
  %46 = load i32, i32* %width, align 4
  %conv45 = sext i32 %46 to i64
  %call46 = call noalias i8* @g_malloc_n(i64 %conv45, i64 1)
  store i8* %call46, i8** %src_mask_row, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %y, align 4
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 0, i32 0)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %tobool47 = icmp ne %struct._GimpDrawable* %52, null
  br i1 %tobool47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.30
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %54 = load i32, i32* %x, align 4
  %55 = load i32, i32* %y, align 4
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcMask, %struct._GimpDrawable* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 0, i32 0)
  br label %if.end.51

if.else.49:                                       ; preds = %if.end.30
  %58 = load i8*, i8** %src_mask_row, align 8
  %59 = load i32, i32* %width, align 4
  %conv50 = sext i32 %59 to i64
  call void @llvm.memset.p0i8.i64(i8* %58, i8 -1, i64 %conv50, i32 1, i1 false)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.48
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.147, %if.end.51
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %RH, align 4
  %cmp52 = icmp slt i32 %60, %61
  br i1 %cmp52, label %for.body, label %for.end.149

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %i, align 4
  %conv54 = sitofp i32 %62 to double
  %63 = load i32, i32* %height, align 4
  %conv55 = sitofp i32 %63 to double
  %mul56 = fmul double %conv54, %conv55
  %64 = load i32, i32* %RH, align 4
  %conv57 = sitofp i32 %64 to double
  %div58 = fdiv double %mul56, %conv57
  %conv59 = fptosi double %div58 to i32
  store i32 %conv59, i32* %whichrow, align 4
  %65 = load i8*, i8** %src_row, align 8
  %66 = load i32, i32* %x, align 4
  %67 = load i32, i32* %y, align 4
  %68 = load i32, i32* %whichrow, align 4
  %add = add nsw i32 %67, %68
  %69 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %65, i32 %66, i32 %add, i32 %69)
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %tobool60 = icmp ne %struct._GimpDrawable* %70, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %for.body
  %71 = load i8*, i8** %src_mask_row, align 8
  %72 = load i32, i32* %x, align 4
  %73 = load i32, i32* %y, align 4
  %74 = load i32, i32* %whichrow, align 4
  %add62 = add nsw i32 %73, %74
  %75 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcMask, i8* %71, i32 %72, i32 %add62, i32 %75)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %if.end.63
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %RW, align 4
  %cmp65 = icmp slt i32 %76, %77
  br i1 %cmp65, label %for.body.67, label %for.end

for.body.67:                                      ; preds = %for.cond.64
  %78 = load i32, i32* %j, align 4
  %conv68 = sitofp i32 %78 to double
  %79 = load i32, i32* %width, align 4
  %conv69 = sitofp i32 %79 to double
  %mul70 = fmul double %conv68, %conv69
  %80 = load i32, i32* %RW, align 4
  %conv71 = sitofp i32 %80 to double
  %div72 = fdiv double %mul70, %conv71
  %conv73 = fptosi double %div72 to i32
  store i32 %conv73, i32* %whichcol, align 4
  %81 = load i32, i32* %whichcol, align 4
  %idxprom = sext i32 %81 to i64
  %82 = load i8*, i8** %src_mask_row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %82, i64 %idxprom
  %83 = load i8, i8* %arrayidx, align 1
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %RW, align 4
  %mul74 = mul nsw i32 %84, %85
  %86 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %mul74, %86
  %idxprom76 = sext i32 %add75 to i64
  %87 = load i8*, i8** %tempmask, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %87, i64 %idxprom76
  store i8 %83, i8* %arrayidx77, align 1
  %88 = load i32, i32* %whichcol, align 4
  %89 = load i32, i32* %bytes, align 4
  %mul78 = mul nsw i32 %88, %89
  %add79 = add nsw i32 %mul78, 0
  %idxprom80 = sext i32 %add79 to i64
  %90 = load i8*, i8** %src_row, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %90, i64 %idxprom80
  %91 = load i8, i8* %arrayidx81, align 1
  store i8 %91, i8* %R, align 1
  %92 = load i32, i32* %whichcol, align 4
  %93 = load i32, i32* %bytes, align 4
  %mul82 = mul nsw i32 %92, %93
  %add83 = add nsw i32 %mul82, 1
  %idxprom84 = sext i32 %add83 to i64
  %94 = load i8*, i8** %src_row, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %94, i64 %idxprom84
  %95 = load i8, i8* %arrayidx85, align 1
  store i8 %95, i8* %G, align 1
  %96 = load i32, i32* %whichcol, align 4
  %97 = load i32, i32* %bytes, align 4
  %mul86 = mul nsw i32 %96, %97
  %add87 = add nsw i32 %mul86, 2
  %idxprom88 = sext i32 %add87 to i64
  %98 = load i8*, i8** %src_row, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %98, i64 %idxprom88
  %99 = load i8, i8* %arrayidx89, align 1
  store i8 %99, i8* %B, align 1
  %100 = load i8, i8* %R, align 1
  %101 = load i8, i8* %G, align 1
  %102 = load i8, i8* %B, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %100, i8 zeroext %101, i8 zeroext %102)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  %103 = load i8, i8* %R, align 1
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %RW, align 4
  %mul90 = mul nsw i32 %104, %105
  %106 = load i32, i32* %bytes, align 4
  %mul91 = mul nsw i32 %mul90, %106
  %107 = load i32, i32* %j, align 4
  %108 = load i32, i32* %bytes, align 4
  %mul92 = mul nsw i32 %107, %108
  %add93 = add nsw i32 %mul91, %mul92
  %add94 = add nsw i32 %add93, 0
  %idxprom95 = sext i32 %add94 to i64
  %109 = load i8*, i8** %tempRGB, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %109, i64 %idxprom95
  store i8 %103, i8* %arrayidx96, align 1
  %110 = load i8, i8* %G, align 1
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %RW, align 4
  %mul97 = mul nsw i32 %111, %112
  %113 = load i32, i32* %bytes, align 4
  %mul98 = mul nsw i32 %mul97, %113
  %114 = load i32, i32* %j, align 4
  %115 = load i32, i32* %bytes, align 4
  %mul99 = mul nsw i32 %114, %115
  %add100 = add nsw i32 %mul98, %mul99
  %add101 = add nsw i32 %add100, 1
  %idxprom102 = sext i32 %add101 to i64
  %116 = load i8*, i8** %tempRGB, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %116, i64 %idxprom102
  store i8 %110, i8* %arrayidx103, align 1
  %117 = load i8, i8* %B, align 1
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %RW, align 4
  %mul104 = mul nsw i32 %118, %119
  %120 = load i32, i32* %bytes, align 4
  %mul105 = mul nsw i32 %mul104, %120
  %121 = load i32, i32* %j, align 4
  %122 = load i32, i32* %bytes, align 4
  %mul106 = mul nsw i32 %121, %122
  %add107 = add nsw i32 %mul105, %mul106
  %add108 = add nsw i32 %add107, 2
  %idxprom109 = sext i32 %add108 to i64
  %123 = load i8*, i8** %tempRGB, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %123, i64 %idxprom109
  store i8 %117, i8* %arrayidx110, align 1
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %124 = load double, double* %h, align 8
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %RW, align 4
  %mul111 = mul nsw i32 %125, %126
  %127 = load i32, i32* %bytes, align 4
  %mul112 = mul nsw i32 %mul111, %127
  %128 = load i32, i32* %j, align 4
  %129 = load i32, i32* %bytes, align 4
  %mul113 = mul nsw i32 %128, %129
  %add114 = add nsw i32 %mul112, %mul113
  %add115 = add nsw i32 %add114, 0
  %idxprom116 = sext i32 %add115 to i64
  %130 = load double*, double** %tempHSV, align 8
  %arrayidx117 = getelementptr inbounds double, double* %130, i64 %idxprom116
  store double %124, double* %arrayidx117, align 8
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %131 = load double, double* %s, align 8
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %RW, align 4
  %mul118 = mul nsw i32 %132, %133
  %134 = load i32, i32* %bytes, align 4
  %mul119 = mul nsw i32 %mul118, %134
  %135 = load i32, i32* %j, align 4
  %136 = load i32, i32* %bytes, align 4
  %mul120 = mul nsw i32 %135, %136
  %add121 = add nsw i32 %mul119, %mul120
  %add122 = add nsw i32 %add121, 1
  %idxprom123 = sext i32 %add122 to i64
  %137 = load double*, double** %tempHSV, align 8
  %arrayidx124 = getelementptr inbounds double, double* %137, i64 %idxprom123
  store double %131, double* %arrayidx124, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %138 = load double, double* %v, align 8
  %139 = load i32, i32* %i, align 4
  %140 = load i32, i32* %RW, align 4
  %mul125 = mul nsw i32 %139, %140
  %141 = load i32, i32* %bytes, align 4
  %mul126 = mul nsw i32 %mul125, %141
  %142 = load i32, i32* %j, align 4
  %143 = load i32, i32* %bytes, align 4
  %mul127 = mul nsw i32 %142, %143
  %add128 = add nsw i32 %mul126, %mul127
  %add129 = add nsw i32 %add128, 2
  %idxprom130 = sext i32 %add129 to i64
  %144 = load double*, double** %tempHSV, align 8
  %arrayidx131 = getelementptr inbounds double, double* %144, i64 %idxprom130
  store double %138, double* %arrayidx131, align 8
  %145 = load i32, i32* %bytes, align 4
  %cmp132 = icmp eq i32 %145, 4
  br i1 %cmp132, label %if.then.134, label %if.end.146

if.then.134:                                      ; preds = %for.body.67
  %146 = load i32, i32* %whichcol, align 4
  %147 = load i32, i32* %bytes, align 4
  %mul135 = mul nsw i32 %146, %147
  %add136 = add nsw i32 %mul135, 3
  %idxprom137 = sext i32 %add136 to i64
  %148 = load i8*, i8** %src_row, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %148, i64 %idxprom137
  %149 = load i8, i8* %arrayidx138, align 1
  %150 = load i32, i32* %i, align 4
  %151 = load i32, i32* %RW, align 4
  %mul139 = mul nsw i32 %150, %151
  %152 = load i32, i32* %bytes, align 4
  %mul140 = mul nsw i32 %mul139, %152
  %153 = load i32, i32* %j, align 4
  %154 = load i32, i32* %bytes, align 4
  %mul141 = mul nsw i32 %153, %154
  %add142 = add nsw i32 %mul140, %mul141
  %add143 = add nsw i32 %add142, 3
  %idxprom144 = sext i32 %add143 to i64
  %155 = load i8*, i8** %tempRGB, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %155, i64 %idxprom144
  store i8 %149, i8* %arrayidx145, align 1
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.134, %for.body.67
  br label %for.inc

for.inc:                                          ; preds = %if.end.146
  %156 = load i32, i32* %j, align 4
  %inc = add nsw i32 %156, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.64

for.end:                                          ; preds = %for.cond.64
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end
  %157 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %157, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond

for.end.149:                                      ; preds = %for.cond
  %158 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %158)
  %159 = load i8*, i8** %src_mask_row, align 8
  call void @g_free(i8* %159)
  %160 = load i32, i32* %RW, align 4
  %161 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %width150 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %161, i32 0, i32 0
  store i32 %160, i32* %width150, align 4
  %162 = load i32, i32* %RH, align 4
  %163 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %height151 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %163, i32 0, i32 1
  store i32 %162, i32* %height151, align 4
  %164 = load i8*, i8** %tempRGB, align 8
  %165 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %rgb152 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %165, i32 0, i32 2
  store i8* %164, i8** %rgb152, align 8
  %166 = load double*, double** %tempHSV, align 8
  %167 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %hsv153 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %167, i32 0, i32 3
  store double* %166, double** %hsv153, align 8
  %168 = load i8*, i8** %tempmask, align 8
  %169 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %mask154 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %169, i32 0, i32 4
  store i8* %168, i8** %mask154, align 8
  %170 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  store %struct.ReducedImage* %170, %struct.ReducedImage** %retval
  br label %return

return:                                           ; preds = %for.end.149, %sw.default, %if.then.16, %if.then
  %171 = load %struct.ReducedImage*, %struct.ReducedImage** %retval
  ret %struct.ReducedImage* %171
}

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #4

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #4

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fp_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  call void @fp_reset_filter_packs()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.fpInterface, %struct.fpInterface* @FPint, i32 0, i32 0), align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %1)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

; Function Attrs: nounwind uwtable
define internal void @fp_advanced_dialog(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %rangeNames = alloca [3 x i8*], align 16
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %smoothnessData = alloca %struct._GtkAdjustment*, align 8
  %graphFrame = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %labelTable = alloca %struct._GtkWidget*, align 8
  %alignment = alloca %struct._GtkWidget*, align 8
  %inner_vbox = alloca %struct._GtkWidget*, align 8
  %innermost_vbox = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = bitcast [3 x i8*]* %rangeNames to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @fp_advanced_dialog.rangeNames to i8*), i64 24, i32 16, i1 false)
  %call = call %struct._GtkWidget* @gtk_window_new(i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  call void @gimp_help_connect(%struct._GtkWidget* %1, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0)) #2
  call void @gtk_window_set_title(%struct._GtkWindow* %4, i8* %call3)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %7, %struct._GtkWindow* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, i8*)* @sub_dialog_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %hbox, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %15, i32 12)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0)) #2
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call21 = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, i32 1)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %graphFrame, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %graphFrame, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_frame_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call22)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %33, i32 1)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %graphFrame, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_container_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %36, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %graphFrame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %graphFrame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call28 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %inner_vbox, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %graphFrame, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call29)
  %44 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %44, %struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %call31 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %alignment, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call32)
  %49 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %49, %struct._GtkWidget* %50, i32 1, i32 1, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call34 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %innermost_vbox, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_container_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call35)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkContainer*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %innermost_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %54, %struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %innermost_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %call37 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call37, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %57, i32 256, i32 128)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %innermost_vbox, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call38)
  %60 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %60, %struct._GtkWidget* %61, i32 1, i32 1, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @fp_create_smoothness_graph(%struct._GtkWidget* %63)
  %call40 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call40, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %64, i32 256, i32 15)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %innermost_vbox, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call41)
  %67 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 1, i32 1, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  call void @fp_range_preview_spill(%struct._GtkWidget* %70, i32 %71)
  %call43 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 4, i32 0)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %labelTable, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %labelTable, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call44)
  %74 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %74, i32 6)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %labelTable, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call46)
  %77 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %77, i32 6)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call48)
  %80 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %labelTable, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %81, i32 0, i32 0, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %labelTable, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call50 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call50, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %83, i32 264, i32 15)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call51)
  %86 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %86, %struct._GtkWidget* %87, i32 1, i32 1, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %89, i32 4906)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct.FPValues*)* @fp_range_change_events to void ()*), i8* bitcast (%struct.FPValues* @fpvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %92 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %92, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call54 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %93 = load i32, i32* %i, align 4
  %idxprom = sext i32 %93 to i64
  %arrayidx = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 3), i32 0, i64 %idxprom
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %arrayidx, align 8
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %label, align 8
  %94 = load i32, i32* %i, align 4
  %rem = srem i32 %94, 4
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_label_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call55)
  %97 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkLabel*
  %98 = load i32, i32* %i, align 4
  %div = sdiv i32 %98, 4
  %idxprom57 = sext i32 %div to i64
  %arrayidx58 = getelementptr inbounds [3 x i8*], [3 x i8*]* %rangeNames, i32 0, i64 %idxprom57
  %99 = load i8*, i8** %arrayidx58, align 8
  %call59 = call i8* @gettext(i8* %99) #2
  call void @gtk_label_set_text(%struct._GtkLabel* %97, i8* %call59)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_label_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call60)
  %102 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %102, i32 4, i32 700, i32 -1)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_misc_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call62)
  %105 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %105, float 1.000000e+00, float 1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %labelTable, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call64)
  %109 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %111 = load i32, i32* %i, align 4
  %rem66 = srem i32 %111, 4
  %112 = load i32, i32* %i, align 4
  %rem67 = srem i32 %112, 4
  %add = add nsw i32 %rem67, 1
  %113 = load i32, i32* %i, align 4
  %div68 = sdiv i32 %113, 4
  %114 = load i32, i32* %i, align 4
  %div69 = sdiv i32 %114, 4
  %add70 = add nsw i32 %div69, 1
  call void @gtk_table_attach(%struct._GtkTable* %109, %struct._GtkWidget* %110, i32 %rem66, i32 %add, i32 %div68, i32 %add70, i32 5, i32 0, i32 0, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %115 = load i32, i32* %i, align 4
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %116 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 1), align 8
  %call71 = call %struct._GtkObject* @gtk_adjustment_new(double %116, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02, double 1.000000e-02, double 0.000000e+00)
  %117 = bitcast %struct._GtkObject* %call71 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %117, %struct._GtkAdjustment** %smoothnessData, align 8
  %118 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %smoothnessData, align 8
  %call72 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %118)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %scale, align 8
  store %struct._GtkWidget* %call72, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 1), align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %119, i32 200, i32 -1)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_scale_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call73)
  %122 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %122, i32 2)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_scale_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call75)
  %125 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkScale*
  call void @gtk_scale_set_value_pos(%struct._GtkScale* %125, i32 2)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call77)
  %128 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %128, %struct._GtkWidget* %129, i32 0, i32 0, i32 0)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %130)
  %131 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %smoothnessData, align 8
  %132 = bitcast %struct._GtkAdjustment* %131 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @fp_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #2
  %call81 = call %struct._GtkWidget* @gimp_frame_new(i8* %call80)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %frame, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call82)
  %135 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %136, i32 1, i32 1, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %call84 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %vbox, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_container_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call85)
  %140 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkContainer*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %140, %struct._GtkWidget* %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %143 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 2), align 8
  %call87 = call %struct._GtkObject* @gtk_adjustment_new(double %143, double 5.000000e+01, double 1.250000e+02, double 5.000000e+00, double 5.000000e+00, double 0.000000e+00)
  %144 = bitcast %struct._GtkObject* %call87 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %144, %struct._GtkAdjustment** %smoothnessData, align 8
  %145 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %smoothnessData, align 8
  %call88 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %145)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %scale, align 8
  store %struct._GtkWidget* %call88, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 2), align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_box_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call89)
  %148 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkBox*
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %148, %struct._GtkWidget* %149, i32 0, i32 0, i32 0)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %150, i32 100, i32 -1)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_scale_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call91)
  %153 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %153, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_scale_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call93)
  %156 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkScale*
  call void @gtk_scale_set_value_pos(%struct._GtkScale* %156, i32 2)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %157)
  %158 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %smoothnessData, align 8
  %159 = bitcast %struct._GtkAdjustment* %158 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @fp_preview_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  call void @update_range_labels()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_bna() #0 {
entry:
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %bframe = alloca %struct._GtkWidget*, align 8
  %aframe = alloca %struct._GtkWidget*, align 8
  %0 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %2, i32 0, i32 1
  %3 = load i32, i32* %height, align 4
  call void @fp_create_preview(%struct._GtkWidget** @origPreview, %struct._GtkWidget** %bframe, i32 %1, i32 %3)
  %4 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width1 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %4, i32 0, i32 0
  %5 = load i32, i32* %width1, align 4
  %6 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height2 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %6, i32 0, i32 1
  %7 = load i32, i32* %height2, align 4
  call void @fp_create_preview(%struct._GtkWidget** @curPreview, %struct._GtkWidget** %aframe, i32 %5, i32 %7)
  %call = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %13, i32 6)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0)) #2
  %call8 = call %struct._GtkWidget* @gtk_label_new(i8* %call7)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %label, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %16, %struct._GtkWidget* %17, i32 0, i32 1, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call11)
  %21 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %bframe, align 8
  call void @gtk_table_attach(%struct._GtkTable* %21, %struct._GtkWidget* %22, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0)) #2
  %call14 = call %struct._GtkWidget* @gtk_label_new(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %label, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %25, %struct._GtkWidget* %26, i32 1, i32 2, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_table_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call17)
  %30 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTable*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %aframe, align 8
  call void @gtk_table_attach(%struct._GtkTable* %30, %struct._GtkWidget* %31, i32 1, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %33
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_rough() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GtkAdjustment*, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #2
  %call1 = call %struct._GtkWidget* @gimp_frame_new(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %0)
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %vbox, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %3, %struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %6 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 0), align 8
  %call5 = call %struct._GtkObject* @gtk_adjustment_new(double %6, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02, double 1.000000e-02, double 0.000000e+00)
  %7 = bitcast %struct._GtkObject* %call5 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %7, %struct._GtkAdjustment** %data, align 8
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %data, align 8
  %call6 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %8)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %scale, align 8
  store %struct._GtkWidget* %call6, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 0), align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %9, i32 60, i32 -1)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scale_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScale*
  call void @gtk_scale_set_value_pos(%struct._GtkScale* %12, i32 2)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_scale_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %15, i32 2)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %data, align 8
  %18 = bitcast %struct._GtkAdjustment* %17 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @fp_scale_update to void ()*), i8* bitcast (%struct.FPValues* @fpvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_range() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0)) #2
  %0 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 3), align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)) #2
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)) #2
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0)) #2
  %call4 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @fp_change_current_range to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 3) to i8*), i32 %0, i8* %call1, i32 0, i8* null, i8* %call2, i32 1, i8* null, i8* %call3, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_circle_palette(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %rVbox = alloca %struct._GtkWidget*, align 8
  %rFrame = alloca %struct._GtkWidget*, align 8
  %gVbox = alloca %struct._GtkWidget*, align 8
  %gFrame = alloca %struct._GtkWidget*, align 8
  %bVbox = alloca %struct._GtkWidget*, align 8
  %bFrame = alloca %struct._GtkWidget*, align 8
  %cVbox = alloca %struct._GtkWidget*, align 8
  %cFrame = alloca %struct._GtkWidget*, align 8
  %yVbox = alloca %struct._GtkWidget*, align 8
  %yFrame = alloca %struct._GtkWidget*, align 8
  %mVbox = alloca %struct._GtkWidget*, align 8
  %mFrame = alloca %struct._GtkWidget*, align 8
  %centerVbox = alloca %struct._GtkWidget*, align 8
  %centerFrame = alloca %struct._GtkWidget*, align 8
  %win = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %call = call %struct._GtkWidget* @gtk_window_new(i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %win, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  call void @gimp_help_connect(%struct._GtkWidget* %0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0)) #2
  call void @gtk_window_set_title(%struct._GtkWindow* %3, i8* %call3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %6, %struct._GtkWindow* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, i8*)* @sub_dialog_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call9 = call %struct._GtkWidget* @gtk_table_new(i32 11, i32 11, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %table, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %14, i32 6)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %17, i32 6)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %20, i32 12)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %23, %struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %26, i32 0, i32 0
  %27 = load i32, i32* %width, align 4
  %28 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %28, i32 0, i32 1
  %29 = load i32, i32* %height, align 4
  call void @fp_create_preview(%struct._GtkWidget** @rPreview, %struct._GtkWidget** %rFrame, i32 %27, i32 %29)
  %30 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width18 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %30, i32 0, i32 0
  %31 = load i32, i32* %width18, align 4
  %32 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height19 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %32, i32 0, i32 1
  %33 = load i32, i32* %height19, align 4
  call void @fp_create_preview(%struct._GtkWidget** @gPreview, %struct._GtkWidget** %gFrame, i32 %31, i32 %33)
  %34 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width20 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %34, i32 0, i32 0
  %35 = load i32, i32* %width20, align 4
  %36 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height21 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %36, i32 0, i32 1
  %37 = load i32, i32* %height21, align 4
  call void @fp_create_preview(%struct._GtkWidget** @bPreview, %struct._GtkWidget** %bFrame, i32 %35, i32 %37)
  %38 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width22 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %38, i32 0, i32 0
  %39 = load i32, i32* %width22, align 4
  %40 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height23 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %40, i32 0, i32 1
  %41 = load i32, i32* %height23, align 4
  call void @fp_create_preview(%struct._GtkWidget** @cPreview, %struct._GtkWidget** %cFrame, i32 %39, i32 %41)
  %42 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width24 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %42, i32 0, i32 0
  %43 = load i32, i32* %width24, align 4
  %44 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height25 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %44, i32 0, i32 1
  %45 = load i32, i32* %height25, align 4
  call void @fp_create_preview(%struct._GtkWidget** @yPreview, %struct._GtkWidget** %yFrame, i32 %43, i32 %45)
  %46 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width26 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %46, i32 0, i32 0
  %47 = load i32, i32* %width26, align 4
  %48 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height27 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %48, i32 0, i32 1
  %49 = load i32, i32* %height27, align 4
  call void @fp_create_preview(%struct._GtkWidget** @mPreview, %struct._GtkWidget** %mFrame, i32 %47, i32 %49)
  %50 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width28 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %50, i32 0, i32 0
  %51 = load i32, i32* %width28, align 4
  %52 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height29 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %52, i32 0, i32 1
  %53 = load i32, i32* %height29, align 4
  call void @fp_create_preview(%struct._GtkWidget** @centerPreview, %struct._GtkWidget** %centerFrame, i32 %51, i32 %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %rFrame, align 8
  %55 = load i8*, i8** @hue_red, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %rVbox, %struct._GtkWidget* %54, i8* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %gFrame, align 8
  %57 = load i8*, i8** @hue_green, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %gVbox, %struct._GtkWidget* %56, i8* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %bFrame, align 8
  %59 = load i8*, i8** @hue_blue, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %bVbox, %struct._GtkWidget* %58, i8* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %cFrame, align 8
  %61 = load i8*, i8** @hue_cyan, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %cVbox, %struct._GtkWidget* %60, i8* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %yFrame, align 8
  %63 = load i8*, i8** @hue_yellow, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %yVbox, %struct._GtkWidget* %62, i8* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %mFrame, align 8
  %65 = load i8*, i8** @hue_magenta, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %mVbox, %struct._GtkWidget* %64, i8* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %centerFrame, align 8
  %67 = load i8*, i8** @current_val, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %centerVbox, %struct._GtkWidget* %66, i8* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call30)
  %70 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %rVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %70, %struct._GtkWidget* %71, i32 8, i32 11, i32 4, i32 7, i32 1, i32 1, i32 0, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call32)
  %74 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %gVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %74, %struct._GtkWidget* %75, i32 2, i32 5, i32 0, i32 3, i32 1, i32 1, i32 0, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call34)
  %78 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %bVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %78, %struct._GtkWidget* %79, i32 2, i32 5, i32 8, i32 11, i32 1, i32 1, i32 0, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call36)
  %82 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %cVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %82, %struct._GtkWidget* %83, i32 0, i32 3, i32 4, i32 7, i32 1, i32 1, i32 0, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call38)
  %86 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %yVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %86, %struct._GtkWidget* %87, i32 6, i32 9, i32 0, i32 3, i32 1, i32 1, i32 0, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call40)
  %90 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %mVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %90, %struct._GtkWidget* %91, i32 6, i32 9, i32 8, i32 11, i32 1, i32 1, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call42)
  %94 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %centerVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %94, %struct._GtkWidget* %95, i32 4, i32 7, i32 4, i32 7, i32 1, i32 1, i32 0, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  ret %struct._GtkWidget* %96
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_lnd(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %lighterFrame = alloca %struct._GtkWidget*, align 8
  %middleFrame = alloca %struct._GtkWidget*, align 8
  %darkerFrame = alloca %struct._GtkWidget*, align 8
  %lighterVbox = alloca %struct._GtkWidget*, align 8
  %middleVbox = alloca %struct._GtkWidget*, align 8
  %darkerVbox = alloca %struct._GtkWidget*, align 8
  %win = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %call = call %struct._GtkWidget* @gtk_window_new(i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %win, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  call void @gimp_help_connect(%struct._GtkWidget* %0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0)) #2
  call void @gtk_window_set_title(%struct._GtkWindow* %3, i8* %call3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %6, %struct._GtkWindow* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, i8*)* @sub_dialog_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %12, i32 0, i32 0
  %13 = load i32, i32* %width, align 4
  %14 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %14, i32 0, i32 1
  %15 = load i32, i32* %height, align 4
  call void @fp_create_preview(%struct._GtkWidget** @lighterPreview, %struct._GtkWidget** %lighterFrame, i32 %13, i32 %15)
  %16 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width9 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %16, i32 0, i32 0
  %17 = load i32, i32* %width9, align 4
  %18 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height10 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %18, i32 0, i32 1
  %19 = load i32, i32* %height10, align 4
  call void @fp_create_preview(%struct._GtkWidget** @middlePreview, %struct._GtkWidget** %middleFrame, i32 %17, i32 %19)
  %20 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width11 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %20, i32 0, i32 0
  %21 = load i32, i32* %width11, align 4
  %22 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height12 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %22, i32 0, i32 1
  %23 = load i32, i32* %height12, align 4
  call void @fp_create_preview(%struct._GtkWidget** @darkerPreview, %struct._GtkWidget** %darkerFrame, i32 %21, i32 %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %lighterFrame, align 8
  %25 = load i8*, i8** @val_lighter, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %lighterVbox, %struct._GtkWidget* %24, i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %middleFrame, align 8
  %27 = load i8*, i8** @current_val, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %middleVbox, %struct._GtkWidget* %26, i8* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %darkerFrame, align 8
  %29 = load i8*, i8** @val_darker, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %darkerVbox, %struct._GtkWidget* %28, i8* %29)
  %call13 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 11, i32 0)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %table, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call14)
  %32 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call16)
  %35 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %35, i32 12)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call18)
  %38 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %38, %struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call20)
  %43 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %lighterVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %43, %struct._GtkWidget* %44, i32 0, i32 3, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call22)
  %47 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %middleVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %47, %struct._GtkWidget* %48, i32 4, i32 7, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call24)
  %51 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %darkerVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %51, %struct._GtkWidget* %52, i32 8, i32 11, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  ret %struct._GtkWidget* %53
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_show() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0)) #2
  %0 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 5), align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0)) #2
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0)) #2
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i32 0, i32 0)) #2
  %call4 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @fp_change_selection to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 5) to i8*), i32 %0, i8* %call1, i32 0, i8* null, i8* %call2, i32 1, i8* null, i8* %call3, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_msnls(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %lessFrame = alloca %struct._GtkWidget*, align 8
  %middleFrame = alloca %struct._GtkWidget*, align 8
  %moreFrame = alloca %struct._GtkWidget*, align 8
  %lessVbox = alloca %struct._GtkWidget*, align 8
  %middleVbox = alloca %struct._GtkWidget*, align 8
  %moreVbox = alloca %struct._GtkWidget*, align 8
  %win = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %call = call %struct._GtkWidget* @gtk_window_new(i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %win, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  call void @gimp_help_connect(%struct._GtkWidget* %0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0)) #2
  call void @gtk_window_set_title(%struct._GtkWindow* %3, i8* %call3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %6, %struct._GtkWindow* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, i8*)* @sub_dialog_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %12, i32 0, i32 0
  %13 = load i32, i32* %width, align 4
  %14 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %14, i32 0, i32 1
  %15 = load i32, i32* %height, align 4
  call void @fp_create_preview(%struct._GtkWidget** @minusSatPreview, %struct._GtkWidget** %lessFrame, i32 %13, i32 %15)
  %16 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width9 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %16, i32 0, i32 0
  %17 = load i32, i32* %width9, align 4
  %18 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height10 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %18, i32 0, i32 1
  %19 = load i32, i32* %height10, align 4
  call void @fp_create_preview(%struct._GtkWidget** @SatPreview, %struct._GtkWidget** %middleFrame, i32 %17, i32 %19)
  %20 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width11 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %20, i32 0, i32 0
  %21 = load i32, i32* %width11, align 4
  %22 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height12 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %22, i32 0, i32 1
  %23 = load i32, i32* %height12, align 4
  call void @fp_create_preview(%struct._GtkWidget** @plusSatPreview, %struct._GtkWidget** %moreFrame, i32 %21, i32 %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %moreFrame, align 8
  %25 = load i8*, i8** @sat_more, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %moreVbox, %struct._GtkWidget* %24, i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %middleFrame, align 8
  %27 = load i8*, i8** @current_val, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %middleVbox, %struct._GtkWidget* %26, i8* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %lessFrame, align 8
  %29 = load i8*, i8** @sat_less, align 8
  call void @fp_create_table_entry(%struct._GtkWidget** %lessVbox, %struct._GtkWidget* %28, i8* %29)
  %call13 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 11, i32 0)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %table, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call14)
  %32 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call16)
  %35 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %35, i32 12)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call18)
  %38 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %38, %struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call20)
  %43 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %moreVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %43, %struct._GtkWidget* %44, i32 0, i32 3, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call22)
  %47 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %middleVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %47, %struct._GtkWidget* %48, i32 4, i32 7, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call24)
  %51 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %lessVbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %51, %struct._GtkWidget* %52, i32 8, i32 11, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %win, align 8
  ret %struct._GtkWidget* %53
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_pixels_select_by() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0)) #2
  %0 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0)) #2
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0)) #2
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0)) #2
  %call4 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @fp_change_current_pixels_by to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4) to i8*), i32 %0, i8* %call1, i32 0, i8* null, i8* %call2, i32 1, i8* null, i8* %call3, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @fp_create_control() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0)) #2
  %call1 = call %struct._GtkWidget* @gimp_frame_new(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %box, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %2, %struct._GtkWidget* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0)) #2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 1), align 8
  %7 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 2
  call void @fp_frames_checkbutton_in_box(%struct._GtkWidget* %5, i8* %call5, void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @fp_show_hide_frame to void ()*), %struct._GtkWidget* %6, i32 %and)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0)) #2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 8), align 8
  %10 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv7 = zext i8 %10 to i32
  %and8 = and i32 %conv7, 4
  call void @fp_frames_checkbutton_in_box(%struct._GtkWidget* %8, i8* %call6, void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @fp_show_hide_frame to void ()*), %struct._GtkWidget* %9, i32 %and8)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0)) #2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 5), align 8
  %13 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv10 = zext i8 %13 to i32
  %and11 = and i32 %conv10, 8
  call void @fp_frames_checkbutton_in_box(%struct._GtkWidget* %11, i8* %call9, void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @fp_show_hide_frame to void ()*), %struct._GtkWidget* %12, i32 %and11)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  call void @fp_frames_checkbutton_in_box(%struct._GtkWidget* %14, i8* %call12, void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @fp_show_hide_frame to void ()*), %struct._GtkWidget* %15, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %17
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #4

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fp_refresh_previews(i32 %which) #0 {
entry:
  %which.addr = alloca i32, align 4
  store i32 %which, i32* %which.addr, align 4
  call void @fp_create_nudge(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @nudgeArray, i32 0, i32 0))
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @origPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %0, i32 0, i32 0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @curPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %1, i32 1, i32 0)
  %2 = load i32, i32* %which.addr, align 4
  %and = and i32 %2, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @rPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %3, i32 2, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @gPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %4, i32 2, i32 1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @bPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %5, i32 2, i32 2)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @cPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %6, i32 2, i32 3)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @yPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %7, i32 2, i32 4)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @mPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %8, i32 2, i32 5)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @centerPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %9, i32 1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %which.addr, align 4
  %and1 = and i32 %10, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @lighterPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %11, i32 8, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @middlePreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %12, i32 1, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @darkerPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %13, i32 8, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %14 = load i32, i32* %which.addr, align 4
  %and5 = and i32 %14, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @plusSatPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %15, i32 4, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @SatPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %16, i32 1, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @minusSatPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %17, i32 4, i32 -1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  ret void
}

declare void @gtk_main() #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fp_reset_filter_packs() #0 {
entry:
  call void @fp_init_filter_packs()
  %0 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %0 to i32
  call void @fp_refresh_previews(i32 %conv)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sub_dialog_destroy(%struct._GtkWidget* %dialog, %union._GdkEvent* %ev, i8* %dummy) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %ev.addr = alloca %union._GdkEvent*, align 8
  %dummy.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %union._GdkEvent* %ev, %union._GdkEvent** %ev.addr, align 8
  store i8* %dummy, i8** %dummy.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_button_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %7)
  ret i32 1
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_aspect_frame_new(i8*, float, float, float, i32) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #4

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fp_create_smoothness_graph(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %data = alloca [98304 x i8], align 16
  %nArray = alloca [256 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %toBeBlack = alloca i32, align 4
  %coor = alloca i32, align 4
  %jump = alloca i32, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %nArray, i32 0, i32 0
  call void @fp_create_nudge(i32* %arraydecay)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.107, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %sub = sub nsw i32 128, %1
  store i32 %sub, i32* %coor, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 256
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 256
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %4
  %mul4 = mul nsw i32 3, %add
  %add5 = add nsw i32 %mul4, 0
  %idxprom = sext i32 %add5 to i64
  %arrayidx = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  %5 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 %5, 256
  %6 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %mul6, %6
  %mul8 = mul nsw i32 3, %add7
  %add9 = add nsw i32 %mul8, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom10
  store i8 -1, i8* %arrayidx11, align 1
  %7 = load i32, i32* %i, align 4
  %mul12 = mul nsw i32 %7, 256
  %8 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %mul12, %8
  %mul14 = mul nsw i32 3, %add13
  %add15 = add nsw i32 %mul14, 2
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom16
  store i8 -1, i8* %arrayidx17, align 1
  %9 = load i32, i32* %i, align 4
  %rem = srem i32 %9, 32
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.3
  %10 = load i32, i32* %i, align 4
  %mul18 = mul nsw i32 %10, 256
  %11 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %mul18, %11
  %mul20 = mul nsw i32 3, %add19
  %add21 = add nsw i32 %mul20, 0
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom22
  store i8 -1, i8* %arrayidx23, align 1
  %12 = load i32, i32* %i, align 4
  %mul24 = mul nsw i32 %12, 256
  %13 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %mul24, %13
  %mul26 = mul nsw i32 3, %add25
  %add27 = add nsw i32 %mul26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom28
  store i8 -128, i8* %arrayidx29, align 1
  %14 = load i32, i32* %i, align 4
  %mul30 = mul nsw i32 %14, 256
  %15 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %mul30, %15
  %mul32 = mul nsw i32 3, %add31
  %add33 = add nsw i32 %mul32, 2
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom34
  store i8 -128, i8* %arrayidx35, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %16 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %16, 1
  %rem37 = srem i32 %add36, 32
  %tobool38 = icmp ne i32 %rem37, 0
  br i1 %tobool38, label %if.end.58, label %if.then.39

if.then.39:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %mul40 = mul nsw i32 %17, 256
  %18 = load i32, i32* %j, align 4
  %add41 = add nsw i32 %mul40, %18
  %mul42 = mul nsw i32 3, %add41
  %add43 = add nsw i32 %mul42, 0
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom44
  store i8 -1, i8* %arrayidx45, align 1
  %19 = load i32, i32* %i, align 4
  %mul46 = mul nsw i32 %19, 256
  %20 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %mul46, %20
  %mul48 = mul nsw i32 3, %add47
  %add49 = add nsw i32 %mul48, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom50
  store i8 -128, i8* %arrayidx51, align 1
  %21 = load i32, i32* %i, align 4
  %mul52 = mul nsw i32 %21, 256
  %22 = load i32, i32* %j, align 4
  %add53 = add nsw i32 %mul52, %22
  %mul54 = mul nsw i32 3, %add53
  %add55 = add nsw i32 %mul54, 2
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom56
  store i8 -128, i8* %arrayidx57, align 1
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.39, %if.end
  store i32 0, i32* %toBeBlack, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %23 to i64
  %arrayidx60 = getelementptr inbounds [256 x i32], [256 x i32]* %nArray, i32 0, i64 %idxprom59
  %24 = load i32, i32* %arrayidx60, align 4
  %25 = load i32, i32* %coor, align 4
  %cmp61 = icmp eq i32 %24, %25
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.58
  store i32 1, i32* %toBeBlack, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.58
  %26 = load i32, i32* %j, align 4
  %cmp64 = icmp slt i32 %26, 255
  br i1 %cmp64, label %if.then.65, label %if.end.85

if.then.65:                                       ; preds = %if.end.63
  %27 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %27 to i64
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* %nArray, i32 0, i64 %idxprom66
  %28 = load i32, i32* %arrayidx67, align 4
  %29 = load i32, i32* %j, align 4
  %add68 = add nsw i32 %29, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* %nArray, i32 0, i64 %idxprom69
  %30 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %28, %30
  %call = call i32 @abs(i32 %sub71) #5
  store i32 %call, i32* %jump, align 4
  %31 = load i32, i32* %coor, align 4
  %32 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %32 to i64
  %arrayidx73 = getelementptr inbounds [256 x i32], [256 x i32]* %nArray, i32 0, i64 %idxprom72
  %33 = load i32, i32* %arrayidx73, align 4
  %sub74 = sub nsw i32 %31, %33
  %call75 = call i32 @abs(i32 %sub74) #5
  %34 = load i32, i32* %jump, align 4
  %cmp76 = icmp slt i32 %call75, %34
  br i1 %cmp76, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.then.65
  %35 = load i32, i32* %coor, align 4
  %36 = load i32, i32* %j, align 4
  %add77 = add nsw i32 %36, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [256 x i32], [256 x i32]* %nArray, i32 0, i64 %idxprom78
  %37 = load i32, i32* %arrayidx79, align 4
  %sub80 = sub nsw i32 %35, %37
  %call81 = call i32 @abs(i32 %sub80) #5
  %38 = load i32, i32* %jump, align 4
  %cmp82 = icmp slt i32 %call81, %38
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %land.lhs.true
  store i32 1, i32* %toBeBlack, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %land.lhs.true, %if.then.65
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.63
  %39 = load i32, i32* %toBeBlack, align 4
  %tobool86 = icmp ne i32 %39, 0
  br i1 %tobool86, label %if.then.87, label %if.end.106

if.then.87:                                       ; preds = %if.end.85
  %40 = load i32, i32* %i, align 4
  %mul88 = mul nsw i32 %40, 256
  %41 = load i32, i32* %j, align 4
  %add89 = add nsw i32 %mul88, %41
  %mul90 = mul nsw i32 3, %add89
  %add91 = add nsw i32 %mul90, 0
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom92
  store i8 0, i8* %arrayidx93, align 1
  %42 = load i32, i32* %i, align 4
  %mul94 = mul nsw i32 %42, 256
  %43 = load i32, i32* %j, align 4
  %add95 = add nsw i32 %mul94, %43
  %mul96 = mul nsw i32 3, %add95
  %add97 = add nsw i32 %mul96, 1
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom98
  store i8 0, i8* %arrayidx99, align 1
  %44 = load i32, i32* %i, align 4
  %mul100 = mul nsw i32 %44, 256
  %45 = load i32, i32* %j, align 4
  %add101 = add nsw i32 %mul100, %45
  %mul102 = mul nsw i32 3, %add101
  %add103 = add nsw i32 %mul102, 2
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i64 %idxprom104
  store i8 0, i8* %arrayidx105, align 1
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.87, %if.end.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %inc108 = add nsw i32 %47, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_preview_area_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call110)
  %50 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpPreviewArea*
  %arraydecay112 = getelementptr inbounds [98304 x i8], [98304 x i8]* %data, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %50, i32 0, i32 0, i32 256, i32 128, i32 0, i8* %arraydecay112, i32 768)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_range_preview_spill(%struct._GtkWidget* %preview, i32 %type) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca [11520 x i8], align 16
  %rgb = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 256
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %add = add nsw i32 %2, 1
  %rem = srem i32 %add, 32
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body.3
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 256
  %4 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %mul, %4
  %mul5 = mul nsw i32 3, %add4
  %add6 = add nsw i32 %mul5, 0
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  %5 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %5, 256
  %6 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %mul7, %6
  %mul9 = mul nsw i32 3, %add8
  %add10 = add nsw i32 %mul9, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom11
  store i8 -128, i8* %arrayidx12, align 1
  %7 = load i32, i32* %i, align 4
  %mul13 = mul nsw i32 %7, 256
  %8 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %mul13, %8
  %mul15 = mul nsw i32 3, %add14
  %add16 = add nsw i32 %mul15, 2
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom17
  store i8 -128, i8* %arrayidx18, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %9 = load i32, i32* %type.addr, align 4
  switch i32 %9, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.44
    i32 1, label %sw.bb.68
  ]

sw.bb:                                            ; preds = %if.else
  %10 = load i32, i32* %j, align 4
  %11 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv = zext i8 %11 to i32
  %sub = sub nsw i32 %10, %conv
  %conv19 = trunc i32 %sub to i8
  %12 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %12, 256
  %13 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %mul20, %13
  %mul22 = mul nsw i32 3, %add21
  %add23 = add nsw i32 %mul22, 0
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom24
  store i8 %conv19, i8* %arrayidx25, align 1
  %14 = load i32, i32* %j, align 4
  %15 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv26 = zext i8 %15 to i32
  %sub27 = sub nsw i32 %14, %conv26
  %conv28 = trunc i32 %sub27 to i8
  %16 = load i32, i32* %i, align 4
  %mul29 = mul nsw i32 %16, 256
  %17 = load i32, i32* %j, align 4
  %add30 = add nsw i32 %mul29, %17
  %mul31 = mul nsw i32 3, %add30
  %add32 = add nsw i32 %mul31, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom33
  store i8 %conv28, i8* %arrayidx34, align 1
  %18 = load i32, i32* %j, align 4
  %19 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv35 = zext i8 %19 to i32
  %sub36 = sub nsw i32 %18, %conv35
  %conv37 = trunc i32 %sub36 to i8
  %20 = load i32, i32* %i, align 4
  %mul38 = mul nsw i32 %20, 256
  %21 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %mul38, %21
  %mul40 = mul nsw i32 3, %add39
  %add41 = add nsw i32 %mul40, 2
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom42
  store i8 %conv37, i8* %arrayidx43, align 1
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.else
  %22 = load i32, i32* %j, align 4
  %23 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv45 = zext i8 %23 to i32
  %sub46 = sub nsw i32 %22, %conv45
  %add47 = add nsw i32 %sub46, 256
  %rem48 = srem i32 %add47, 256
  %conv49 = sitofp i32 %rem48 to double
  %div = fdiv double %conv49, 2.550000e+02
  call void @gimp_hsv_set(%struct._GimpHSV* %hsv, double %div, double 1.000000e+00, double 5.000000e-01)
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %rgb)
  %24 = load i32, i32* %i, align 4
  %mul50 = mul nsw i32 %24, 256
  %25 = load i32, i32* %j, align 4
  %add51 = add nsw i32 %mul50, %25
  %mul52 = mul nsw i32 3, %add51
  %add53 = add nsw i32 %mul52, 0
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom54
  %26 = load i32, i32* %i, align 4
  %mul56 = mul nsw i32 %26, 256
  %27 = load i32, i32* %j, align 4
  %add57 = add nsw i32 %mul56, %27
  %mul58 = mul nsw i32 3, %add57
  %add59 = add nsw i32 %mul58, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom60
  %28 = load i32, i32* %i, align 4
  %mul62 = mul nsw i32 %28, 256
  %29 = load i32, i32* %j, align 4
  %add63 = add nsw i32 %mul62, %29
  %mul64 = mul nsw i32 3, %add63
  %add65 = add nsw i32 %mul64, 2
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom66
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %rgb, i8* %arrayidx55, i8* %arrayidx61, i8* %arrayidx67)
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.else
  %30 = load i32, i32* %j, align 4
  %31 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv69 = zext i8 %31 to i32
  %sub70 = sub nsw i32 %30, %conv69
  %add71 = add nsw i32 %sub70, 256
  %rem72 = srem i32 %add71, 256
  %conv73 = sitofp i32 %rem72 to double
  %div74 = fdiv double %conv73, 2.550000e+02
  call void @gimp_hsv_set(%struct._GimpHSV* %hsv, double 5.000000e-01, double %div74, double 5.000000e-01)
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %rgb)
  %32 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 %32, 256
  %33 = load i32, i32* %j, align 4
  %add76 = add nsw i32 %mul75, %33
  %mul77 = mul nsw i32 3, %add76
  %add78 = add nsw i32 %mul77, 0
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom79
  %34 = load i32, i32* %i, align 4
  %mul81 = mul nsw i32 %34, 256
  %35 = load i32, i32* %j, align 4
  %add82 = add nsw i32 %mul81, %35
  %mul83 = mul nsw i32 3, %add82
  %add84 = add nsw i32 %mul83, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom85
  %36 = load i32, i32* %i, align 4
  %mul87 = mul nsw i32 %36, 256
  %37 = load i32, i32* %j, align 4
  %add88 = add nsw i32 %mul87, %37
  %mul89 = mul nsw i32 3, %add88
  %add90 = add nsw i32 %mul89, 2
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i64 %idxprom91
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %rgb, i8* %arrayidx80, i8* %arrayidx86, i8* %arrayidx92)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.68, %sw.bb.44, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %39, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call)
  %42 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpPreviewArea*
  %arraydecay = getelementptr inbounds [11520 x i8], [11520 x i8]* %data, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %42, i32 0, i32 0, i32 256, i32 15, i32 0, i8* %arraydecay, i32 768)
  ret void
}

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @fp_range_change_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct.FPValues* %current) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %current.addr = alloca %struct.FPValues*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %shad = alloca i32, align 4
  %mid = alloca i32, align 4
  %offset = alloca i32, align 4
  %min = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct.FPValues* %current, %struct.FPValues** %current.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.1
    i32 7, label %sw.bb.49
    i32 3, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %entry
  call void @draw_it(%struct._GtkWidget* null)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 4
  %5 = load double, double* %x2, align 8
  %6 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 0), align 1
  %conv = zext i8 %6 to i32
  %conv3 = sitofp i32 %conv to double
  %sub = fsub double %5, %conv3
  %conv4 = fptosi double %sub to i32
  %call = call i32 @abs(i32 %conv4) #5
  store i32 %call, i32* %shad, align 4
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x5 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 4
  %8 = load double, double* %x5, align 8
  %9 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 1), align 1
  %conv6 = zext i8 %9 to i32
  %conv7 = sitofp i32 %conv6 to double
  %sub8 = fsub double %8, %conv7
  %conv9 = fptosi double %sub8 to i32
  %call10 = call i32 @abs(i32 %conv9) #5
  store i32 %call10, i32* %mid, align 4
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x11 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 4
  %11 = load double, double* %x11, align 8
  %12 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv12 = zext i8 %12 to i32
  %conv13 = sitofp i32 %conv12 to double
  %sub14 = fsub double %11, %conv13
  %conv15 = fptosi double %sub14 to i32
  %call16 = call i32 @abs(i32 %conv15) #5
  store i32 %call16, i32* %offset, align 4
  %13 = load i32, i32* %shad, align 4
  %14 = load i32, i32* %mid, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %15 = load i32, i32* %shad, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  %16 = load i32, i32* %mid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  %17 = load i32, i32* %offset, align 4
  %cmp18 = icmp slt i32 %cond, %17
  br i1 %cmp18, label %cond.true.20, label %cond.false.27

cond.true.20:                                     ; preds = %cond.end
  %18 = load i32, i32* %shad, align 4
  %19 = load i32, i32* %mid, align 4
  %cmp21 = icmp slt i32 %18, %19
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.true.20
  %20 = load i32, i32* %shad, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.true.20
  %21 = load i32, i32* %mid, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %20, %cond.true.23 ], [ %21, %cond.false.24 ]
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end
  %22 = load i32, i32* %offset, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.end.25
  %cond29 = phi i32 [ %cond26, %cond.end.25 ], [ %22, %cond.false.27 ]
  store i32 %cond29, i32* %min, align 4
  %23 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x30 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %23, i32 0, i32 4
  %24 = load double, double* %x30, align 8
  %cmp31 = fcmp ogt double %24, 0.000000e+00
  br i1 %cmp31, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %cond.end.28
  %25 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x33 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %25, i32 0, i32 4
  %26 = load double, double* %x33, align 8
  %cmp34 = fcmp olt double %26, 2.560000e+02
  br i1 %cmp34, label %if.then, label %if.end.48

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32, i32* %min, align 4
  %28 = load i32, i32* %shad, align 4
  %cmp36 = icmp eq i32 %27, %28
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then
  store i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 0), i8** @fp_range_change_events.new, align 8
  br label %if.end.43

if.else:                                          ; preds = %if.then
  %29 = load i32, i32* %min, align 4
  %30 = load i32, i32* %mid, align 4
  %cmp39 = icmp eq i32 %29, %30
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.else
  store i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 1), i8** @fp_range_change_events.new, align 8
  br label %if.end

if.else.42:                                       ; preds = %if.else
  store i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), i8** @fp_range_change_events.new, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.42, %if.then.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.38
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  %call44 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %31)
  %32 = load i8*, i8** @fp_range_change_events.new, align 8
  %33 = load i8, i8* %32, align 1
  %conv45 = zext i8 %33 to i32
  call void @slider_erase(%struct._GdkDrawable* %call44, i32 %conv45)
  %34 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x46 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %34, i32 0, i32 4
  %35 = load double, double* %x46, align 8
  %conv47 = fptoui double %35 to i8
  %36 = load i8*, i8** @fp_range_change_events.new, align 8
  store i8 %conv47, i8* %36, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.43, %land.lhs.true, %cond.end.28
  call void @draw_it(%struct._GtkWidget* null)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  call void @fp_range_preview_spill(%struct._GtkWidget* %37, i32 %38)
  call void @update_range_labels()
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @fp_create_smoothness_graph(%struct._GtkWidget* %39)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  %40 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv50 = zext i8 %40 to i32
  call void @fp_refresh_previews(i32 %conv50)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  %41 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %42 = bitcast %union._GdkEvent* %41 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %42, %struct._GdkEventMotion** %mevent, align 8
  %43 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x52 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %43, i32 0, i32 4
  %44 = load double, double* %x52, align 8
  %conv53 = fptosi double %44 to i32
  store i32 %conv53, i32* %x, align 4
  %45 = load i32, i32* %x, align 4
  %cmp54 = icmp sge i32 %45, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.63

land.lhs.true.56:                                 ; preds = %sw.bb.51
  %46 = load i32, i32* %x, align 4
  %cmp57 = icmp slt i32 %46, 256
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %land.lhs.true.56
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  %call60 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %47)
  %48 = load i8*, i8** @fp_range_change_events.new, align 8
  %49 = load i8, i8* %48, align 1
  %conv61 = zext i8 %49 to i32
  call void @slider_erase(%struct._GdkDrawable* %call60, i32 %conv61)
  %50 = load i32, i32* %x, align 4
  %conv62 = trunc i32 %50 to i8
  %51 = load i8*, i8** @fp_range_change_events.new, align 8
  store i8 %conv62, i8* %51, align 1
  call void @draw_it(%struct._GtkWidget* null)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  call void @fp_range_preview_spill(%struct._GtkWidget* %52, i32 %53)
  call void @update_range_labels()
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @fp_create_smoothness_graph(%struct._GtkWidget* %54)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %land.lhs.true.56, %sw.bb.51
  %55 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %55)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.63, %sw.bb.49, %if.end.48, %sw.bb
  ret i32 0
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #4

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #4

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_digits(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #4

declare void @gtk_scale_set_value_pos(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fp_scale_update(%struct._GtkAdjustment* %adjustment, double* %scale_val) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %scale_val.addr = alloca double*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store double* %scale_val, double** %scale_val.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %1 = load double*, double** %scale_val.addr, align 8
  store double %call, double* %1, align 8
  %2 = load double, double* @fp_scale_update.prevValue, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  %cmp = fcmp une double %2, %call1
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  call void @fp_create_nudge(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @nudgeArray, i32 0, i32 0))
  %4 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %4 to i32
  call void @fp_refresh_previews(i32 %conv)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %cmp2 = icmp ne %struct._GtkWidget* %5, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %call4 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @fp_create_smoothness_graph(%struct._GtkWidget* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call6 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  store double %call6, double* @fp_scale_update.prevValue, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_preview_scale_update(%struct._GtkAdjustment* %adjustment, double* %scale_val) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %scale_val.addr = alloca double*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store double* %scale_val, double** %scale_val.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  store double %call, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 2), align 8
  call void @fp_redraw_all_windows()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_range_labels() #0 {
entry:
  %buffer = alloca [4 x i8], align 1
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 3, i64 1), align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 0), align 1
  %conv = zext i8 %3 to i32
  %call2 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %conv)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 3, i64 3), align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_label_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkLabel*
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %6, i8* %arraydecay5)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 3, i64 5), align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_label_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkLabel*
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %9, i8* %arraydecay8)
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  %10 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 1), align 1
  %conv10 = zext i8 %10 to i32
  %call11 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay9, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %conv10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 3, i64 7), align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_label_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkLabel*
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %13, i8* %arraydecay14)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 3, i64 9), align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_label_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call15)
  %16 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkLabel*
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %16, i8* %arraydecay17)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.FPWidgets, %struct.FPWidgets* @fp_widgets, i32 0, i32 3, i64 11), align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_label_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #4

declare void @gtk_button_clicked(%struct._GtkButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @fp_create_nudge(i32* %adj_array) #0 {
entry:
  %adj_array.addr = alloca i32*, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %middle = alloca i32, align 4
  %i = alloca i32, align 4
  %Steepness = alloca double, align 8
  store i32* %adj_array, i32** %adj_array.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 1), align 8
  %sub = fsub double 1.000000e+00, %0
  %call = call double @pow(double %sub, double 4.000000e+00) #2
  %mul = fmul double %call, 8.000000e-01
  store double %mul, double* %Steepness, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 3), align 4
  %sub1 = sub i32 %2, 1
  %idxprom = zext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8), i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %left, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 3), align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [3 x i8], [3 x i8]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8), i32 0, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  store i32 %conv4, i32* %right, align 4
  %6 = load i32, i32* %left, align 4
  %7 = load i32, i32* %right, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %middle, align 4
  %8 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 1), align 8
  %tobool = fcmp une double %8, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.else.32

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 256
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %middle, align 4
  %cmp7 = icmp sle i32 %10, %11
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %12 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 0), align 8
  %mul10 = fmul double 1.280000e+02, %12
  %13 = load double, double* %Steepness, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %left, align 4
  %sub11 = sub nsw i32 %14, %15
  %conv12 = sitofp i32 %sub11 to double
  %mul13 = fmul double %13, %conv12
  %call14 = call double @tanh(double %mul13) #2
  %add15 = fadd double 1.000000e+00, %call14
  %mul16 = fmul double %mul10, %add15
  %div17 = fdiv double %mul16, 2.000000e+00
  %conv18 = fptosi double %div17 to i32
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i32*, i32** %adj_array.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %17, i64 %idxprom19
  store i32 %conv18, i32* %arrayidx20, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 0), align 8
  %mul21 = fmul double 1.280000e+02, %18
  %19 = load double, double* %Steepness, align 8
  %20 = load i32, i32* %right, align 4
  %21 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 %20, %21
  %conv23 = sitofp i32 %sub22 to double
  %mul24 = fmul double %19, %conv23
  %call25 = call double @tanh(double %mul24) #2
  %add26 = fadd double 1.000000e+00, %call25
  %mul27 = fmul double %mul21, %add26
  %div28 = fdiv double %mul27, 2.000000e+00
  %conv29 = fptosi double %div28 to i32
  %22 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load i32*, i32** %adj_array.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %23, i64 %idxprom30
  store i32 %conv29, i32* %arrayidx31, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.else.32:                                       ; preds = %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.49, %if.else.32
  %25 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %25, 256
  br i1 %cmp34, label %for.body.36, label %for.end.51

for.body.36:                                      ; preds = %for.cond.33
  %26 = load i32, i32* %left, align 4
  %27 = load i32, i32* %i, align 4
  %cmp37 = icmp sle i32 %26, %27
  br i1 %cmp37, label %land.lhs.true, label %cond.false.43

land.lhs.true:                                    ; preds = %for.body.36
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %right, align 4
  %cmp39 = icmp sle i32 %28, %29
  br i1 %cmp39, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %land.lhs.true
  %30 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 0), align 8
  %mul42 = fmul double 1.280000e+02, %30
  br label %cond.end.44

cond.false.43:                                    ; preds = %land.lhs.true, %for.body.36
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi double [ %mul42, %cond.true.41 ], [ 0.000000e+00, %cond.false.43 ]
  %conv46 = fptosi double %cond45 to i32
  %31 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %31 to i64
  %32 = load i32*, i32** %adj_array.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %32, i64 %idxprom47
  store i32 %conv46, i32* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %cond.end.44
  %33 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.33

for.end.51:                                       ; preds = %for.cond.33
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %for.end
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #4

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare double @tanh(double) #3

declare void @gimp_hsv_set(%struct._GimpHSV*, double, double, double) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @draw_it(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 3), align 8
  %call1 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %call2 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call1)
  store %struct._cairo* %call2, %struct._cairo** %cr, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %2, double 5.000000e-01, double 5.000000e-01)
  %3 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %3, double 1.000000e+00)
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %5, i32 0, i32 9
  %6 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark, i32 0, i64 0
  %7 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 0), align 1
  %conv = zext i8 %7 to i32
  call void @draw_slider(%struct._cairo* %4, %struct._GdkColor* %black, %struct._GdkColor* %arrayidx, i32 %conv)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %9 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black3 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %9, i32 0, i32 9
  %10 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark4 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %10, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark4, i32 0, i64 0
  %11 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 8, i64 1), align 1
  %conv6 = zext i8 %11 to i32
  call void @draw_slider(%struct._cairo* %8, %struct._GdkColor* %black3, %struct._GdkColor* %arrayidx5, i32 %conv6)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %13 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black7 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %13, i32 0, i32 9
  %14 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark8 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %14, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark8, i32 0, i64 3
  %15 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv10 = zext i8 %15 to i32
  call void @draw_slider(%struct._cairo* %12, %struct._GdkColor* %black7, %struct._GdkColor* %arrayidx9, i32 %conv10)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @slider_erase(%struct._GdkDrawable* %window, i32 %xpos) #0 {
entry:
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %xpos.addr = alloca i32, align 4
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store i32 %xpos, i32* %xpos.addr, align 4
  %0 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %1 = load i32, i32* %xpos.addr, align 4
  %add = add nsw i32 4, %1
  %sub = sub nsw i32 %add, 7
  call void @gdk_window_clear_area(%struct._GdkDrawable* %0, i32 %sub, i32 0, i32 15, i32 15)
  ret void
}

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

; Function Attrs: nounwind uwtable
define internal void @draw_slider(%struct._cairo* %cr, %struct._GdkColor* %border_color, %struct._GdkColor* %fill_color, i32 %xpos) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %border_color.addr = alloca %struct._GdkColor*, align 8
  %fill_color.addr = alloca %struct._GdkColor*, align 8
  %xpos.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GdkColor* %border_color, %struct._GdkColor** %border_color.addr, align 8
  store %struct._GdkColor* %fill_color, %struct._GdkColor** %fill_color.addr, align 8
  store i32 %xpos, i32* %xpos.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %xpos.addr, align 4
  %add = add nsw i32 4, %1
  %conv = sitofp i32 %add to double
  call void @cairo_move_to(%struct._cairo* %0, double %conv, double 0.000000e+00)
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load i32, i32* %xpos.addr, align 4
  %add1 = add nsw i32 4, %3
  %sub = sub nsw i32 %add1, 7
  %conv2 = sitofp i32 %sub to double
  call void @cairo_line_to(%struct._cairo* %2, double %conv2, double 1.400000e+01)
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load i32, i32* %xpos.addr, align 4
  %add3 = add nsw i32 4, %5
  %add4 = add nsw i32 %add3, 7
  %conv5 = sitofp i32 %add4 to double
  call void @cairo_line_to(%struct._cairo* %4, double %conv5, double 1.400000e+01)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load i32, i32* %xpos.addr, align 4
  %add6 = add nsw i32 4, %7
  %conv7 = sitofp i32 %add6 to double
  call void @cairo_line_to(%struct._cairo* %6, double %conv7, double 0.000000e+00)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load %struct._GdkColor*, %struct._GdkColor** %fill_color.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %8, %struct._GdkColor* %9)
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load %struct._GdkColor*, %struct._GdkColor** %border_color.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %11, %struct._GdkColor* %12)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @gdk_window_clear_area(%struct._GdkDrawable*, i32, i32, i32, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @fp_redraw_all_windows() #0 {
entry:
  %0 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %tobool = icmp ne %struct.ReducedImage* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %rgb = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %1, i32 0, i32 2
  %2 = load i8*, i8** %rgb, align 8
  call void @g_free(i8* %2)
  %3 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %hsv = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %3, i32 0, i32 3
  %4 = load double*, double** %hsv, align 8
  %5 = bitcast double* %4 to i8*
  call void @g_free(i8* %5)
  %6 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %mask = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %6, i32 0, i32 4
  %7 = load i8*, i8** %mask, align 8
  call void @g_free(i8* %7)
  %8 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %9 = bitcast %struct.ReducedImage* %8 to i8*
  call void @g_free(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @mask, align 8
  %12 = load double, double* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 2), align 8
  %conv = fptosi double %12 to i32
  %13 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 5), align 4
  %call = call %struct.ReducedImage* @fp_reduce_image(%struct._GimpDrawable* %10, %struct._GimpDrawable* %11, i32 %conv, i32 %13)
  store %struct.ReducedImage* %call, %struct.ReducedImage** @reduced, align 8
  %14 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %14, i32 0, i32 0
  %15 = load i32, i32* %width, align 4
  %16 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %16, i32 0, i32 1
  %17 = load i32, i32* %height, align 4
  call void @fp_adjust_preview_sizes(i32 %15, i32 %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 1), align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 8), align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 5), align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @dlg, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %21)
  %22 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv1 = zext i8 %22 to i32
  call void @fp_refresh_previews(i32 %conv1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_adjust_preview_sizes(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @origPreview, align 8
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %0, i32 %1, i32 %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @curPreview, align 8
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %3, i32 %4, i32 %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @rPreview, align 8
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %6, i32 %7, i32 %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @gPreview, align 8
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %9, i32 %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @bPreview, align 8
  %13 = load i32, i32* %width.addr, align 4
  %14 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %12, i32 %13, i32 %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @cPreview, align 8
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %15, i32 %16, i32 %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** @yPreview, align 8
  %19 = load i32, i32* %width.addr, align 4
  %20 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %18, i32 %19, i32 %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @mPreview, align 8
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %21, i32 %22, i32 %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @centerPreview, align 8
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %24, i32 %25, i32 %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @lighterPreview, align 8
  %28 = load i32, i32* %width.addr, align 4
  %29 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %27, i32 %28, i32 %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** @darkerPreview, align 8
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %30, i32 %31, i32 %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @middlePreview, align 8
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %33, i32 %34, i32 %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** @minusSatPreview, align 8
  %37 = load i32, i32* %width.addr, align 4
  %38 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %36, i32 %37, i32 %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** @SatPreview, align 8
  %40 = load i32, i32* %width.addr, align 4
  %41 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %39, i32 %40, i32 %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @plusSatPreview, align 8
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %42, i32 %43, i32 %44)
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @fp_create_preview(%struct._GtkWidget** %preview, %struct._GtkWidget** %frame, i32 %preview_width, i32 %preview_height) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget**, align 8
  %frame.addr = alloca %struct._GtkWidget**, align 8
  %preview_width.addr = alloca i32, align 4
  %preview_height.addr = alloca i32, align 4
  store %struct._GtkWidget** %preview, %struct._GtkWidget*** %preview.addr, align 8
  store %struct._GtkWidget** %frame, %struct._GtkWidget*** %frame.addr, align 8
  store i32 %preview_width, i32* %preview_width.addr, align 4
  store i32 %preview_height, i32* %preview_height.addr, align 4
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  %0 = load %struct._GtkWidget**, %struct._GtkWidget*** %frame.addr, align 8
  store %struct._GtkWidget* %call, %struct._GtkWidget** %0, align 8
  %1 = load %struct._GtkWidget**, %struct._GtkWidget*** %frame.addr, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %4, i32 1)
  %5 = load %struct._GtkWidget**, %struct._GtkWidget*** %frame.addr, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %5, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %call3 = call %struct._GtkWidget* @gimp_preview_area_new()
  %7 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %7, align 8
  %8 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %8, align 8
  %10 = load i32, i32* %preview_width.addr, align 4
  %11 = load i32, i32* %preview_height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %9, i32 %10, i32 %11)
  %12 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %12, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*)* @fp_preview_size_allocate to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget**, %struct._GtkWidget*** %frame.addr, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %17, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call5)
  %20 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %21 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %21, align 8
  call void @gtk_container_add(%struct._GtkContainer* %20, %struct._GtkWidget* %22)
  ret void
}

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fp_preview_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %which = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* %which, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @origPreview, align 8
  %cmp = icmp eq %struct._GtkWidget* %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @origPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %3, i32 0, i32 0)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @curPreview, align 8
  %cmp2 = icmp eq %struct._GtkWidget* %4, %5
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @curPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %6, i32 1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %which, align 4
  %and = and i32 %7, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.end.41

if.then.6:                                        ; preds = %if.end.5
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @rPreview, align 8
  %cmp7 = icmp eq %struct._GtkWidget* %8, %9
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.6
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @rPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %10, i32 2, i32 0)
  br label %if.end.40

if.else.10:                                       ; preds = %if.then.6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @gPreview, align 8
  %cmp11 = icmp eq %struct._GtkWidget* %11, %12
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @gPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %13, i32 2, i32 1)
  br label %if.end.39

if.else.14:                                       ; preds = %if.else.10
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @bPreview, align 8
  %cmp15 = icmp eq %struct._GtkWidget* %14, %15
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.14
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @bPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %16, i32 2, i32 2)
  br label %if.end.38

if.else.18:                                       ; preds = %if.else.14
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** @cPreview, align 8
  %cmp19 = icmp eq %struct._GtkWidget* %17, %18
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.18
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @cPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %19, i32 2, i32 3)
  br label %if.end.37

if.else.22:                                       ; preds = %if.else.18
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @yPreview, align 8
  %cmp23 = icmp eq %struct._GtkWidget* %20, %21
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.22
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @yPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %22, i32 2, i32 4)
  br label %if.end.36

if.else.26:                                       ; preds = %if.else.22
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @mPreview, align 8
  %cmp27 = icmp eq %struct._GtkWidget* %23, %24
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.26
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** @mPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %25, i32 2, i32 5)
  br label %if.end.35

if.else.30:                                       ; preds = %if.else.26
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @centerPreview, align 8
  %cmp31 = icmp eq %struct._GtkWidget* %26, %27
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else.30
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** @centerPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %28, i32 1, i32 0)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.else.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.17
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.13
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.9
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.5
  %29 = load i32, i32* %which, align 4
  %and42 = and i32 %29, 8
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.59

if.then.44:                                       ; preds = %if.end.41
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** @lighterPreview, align 8
  %cmp45 = icmp eq %struct._GtkWidget* %30, %31
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.then.44
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** @lighterPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %32, i32 8, i32 1)
  br label %if.end.58

if.else.48:                                       ; preds = %if.then.44
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** @middlePreview, align 8
  %cmp49 = icmp eq %struct._GtkWidget* %33, %34
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.48
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** @middlePreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %35, i32 1, i32 0)
  br label %if.end.57

if.else.52:                                       ; preds = %if.else.48
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** @darkerPreview, align 8
  %cmp53 = icmp eq %struct._GtkWidget* %36, %37
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.52
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** @darkerPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %38, i32 8, i32 -1)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.else.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.47
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.41
  %39 = load i32, i32* %which, align 4
  %and60 = and i32 %39, 4
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.77

if.then.62:                                       ; preds = %if.end.59
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @plusSatPreview, align 8
  %cmp63 = icmp eq %struct._GtkWidget* %40, %41
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.then.62
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @plusSatPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %42, i32 4, i32 1)
  br label %if.end.76

if.else.66:                                       ; preds = %if.then.62
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** @SatPreview, align 8
  %cmp67 = icmp eq %struct._GtkWidget* %43, %44
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.66
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** @SatPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %45, i32 1, i32 0)
  br label %if.end.75

if.else.70:                                       ; preds = %if.else.66
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** @minusSatPreview, align 8
  %cmp71 = icmp eq %struct._GtkWidget* %46, %47
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.70
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** @minusSatPreview, align 8
  call void @fp_render_preview(%struct._GtkWidget* %48, i32 4, i32 -1)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.else.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.69
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.65
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_render_preview(%struct._GtkWidget* %preview, i32 %change_what, i32 %change_which) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %change_what.addr = alloca i32, align 4
  %change_which.addr = alloca i32, align 4
  %a = alloca i8*, align 8
  %Inten = alloca i32, align 4
  %bytes = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nudge = alloca i32, align 4
  %M = alloca i32, align 4
  %m = alloca i32, align 4
  %middle = alloca i32, align 4
  %JudgeBy = alloca i32, align 4
  %partial = alloca double, align 8
  %RW = alloca i32, align 4
  %RH = alloca i32, align 4
  %backupP = alloca [3 x i32], align 4
  %P = alloca [3 x i32], align 4
  %tempSat = alloca [3 x [256 x i32]], align 16
  %adjust = alloca i32, align 4
  %adjust291 = alloca i32, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i32 %change_what, i32* %change_what.addr, align 4
  store i32 %change_which, i32* %change_which.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %2, i32 0, i32 0
  %3 = load i32, i32* %width, align 4
  store i32 %3, i32* %RW, align 4
  %4 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* %RH, align 4
  %6 = load i32, i32* %RW, align 4
  %mul = mul nsw i32 4, %6
  %7 = load i32, i32* %RH, align 4
  %mul1 = mul nsw i32 %mul, %7
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %a, align 8
  %8 = load i32, i32* %change_what.addr, align 4
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.then
  %9 = load i32, i32* %k, align 4
  %cmp3 = icmp slt i32 %9, 256
  br i1 %cmp3, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %JudgeBy, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %JudgeBy, align 4
  %cmp6 = icmp slt i32 %10, 3
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %11 = load i32, i32* %k, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %JudgeBy, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %tempSat, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %13 = load i32, i32* %JudgeBy, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %JudgeBy, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %14 = load i32, i32* %change_which.addr, align 4
  %15 = load i32, i32* %k, align 4
  %16 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv11 = zext i8 %16 to i32
  %add = add nsw i32 %15, %conv11
  %rem = srem i32 %add, 256
  %idxprom12 = sext i32 %rem to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @nudgeArray, i32 0, i64 %idxprom12
  %17 = load i32, i32* %arrayidx13, align 4
  %mul14 = mul nsw i32 %14, %17
  %18 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %tempSat, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx17, i32 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %20, %mul14
  store i32 %add19, i32* %arrayidx18, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %21 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %k, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.22, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.458, %if.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %RH, align 4
  %cmp24 = icmp slt i32 %22, %23
  br i1 %cmp24, label %for.body.26, label %for.end.460

for.body.26:                                      ; preds = %for.cond.23
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.455, %for.body.26
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %RW, align 4
  %cmp28 = icmp slt i32 %24, %25
  br i1 %cmp28, label %for.body.30, label %for.end.457

for.body.30:                                      ; preds = %for.cond.27
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %RW, align 4
  %mul31 = mul nsw i32 %26, %27
  %28 = load i32, i32* %bytes, align 4
  %mul32 = mul nsw i32 %mul31, %28
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %bytes, align 4
  %mul33 = mul nsw i32 %29, %30
  %add34 = add nsw i32 %mul32, %mul33
  %add35 = add nsw i32 %add34, 0
  %idxprom36 = sext i32 %add35 to i64
  %31 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %rgb = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %31, i32 0, i32 2
  %32 = load i8*, i8** %rgb, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %32, i64 %idxprom36
  %33 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  store i32 %conv38, i32* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %backupP, i32 0, i64 0
  store i32 %conv38, i32* %arrayidx40, align 4
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %RW, align 4
  %mul41 = mul nsw i32 %34, %35
  %36 = load i32, i32* %bytes, align 4
  %mul42 = mul nsw i32 %mul41, %36
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %bytes, align 4
  %mul43 = mul nsw i32 %37, %38
  %add44 = add nsw i32 %mul42, %mul43
  %add45 = add nsw i32 %add44, 1
  %idxprom46 = sext i32 %add45 to i64
  %39 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %rgb47 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %39, i32 0, i32 2
  %40 = load i8*, i8** %rgb47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %40, i64 %idxprom46
  %41 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %41 to i32
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  store i32 %conv49, i32* %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %backupP, i32 0, i64 1
  store i32 %conv49, i32* %arrayidx51, align 4
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %RW, align 4
  %mul52 = mul nsw i32 %42, %43
  %44 = load i32, i32* %bytes, align 4
  %mul53 = mul nsw i32 %mul52, %44
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %bytes, align 4
  %mul54 = mul nsw i32 %45, %46
  %add55 = add nsw i32 %mul53, %mul54
  %add56 = add nsw i32 %add55, 2
  %idxprom57 = sext i32 %add56 to i64
  %47 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %rgb58 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %47, i32 0, i32 2
  %48 = load i8*, i8** %rgb58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %48, i64 %idxprom57
  %49 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %49 to i32
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  store i32 %conv60, i32* %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %backupP, i32 0, i64 2
  store i32 %conv60, i32* %arrayidx62, align 4
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %50 = load i32, i32* %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %51 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp slt i32 %50, %51
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.30
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %52 = load i32, i32* %arrayidx67, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.30
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %53 = load i32, i32* %arrayidx68, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %53, %cond.false ]
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %54 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp slt i32 %cond, %54
  br i1 %cmp70, label %cond.true.72, label %cond.false.83

cond.true.72:                                     ; preds = %cond.end
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %55 = load i32, i32* %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %56 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp slt i32 %55, %56
  br i1 %cmp75, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.true.72
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %57 = load i32, i32* %arrayidx78, align 4
  br label %cond.end.81

cond.false.79:                                    ; preds = %cond.true.72
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %58 = load i32, i32* %arrayidx80, align 4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.77
  %cond82 = phi i32 [ %57, %cond.true.77 ], [ %58, %cond.false.79 ]
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.end
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %59 = load i32, i32* %arrayidx84, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.end.81
  %cond86 = phi i32 [ %cond82, %cond.end.81 ], [ %59, %cond.false.83 ]
  store i32 %cond86, i32* %m, align 4
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %60 = load i32, i32* %arrayidx87, align 4
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %61 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp sgt i32 %60, %61
  br i1 %cmp89, label %cond.true.91, label %cond.false.93

cond.true.91:                                     ; preds = %cond.end.85
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %62 = load i32, i32* %arrayidx92, align 4
  br label %cond.end.95

cond.false.93:                                    ; preds = %cond.end.85
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %63 = load i32, i32* %arrayidx94, align 4
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.91
  %cond96 = phi i32 [ %62, %cond.true.91 ], [ %63, %cond.false.93 ]
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %64 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp sgt i32 %cond96, %64
  br i1 %cmp98, label %cond.true.100, label %cond.false.111

cond.true.100:                                    ; preds = %cond.end.95
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %65 = load i32, i32* %arrayidx101, align 4
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %66 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp sgt i32 %65, %66
  br i1 %cmp103, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %cond.true.100
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %67 = load i32, i32* %arrayidx106, align 4
  br label %cond.end.109

cond.false.107:                                   ; preds = %cond.true.100
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %68 = load i32, i32* %arrayidx108, align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.105
  %cond110 = phi i32 [ %67, %cond.true.105 ], [ %68, %cond.false.107 ]
  br label %cond.end.113

cond.false.111:                                   ; preds = %cond.end.95
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %69 = load i32, i32* %arrayidx112, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.end.109
  %cond114 = phi i32 [ %cond110, %cond.end.109 ], [ %69, %cond.false.111 ]
  store i32 %cond114, i32* %M, align 4
  %70 = load i32, i32* %M, align 4
  %71 = load i32, i32* %m, align 4
  %add115 = add nsw i32 %70, %71
  %div = sdiv i32 %add115, 2
  store i32 %div, i32* %middle, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.132, %cond.end.113
  %72 = load i32, i32* %k, align 4
  %cmp117 = icmp slt i32 %72, 3
  br i1 %cmp117, label %for.body.119, label %for.end.134

for.body.119:                                     ; preds = %for.cond.116
  %73 = load i32, i32* %k, align 4
  %idxprom120 = sext i32 %73 to i64
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom120
  %74 = load i32, i32* %arrayidx121, align 4
  %75 = load i32, i32* %m, align 4
  %cmp122 = icmp ne i32 %74, %75
  br i1 %cmp122, label %land.lhs.true, label %if.end.131

land.lhs.true:                                    ; preds = %for.body.119
  %76 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %76 to i64
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom124
  %77 = load i32, i32* %arrayidx125, align 4
  %78 = load i32, i32* %M, align 4
  %cmp126 = icmp ne i32 %77, %78
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %land.lhs.true
  %79 = load i32, i32* %k, align 4
  %idxprom129 = sext i32 %79 to i64
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom129
  %80 = load i32, i32* %arrayidx130, align 4
  store i32 %80, i32* %middle, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %land.lhs.true, %for.body.119
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %81 = load i32, i32* %k, align 4
  %inc133 = add nsw i32 %81, 1
  store i32 %inc133, i32* %k, align 4
  br label %for.cond.116

for.end.134:                                      ; preds = %for.cond.116
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %RW, align 4
  %mul135 = mul nsw i32 %82, %83
  %84 = load i32, i32* %j, align 4
  %add136 = add nsw i32 %mul135, %84
  %idxprom137 = sext i32 %add136 to i64
  %85 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %mask = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %85, i32 0, i32 4
  %86 = load i8*, i8** %mask, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %86, i64 %idxprom137
  %87 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %87 to i32
  %conv140 = sitofp i32 %conv139 to double
  %div141 = fdiv double %conv140, 2.550000e+02
  store double %div141, double* %partial, align 8
  store i32 0, i32* %JudgeBy, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.250, %for.end.134
  %88 = load i32, i32* %JudgeBy, align 4
  %cmp143 = icmp slt i32 %88, 3
  br i1 %cmp143, label %for.body.145, label %for.end.252

for.body.145:                                     ; preds = %for.cond.142
  %89 = load i32, i32* %JudgeBy, align 4
  %idxprom146 = sext i32 %89 to i64
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 9), i32 0, i64 %idxprom146
  %90 = load i32, i32* %arrayidx147, align 4
  %tobool = icmp ne i32 %90, 0
  br i1 %tobool, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %for.body.145
  br label %for.inc.250

if.end.149:                                       ; preds = %for.body.145
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %RW, align 4
  %mul150 = mul nsw i32 %91, %92
  %93 = load i32, i32* %bytes, align 4
  %mul151 = mul nsw i32 %mul150, %93
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %bytes, align 4
  %mul152 = mul nsw i32 %94, %95
  %add153 = add nsw i32 %mul151, %mul152
  %96 = load i32, i32* %JudgeBy, align 4
  %add154 = add nsw i32 %add153, %96
  %idxprom155 = sext i32 %add154 to i64
  %97 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %hsv = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %97, i32 0, i32 3
  %98 = load double*, double** %hsv, align 8
  %arrayidx156 = getelementptr inbounds double, double* %98, i64 %idxprom155
  %99 = load double, double* %arrayidx156, align 8
  %mul157 = fmul double %99, 2.550000e+02
  %conv158 = fptosi double %mul157 to i32
  store i32 %conv158, i32* %Inten, align 4
  %100 = load i32, i32* %change_what.addr, align 4
  %cmp159 = icmp ne i32 %100, 0
  br i1 %cmp159, label %if.then.161, label %if.end.249

if.then.161:                                      ; preds = %if.end.149
  %101 = load double, double* %partial, align 8
  %102 = load i32, i32* %Inten, align 4
  %idxprom162 = sext i32 %102 to i64
  %103 = load i32, i32* %JudgeBy, align 4
  %idxprom163 = sext i32 %103 to i64
  %arrayidx164 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 13), i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx164, i32 0, i64 %idxprom162
  %104 = load i32, i32* %arrayidx165, align 4
  %conv166 = sitofp i32 %104 to double
  %mul167 = fmul double %101, %conv166
  %conv168 = fptosi double %mul167 to i32
  store i32 %conv168, i32* %adjust, align 4
  %105 = load i32, i32* %M, align 4
  %106 = load i32, i32* %m, align 4
  %cmp169 = icmp ne i32 %105, %106
  br i1 %cmp169, label %if.then.171, label %if.end.218

if.then.171:                                      ; preds = %if.then.161
  store i32 0, i32* %k, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.215, %if.then.171
  %107 = load i32, i32* %k, align 4
  %cmp173 = icmp slt i32 %107, 3
  br i1 %cmp173, label %for.body.175, label %for.end.217

for.body.175:                                     ; preds = %for.cond.172
  %108 = load i32, i32* %k, align 4
  %idxprom176 = sext i32 %108 to i64
  %arrayidx177 = getelementptr inbounds [3 x i32], [3 x i32]* %backupP, i32 0, i64 %idxprom176
  %109 = load i32, i32* %arrayidx177, align 4
  %110 = load i32, i32* %M, align 4
  %cmp178 = icmp eq i32 %109, %110
  br i1 %cmp178, label %if.then.180, label %if.else

if.then.180:                                      ; preds = %for.body.175
  %111 = load i32, i32* %k, align 4
  %idxprom181 = sext i32 %111 to i64
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom181
  %112 = load i32, i32* %arrayidx182, align 4
  %113 = load i32, i32* %adjust, align 4
  %add183 = add nsw i32 %112, %113
  %114 = load i32, i32* %middle, align 4
  %cmp184 = icmp sgt i32 %add183, %114
  br i1 %cmp184, label %cond.true.186, label %cond.false.190

cond.true.186:                                    ; preds = %if.then.180
  %115 = load i32, i32* %k, align 4
  %idxprom187 = sext i32 %115 to i64
  %arrayidx188 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom187
  %116 = load i32, i32* %arrayidx188, align 4
  %117 = load i32, i32* %adjust, align 4
  %add189 = add nsw i32 %116, %117
  br label %cond.end.191

cond.false.190:                                   ; preds = %if.then.180
  %118 = load i32, i32* %middle, align 4
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.190, %cond.true.186
  %cond192 = phi i32 [ %add189, %cond.true.186 ], [ %118, %cond.false.190 ]
  %119 = load i32, i32* %k, align 4
  %idxprom193 = sext i32 %119 to i64
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom193
  store i32 %cond192, i32* %arrayidx194, align 4
  br label %if.end.214

if.else:                                          ; preds = %for.body.175
  %120 = load i32, i32* %k, align 4
  %idxprom195 = sext i32 %120 to i64
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %backupP, i32 0, i64 %idxprom195
  %121 = load i32, i32* %arrayidx196, align 4
  %122 = load i32, i32* %m, align 4
  %cmp197 = icmp eq i32 %121, %122
  br i1 %cmp197, label %if.then.199, label %if.end.213

if.then.199:                                      ; preds = %if.else
  %123 = load i32, i32* %k, align 4
  %idxprom200 = sext i32 %123 to i64
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom200
  %124 = load i32, i32* %arrayidx201, align 4
  %125 = load i32, i32* %adjust, align 4
  %sub = sub nsw i32 %124, %125
  %126 = load i32, i32* %middle, align 4
  %cmp202 = icmp slt i32 %sub, %126
  br i1 %cmp202, label %cond.true.204, label %cond.false.208

cond.true.204:                                    ; preds = %if.then.199
  %127 = load i32, i32* %k, align 4
  %idxprom205 = sext i32 %127 to i64
  %arrayidx206 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom205
  %128 = load i32, i32* %arrayidx206, align 4
  %129 = load i32, i32* %adjust, align 4
  %sub207 = sub nsw i32 %128, %129
  br label %cond.end.209

cond.false.208:                                   ; preds = %if.then.199
  %130 = load i32, i32* %middle, align 4
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.204
  %cond210 = phi i32 [ %sub207, %cond.true.204 ], [ %130, %cond.false.208 ]
  %131 = load i32, i32* %k, align 4
  %idxprom211 = sext i32 %131 to i64
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom211
  store i32 %cond210, i32* %arrayidx212, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %cond.end.209, %if.else
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %cond.end.191
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.214
  %132 = load i32, i32* %k, align 4
  %inc216 = add nsw i32 %132, 1
  store i32 %inc216, i32* %k, align 4
  br label %for.cond.172

for.end.217:                                      ; preds = %for.cond.172
  br label %if.end.218

if.end.218:                                       ; preds = %for.end.217, %if.then.161
  %133 = load double, double* %partial, align 8
  %134 = load i32, i32* %Inten, align 4
  %idxprom219 = sext i32 %134 to i64
  %135 = load i32, i32* %JudgeBy, align 4
  %idxprom220 = sext i32 %135 to i64
  %arrayidx221 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 10), i32 0, i64 %idxprom220
  %arrayidx222 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx221, i32 0, i64 %idxprom219
  %136 = load i32, i32* %arrayidx222, align 4
  %conv223 = sitofp i32 %136 to double
  %mul224 = fmul double %133, %conv223
  %arrayidx225 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %137 = load i32, i32* %arrayidx225, align 4
  %conv226 = sitofp i32 %137 to double
  %add227 = fadd double %conv226, %mul224
  %conv228 = fptosi double %add227 to i32
  store i32 %conv228, i32* %arrayidx225, align 4
  %138 = load double, double* %partial, align 8
  %139 = load i32, i32* %Inten, align 4
  %idxprom229 = sext i32 %139 to i64
  %140 = load i32, i32* %JudgeBy, align 4
  %idxprom230 = sext i32 %140 to i64
  %arrayidx231 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 12), i32 0, i64 %idxprom230
  %arrayidx232 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx231, i32 0, i64 %idxprom229
  %141 = load i32, i32* %arrayidx232, align 4
  %conv233 = sitofp i32 %141 to double
  %mul234 = fmul double %138, %conv233
  %arrayidx235 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %142 = load i32, i32* %arrayidx235, align 4
  %conv236 = sitofp i32 %142 to double
  %add237 = fadd double %conv236, %mul234
  %conv238 = fptosi double %add237 to i32
  store i32 %conv238, i32* %arrayidx235, align 4
  %143 = load double, double* %partial, align 8
  %144 = load i32, i32* %Inten, align 4
  %idxprom239 = sext i32 %144 to i64
  %145 = load i32, i32* %JudgeBy, align 4
  %idxprom240 = sext i32 %145 to i64
  %arrayidx241 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 11), i32 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx241, i32 0, i64 %idxprom239
  %146 = load i32, i32* %arrayidx242, align 4
  %conv243 = sitofp i32 %146 to double
  %mul244 = fmul double %143, %conv243
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %147 = load i32, i32* %arrayidx245, align 4
  %conv246 = sitofp i32 %147 to double
  %add247 = fadd double %conv246, %mul244
  %conv248 = fptosi double %add247 to i32
  store i32 %conv248, i32* %arrayidx245, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.218, %if.end.149
  br label %for.inc.250

for.inc.250:                                      ; preds = %if.end.249, %if.then.148
  %148 = load i32, i32* %JudgeBy, align 4
  %inc251 = add nsw i32 %148, 1
  store i32 %inc251, i32* %JudgeBy, align 4
  br label %for.cond.142

for.end.252:                                      ; preds = %for.cond.142
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* %RW, align 4
  %mul253 = mul nsw i32 %149, %150
  %151 = load i32, i32* %bytes, align 4
  %mul254 = mul nsw i32 %mul253, %151
  %152 = load i32, i32* %j, align 4
  %153 = load i32, i32* %bytes, align 4
  %mul255 = mul nsw i32 %152, %153
  %add256 = add nsw i32 %mul254, %mul255
  %154 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %add257 = add nsw i32 %add256, %154
  %idxprom258 = sext i32 %add257 to i64
  %155 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %hsv259 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %155, i32 0, i32 3
  %156 = load double*, double** %hsv259, align 8
  %arrayidx260 = getelementptr inbounds double, double* %156, i64 %idxprom258
  %157 = load double, double* %arrayidx260, align 8
  %mul261 = fmul double %157, 2.550000e+02
  %conv262 = fptosi double %mul261 to i32
  store i32 %conv262, i32* %Inten, align 4
  %158 = load double, double* %partial, align 8
  %159 = load i32, i32* %Inten, align 4
  %160 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv263 = zext i8 %160 to i32
  %add264 = add nsw i32 %159, %conv263
  %rem265 = srem i32 %add264, 256
  %idxprom266 = sext i32 %rem265 to i64
  %arrayidx267 = getelementptr inbounds [256 x i32], [256 x i32]* @nudgeArray, i32 0, i64 %idxprom266
  %161 = load i32, i32* %arrayidx267, align 4
  %conv268 = sitofp i32 %161 to double
  %mul269 = fmul double %158, %conv268
  %conv270 = fptosi double %mul269 to i32
  store i32 %conv270, i32* %nudge, align 4
  %162 = load i32, i32* %change_what.addr, align 4
  switch i32 %162, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.286
    i32 8, label %sw.bb.354
  ]

sw.bb:                                            ; preds = %for.end.252
  %163 = load i32, i32* %change_which.addr, align 4
  %idxprom271 = sext i32 %163 to i64
  %arrayidx272 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds ([3 x [6 x i32]], [3 x [6 x i32]]* @colorSign, i32 0, i64 0), i32 0, i64 %idxprom271
  %164 = load i32, i32* %arrayidx272, align 4
  %165 = load i32, i32* %nudge, align 4
  %mul273 = mul nsw i32 %164, %165
  %arrayidx274 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %166 = load i32, i32* %arrayidx274, align 4
  %add275 = add nsw i32 %166, %mul273
  store i32 %add275, i32* %arrayidx274, align 4
  %167 = load i32, i32* %change_which.addr, align 4
  %idxprom276 = sext i32 %167 to i64
  %arrayidx277 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds ([3 x [6 x i32]], [3 x [6 x i32]]* @colorSign, i32 0, i64 1), i32 0, i64 %idxprom276
  %168 = load i32, i32* %arrayidx277, align 4
  %169 = load i32, i32* %nudge, align 4
  %mul278 = mul nsw i32 %168, %169
  %arrayidx279 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %170 = load i32, i32* %arrayidx279, align 4
  %add280 = add nsw i32 %170, %mul278
  store i32 %add280, i32* %arrayidx279, align 4
  %171 = load i32, i32* %change_which.addr, align 4
  %idxprom281 = sext i32 %171 to i64
  %arrayidx282 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds ([3 x [6 x i32]], [3 x [6 x i32]]* @colorSign, i32 0, i64 2), i32 0, i64 %idxprom281
  %172 = load i32, i32* %arrayidx282, align 4
  %173 = load i32, i32* %nudge, align 4
  %mul283 = mul nsw i32 %172, %173
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %174 = load i32, i32* %arrayidx284, align 4
  %add285 = add nsw i32 %174, %mul283
  store i32 %add285, i32* %arrayidx284, align 4
  br label %sw.epilog

sw.bb.286:                                        ; preds = %for.end.252
  store i32 0, i32* %JudgeBy, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.351, %sw.bb.286
  %175 = load i32, i32* %JudgeBy, align 4
  %cmp288 = icmp slt i32 %175, 3
  br i1 %cmp288, label %for.body.290, label %for.end.353

for.body.290:                                     ; preds = %for.cond.287
  %176 = load double, double* %partial, align 8
  %177 = load i32, i32* %Inten, align 4
  %idxprom292 = sext i32 %177 to i64
  %178 = load i32, i32* %JudgeBy, align 4
  %idxprom293 = sext i32 %178 to i64
  %arrayidx294 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %tempSat, i32 0, i64 %idxprom293
  %arrayidx295 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx294, i32 0, i64 %idxprom292
  %179 = load i32, i32* %arrayidx295, align 4
  %conv296 = sitofp i32 %179 to double
  %mul297 = fmul double %176, %conv296
  %conv298 = fptosi double %mul297 to i32
  store i32 %conv298, i32* %adjust291, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.348, %for.body.290
  %180 = load i32, i32* %k, align 4
  %cmp300 = icmp slt i32 %180, 3
  br i1 %cmp300, label %for.body.302, label %for.end.350

for.body.302:                                     ; preds = %for.cond.299
  %181 = load i32, i32* %M, align 4
  %182 = load i32, i32* %m, align 4
  %cmp303 = icmp ne i32 %181, %182
  br i1 %cmp303, label %if.then.305, label %if.end.347

if.then.305:                                      ; preds = %for.body.302
  %183 = load i32, i32* %k, align 4
  %idxprom306 = sext i32 %183 to i64
  %arrayidx307 = getelementptr inbounds [3 x i32], [3 x i32]* %backupP, i32 0, i64 %idxprom306
  %184 = load i32, i32* %arrayidx307, align 4
  %185 = load i32, i32* %M, align 4
  %cmp308 = icmp eq i32 %184, %185
  br i1 %cmp308, label %if.then.310, label %if.else.325

if.then.310:                                      ; preds = %if.then.305
  %186 = load i32, i32* %k, align 4
  %idxprom311 = sext i32 %186 to i64
  %arrayidx312 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom311
  %187 = load i32, i32* %arrayidx312, align 4
  %188 = load i32, i32* %adjust291, align 4
  %add313 = add nsw i32 %187, %188
  %189 = load i32, i32* %middle, align 4
  %cmp314 = icmp sgt i32 %add313, %189
  br i1 %cmp314, label %cond.true.316, label %cond.false.320

cond.true.316:                                    ; preds = %if.then.310
  %190 = load i32, i32* %k, align 4
  %idxprom317 = sext i32 %190 to i64
  %arrayidx318 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom317
  %191 = load i32, i32* %arrayidx318, align 4
  %192 = load i32, i32* %adjust291, align 4
  %add319 = add nsw i32 %191, %192
  br label %cond.end.321

cond.false.320:                                   ; preds = %if.then.310
  %193 = load i32, i32* %middle, align 4
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.320, %cond.true.316
  %cond322 = phi i32 [ %add319, %cond.true.316 ], [ %193, %cond.false.320 ]
  %194 = load i32, i32* %k, align 4
  %idxprom323 = sext i32 %194 to i64
  %arrayidx324 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom323
  store i32 %cond322, i32* %arrayidx324, align 4
  br label %if.end.346

if.else.325:                                      ; preds = %if.then.305
  %195 = load i32, i32* %k, align 4
  %idxprom326 = sext i32 %195 to i64
  %arrayidx327 = getelementptr inbounds [3 x i32], [3 x i32]* %backupP, i32 0, i64 %idxprom326
  %196 = load i32, i32* %arrayidx327, align 4
  %197 = load i32, i32* %m, align 4
  %cmp328 = icmp eq i32 %196, %197
  br i1 %cmp328, label %if.then.330, label %if.end.345

if.then.330:                                      ; preds = %if.else.325
  %198 = load i32, i32* %k, align 4
  %idxprom331 = sext i32 %198 to i64
  %arrayidx332 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom331
  %199 = load i32, i32* %arrayidx332, align 4
  %200 = load i32, i32* %adjust291, align 4
  %sub333 = sub nsw i32 %199, %200
  %201 = load i32, i32* %middle, align 4
  %cmp334 = icmp slt i32 %sub333, %201
  br i1 %cmp334, label %cond.true.336, label %cond.false.340

cond.true.336:                                    ; preds = %if.then.330
  %202 = load i32, i32* %k, align 4
  %idxprom337 = sext i32 %202 to i64
  %arrayidx338 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom337
  %203 = load i32, i32* %arrayidx338, align 4
  %204 = load i32, i32* %adjust291, align 4
  %sub339 = sub nsw i32 %203, %204
  br label %cond.end.341

cond.false.340:                                   ; preds = %if.then.330
  %205 = load i32, i32* %middle, align 4
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.340, %cond.true.336
  %cond342 = phi i32 [ %sub339, %cond.true.336 ], [ %205, %cond.false.340 ]
  %206 = load i32, i32* %k, align 4
  %idxprom343 = sext i32 %206 to i64
  %arrayidx344 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom343
  store i32 %cond342, i32* %arrayidx344, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %cond.end.341, %if.else.325
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %cond.end.321
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %for.body.302
  br label %for.inc.348

for.inc.348:                                      ; preds = %if.end.347
  %207 = load i32, i32* %k, align 4
  %inc349 = add nsw i32 %207, 1
  store i32 %inc349, i32* %k, align 4
  br label %for.cond.299

for.end.350:                                      ; preds = %for.cond.299
  br label %for.inc.351

for.inc.351:                                      ; preds = %for.end.350
  %208 = load i32, i32* %JudgeBy, align 4
  %inc352 = add nsw i32 %208, 1
  store i32 %inc352, i32* %JudgeBy, align 4
  br label %for.cond.287

for.end.353:                                      ; preds = %for.cond.287
  br label %sw.epilog

sw.bb.354:                                        ; preds = %for.end.252
  %209 = load i32, i32* %change_which.addr, align 4
  %210 = load i32, i32* %nudge, align 4
  %mul355 = mul nsw i32 %209, %210
  %arrayidx356 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %211 = load i32, i32* %arrayidx356, align 4
  %add357 = add nsw i32 %211, %mul355
  store i32 %add357, i32* %arrayidx356, align 4
  %212 = load i32, i32* %change_which.addr, align 4
  %213 = load i32, i32* %nudge, align 4
  %mul358 = mul nsw i32 %212, %213
  %arrayidx359 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %214 = load i32, i32* %arrayidx359, align 4
  %add360 = add nsw i32 %214, %mul358
  store i32 %add360, i32* %arrayidx359, align 4
  %215 = load i32, i32* %change_which.addr, align 4
  %216 = load i32, i32* %nudge, align 4
  %mul361 = mul nsw i32 %215, %216
  %arrayidx362 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %217 = load i32, i32* %arrayidx362, align 4
  %add363 = add nsw i32 %217, %mul361
  store i32 %add363, i32* %arrayidx362, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.252
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.354, %for.end.353, %sw.bb
  %arrayidx364 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %218 = load i32, i32* %arrayidx364, align 4
  %cmp365 = icmp sgt i32 %218, 255
  br i1 %cmp365, label %cond.true.367, label %cond.false.368

cond.true.367:                                    ; preds = %sw.epilog
  br label %cond.end.377

cond.false.368:                                   ; preds = %sw.epilog
  %arrayidx369 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %219 = load i32, i32* %arrayidx369, align 4
  %cmp370 = icmp slt i32 %219, 0
  br i1 %cmp370, label %cond.true.372, label %cond.false.373

cond.true.372:                                    ; preds = %cond.false.368
  br label %cond.end.375

cond.false.373:                                   ; preds = %cond.false.368
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %220 = load i32, i32* %arrayidx374, align 4
  br label %cond.end.375

cond.end.375:                                     ; preds = %cond.false.373, %cond.true.372
  %cond376 = phi i32 [ 0, %cond.true.372 ], [ %220, %cond.false.373 ]
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.end.375, %cond.true.367
  %cond378 = phi i32 [ 255, %cond.true.367 ], [ %cond376, %cond.end.375 ]
  %conv379 = trunc i32 %cond378 to i8
  %221 = load i32, i32* %i, align 4
  %222 = load i32, i32* %RW, align 4
  %mul380 = mul nsw i32 %221, %222
  %223 = load i32, i32* %j, align 4
  %add381 = add nsw i32 %mul380, %223
  %mul382 = mul nsw i32 %add381, 4
  %add383 = add nsw i32 %mul382, 0
  %idxprom384 = sext i32 %add383 to i64
  %224 = load i8*, i8** %a, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %224, i64 %idxprom384
  store i8 %conv379, i8* %arrayidx385, align 1
  %arrayidx386 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %225 = load i32, i32* %arrayidx386, align 4
  %cmp387 = icmp sgt i32 %225, 255
  br i1 %cmp387, label %cond.true.389, label %cond.false.390

cond.true.389:                                    ; preds = %cond.end.377
  br label %cond.end.399

cond.false.390:                                   ; preds = %cond.end.377
  %arrayidx391 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %226 = load i32, i32* %arrayidx391, align 4
  %cmp392 = icmp slt i32 %226, 0
  br i1 %cmp392, label %cond.true.394, label %cond.false.395

cond.true.394:                                    ; preds = %cond.false.390
  br label %cond.end.397

cond.false.395:                                   ; preds = %cond.false.390
  %arrayidx396 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %227 = load i32, i32* %arrayidx396, align 4
  br label %cond.end.397

cond.end.397:                                     ; preds = %cond.false.395, %cond.true.394
  %cond398 = phi i32 [ 0, %cond.true.394 ], [ %227, %cond.false.395 ]
  br label %cond.end.399

cond.end.399:                                     ; preds = %cond.end.397, %cond.true.389
  %cond400 = phi i32 [ 255, %cond.true.389 ], [ %cond398, %cond.end.397 ]
  %conv401 = trunc i32 %cond400 to i8
  %228 = load i32, i32* %i, align 4
  %229 = load i32, i32* %RW, align 4
  %mul402 = mul nsw i32 %228, %229
  %230 = load i32, i32* %j, align 4
  %add403 = add nsw i32 %mul402, %230
  %mul404 = mul nsw i32 %add403, 4
  %add405 = add nsw i32 %mul404, 1
  %idxprom406 = sext i32 %add405 to i64
  %231 = load i8*, i8** %a, align 8
  %arrayidx407 = getelementptr inbounds i8, i8* %231, i64 %idxprom406
  store i8 %conv401, i8* %arrayidx407, align 1
  %arrayidx408 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %232 = load i32, i32* %arrayidx408, align 4
  %cmp409 = icmp sgt i32 %232, 255
  br i1 %cmp409, label %cond.true.411, label %cond.false.412

cond.true.411:                                    ; preds = %cond.end.399
  br label %cond.end.421

cond.false.412:                                   ; preds = %cond.end.399
  %arrayidx413 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %233 = load i32, i32* %arrayidx413, align 4
  %cmp414 = icmp slt i32 %233, 0
  br i1 %cmp414, label %cond.true.416, label %cond.false.417

cond.true.416:                                    ; preds = %cond.false.412
  br label %cond.end.419

cond.false.417:                                   ; preds = %cond.false.412
  %arrayidx418 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %234 = load i32, i32* %arrayidx418, align 4
  br label %cond.end.419

cond.end.419:                                     ; preds = %cond.false.417, %cond.true.416
  %cond420 = phi i32 [ 0, %cond.true.416 ], [ %234, %cond.false.417 ]
  br label %cond.end.421

cond.end.421:                                     ; preds = %cond.end.419, %cond.true.411
  %cond422 = phi i32 [ 255, %cond.true.411 ], [ %cond420, %cond.end.419 ]
  %conv423 = trunc i32 %cond422 to i8
  %235 = load i32, i32* %i, align 4
  %236 = load i32, i32* %RW, align 4
  %mul424 = mul nsw i32 %235, %236
  %237 = load i32, i32* %j, align 4
  %add425 = add nsw i32 %mul424, %237
  %mul426 = mul nsw i32 %add425, 4
  %add427 = add nsw i32 %mul426, 2
  %idxprom428 = sext i32 %add427 to i64
  %238 = load i8*, i8** %a, align 8
  %arrayidx429 = getelementptr inbounds i8, i8* %238, i64 %idxprom428
  store i8 %conv423, i8* %arrayidx429, align 1
  %239 = load i32, i32* %bytes, align 4
  %cmp430 = icmp eq i32 %239, 4
  br i1 %cmp430, label %if.then.432, label %if.else.447

if.then.432:                                      ; preds = %cond.end.421
  %240 = load i32, i32* %i, align 4
  %241 = load i32, i32* %RW, align 4
  %mul433 = mul nsw i32 %240, %241
  %242 = load i32, i32* %bytes, align 4
  %mul434 = mul nsw i32 %mul433, %242
  %243 = load i32, i32* %j, align 4
  %244 = load i32, i32* %bytes, align 4
  %mul435 = mul nsw i32 %243, %244
  %add436 = add nsw i32 %mul434, %mul435
  %add437 = add nsw i32 %add436, 3
  %idxprom438 = sext i32 %add437 to i64
  %245 = load %struct.ReducedImage*, %struct.ReducedImage** @reduced, align 8
  %rgb439 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %245, i32 0, i32 2
  %246 = load i8*, i8** %rgb439, align 8
  %arrayidx440 = getelementptr inbounds i8, i8* %246, i64 %idxprom438
  %247 = load i8, i8* %arrayidx440, align 1
  %248 = load i32, i32* %i, align 4
  %249 = load i32, i32* %RW, align 4
  %mul441 = mul nsw i32 %248, %249
  %250 = load i32, i32* %j, align 4
  %add442 = add nsw i32 %mul441, %250
  %mul443 = mul nsw i32 %add442, 4
  %add444 = add nsw i32 %mul443, 3
  %idxprom445 = sext i32 %add444 to i64
  %251 = load i8*, i8** %a, align 8
  %arrayidx446 = getelementptr inbounds i8, i8* %251, i64 %idxprom445
  store i8 %247, i8* %arrayidx446, align 1
  br label %if.end.454

if.else.447:                                      ; preds = %cond.end.421
  %252 = load i32, i32* %i, align 4
  %253 = load i32, i32* %RW, align 4
  %mul448 = mul nsw i32 %252, %253
  %254 = load i32, i32* %j, align 4
  %add449 = add nsw i32 %mul448, %254
  %mul450 = mul nsw i32 %add449, 4
  %add451 = add nsw i32 %mul450, 3
  %idxprom452 = sext i32 %add451 to i64
  %255 = load i8*, i8** %a, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %255, i64 %idxprom452
  store i8 -1, i8* %arrayidx453, align 1
  br label %if.end.454

if.end.454:                                       ; preds = %if.else.447, %if.then.432
  br label %for.inc.455

for.inc.455:                                      ; preds = %if.end.454
  %256 = load i32, i32* %j, align 4
  %inc456 = add nsw i32 %256, 1
  store i32 %inc456, i32* %j, align 4
  br label %for.cond.27

for.end.457:                                      ; preds = %for.cond.27
  br label %for.inc.458

for.inc.458:                                      ; preds = %for.end.457
  %257 = load i32, i32* %i, align 4
  %inc459 = add nsw i32 %257, 1
  store i32 %inc459, i32* %i, align 4
  br label %for.cond.23

for.end.460:                                      ; preds = %for.cond.23
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %259 = bitcast %struct._GtkWidget* %258 to %struct._GTypeInstance*
  %call461 = call i64 @gimp_preview_area_get_type() #5
  %call462 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call461)
  %260 = bitcast %struct._GTypeInstance* %call462 to %struct._GimpPreviewArea*
  %261 = load i32, i32* %RW, align 4
  %262 = load i32, i32* %RH, align 4
  %263 = load i8*, i8** %a, align 8
  %264 = load i32, i32* %RW, align 4
  %mul463 = mul nsw i32 %264, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %260, i32 0, i32 0, i32 %261, i32 %262, i32 1, i8* %263, i32 %mul463)
  %265 = load i8*, i8** %a, align 8
  call void @g_free(i8* %265)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @fp_change_current_range(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %5 to i32
  call void @fp_refresh_previews(i32 %conv)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %tobool3 = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %call4 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @fp_create_smoothness_graph(%struct._GtkWidget* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @fp_create_table_entry(%struct._GtkWidget** %box, %struct._GtkWidget* %smaller_frame, i8* %description) #0 {
entry:
  %box.addr = alloca %struct._GtkWidget**, align 8
  %smaller_frame.addr = alloca %struct._GtkWidget*, align 8
  %description.addr = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget** %box, %struct._GtkWidget*** %box.addr, align 8
  store %struct._GtkWidget* %smaller_frame, %struct._GtkWidget** %smaller_frame.addr, align 8
  store i8* %description, i8** %description.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 1)
  %0 = load %struct._GtkWidget**, %struct._GtkWidget*** %box.addr, align 8
  store %struct._GtkWidget* %call, %struct._GtkWidget** %0, align 8
  %1 = load %struct._GtkWidget**, %struct._GtkWidget*** %box.addr, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %4, i32 4)
  %5 = load %struct._GtkWidget**, %struct._GtkWidget*** %box.addr, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %5, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %7 = load i8*, i8** %description.addr, align 8
  %call3 = call i8* @gettext(i8* %7) #2
  %call4 = call %struct._GtkWidget* @gtk_label_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %label, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_misc_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %10, float 0.000000e+00, float 5.000000e-01)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %call7 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 1, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %table, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget**, %struct._GtkWidget*** %box.addr, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %13, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 1, i32 1, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %20, %struct._GtkWidget* %21, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0)
  %22 = load i8*, i8** %description.addr, align 8
  %23 = load i8*, i8** @current_val, align 8
  %cmp = icmp ne i8* %22, %23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call12 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %button, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %26, %struct._GtkWidget* %27, i32 0, i32 1, i32 1, i32 2, i32 0, i32 0, i32 0, i32 4)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call15)
  %31 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %smaller_frame.addr, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load i8*, i8** %description.addr, align 8
  %call17 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @fp_selection_made to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call18)
  %38 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %smaller_frame.addr, align 8
  call void @gtk_table_attach(%struct._GtkTable* %38, %struct._GtkWidget* %39, i32 0, i32 1, i32 1, i32 2, i32 0, i32 0, i32 0, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_button_new() #1

; Function Attrs: nounwind uwtable
define internal void @fp_selection_made(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 9), i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i8*, i8** @hue_red, align 8
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @update_current_fp(i32 2, i32 0)
  br label %if.end.35

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i8*, i8** @hue_green, align 8
  %cmp1 = icmp eq i8* %3, %4
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  call void @update_current_fp(i32 2, i32 1)
  br label %if.end.34

if.else.3:                                        ; preds = %if.else
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i8*, i8** @hue_blue, align 8
  %cmp4 = icmp eq i8* %5, %6
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  call void @update_current_fp(i32 2, i32 2)
  br label %if.end.33

if.else.6:                                        ; preds = %if.else.3
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i8*, i8** @hue_cyan, align 8
  %cmp7 = icmp eq i8* %7, %8
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  call void @update_current_fp(i32 2, i32 3)
  br label %if.end.32

if.else.9:                                        ; preds = %if.else.6
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i8*, i8** @hue_yellow, align 8
  %cmp10 = icmp eq i8* %9, %10
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  call void @update_current_fp(i32 2, i32 4)
  br label %if.end.31

if.else.12:                                       ; preds = %if.else.9
  %11 = load i8*, i8** %data.addr, align 8
  %12 = load i8*, i8** @hue_magenta, align 8
  %cmp13 = icmp eq i8* %11, %12
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  call void @update_current_fp(i32 2, i32 5)
  br label %if.end.30

if.else.15:                                       ; preds = %if.else.12
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i8*, i8** @val_darker, align 8
  %cmp16 = icmp eq i8* %13, %14
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  call void @update_current_fp(i32 8, i32 -1)
  br label %if.end.29

if.else.18:                                       ; preds = %if.else.15
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i8*, i8** @val_lighter, align 8
  %cmp19 = icmp eq i8* %15, %16
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  call void @update_current_fp(i32 8, i32 1)
  br label %if.end.28

if.else.21:                                       ; preds = %if.else.18
  %17 = load i8*, i8** %data.addr, align 8
  %18 = load i8*, i8** @sat_more, align 8
  %cmp22 = icmp eq i8* %17, %18
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.21
  call void @update_current_fp(i32 4, i32 1)
  br label %if.end.27

if.else.24:                                       ; preds = %if.else.21
  %19 = load i8*, i8** %data.addr, align 8
  %20 = load i8*, i8** @sat_less, align 8
  %cmp25 = icmp eq i8* %19, %20
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.else.24
  call void @update_current_fp(i32 4, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.else.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.17
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.14
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.11
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.5
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.2
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then
  %21 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %21 to i32
  call void @fp_refresh_previews(i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_current_fp(i32 %change_what, i32 %change_which) #0 {
entry:
  %change_what.addr = alloca i32, align 4
  %change_which.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nudge = alloca i32, align 4
  store i32 %change_what, i32* %change_what.addr, align 4
  store i32 %change_which, i32* %change_which.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @fp_create_nudge(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @nudgeArray, i32 0, i32 0))
  %1 = load i32, i32* %i, align 4
  %2 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 6), align 1
  %conv = zext i8 %2 to i32
  %add = add nsw i32 %1, %conv
  %rem = srem i32 %add, 256
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @nudgeArray, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %nudge, align 4
  %4 = load i32, i32* %change_what.addr, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.24
    i32 8, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load i32, i32* %change_which.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds ([3 x [6 x i32]], [3 x [6 x i32]]* @colorSign, i32 0, i64 0), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %nudge, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 10), i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx5, i32 0, i64 %idxprom3
  %10 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %10, %mul
  store i32 %add7, i32* %arrayidx6, align 4
  %11 = load i32, i32* %change_which.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds ([3 x [6 x i32]], [3 x [6 x i32]]* @colorSign, i32 0, i64 1), i32 0, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %13 = load i32, i32* %nudge, align 4
  %mul10 = mul nsw i32 %12, %13
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 12), i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %16 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %16, %mul10
  store i32 %add15, i32* %arrayidx14, align 4
  %17 = load i32, i32* %change_which.addr, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds ([3 x [6 x i32]], [3 x [6 x i32]]* @colorSign, i32 0, i64 2), i32 0, i64 %idxprom16
  %18 = load i32, i32* %arrayidx17, align 4
  %19 = load i32, i32* %nudge, align 4
  %mul18 = mul nsw i32 %18, %19
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 11), i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx21, i32 0, i64 %idxprom19
  %22 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %22, %mul18
  store i32 %add23, i32* %arrayidx22, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.body
  %23 = load i32, i32* %change_which.addr, align 4
  %24 = load i32, i32* %nudge, align 4
  %mul25 = mul nsw i32 %23, %24
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 13), i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx28, i32 0, i64 %idxprom26
  %27 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %27, %mul25
  store i32 %add30, i32* %arrayidx29, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %for.body
  %28 = load i32, i32* %change_which.addr, align 4
  %29 = load i32, i32* %nudge, align 4
  %mul32 = mul nsw i32 %28, %29
  %30 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom34 = sext i32 %31 to i64
  %arrayidx35 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 10), i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx35, i32 0, i64 %idxprom33
  %32 = load i32, i32* %arrayidx36, align 4
  %add37 = add nsw i32 %32, %mul32
  store i32 %add37, i32* %arrayidx36, align 4
  %33 = load i32, i32* %change_which.addr, align 4
  %34 = load i32, i32* %nudge, align 4
  %mul38 = mul nsw i32 %33, %34
  %35 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %35 to i64
  %36 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom40 = sext i32 %36 to i64
  %arrayidx41 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 12), i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx41, i32 0, i64 %idxprom39
  %37 = load i32, i32* %arrayidx42, align 4
  %add43 = add nsw i32 %37, %mul38
  store i32 %add43, i32* %arrayidx42, align 4
  %38 = load i32, i32* %change_which.addr, align 4
  %39 = load i32, i32* %nudge, align 4
  %mul44 = mul nsw i32 %38, %39
  %40 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 11), i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx47, i32 0, i64 %idxprom45
  %42 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %42, %mul44
  store i32 %add49, i32* %arrayidx48, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.31, %sw.bb.24, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_change_selection(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fp_redraw_all_windows()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_change_current_pixels_by(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %5 to i32
  call void @fp_refresh_previews(i32 %conv)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %tobool3 = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 0), align 8
  %call4 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  %tobool7 = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  call void @fp_range_preview_spill(%struct._GtkWidget* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.6, %land.lhs.true, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_frames_checkbutton_in_box(%struct._GtkWidget* %vbox, i8* %label, void ()* %function, %struct._GtkWidget* %frame, i32 %clicked) #0 {
entry:
  %vbox.addr = alloca %struct._GtkWidget*, align 8
  %label.addr = alloca i8*, align 8
  %function.addr = alloca void ()*, align 8
  %frame.addr = alloca %struct._GtkWidget*, align 8
  %clicked.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %vbox, %struct._GtkWidget** %vbox.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store void ()* %function, void ()** %function.addr, align 8
  store %struct._GtkWidget* %frame, %struct._GtkWidget** %frame.addr, align 8
  store i32 %clicked, i32* %clicked.addr, align 4
  %0 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %4, i32 0, i32 0, i32 0)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load void ()*, void ()** %function.addr, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void ()* %13, i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_button_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call5)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleButton*
  %19 = load i32, i32* %clicked.addr, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %18, i32 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fp_show_hide_frame(%struct._GtkWidget* %button, %struct._GtkWidget* %frame) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %frame.addr = alloca %struct._GtkWidget*, align 8
  %prev = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GtkWidget* %frame, %struct._GtkWidget** %frame.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* %prev, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.59

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  %call3 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.else.31

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %call5 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.30, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 1), align 8
  %cmp8 = icmp eq %struct._GtkWidget* %7, %8
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  %9 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv11 = zext i8 %9 to i32
  %or = or i32 %conv11, 2
  %conv12 = trunc i32 %or to i8
  store i8 %conv12, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  br label %if.end.28

if.else:                                          ; preds = %if.then.7
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 8), align 8
  %cmp13 = icmp eq %struct._GtkWidget* %10, %11
  br i1 %cmp13, label %if.then.15, label %if.else.19

if.then.15:                                       ; preds = %if.else
  %12 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv16 = zext i8 %12 to i32
  %or17 = or i32 %conv16, 4
  %conv18 = trunc i32 %or17 to i8
  store i8 %conv18, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  br label %if.end.27

if.else.19:                                       ; preds = %if.else
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 5), align 8
  %cmp20 = icmp eq %struct._GtkWidget* %13, %14
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.else.19
  %15 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv23 = zext i8 %15 to i32
  %or24 = or i32 %conv23, 8
  %conv25 = trunc i32 %or24 to i8
  store i8 %conv25, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.else.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.15
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.10
  %16 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv29 = zext i8 %16 to i32
  %17 = load i32, i32* %prev, align 4
  %neg = xor i32 %17, -1
  %and = and i32 %conv29, %neg
  call void @fp_refresh_previews(i32 %and)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 2), align 8
  call void @fp_create_smoothness_graph(%struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.AdvancedWindow, %struct.AdvancedWindow* @AW, i32 0, i32 1), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 4), align 4
  call void @fp_range_preview_spill(%struct._GtkWidget* %19, i32 %20)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %if.then.4
  br label %if.end.59

if.else.31:                                       ; preds = %if.end
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %call32 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %21)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.58

if.then.34:                                       ; preds = %if.else.31
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 1), align 8
  %cmp35 = icmp eq %struct._GtkWidget* %23, %24
  br i1 %cmp35, label %if.then.37, label %if.else.41

if.then.37:                                       ; preds = %if.then.34
  %25 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv38 = zext i8 %25 to i32
  %and39 = and i32 %conv38, -3
  %conv40 = trunc i32 %and39 to i8
  store i8 %conv40, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  br label %if.end.57

if.else.41:                                       ; preds = %if.then.34
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 8), align 8
  %cmp42 = icmp eq %struct._GtkWidget* %26, %27
  br i1 %cmp42, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %if.else.41
  %28 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv45 = zext i8 %28 to i32
  %and46 = and i32 %conv45, -5
  %conv47 = trunc i32 %and46 to i8
  store i8 %conv47, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  br label %if.end.56

if.else.48:                                       ; preds = %if.else.41
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.anon, %struct.anon* @fp_frames, i32 0, i32 5), align 8
  %cmp49 = icmp eq %struct._GtkWidget* %29, %30
  br i1 %cmp49, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.else.48
  %31 = load i8, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  %conv52 = zext i8 %31 to i32
  %and53 = and i32 %conv52, -9
  %conv54 = trunc i32 %and53 to i8
  store i8 %conv54, i8* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 7), align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.else.48
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.44
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.37
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.else.31
  br label %if.end.59

if.end.59:                                        ; preds = %if.then, %if.end.58, %if.end.30
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fp_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %bytenum = alloca i32, align 4
  %k = alloca i32, align 4
  %JudgeBy = alloca i32, align 4
  %Intensity = alloca i32, align 4
  %P = alloca [3 x i32], align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  %M = alloca i32, align 4
  %m = alloca i32, align 4
  %middle = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %Intensity, align 4
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  store i32 %conv, i32* %arrayidx1, align 4
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  store i32 %conv3, i32* %arrayidx4, align 4
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  store i32 %conv6, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %6 = load i32, i32* %arrayidx8, align 4
  %conv9 = trunc i32 %6 to i8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %7 = load i32, i32* %arrayidx10, align 4
  %conv11 = trunc i32 %7 to i8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %8 = load i32, i32* %arrayidx12, align 4
  %conv13 = trunc i32 %8 to i8
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %conv9, i8 zeroext %conv11, i8 zeroext %conv13)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  store i32 0, i32* %JudgeBy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.223, %entry
  %9 = load i32, i32* %JudgeBy, align 4
  %cmp = icmp slt i32 %9, 3
  br i1 %cmp, label %for.body, label %for.end.225

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %JudgeBy, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 9), i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx15, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.223

if.end:                                           ; preds = %for.body
  %12 = load i32, i32* %JudgeBy, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %13 = load double, double* %h, align 8
  %mul = fmul double 2.550000e+02, %13
  %conv16 = fptosi double %mul to i32
  store i32 %conv16, i32* %Intensity, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %14 = load double, double* %s, align 8
  %mul18 = fmul double 2.550000e+02, %14
  %conv19 = fptosi double %mul18 to i32
  store i32 %conv19, i32* %Intensity, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %15 = load double, double* %v, align 8
  %mul21 = fmul double 2.550000e+02, %15
  %conv22 = fptosi double %mul21 to i32
  store i32 %conv22, i32* %Intensity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.20, %sw.bb.17, %sw.bb
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %16 = load i32, i32* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %17 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp slt i32 %16, %17
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %18 = load i32, i32* %arrayidx27, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %19 = load i32, i32* %arrayidx28, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %20 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp slt i32 %cond, %20
  br i1 %cmp30, label %cond.true.32, label %cond.false.43

cond.true.32:                                     ; preds = %cond.end
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %21 = load i32, i32* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %22 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp slt i32 %21, %22
  br i1 %cmp35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.true.32
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %23 = load i32, i32* %arrayidx38, align 4
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.true.32
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %24 = load i32, i32* %arrayidx40, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi i32 [ %23, %cond.true.37 ], [ %24, %cond.false.39 ]
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.end
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %25 = load i32, i32* %arrayidx44, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.end.41
  %cond46 = phi i32 [ %cond42, %cond.end.41 ], [ %25, %cond.false.43 ]
  store i32 %cond46, i32* %m, align 4
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %26 = load i32, i32* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %27 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp sgt i32 %26, %27
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.end.45
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %28 = load i32, i32* %arrayidx52, align 4
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.end.45
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %29 = load i32, i32* %arrayidx54, align 4
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.51
  %cond56 = phi i32 [ %28, %cond.true.51 ], [ %29, %cond.false.53 ]
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %30 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp sgt i32 %cond56, %30
  br i1 %cmp58, label %cond.true.60, label %cond.false.71

cond.true.60:                                     ; preds = %cond.end.55
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %31 = load i32, i32* %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %32 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp sgt i32 %31, %32
  br i1 %cmp63, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %cond.true.60
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %33 = load i32, i32* %arrayidx66, align 4
  br label %cond.end.69

cond.false.67:                                    ; preds = %cond.true.60
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %34 = load i32, i32* %arrayidx68, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.65
  %cond70 = phi i32 [ %33, %cond.true.65 ], [ %34, %cond.false.67 ]
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.end.55
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %35 = load i32, i32* %arrayidx72, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.end.69
  %cond74 = phi i32 [ %cond70, %cond.end.69 ], [ %35, %cond.false.71 ]
  store i32 %cond74, i32* %M, align 4
  %36 = load i32, i32* %M, align 4
  %37 = load i32, i32* %m, align 4
  %add = add nsw i32 %36, %37
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %middle, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc, %cond.end.73
  %38 = load i32, i32* %k, align 4
  %cmp76 = icmp slt i32 %38, 3
  br i1 %cmp76, label %for.body.78, label %for.end

for.body.78:                                      ; preds = %for.cond.75
  %39 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %39 to i64
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom79
  %40 = load i32, i32* %arrayidx80, align 4
  %41 = load i32, i32* %m, align 4
  %cmp81 = icmp ne i32 %40, %41
  br i1 %cmp81, label %land.lhs.true, label %if.end.90

land.lhs.true:                                    ; preds = %for.body.78
  %42 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %42 to i64
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom83
  %43 = load i32, i32* %arrayidx84, align 4
  %44 = load i32, i32* %M, align 4
  %cmp85 = icmp ne i32 %43, %44
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %land.lhs.true
  %45 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %45 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom88
  %46 = load i32, i32* %arrayidx89, align 4
  store i32 %46, i32* %middle, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %land.lhs.true, %for.body.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %47 = load i32, i32* %k, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.75

for.end:                                          ; preds = %for.cond.75
  store i32 0, i32* %k, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.154, %for.end
  %48 = load i32, i32* %k, align 4
  %cmp92 = icmp slt i32 %48, 3
  br i1 %cmp92, label %for.body.94, label %for.end.156

for.body.94:                                      ; preds = %for.cond.91
  %49 = load i32, i32* %M, align 4
  %50 = load i32, i32* %m, align 4
  %cmp95 = icmp ne i32 %49, %50
  br i1 %cmp95, label %if.then.97, label %if.end.153

if.then.97:                                       ; preds = %for.body.94
  %51 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %51 to i64
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom98
  %52 = load i32, i32* %arrayidx99, align 4
  %53 = load i32, i32* %M, align 4
  %cmp100 = icmp eq i32 %52, %53
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %if.then.97
  %54 = load i32, i32* %k, align 4
  %idxprom103 = sext i32 %54 to i64
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom103
  %55 = load i32, i32* %arrayidx104, align 4
  %56 = load i32, i32* %Intensity, align 4
  %idxprom105 = sext i32 %56 to i64
  %57 = load i32, i32* %JudgeBy, align 4
  %idxprom106 = sext i32 %57 to i64
  %arrayidx107 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 13), i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx107, i32 0, i64 %idxprom105
  %58 = load i32, i32* %arrayidx108, align 4
  %add109 = add nsw i32 %55, %58
  %59 = load i32, i32* %middle, align 4
  %cmp110 = icmp sgt i32 %add109, %59
  br i1 %cmp110, label %cond.true.112, label %cond.false.120

cond.true.112:                                    ; preds = %if.then.102
  %60 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %60 to i64
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom113
  %61 = load i32, i32* %arrayidx114, align 4
  %62 = load i32, i32* %Intensity, align 4
  %idxprom115 = sext i32 %62 to i64
  %63 = load i32, i32* %JudgeBy, align 4
  %idxprom116 = sext i32 %63 to i64
  %arrayidx117 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 13), i32 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx117, i32 0, i64 %idxprom115
  %64 = load i32, i32* %arrayidx118, align 4
  %add119 = add nsw i32 %61, %64
  br label %cond.end.121

cond.false.120:                                   ; preds = %if.then.102
  %65 = load i32, i32* %middle, align 4
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.112
  %cond122 = phi i32 [ %add119, %cond.true.112 ], [ %65, %cond.false.120 ]
  %66 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %66 to i64
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom123
  store i32 %cond122, i32* %arrayidx124, align 4
  br label %if.end.152

if.else:                                          ; preds = %if.then.97
  %67 = load i32, i32* %k, align 4
  %idxprom125 = sext i32 %67 to i64
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom125
  %68 = load i32, i32* %arrayidx126, align 4
  %69 = load i32, i32* %m, align 4
  %cmp127 = icmp eq i32 %68, %69
  br i1 %cmp127, label %if.then.129, label %if.end.151

if.then.129:                                      ; preds = %if.else
  %70 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %70 to i64
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom130
  %71 = load i32, i32* %arrayidx131, align 4
  %72 = load i32, i32* %Intensity, align 4
  %idxprom132 = sext i32 %72 to i64
  %73 = load i32, i32* %JudgeBy, align 4
  %idxprom133 = sext i32 %73 to i64
  %arrayidx134 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 13), i32 0, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx134, i32 0, i64 %idxprom132
  %74 = load i32, i32* %arrayidx135, align 4
  %sub = sub nsw i32 %71, %74
  %75 = load i32, i32* %middle, align 4
  %cmp136 = icmp slt i32 %sub, %75
  br i1 %cmp136, label %cond.true.138, label %cond.false.146

cond.true.138:                                    ; preds = %if.then.129
  %76 = load i32, i32* %k, align 4
  %idxprom139 = sext i32 %76 to i64
  %arrayidx140 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom139
  %77 = load i32, i32* %arrayidx140, align 4
  %78 = load i32, i32* %Intensity, align 4
  %idxprom141 = sext i32 %78 to i64
  %79 = load i32, i32* %JudgeBy, align 4
  %idxprom142 = sext i32 %79 to i64
  %arrayidx143 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 13), i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx143, i32 0, i64 %idxprom141
  %80 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %77, %80
  br label %cond.end.147

cond.false.146:                                   ; preds = %if.then.129
  %81 = load i32, i32* %middle, align 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.138
  %cond148 = phi i32 [ %sub145, %cond.true.138 ], [ %81, %cond.false.146 ]
  %82 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %82 to i64
  %arrayidx150 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 %idxprom149
  store i32 %cond148, i32* %arrayidx150, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %cond.end.147, %if.else
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %cond.end.121
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %for.body.94
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %83 = load i32, i32* %k, align 4
  %inc155 = add nsw i32 %83, 1
  store i32 %inc155, i32* %k, align 4
  br label %for.cond.91

for.end.156:                                      ; preds = %for.cond.91
  %84 = load i32, i32* %Intensity, align 4
  %idxprom157 = sext i32 %84 to i64
  %85 = load i32, i32* %JudgeBy, align 4
  %idxprom158 = sext i32 %85 to i64
  %arrayidx159 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 10), i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx159, i32 0, i64 %idxprom157
  %86 = load i32, i32* %arrayidx160, align 4
  %arrayidx161 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %87 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %87, %86
  store i32 %add162, i32* %arrayidx161, align 4
  %88 = load i32, i32* %Intensity, align 4
  %idxprom163 = sext i32 %88 to i64
  %89 = load i32, i32* %JudgeBy, align 4
  %idxprom164 = sext i32 %89 to i64
  %arrayidx165 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 12), i32 0, i64 %idxprom164
  %arrayidx166 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx165, i32 0, i64 %idxprom163
  %90 = load i32, i32* %arrayidx166, align 4
  %arrayidx167 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %91 = load i32, i32* %arrayidx167, align 4
  %add168 = add nsw i32 %91, %90
  store i32 %add168, i32* %arrayidx167, align 4
  %92 = load i32, i32* %Intensity, align 4
  %idxprom169 = sext i32 %92 to i64
  %93 = load i32, i32* %JudgeBy, align 4
  %idxprom170 = sext i32 %93 to i64
  %arrayidx171 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* getelementptr inbounds (%struct.FPValues, %struct.FPValues* @fpvals, i32 0, i32 11), i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx171, i32 0, i64 %idxprom169
  %94 = load i32, i32* %arrayidx172, align 4
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %95 = load i32, i32* %arrayidx173, align 4
  %add174 = add nsw i32 %95, %94
  store i32 %add174, i32* %arrayidx173, align 4
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %96 = load i32, i32* %arrayidx175, align 4
  %cmp176 = icmp sgt i32 %96, 255
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %for.end.156
  br label %cond.end.188

cond.false.179:                                   ; preds = %for.end.156
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %97 = load i32, i32* %arrayidx180, align 4
  %cmp181 = icmp slt i32 %97, 0
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %cond.false.179
  br label %cond.end.186

cond.false.184:                                   ; preds = %cond.false.179
  %arrayidx185 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %98 = load i32, i32* %arrayidx185, align 4
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.183
  %cond187 = phi i32 [ 0, %cond.true.183 ], [ %98, %cond.false.184 ]
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.end.186, %cond.true.178
  %cond189 = phi i32 [ 255, %cond.true.178 ], [ %cond187, %cond.end.186 ]
  %arrayidx190 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  store i32 %cond189, i32* %arrayidx190, align 4
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %99 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp sgt i32 %99, 255
  br i1 %cmp192, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %cond.end.188
  br label %cond.end.204

cond.false.195:                                   ; preds = %cond.end.188
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %100 = load i32, i32* %arrayidx196, align 4
  %cmp197 = icmp slt i32 %100, 0
  br i1 %cmp197, label %cond.true.199, label %cond.false.200

cond.true.199:                                    ; preds = %cond.false.195
  br label %cond.end.202

cond.false.200:                                   ; preds = %cond.false.195
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %101 = load i32, i32* %arrayidx201, align 4
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.200, %cond.true.199
  %cond203 = phi i32 [ 0, %cond.true.199 ], [ %101, %cond.false.200 ]
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.end.202, %cond.true.194
  %cond205 = phi i32 [ 255, %cond.true.194 ], [ %cond203, %cond.end.202 ]
  %arrayidx206 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  store i32 %cond205, i32* %arrayidx206, align 4
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %102 = load i32, i32* %arrayidx207, align 4
  %cmp208 = icmp sgt i32 %102, 255
  br i1 %cmp208, label %cond.true.210, label %cond.false.211

cond.true.210:                                    ; preds = %cond.end.204
  br label %cond.end.220

cond.false.211:                                   ; preds = %cond.end.204
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %103 = load i32, i32* %arrayidx212, align 4
  %cmp213 = icmp slt i32 %103, 0
  br i1 %cmp213, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %cond.false.211
  br label %cond.end.218

cond.false.216:                                   ; preds = %cond.false.211
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %104 = load i32, i32* %arrayidx217, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.216, %cond.true.215
  %cond219 = phi i32 [ 0, %cond.true.215 ], [ %104, %cond.false.216 ]
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.end.218, %cond.true.210
  %cond221 = phi i32 [ 255, %cond.true.210 ], [ %cond219, %cond.end.218 ]
  %arrayidx222 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  store i32 %cond221, i32* %arrayidx222, align 4
  br label %for.inc.223

for.inc.223:                                      ; preds = %cond.end.220, %if.then
  %105 = load i32, i32* %JudgeBy, align 4
  %inc224 = add nsw i32 %105, 1
  store i32 %inc224, i32* %JudgeBy, align 4
  br label %for.cond

for.end.225:                                      ; preds = %for.cond
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 0
  %106 = load i32, i32* %arrayidx226, align 4
  %conv227 = trunc i32 %106 to i8
  %107 = load i8*, i8** %dest.addr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %conv227, i8* %arrayidx228, align 1
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 1
  %108 = load i32, i32* %arrayidx229, align 4
  %conv230 = trunc i32 %108 to i8
  %109 = load i8*, i8** %dest.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %conv230, i8* %arrayidx231, align 1
  %arrayidx232 = getelementptr inbounds [3 x i32], [3 x i32]* %P, i32 0, i64 2
  %110 = load i32, i32* %arrayidx232, align 4
  %conv233 = trunc i32 %110 to i8
  %111 = load i8*, i8** %dest.addr, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 %conv233, i8* %arrayidx234, align 1
  store i32 3, i32* %bytenum, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.243, %for.end.225
  %112 = load i32, i32* %bytenum, align 4
  %113 = load i32, i32* %bpp.addr, align 4
  %cmp236 = icmp slt i32 %112, %113
  br i1 %cmp236, label %for.body.238, label %for.end.245

for.body.238:                                     ; preds = %for.cond.235
  %114 = load i32, i32* %bytenum, align 4
  %idxprom239 = sext i32 %114 to i64
  %115 = load i8*, i8** %src.addr, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %115, i64 %idxprom239
  %116 = load i8, i8* %arrayidx240, align 1
  %117 = load i32, i32* %bytenum, align 4
  %idxprom241 = sext i32 %117 to i64
  %118 = load i8*, i8** %dest.addr, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %118, i64 %idxprom241
  store i8 %116, i8* %arrayidx242, align 1
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.body.238
  %119 = load i32, i32* %bytenum, align 4
  %inc244 = add nsw i32 %119, 1
  store i32 %inc244, i32* %bytenum, align 4
  br label %for.cond.235

for.end.245:                                      ; preds = %for.cond.235
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
