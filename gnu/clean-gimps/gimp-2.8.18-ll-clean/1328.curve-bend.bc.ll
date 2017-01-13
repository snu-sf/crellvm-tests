; ModuleID = './plug-ins/common/curve-bend.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._BenderDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [17 x [2 x double]]], [2 x [256 x i8]], [2 x i32*], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, double, i32, i32, i32, %struct._BenderValues*, %struct._BenderValues*, %struct._BenderValues*, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct._GdkCursor = type { i32, i32 }
%struct._BenderValues = type { [2 x [256 x i8]], [2 x [17 x [2 x double]]], i32, i32, i32, i32, double, i32, double }
%struct._GError = type { i32, i32, i8* }
%struct.t_GDRW = type { %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, %struct._GimpPixelFetcher*, i32, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._cairo = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GtkFileChooser = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.t_Last = type { i32, [4 x i8] }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [20 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0) }, %struct._GimpParamDef { i32 7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0) }, %struct._GimpParamDef { i32 7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Input drawable (must be a layer without layermask)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Direction {angle 0 to 360 degree } of the bend effect\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"smoothing\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Smoothing { TRUE, FALSE }\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Antialias { TRUE, FALSE }\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"work-on-copy\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"{ TRUE, FALSE } TRUE: copy the drawable and bend the copy\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"curve-type\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c" { 0, 1 } 0 == smooth (use 17 points), 1 == freehand (use 256 val_y) \00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"argc-upper-point-x\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"{2 <= argc <= 17} \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"upper-point-x\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"array of 17 x point_koords { 0.0 <= x <= 1.0 or -1 for unused point }\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"argc-upper-point-y\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"upper-point-y\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"array of 17 y point_koords { 0.0 <= y <= 1.0 or -1 for unused point }\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"argc-lower_point-x\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"lower-point-x\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"argc-lower-point-y\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"lower_point_y\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"argc-upper-val-y\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"{ 256 } \00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"upper-val-y\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"array of 256 y freehand koord { 0 <= y <= 255 }\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"argc-lower-val-y\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"lower-val-y\00", align 1
@query.return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0) }], align 16
@.str.33 = private unnamed_addr constant [11 x i8] c"bent-layer\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"the handled layer\00", align 1
@query.args_iter = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.37, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.39, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.41, i32 0, i32 0) }], align 16
@.str.35 = private unnamed_addr constant [40 x i8] c"The run mode { RUN-NONINTERACTIVE (1) }\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"total-steps\00", align 1
@.str.37 = private unnamed_addr constant [67 x i8] c"total number of steps (# of layers-1 to apply the related plug-in)\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"current-step\00", align 1
@.str.39 = private unnamed_addr constant [96 x i8] c"current (for linear iterations this is the layerstack position, otherwise some value inbetween)\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"len-struct\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"length of stored data structure with id is equal to the plug_in  proc_name\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"plug-in-curve-bend\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"Bend the image using two control curves\00", align 1
@.str.44 = private unnamed_addr constant [771 x i8] c"This plug-in does bend the active layer If there is a current selection it is copied to floating selection and the curve_bend distortion is done on the floating selection. If work_on_copy parameter is TRUE, the curve_bend distortion is done on a copy of the active layer (or floating selection). The upper and lower edges are bent in shape of 2 spline curves. both (upper and lower) curves are determined by upto 17 points or by 256 Y-Values if curve_type == 1 (freehand mode) If rotation is not 0, the layer is rotated before and rotated back after the bend operation. This enables bending in other directions than vertical. bending usually changes the size of the handled layer. this plugin sets the offsets of the handled layer to keep its center at the same position\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Wolfgang Hofer (hof@hotbot.com)\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Wolfgang Hofer\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"v1.3.18 (2003/08/26)\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"_Curve Bend...\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"plug_in_curve_bend_Iterator\00", align 1
@.str.52 = private unnamed_addr constant [103 x i8] c"This procedure calculates the modified values for one iterationstep for the call of plug_in_curve_bend\00", align 1
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.54 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"BEND_DEBUG\00", align 1
@gb_debug = internal global i32 0, align 4
@.str.57 = private unnamed_addr constant [17 x i8] c"\0A\0ADEBUG: run %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"plug_in_curve_bend_ITER_FROM\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"plug_in_curve_bend_ITER_TO\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.61 = private unnamed_addr constant [64 x i8] c"Can operate on layers only (but was called on channel or mask).\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"Cannot operate on layers with masks.\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"Cannot operate on empty selections.\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"curve-bend\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Curve Bend\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"gimp-curve-bend\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"_Preview Once\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"Automatic pre_view\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"Rotat_e:\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"Smoo_thing\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"_Antialiasing\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"Work on cop_y\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"Modify Curves\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"Curve for Border\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"_Upper\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"_Lower\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"Curve Type\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"Smoot_h\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"_Free\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"_Copy\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"Copy the active curve to the other border\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"_Mirror\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"Mirror the active curve to the other border\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"S_wap\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"Swap the two curves\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"Reset the active curve\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"Load the curves from a file\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"Save the curves to a file\00", align 1
@bender_graph_events.cursor_type = internal global i32 132, align 4
@CR_basis = internal global [4 x [4 x double]] [[4 x double] [double -5.000000e-01, double 1.500000e+00, double -1.500000e+00, double 5.000000e-01], [4 x double] [double 1.000000e+00, double -2.500000e+00, double 2.000000e+00, double -5.000000e-01], [4 x double] [double -5.000000e-01, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00]], align 16
@.str.102 = private unnamed_addr constant [35 x i8] c"bender_plot_curve xmax:%d ymax:%d\0A\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"outline: %d  cX: %d cY: %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"Load Curve Points from File\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c"Error while reading '%s': %s\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"POINTFILE_CURVE_BEND\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"POINTS\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"%f %f %f %f\00", align 1
@.str.112 = private unnamed_addr constant [47 x i8] c"warnig: BAD points[%d] in file %s are ignored\0A\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"VAL_Y\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.115 = private unnamed_addr constant [47 x i8] c"warnig: BAD y_vals[%d] in file %s are ignored\0A\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"Save Curve Points to File\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"curve_bend.points\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"VERSION 1.0\0A\0A\00", align 1
@.str.122 = private unnamed_addr constant [62 x i8] c"# points for upper and lower smooth curve (0.0 <= pt <= 1.0)\0A\00", align 1
@.str.123 = private unnamed_addr constant [62 x i8] c"# there are upto 17 points where unused points are set to -1\0A\00", align 1
@.str.124 = private unnamed_addr constant [49 x i8] c"#       UPPERX     UPPERY      LOWERX    LOWERY\0A\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.126 = private unnamed_addr constant [32 x i8] c"%s %+.6f  %+.6f   %+.6f  %+.6f\0A\00", align 1
@.str.127 = private unnamed_addr constant [60 x i8] c"# y values for upper/lower freehand curve (0 <= y <= 255) \0A\00", align 1
@.str.128 = private unnamed_addr constant [39 x i8] c"# there must be exactly 256 y values \0A\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"#     UPPER_Y  LOWER_Y\0A\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"%s %3d  %3d\0A\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"preview_original\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"curve_bend_dummylayer\00", align 1
@.str.133 = private unnamed_addr constant [32 x i8] c"p_main_bend  l_tmp_layer_id %d\0A\00", align 1
@.str.134 = private unnamed_addr constant [24 x i8] c"p_main_bend rotate: %f\0A\00", align 1
@.str.135 = private unnamed_addr constant [30 x i8] c"p_main_bend: l_dst_height:%d\0A\00", align 1
@.str.136 = private unnamed_addr constant [29 x i8] c"p_main_bend: DONE add layer\0A\00", align 1
@.str.137 = private unnamed_addr constant [32 x i8] c"p_main_bend: DONE layer resize\0A\00", align 1
@.str.138 = private unnamed_addr constant [33 x i8] c"p_main_bend: DONE vertical bend\0A\00", align 1
@.str.139 = private unnamed_addr constant [29 x i8] c"p_main_bend: DONE bend main\0A\00", align 1
@.str.140 = private unnamed_addr constant [59 x i8] c"Error: gimp_drawable_transform_rotate_default call failed\0A\00", align 1
@.str.141 = private unnamed_addr constant [39 x i8] c"p_bender_calculate_iter_curve NORMAL1\0A\00", align 1
@.str.142 = private unnamed_addr constant [42 x i8] c"p_bender_calculate_iter_curve ITERmode 1\0A\00", align 1
@p_add_layer.l_new_drawable = internal global %struct._GimpDrawable* null, align 8
@.str.143 = private unnamed_addr constant [5 x i8] c"%s_b\00", align 1
@.str.144 = private unnamed_addr constant [36 x i8] c"p_add_layer: cant get new_drawable\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([771 x i8], [771 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 1, i32 20, i32 1, %struct._GimpParamDef* getelementptr inbounds ([20 x %struct._GimpParamDef], [20 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* null, i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args_iter, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %l_env = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  %l_active_drawable = alloca %struct._GimpDrawable*, align 8
  %l_active_drawable_id = alloca i32, align 4
  %l_image_id = alloca i32, align 4
  %l_layer_id = alloca i32, align 4
  %l_layer_mask_id = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %len_struct = alloca i32, align 4
  %total_steps = alloca i32, align 4
  %current_step = alloca double, align 8
  %bval = alloca %struct._BenderValues, align 8
  %bval_from = alloca %struct._BenderValues, align 8
  %bval_to = alloca %struct._BenderValues, align 8
  %l_bent_layer_id = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %l_active_drawable, align 8
  store i32 -1, i32* %l_active_drawable_id, align 4
  store i32 -1, i32* %l_image_id, align 4
  store i32 -1, i32* %l_layer_id, align 4
  store i32 -1, i32* %l_layer_mask_id, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct._BenderDialog* null, %struct._BenderDialog** %cd, align 8
  %call4 = call i8* @g_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0))
  store i8* %call4, i8** %l_env, align 8
  %2 = load i8*, i8** %l_env, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %do.end
  %3 = load i8*, i8** %l_env, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv, 110
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8*, i8** %l_env, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 78
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* @gb_debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %do.end
  %7 = load i32, i32* @gb_debug, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.11
  %8 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i8* %8)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.11
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 14, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  store i32 -1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %10 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %10, align 4
  %11 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %11, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %call14 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0)) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.46

if.then.17:                                       ; preds = %if.end.13
  %13 = load i32, i32* %run_mode, align 4
  %cmp18 = icmp eq i32 %13, 1
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.44

land.lhs.true.20:                                 ; preds = %if.then.17
  %14 = load i32, i32* %nparams.addr, align 4
  %cmp21 = icmp eq i32 %14, 4
  br i1 %cmp21, label %if.then.23, label %if.else.44

if.then.23:                                       ; preds = %land.lhs.true.20
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 1
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_int3226 = bitcast %union._GimpParamData* %data25 to i32*
  %16 = load i32, i32* %d_int3226, align 4
  store i32 %16, i32* %total_steps, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 2
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data28 to double*
  %18 = load double, double* %d_float, align 8
  store double %18, double* %current_step, align 8
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 3
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_int3231 = bitcast %union._GimpParamData* %data30 to i32*
  %20 = load i32, i32* %d_int3231, align 4
  store i32 %20, i32* %len_struct, align 4
  %21 = load i32, i32* %len_struct, align 4
  %conv32 = sext i32 %21 to i64
  %cmp33 = icmp eq i64 %conv32, 1096
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.23
  %22 = bitcast %struct._BenderValues* %bval_from to i8*
  %call36 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0), i8* %22)
  %23 = bitcast %struct._BenderValues* %bval_to to i8*
  %call37 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* %23)
  %24 = bitcast %struct._BenderValues* %bval to i8*
  %25 = bitcast %struct._BenderValues* %bval_from to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 1096, i32 8, i1 false)
  %rotation = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %bval, i32 0, i32 6
  %rotation38 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %bval_from, i32 0, i32 6
  %26 = load double, double* %rotation38, align 8
  %rotation39 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %bval_to, i32 0, i32 6
  %27 = load double, double* %rotation39, align 8
  %28 = load i32, i32* %total_steps, align 4
  %29 = load double, double* %current_step, align 8
  call void @p_delta_gdouble(double* %rotation, double %26, double %27, i32 %28, double %29)
  %30 = load i32, i32* %total_steps, align 4
  %total_steps40 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %bval, i32 0, i32 7
  store i32 %30, i32* %total_steps40, align 4
  %31 = load double, double* %current_step, align 8
  %current_step41 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %bval, i32 0, i32 8
  store double %31, double* %current_step41, align 8
  %32 = bitcast %struct._BenderValues* %bval to i8*
  %call42 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* %32, i32 1096)
  br label %if.end.43

if.else:                                          ; preds = %if.then.23
  store i32 1, i32* %status, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.35
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.20, %if.then.17
  store i32 1, i32* %status, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.46:                                        ; preds = %if.end.13
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 1
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_int3249 = bitcast %union._GimpParamData* %data48 to i32*
  %35 = load i32, i32* %d_int3249, align 4
  store i32 %35, i32* %l_image_id, align 4
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 2
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data51 to i32*
  %37 = load i32, i32* %d_drawable, align 4
  store i32 %37, i32* %l_layer_id, align 4
  %38 = load i32, i32* %l_layer_id, align 4
  %call52 = call i32 @gimp_item_is_layer(i32 %38)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.56, label %if.then.54

if.then.54:                                       ; preds = %if.end.46
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.61, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* %call55)
  store i32 0, i32* %status, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.46
  %39 = load i32, i32* %l_layer_id, align 4
  %call57 = call i32 @gimp_layer_get_mask(i32 %39)
  store i32 %call57, i32* %l_layer_mask_id, align 4
  %40 = load i32, i32* %l_layer_mask_id, align 4
  %cmp58 = icmp sge i32 %40, 0
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* %call61)
  store i32 0, i32* %status, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.56
  %41 = load i32, i32* %l_image_id, align 4
  %42 = load i32, i32* %l_layer_id, align 4
  %call63 = call i32 @p_if_selection_float_it(i32 %41, i32 %42)
  store i32 %call63, i32* %l_active_drawable_id, align 4
  %43 = load i32, i32* %l_active_drawable_id, align 4
  %cmp64 = icmp slt i32 %43, 0
  br i1 %cmp64, label %if.then.66, label %if.else.68

if.then.66:                                       ; preds = %if.end.62
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* %call67)
  store i32 0, i32* %status, align 4
  br label %if.end.70

if.else.68:                                       ; preds = %if.end.62
  %44 = load i32, i32* %l_active_drawable_id, align 4
  %call69 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %44)
  store %struct._GimpDrawable* %call69, %struct._GimpDrawable** %l_active_drawable, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.66
  %45 = load i32, i32* %status, align 4
  %cmp71 = icmp eq i32 %45, 3
  br i1 %cmp71, label %if.then.73, label %if.end.146

if.then.73:                                       ; preds = %if.end.70
  %46 = load i32, i32* %run_mode, align 4
  switch i32 %46, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.75
    i32 2, label %sw.bb.141
  ]

sw.bb:                                            ; preds = %if.then.73
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %l_active_drawable, align 8
  %call74 = call %struct._BenderDialog* @do_dialog(%struct._GimpDrawable* %47)
  store %struct._BenderDialog* %call74, %struct._BenderDialog** %cd, align 8
  %48 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %show_progress = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %48, i32 0, i32 23
  store i32 1, i32* %show_progress, align 4
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.then.73
  %49 = load i32, i32* %nparams.addr, align 4
  %cmp76 = icmp sge i32 %49, 20
  br i1 %cmp76, label %if.then.78, label %if.else.139

if.then.78:                                       ; preds = %sw.bb.75
  %call79 = call noalias i8* @g_malloc_n(i64 1, i64 1272)
  %50 = bitcast i8* %call79 to %struct._BenderDialog*
  store %struct._BenderDialog* %50, %struct._BenderDialog** %cd, align 8
  %51 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %run = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %51, i32 0, i32 34
  store i32 1, i32* %run, align 4
  %52 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %show_progress80 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %52, i32 0, i32 23
  store i32 1, i32* %show_progress80, align 4
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %l_active_drawable, align 8
  %54 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %drawable = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %54, i32 0, i32 8
  store %struct._GimpDrawable* %53, %struct._GimpDrawable** %drawable, align 8
  %55 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %55, i64 3
  %data82 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx81, i32 0, i32 1
  %d_float83 = bitcast %union._GimpParamData* %data82 to double*
  %56 = load double, double* %d_float83, align 8
  %57 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotation84 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %57, i32 0, i32 27
  store double %56, double* %rotation84, align 8
  %58 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %58, i64 4
  %data86 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx85, i32 0, i32 1
  %d_int3287 = bitcast %union._GimpParamData* %data86 to i32*
  %59 = load i32, i32* %d_int3287, align 4
  %cmp88 = icmp ne i32 %59, 0
  %conv89 = zext i1 %cmp88 to i32
  %60 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %smoothing = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %60, i32 0, i32 24
  store i32 %conv89, i32* %smoothing, align 4
  %61 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx90 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %61, i64 5
  %data91 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx90, i32 0, i32 1
  %d_int3292 = bitcast %union._GimpParamData* %data91 to i32*
  %62 = load i32, i32* %d_int3292, align 4
  %cmp93 = icmp ne i32 %62, 0
  %conv94 = zext i1 %cmp93 to i32
  %63 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %antialias = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %63, i32 0, i32 25
  store i32 %conv94, i32* %antialias, align 4
  %64 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx95 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %64, i64 6
  %data96 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx95, i32 0, i32 1
  %d_int3297 = bitcast %union._GimpParamData* %data96 to i32*
  %65 = load i32, i32* %d_int3297, align 4
  %cmp98 = icmp ne i32 %65, 0
  %conv99 = zext i1 %cmp98 to i32
  %66 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %work_on_copy = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %66, i32 0, i32 26
  store i32 %conv99, i32* %work_on_copy, align 4
  %67 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %67, i64 7
  %data101 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx100, i32 0, i32 1
  %d_int32102 = bitcast %union._GimpParamData* %data101 to i32*
  %68 = load i32, i32* %d_int32102, align 4
  %cmp103 = icmp ne i32 %68, 0
  %conv104 = zext i1 %cmp103 to i32
  %69 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %69, i32 0, i32 16
  store i32 %conv104, i32* %curve_type, align 4
  %70 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %71 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx105 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %71, i64 8
  %data106 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx105, i32 0, i32 1
  %d_int32107 = bitcast %union._GimpParamData* %data106 to i32*
  %72 = load i32, i32* %d_int32107, align 4
  %73 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %73, i64 9
  %data109 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx108, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data109 to double**
  %74 = load double*, double** %d_floatarray, align 8
  call void @p_copy_points(%struct._BenderDialog* %70, i32 0, i32 0, i32 %72, double* %74)
  %75 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %76 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %76, i64 10
  %data111 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx110, i32 0, i32 1
  %d_int32112 = bitcast %union._GimpParamData* %data111 to i32*
  %77 = load i32, i32* %d_int32112, align 4
  %78 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %78, i64 11
  %data114 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx113, i32 0, i32 1
  %d_floatarray115 = bitcast %union._GimpParamData* %data114 to double**
  %79 = load double*, double** %d_floatarray115, align 8
  call void @p_copy_points(%struct._BenderDialog* %75, i32 0, i32 1, i32 %77, double* %79)
  %80 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %81 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx116 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %81, i64 12
  %data117 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx116, i32 0, i32 1
  %d_int32118 = bitcast %union._GimpParamData* %data117 to i32*
  %82 = load i32, i32* %d_int32118, align 4
  %83 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %83, i64 13
  %data120 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx119, i32 0, i32 1
  %d_floatarray121 = bitcast %union._GimpParamData* %data120 to double**
  %84 = load double*, double** %d_floatarray121, align 8
  call void @p_copy_points(%struct._BenderDialog* %80, i32 1, i32 0, i32 %82, double* %84)
  %85 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %86 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %86, i64 14
  %data123 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx122, i32 0, i32 1
  %d_int32124 = bitcast %union._GimpParamData* %data123 to i32*
  %87 = load i32, i32* %d_int32124, align 4
  %88 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx125 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %88, i64 15
  %data126 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx125, i32 0, i32 1
  %d_floatarray127 = bitcast %union._GimpParamData* %data126 to double**
  %89 = load double*, double** %d_floatarray127, align 8
  call void @p_copy_points(%struct._BenderDialog* %85, i32 1, i32 1, i32 %87, double* %89)
  %90 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %91 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx128 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %91, i64 16
  %data129 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx128, i32 0, i32 1
  %d_int32130 = bitcast %union._GimpParamData* %data129 to i32*
  %92 = load i32, i32* %d_int32130, align 4
  %93 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %93, i64 17
  %data132 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx131, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data132 to i8**
  %94 = load i8*, i8** %d_int8array, align 8
  call void @p_copy_yval(%struct._BenderDialog* %90, i32 0, i32 %92, i8* %94)
  %95 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %96 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx133 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %96, i64 18
  %data134 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx133, i32 0, i32 1
  %d_int32135 = bitcast %union._GimpParamData* %data134 to i32*
  %97 = load i32, i32* %d_int32135, align 4
  %98 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %98, i64 19
  %data137 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx136, i32 0, i32 1
  %d_int8array138 = bitcast %union._GimpParamData* %data137 to i8**
  %99 = load i8*, i8** %d_int8array138, align 8
  call void @p_copy_yval(%struct._BenderDialog* %95, i32 1, i32 %97, i8* %99)
  br label %if.end.140

if.else.139:                                      ; preds = %sw.bb.75
  store i32 1, i32* %status, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.139, %if.then.78
  br label %sw.epilog

sw.bb.141:                                        ; preds = %if.then.73
  %call142 = call noalias i8* @g_malloc_n(i64 1, i64 1272)
  %100 = bitcast i8* %call142 to %struct._BenderDialog*
  store %struct._BenderDialog* %100, %struct._BenderDialog** %cd, align 8
  %101 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %run143 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %101, i32 0, i32 34
  store i32 1, i32* %run143, align 4
  %102 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %show_progress144 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %102, i32 0, i32 23
  store i32 1, i32* %show_progress144, align 4
  %103 = load %struct._GimpDrawable*, %struct._GimpDrawable** %l_active_drawable, align 8
  %104 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %drawable145 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %104, i32 0, i32 8
  store %struct._GimpDrawable* %103, %struct._GimpDrawable** %drawable145, align 8
  %105 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @p_retrieve_values(%struct._BenderDialog* %105)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.73
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.141, %if.end.140, %sw.bb
  br label %if.end.146

if.end.146:                                       ; preds = %sw.epilog, %if.end.70
  %106 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %tobool147 = icmp ne %struct._BenderDialog* %106, null
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %if.end.146
  store i32 0, i32* %status, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.end.146
  %107 = load i32, i32* %status, align 4
  %cmp150 = icmp eq i32 %107, 3
  br i1 %cmp150, label %if.then.152, label %if.end.172

if.then.152:                                      ; preds = %if.end.149
  %108 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %run153 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %108, i32 0, i32 34
  %109 = load i32, i32* %run153, align 4
  %tobool154 = icmp ne i32 %109, 0
  br i1 %tobool154, label %if.then.155, label %if.else.165

if.then.155:                                      ; preds = %if.then.152
  %110 = load i32, i32* %l_image_id, align 4
  %call156 = call i32 @gimp_image_undo_group_start(i32 %110)
  %111 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %112 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %drawable157 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %112, i32 0, i32 8
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable157, align 8
  %114 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %work_on_copy158 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %114, i32 0, i32 26
  %115 = load i32, i32* %work_on_copy158, align 4
  %call159 = call i32 @p_main_bend(%struct._BenderDialog* %111, %struct._GimpDrawable* %113, i32 %115)
  store i32 %call159, i32* %l_bent_layer_id, align 4
  %116 = load i32, i32* %l_image_id, align 4
  %call160 = call i32 @gimp_image_undo_group_end(i32 %116)
  %117 = load i32, i32* %run_mode, align 4
  %cmp161 = icmp eq i32 %117, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.155
  %118 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @p_store_values(%struct._BenderDialog* %118)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.then.155
  %119 = load i32, i32* %l_bent_layer_id, align 4
  store i32 %119, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.166

if.else.165:                                      ; preds = %if.then.152
  store i32 4, i32* %status, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.165, %if.end.164
  %120 = load i32, i32* %run_mode, align 4
  %cmp167 = icmp ne i32 %120, 1
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %if.end.166
  %call170 = call i32 @gimp_displays_flush()
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %if.end.166
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.149
  %121 = load i32, i32* %status, align 4
  %cmp173 = icmp ne i32 %121, 3
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.178

land.lhs.true.175:                                ; preds = %if.end.172
  %122 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool176 = icmp ne %struct._GError* %122, null
  br i1 %tobool176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %land.lhs.true.175
  %123 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %123, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %124 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %124, i32 0, i32 2
  %125 = load i8*, i8** %message, align 8
  store i8* %125, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %land.lhs.true.175, %if.end.172
  %126 = load i32, i32* %status, align 4
  store i32 %126, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.178, %if.end.45
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

declare i8* @g_getenv(i8*) #1

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @p_delta_gdouble(double* %val, double %val_from, double %val_to, i32 %total_steps, double %current_step) #0 {
entry:
  %val.addr = alloca double*, align 8
  %val_from.addr = alloca double, align 8
  %val_to.addr = alloca double, align 8
  %total_steps.addr = alloca i32, align 4
  %current_step.addr = alloca double, align 8
  %delta = alloca double, align 8
  store double* %val, double** %val.addr, align 8
  store double %val_from, double* %val_from.addr, align 8
  store double %val_to, double* %val_to.addr, align 8
  store i32 %total_steps, i32* %total_steps.addr, align 4
  store double %current_step, double* %current_step.addr, align 8
  %0 = load i32, i32* %total_steps.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %val_to.addr, align 8
  %2 = load double, double* %val_from.addr, align 8
  %sub = fsub double %1, %2
  %3 = load i32, i32* %total_steps.addr, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %sub, %conv
  %4 = load i32, i32* %total_steps.addr, align 4
  %conv1 = sitofp i32 %4 to double
  %5 = load double, double* %current_step.addr, align 8
  %sub2 = fsub double %conv1, %5
  %mul = fmul double %div, %sub2
  store double %mul, double* %delta, align 8
  %6 = load double, double* %val_from.addr, align 8
  %7 = load double, double* %delta, align 8
  %add = fadd double %6, %7
  %8 = load double*, double** %val.addr, align 8
  store double %add, double* %8, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_item_is_layer(i32) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_layer_get_mask(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @p_if_selection_float_it(i32 %image_id, i32 %layer_id) #0 {
entry:
  %retval = alloca i32, align 4
  %image_id.addr = alloca i32, align 4
  %layer_id.addr = alloca i32, align 4
  %l_sel_channel_id = alloca i32, align 4
  %l_x1 = alloca i32, align 4
  %l_x2 = alloca i32, align 4
  %l_y1 = alloca i32, align 4
  %l_y2 = alloca i32, align 4
  %non_empty = alloca i32, align 4
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %layer_id, i32* %layer_id.addr, align 4
  %0 = load i32, i32* %layer_id.addr, align 4
  %call = call i32 @gimp_layer_is_floating_sel(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.10, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %image_id.addr, align 4
  %call1 = call i32 @gimp_image_get_selection(i32 %1)
  store i32 %call1, i32* %l_sel_channel_id, align 4
  %2 = load i32, i32* %image_id.addr, align 4
  %call2 = call i32 @gimp_selection_bounds(i32 %2, i32* %non_empty, i32* %l_x1, i32* %l_y1, i32* %l_x2, i32* %l_y2)
  %3 = load i32, i32* %non_empty, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %l_sel_channel_id, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %layer_id.addr, align 4
  %call5 = call i32 @gimp_edit_copy(i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %6 = load i32, i32* %layer_id.addr, align 4
  %call8 = call i32 @gimp_edit_paste(i32 %6, i32 0)
  store i32 %call8, i32* %layer_id.addr, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %7 = load i32, i32* %layer_id.addr, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._BenderDialog* @do_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i32 1)
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._BenderDialog* @bender_new_dialog(%struct._GimpDrawable* %0)
  store %struct._BenderDialog* %call, %struct._BenderDialog** %cd, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview_layer_id1 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 29
  %call1 = call i32 @p_create_pv_image(%struct._GimpDrawable* %1, i32* %preview_layer_id1)
  %3 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview_image_id = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %3, i32 0, i32 28
  store i32 %call1, i32* %preview_image_id, align 4
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview_layer_id2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 30
  store i32 -1, i32* %preview_layer_id2, align 4
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 0
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %call2 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell3 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 0
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %shell3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %9, i32 21)
  call void @gtk_main()
  call void @gdk_flush()
  %10 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview_image_id4 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %10, i32 0, i32 28
  %11 = load i32, i32* %preview_image_id4, align 4
  %call5 = call i32 @gimp_image_delete(i32 %11)
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview_image_id6 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 28
  store i32 -1, i32* %preview_image_id6, align 4
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview_layer_id17 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 29
  store i32 -1, i32* %preview_layer_id17, align 4
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview_layer_id28 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 30
  store i32 -1, i32* %preview_layer_id28, align 4
  %15 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  ret %struct._BenderDialog* %15
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @p_copy_points(%struct._BenderDialog* %cd, i32 %outline, i32 %xy, i32 %argc, double* %floatarray) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %outline.addr = alloca i32, align 4
  %xy.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %floatarray.addr = alloca double*, align 8
  %j = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %outline, i32* %outline.addr, align 4
  store i32 %xy, i32* %xy.addr, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store double* %floatarray, double** %floatarray.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %xy.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load i32, i32* %outline.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom1
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx3, i32 0, i64 %idxprom
  store double -1.000000e+00, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.17, %for.end
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body.7, label %for.end.19

for.body.7:                                       ; preds = %for.cond.5
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load double*, double** %floatarray.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %9, i64 %idxprom8
  %10 = load double, double* %arrayidx9, align 8
  %11 = load i32, i32* %xy.addr, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i32, i32* %outline.addr, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points13 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 17
  %arrayidx14 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points13, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx14, i32 0, i64 %idxprom11
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx15, i32 0, i64 %idxprom10
  store double %10, double* %arrayidx16, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.7
  %15 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.5

for.end.19:                                       ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_copy_yval(%struct._BenderDialog* %cd, i32 %outline, i32 %argc, i8* %int8array) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %outline.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %int8array.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %fill = alloca i8, align 1
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %outline, i32* %outline.addr, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8* %int8array, i8** %int8array.addr, align 8
  store i8 127, i8* %fill, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %int8array.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32, i32* %outline.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %8, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx4, i32 0, i64 %idxprom2
  store i8 %5, i8* %arrayidx5, align 1
  store i8 %5, i8* %fill, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load i8, i8* %fill, align 1
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %outline.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve8 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve8, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx9, i32 0, i64 %idxprom6
  store i8 %9, i8* %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_retrieve_values(%struct._BenderDialog* %cd) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %l_bval = alloca %struct._BenderValues, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  %total_steps = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %l_bval, i32 0, i32 7
  store i32 0, i32* %total_steps, align 4
  %current_step = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %l_bval, i32 0, i32 8
  store double -4.444000e+02, double* %current_step, align 8
  %0 = bitcast %struct._BenderValues* %l_bval to i8*
  %call = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* %0)
  %total_steps1 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %l_bval, i32 0, i32 7
  %1 = load i32, i32* %total_steps1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_from = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 31
  store %struct._BenderValues* null, %struct._BenderValues** %bval_from, align 8
  %3 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_to = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %3, i32 0, i32 32
  store %struct._BenderValues* null, %struct._BenderValues** %bval_to, align 8
  %current_step2 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %l_bval, i32 0, i32 8
  %4 = load double, double* %current_step2, align 8
  %cmp3 = fcmp une double %4, -4.444000e+02
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @p_cd_from_bval(%struct._BenderDialog* %5, %struct._BenderValues* %l_bval)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.17

if.else:                                          ; preds = %entry
  %call5 = call noalias i8* @g_malloc_n(i64 1, i64 1096)
  %6 = bitcast i8* %call5 to %struct._BenderValues*
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_from6 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 31
  store %struct._BenderValues* %6, %struct._BenderValues** %bval_from6, align 8
  %call7 = call noalias i8* @g_malloc_n(i64 1, i64 1096)
  %8 = bitcast i8* %call7 to %struct._BenderValues*
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_to8 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %9, i32 0, i32 32
  store %struct._BenderValues* %8, %struct._BenderValues** %bval_to8, align 8
  %call9 = call noalias i8* @g_malloc_n(i64 1, i64 1096)
  %10 = bitcast i8* %call9 to %struct._BenderValues*
  %11 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %11, i32 0, i32 33
  store %struct._BenderValues* %10, %struct._BenderValues** %bval_curr, align 8
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr10 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 33
  %13 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr10, align 8
  %14 = bitcast %struct._BenderValues* %13 to i8*
  %15 = bitcast %struct._BenderValues* %l_bval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 1096, i32 8, i1 false)
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_from11 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 31
  %17 = load %struct._BenderValues*, %struct._BenderValues** %bval_from11, align 8
  %18 = bitcast %struct._BenderValues* %17 to i8*
  %call12 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0), i8* %18)
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_to13 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 32
  %20 = load %struct._BenderValues*, %struct._BenderValues** %bval_to13, align 8
  %21 = bitcast %struct._BenderValues* %20 to i8*
  %call14 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* %21)
  %22 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr15 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %22, i32 0, i32 33
  %23 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr15, align 8
  %24 = bitcast %struct._BenderValues* %23 to i8*
  %25 = bitcast %struct._BenderValues* %l_bval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 1096, i32 8, i1 false)
  %26 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %27 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr16 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %27, i32 0, i32 33
  %28 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr16, align 8
  call void @p_cd_from_bval(%struct._BenderDialog* %26, %struct._BenderValues* %28)
  %29 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %work_on_copy = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %29, i32 0, i32 26
  store i32 0, i32* %work_on_copy, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end
  ret void
}

declare i32 @gimp_image_undo_group_start(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @p_main_bend(%struct._BenderDialog* %cd, %struct._GimpDrawable* %original_drawable, i32 %work_on_copy) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %original_drawable.addr = alloca %struct._GimpDrawable*, align 8
  %work_on_copy.addr = alloca i32, align 4
  %l_src_gdrw = alloca %struct.t_GDRW, align 8
  %l_dst_gdrw = alloca %struct.t_GDRW, align 8
  %dst_drawable = alloca %struct._GimpDrawable*, align 8
  %src_drawable = alloca %struct._GimpDrawable*, align 8
  %l_dst_height = alloca i32, align 4
  %l_image_id = alloca i32, align 4
  %l_tmp_layer_id = alloca i32, align 4
  %l_interpolation = alloca i32, align 4
  %l_offset_x = alloca i32, align 4
  %l_offset_y = alloca i32, align 4
  %l_center_x = alloca i32, align 4
  %l_center_y = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store %struct._GimpDrawable* %original_drawable, %struct._GimpDrawable** %original_drawable.addr, align 8
  store i32 %work_on_copy, i32* %work_on_copy.addr, align 4
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %smoothing = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 24
  %1 = load i32, i32* %smoothing, align 4
  store i32 %1, i32* %l_interpolation, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_item_get_image(i32 %3)
  store i32 %call, i32* %l_image_id, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_offsets(i32 %5, i32* %l_offset_x, i32* %l_offset_y)
  %6 = load i32, i32* %l_offset_x, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_width(i32 %8)
  %div = sdiv i32 %call4, 2
  %add = add nsw i32 %6, %div
  store i32 %add, i32* %l_center_x, align 4
  %9 = load i32, i32* %l_offset_y, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_drawable_height(i32 %11)
  %div7 = sdiv i32 %call6, 2
  %add8 = add nsw i32 %9, %div7
  store i32 %add8, i32* %l_center_y, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_layer_copy(i32 %13)
  store i32 %call10, i32* %l_tmp_layer_id, align 4
  %14 = load i32, i32* %l_image_id, align 4
  %15 = load i32, i32* %l_tmp_layer_id, align 4
  %call11 = call i32 @gimp_image_insert_layer(i32 %14, i32 %15, i32 -1, i32 0)
  %16 = load i32, i32* %l_tmp_layer_id, align 4
  %call12 = call i32 @gimp_item_set_visible(i32 %16, i32 0)
  %17 = load i32, i32* %l_tmp_layer_id, align 4
  %call13 = call i32 @gimp_item_set_name(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i32 0, i32 0))
  %18 = load i32, i32* @gb_debug, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %l_tmp_layer_id, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.133, i32 0, i32 0), i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rotation = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %20, i32 0, i32 27
  %21 = load double, double* %rotation, align 8
  %cmp = fcmp une double %21, 0.000000e+00
  br i1 %cmp, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.end
  %22 = load i32, i32* @gb_debug, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.15
  %23 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rotation18 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %23, i32 0, i32 27
  %24 = load double, double* %rotation18, align 8
  %conv = fptrunc double %24 to float
  %conv19 = fpext float %conv to double
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.134, i32 0, i32 0), double %conv19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.15
  %25 = load i32, i32* %l_image_id, align 4
  %26 = load i32, i32* %l_tmp_layer_id, align 4
  %27 = load i32, i32* %l_interpolation, align 4
  %28 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rotation22 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %28, i32 0, i32 27
  %29 = load double, double* %rotation22, align 8
  %call23 = call i32 @p_gimp_rotate(i32 %25, i32 %26, i32 %27, double %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.end
  %30 = load i32, i32* %l_tmp_layer_id, align 4
  %call25 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %30)
  store %struct._GimpDrawable* %call25, %struct._GimpDrawable** %src_drawable, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 1
  %32 = load i32, i32* %width, align 4
  %sub = sub i32 %32, 1
  store i32 %sub, i32* %ymax, align 4
  store i32 %sub, i32* %xmax, align 4
  %33 = load i32, i32* %xmax, align 4
  %add26 = add nsw i32 1, %33
  %conv27 = sext i32 %add26 to i64
  %call28 = call noalias i8* @g_malloc_n(i64 %conv27, i64 4)
  %34 = bitcast i8* %call28 to i32*
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %35, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr, i32 0, i64 0
  store i32* %34, i32** %arrayidx, align 8
  %36 = load i32, i32* %xmax, align 4
  %add29 = add nsw i32 1, %36
  %conv30 = sext i32 %add29 to i64
  %call31 = call noalias i8* @g_malloc_n(i64 %conv30, i64 4)
  %37 = bitcast i8* %call31 to i32*
  %38 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr32 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %38, i32 0, i32 19
  %arrayidx33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr32, i32 0, i64 1
  store i32* %37, i32** %arrayidx33, align 8
  %39 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %40 = load i32, i32* %xmax, align 4
  %41 = load i32, i32* %ymax, align 4
  call void @p_bender_calculate_iter_curve(%struct._BenderDialog* %39, i32 %40, i32 %41)
  %42 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %43 = load i32, i32* %xmax, align 4
  call void @bender_init_min_max(%struct._BenderDialog* %42, i32 %43)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 2
  %45 = load i32, i32* %height, align 4
  %46 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %width34 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 1
  %48 = load i32, i32* %width34, align 4
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %height35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 2
  %50 = load i32, i32* %height35, align 4
  %call36 = call i32 @p_upper_curve_extend(%struct._BenderDialog* %46, i32 %48, i32 %50)
  %add37 = add i32 %45, %call36
  %51 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %width38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 1
  %53 = load i32, i32* %width38, align 4
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %height39 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %54, i32 0, i32 2
  %55 = load i32, i32* %height39, align 4
  %call40 = call i32 @p_lower_curve_extend(%struct._BenderDialog* %51, i32 %53, i32 %55)
  %add41 = add i32 %add37, %call40
  store i32 %add41, i32* %l_dst_height, align 4
  %56 = load i32, i32* @gb_debug, align 4
  %tobool42 = icmp ne i32 %56, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.24
  %57 = load i32, i32* %l_dst_height, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.135, i32 0, i32 0), i32 %57)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.24
  %58 = load i32, i32* %work_on_copy.addr, align 4
  %tobool46 = icmp ne i32 %58, 0
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end.45
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %width48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %59, i32 0, i32 1
  %60 = load i32, i32* %width48, align 4
  %61 = load i32, i32* %l_dst_height, align 4
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %call49 = call %struct._GimpDrawable* @p_add_layer(i32 %60, i32 %61, %struct._GimpDrawable* %62)
  store %struct._GimpDrawable* %call49, %struct._GimpDrawable** %dst_drawable, align 8
  %63 = load i32, i32* @gb_debug, align 4
  %tobool50 = icmp ne i32 %63, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.47
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.136, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.47
  br label %if.end.70

if.else:                                          ; preds = %if.end.45
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id54 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %64, i32 0, i32 0
  %65 = load i32, i32* %drawable_id54, align 4
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %width55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %66, i32 0, i32 1
  %67 = load i32, i32* %width55, align 4
  %68 = load i32, i32* %l_dst_height, align 4
  %69 = load i32, i32* %l_offset_x, align 4
  %70 = load i32, i32* %l_offset_y, align 4
  %call56 = call i32 @gimp_layer_resize(i32 %65, i32 %67, i32 %68, i32 %69, i32 %70)
  %71 = load i32, i32* @gb_debug, align 4
  %tobool57 = icmp ne i32 %71, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.else
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.137, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.else
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %72, i32 0, i32 0
  %73 = load i32, i32* %drawable_id61, align 4
  %call62 = call i32 @gimp_drawable_has_alpha(i32 %73)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.67, label %if.then.64

if.then.64:                                       ; preds = %if.end.60
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id65 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %74, i32 0, i32 0
  %75 = load i32, i32* %drawable_id65, align 4
  %call66 = call i32 @gimp_layer_add_alpha(i32 %75)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.60
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %original_drawable.addr, align 8
  %drawable_id68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %76, i32 0, i32 0
  %77 = load i32, i32* %drawable_id68, align 4
  %call69 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %77)
  store %struct._GimpDrawable* %call69, %struct._GimpDrawable** %dst_drawable, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.67, %if.end.53
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  call void @p_clear_drawable(%struct._GimpDrawable* %78)
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  call void @p_init_gdrw(%struct.t_GDRW* %l_src_gdrw, %struct._GimpDrawable* %79, i32 0, i32 0)
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  call void @p_init_gdrw(%struct.t_GDRW* %l_dst_gdrw, %struct._GimpDrawable* %80, i32 1, i32 0)
  %81 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @p_vertical_bend(%struct._BenderDialog* %81, %struct.t_GDRW* %l_src_gdrw, %struct.t_GDRW* %l_dst_gdrw)
  %82 = load i32, i32* @gb_debug, align 4
  %tobool71 = icmp ne i32 %82, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.70
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.138, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.70
  call void @p_end_gdrw(%struct.t_GDRW* %l_src_gdrw)
  call void @p_end_gdrw(%struct.t_GDRW* %l_dst_gdrw)
  %83 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rotation75 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %83, i32 0, i32 27
  %84 = load double, double* %rotation75, align 8
  %cmp76 = fcmp une double %84, 0.000000e+00
  br i1 %cmp76, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %if.end.74
  %85 = load i32, i32* %l_image_id, align 4
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id79 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %86, i32 0, i32 0
  %87 = load i32, i32* %drawable_id79, align 4
  %88 = load i32, i32* %l_interpolation, align 4
  %89 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rotation80 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %89, i32 0, i32 27
  %90 = load double, double* %rotation80, align 8
  %sub81 = fsub double 3.600000e+02, %90
  %call82 = call i32 @p_gimp_rotate(i32 %85, i32 %87, i32 %88, double %sub81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %if.end.74
  %91 = load i32, i32* %l_center_x, align 4
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id84 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %92, i32 0, i32 0
  %93 = load i32, i32* %drawable_id84, align 4
  %call85 = call i32 @gimp_drawable_width(i32 %93)
  %div86 = sdiv i32 %call85, 2
  %sub87 = sub nsw i32 %91, %div86
  store i32 %sub87, i32* %l_offset_x, align 4
  %94 = load i32, i32* %l_center_y, align 4
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id88 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %95, i32 0, i32 0
  %96 = load i32, i32* %drawable_id88, align 4
  %call89 = call i32 @gimp_drawable_height(i32 %96)
  %div90 = sdiv i32 %call89, 2
  %sub91 = sub nsw i32 %94, %div90
  store i32 %sub91, i32* %l_offset_y, align 4
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id92 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %97, i32 0, i32 0
  %98 = load i32, i32* %drawable_id92, align 4
  %99 = load i32, i32* %l_offset_x, align 4
  %100 = load i32, i32* %l_offset_y, align 4
  %call93 = call i32 @gimp_layer_set_offsets(i32 %98, i32 %99, i32 %100)
  %101 = load i32, i32* %l_image_id, align 4
  %102 = load i32, i32* %l_tmp_layer_id, align 4
  %call94 = call i32 @gimp_image_remove_layer(i32 %101, i32 %102)
  %103 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr95 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %103, i32 0, i32 19
  %arrayidx96 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr95, i32 0, i64 0
  %104 = load i32*, i32** %arrayidx96, align 8
  %105 = bitcast i32* %104 to i8*
  call void @g_free(i8* %105)
  %106 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr97 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %106, i32 0, i32 19
  %arrayidx98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr97, i32 0, i64 1
  %107 = load i32*, i32** %arrayidx98, align 8
  %108 = bitcast i32* %107 to i8*
  call void @g_free(i8* %108)
  %109 = load i32, i32* @gb_debug, align 4
  %tobool99 = icmp ne i32 %109, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.83
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.139, i32 0, i32 0))
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.83
  %110 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  %drawable_id103 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %110, i32 0, i32 0
  %111 = load i32, i32* %drawable_id103, align 4
  ret i32 %111
}

declare i32 @gimp_image_undo_group_end(i32) #1

; Function Attrs: nounwind uwtable
define internal void @p_store_values(%struct._BenderDialog* %cd) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %l_bval = alloca %struct._BenderValues, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @p_cd_to_bval(%struct._BenderDialog* %0, %struct._BenderValues* %l_bval)
  %1 = bitcast %struct._BenderValues* %l_bval to i8*
  %call = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* %1, i32 1096)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_layer_is_floating_sel(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare i32 @gimp_selection_bounds(i32, i32*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_edit_copy(i32) #1

declare i32 @gimp_edit_paste(i32, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._BenderDialog* @bender_new_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %upper = alloca %struct._GtkWidget*, align 8
  %lower = alloca %struct._GtkWidget*, align 8
  %smooth = alloca %struct._GtkWidget*, align 8
  %freew = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GtkObject*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 1272)
  %0 = bitcast i8* %call to %struct._BenderDialog*
  store %struct._BenderDialog* %0, %struct._BenderDialog** %cd, align 8
  %1 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %1, i32 0, i32 11
  store i32 0, i32* %preview, align 4
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 16
  store i32 0, i32* %curve_type, align 4
  %3 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %pixmap = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %3, i32 0, i32 5
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %pixmap, align 8
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %filechooser = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %filechooser, align 8
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 10
  store i32 0, i32* %outline, align 4
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %show_progress = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 23
  store i32 0, i32* %show_progress, align 4
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %smoothing = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 24
  store i32 1, i32* %smoothing, align 4
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %antialias = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %8, i32 0, i32 25
  store i32 1, i32* %antialias, align 4
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %work_on_copy = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %9, i32 0, i32 26
  store i32 0, i32* %work_on_copy, align 4
  %10 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotation = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %10, i32 0, i32 27
  store double 0.000000e+00, double* %rotation, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %drawable1 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 8
  store %struct._GimpDrawable* %11, %struct._GimpDrawable** %drawable1, align 8
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %drawable2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_drawable_is_rgb(i32 %15)
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %color = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 9
  store i32 %call3, i32* %color, align 4
  %17 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %run = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %17, i32 0, i32 34
  store i32 0, i32* %run, align 4
  %18 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %bval_from = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %18, i32 0, i32 31
  store %struct._BenderValues* null, %struct._BenderValues** %bval_from, align 8
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %bval_to = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 32
  store %struct._BenderValues* null, %struct._BenderValues** %bval_to, align 8
  %20 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %bval_curr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %20, i32 0, i32 33
  store %struct._BenderValues* null, %struct._BenderValues** %bval_curr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %21 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %21, 2
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %22, 256
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %23 = load i32, i32* %j, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %24 to i64
  %25 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %25, i32 0, i32 18
  %arrayidx = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 127, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %27, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %28 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %grab_point = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %28, i32 0, i32 12
  store i32 -1, i32* %grab_point, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.52, %for.end.11
  %29 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %29, 2
  br i1 %cmp13, label %for.body.14, label %for.end.54

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.29, %for.body.14
  %30 = load i32, i32* %j, align 4
  %cmp16 = icmp slt i32 %30, 17
  br i1 %cmp16, label %for.body.17, label %for.end.31

for.body.17:                                      ; preds = %for.cond.15
  %31 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 17
  %arrayidx20 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx20, i32 0, i64 %idxprom18
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx21, i32 0, i64 0
  store double -1.000000e+00, double* %arrayidx22, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points25 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %36, i32 0, i32 17
  %arrayidx26 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points25, i32 0, i64 %idxprom24
  %arrayidx27 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx26, i32 0, i64 %idxprom23
  %arrayidx28 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx27, i32 0, i64 1
  store double -1.000000e+00, double* %arrayidx28, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.17
  %37 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond.15

for.end.31:                                       ; preds = %for.cond.15
  %38 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %38 to i64
  %39 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points33 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %39, i32 0, i32 17
  %arrayidx34 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points33, i32 0, i64 %idxprom32
  %arrayidx35 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx34, i32 0, i64 0
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx35, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx36, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points38 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %41, i32 0, i32 17
  %arrayidx39 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points38, i32 0, i64 %idxprom37
  %arrayidx40 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx39, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx40, i32 0, i64 1
  store double 5.000000e-01, double* %arrayidx41, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %42 to i64
  %43 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points43 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %43, i32 0, i32 17
  %arrayidx44 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points43, i32 0, i64 %idxprom42
  %arrayidx45 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx44, i32 0, i64 16
  %arrayidx46 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx45, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx46, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %44 to i64
  %45 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points48 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %45, i32 0, i32 17
  %arrayidx49 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points48, i32 0, i64 %idxprom47
  %arrayidx50 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx49, i32 0, i64 16
  %arrayidx51 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx50, i32 0, i64 1
  store double 5.000000e-01, double* %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.31
  %46 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.12

for.end.54:                                       ; preds = %for.cond.12
  %47 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @p_retrieve_values(%struct._BenderDialog* %47)
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0)) #5
  %call56 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 -5, i8* null)
  %48 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %48, i32 0, i32 0
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %shell, align 8
  %49 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell57 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %49, i32 0, i32 0
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %shell57, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_dialog_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call58)
  %52 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %52, i32 -5, i32 -6, i32 -1)
  %53 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell60 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %53, i32 0, i32 0
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %shell60, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_window_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call61)
  %56 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %56)
  %57 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell63 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %57, i32 0, i32 0
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %shell63, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %61 = bitcast %struct._BenderDialog* %60 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._BenderDialog*)* @bender_response to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell65 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %62, i32 0, i32 0
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %shell65, align 8
  %call66 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %63)
  store %struct._GdkDisplay* %call66, %struct._GdkDisplay** %display, align 8
  %64 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call67 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %64, i32 150)
  %65 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %cursor_busy = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %65, i32 0, i32 7
  store %struct._GdkCursor* %call67, %struct._GdkCursor** %cursor_busy, align 8
  %call68 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %main_hbox, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_container_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call69)
  %68 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %68, i32 12)
  %69 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %shell71 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %69, i32 0, i32 0
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %shell71, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_dialog_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call72)
  %72 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkDialog*
  %call74 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %72)
  %73 = bitcast %struct._GtkWidget* %call74 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call75)
  %74 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 1, i32 1, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call77 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %vbox, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call78)
  %79 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %79, %struct._GtkWidget* %80, i32 1, i32 1, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0)) #5
  %call81 = call %struct._GtkWidget* @gimp_frame_new(i8* %call80)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %frame, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call82)
  %84 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %84, %struct._GtkWidget* %85, i32 1, i32 1, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %call84 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %vbox2, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_container_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call85)
  %89 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkContainer*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %89, %struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %call87 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %abox, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_box_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call88)
  %94 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkBox*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %95, i32 0, i32 0, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %call90 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %frame, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_frame_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call91)
  %99 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %99, i32 1)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_container_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call93)
  %102 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkContainer*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %102, %struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call95 = call %struct._GtkWidget* @gimp_preview_area_new()
  %105 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %pv_widget = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %105, i32 0, i32 2
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %pv_widget, align 8
  %106 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %pv_widget96 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %106, i32 0, i32 2
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %pv_widget96, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %107, i32 256, i32 256)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_container_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call97)
  %110 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkContainer*
  %111 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %pv_widget99 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %111, i32 0, i32 2
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %pv_widget99, align 8
  call void @gtk_container_add(%struct._GtkContainer* %110, %struct._GtkWidget* %112)
  %113 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %pv_widget100 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %113, i32 0, i32 2
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %pv_widget100, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %call101 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %hbox, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_box_get_type() #6
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call102)
  %117 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 0, i32 0, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0)) #5
  %call105 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call104)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %button, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_box_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call106)
  %122 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkBox*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %127 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %128 = bitcast %struct._BenderDialog* %127 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_preview_update_once to void ()*), i8* %128, void (i8*, %struct._GClosure*)* null, i32 0)
  %call109 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0)) #5
  %call110 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call109)
  store %struct._GtkWidget* %call110, %struct._GtkWidget** %toggle, align 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_toggle_button_get_type() #6
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call111)
  %131 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkToggleButton*
  %132 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview113 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %132, i32 0, i32 11
  %133 = load i32, i32* %preview113, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %131, i32 %133)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #6
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call114)
  %136 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %136, %struct._GtkWidget* %137, i32 0, i32 0, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %140 = bitcast %struct._GtkWidget* %139 to i8*
  %141 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %142 = bitcast %struct._BenderDialog* %141 to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_preview_update to void ()*), i8* %142, void (i8*, %struct._GClosure*)* null, i32 0)
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0)) #5
  %call118 = call %struct._GtkWidget* @gimp_frame_new(i8* %call117)
  store %struct._GtkWidget* %call118, %struct._GtkWidget** %frame, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_box_get_type() #6
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call119)
  %145 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkBox*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %145, %struct._GtkWidget* %146, i32 0, i32 0, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %call121 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call121, %struct._GtkWidget** %vbox, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_container_get_type() #6
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call122)
  %150 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkContainer*
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %150, %struct._GtkWidget* %151)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  %call124 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call124, %struct._GtkWidget** %hbox, align 8
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_box_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call125)
  %155 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkBox*
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %155, %struct._GtkWidget* %156, i32 0, i32 0, i32 0)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %157)
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0)) #5
  %call128 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call127)
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %label, align 8
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_box_get_type() #6
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call129)
  %160 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkBox*
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %160, %struct._GtkWidget* %161, i32 0, i32 0, i32 0)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %162)
  %call131 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %data, double 0.000000e+00, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 4.500000e+01, double 9.000000e+01, double 5.000000e-01, i32 1)
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %spinbutton, align 8
  %163 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %164 = bitcast %struct._GtkObject* %163 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_adjustment_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call132)
  %165 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkAdjustment*
  %166 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotate_data = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %166, i32 0, i32 4
  store %struct._GtkAdjustment* %165, %struct._GtkAdjustment** %rotate_data, align 8
  %167 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotate_data134 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %167, i32 0, i32 4
  %168 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %rotate_data134, align 8
  %169 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotation135 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %169, i32 0, i32 27
  %170 = load double, double* %rotation135, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %168, double %170)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_box_get_type() #6
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call136)
  %173 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkBox*
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %173, %struct._GtkWidget* %174, i32 0, i32 0, i32 0)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %175)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_label_get_type() #6
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call138)
  %178 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkLabel*
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %178, %struct._GtkWidget* %179)
  %180 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotate_data140 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %180, i32 0, i32 4
  %181 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %rotate_data140, align 8
  %182 = bitcast %struct._GtkAdjustment* %181 to i8*
  %183 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %184 = bitcast %struct._BenderDialog* %183 to i8*
  %call141 = call i64 @g_signal_connect_data(i8* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @bender_rotate_adj_callback to void ()*), i8* %184, void (i8*, %struct._GClosure*)* null, i32 0)
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0)) #5
  %call143 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call142)
  store %struct._GtkWidget* %call143, %struct._GtkWidget** %toggle, align 8
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_toggle_button_get_type() #6
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call144)
  %187 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkToggleButton*
  %188 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %smoothing146 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %188, i32 0, i32 24
  %189 = load i32, i32* %smoothing146, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %187, i32 %189)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_box_get_type() #6
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call147)
  %192 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkBox*
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %192, %struct._GtkWidget* %193, i32 0, i32 0, i32 0)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %194)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %196 = bitcast %struct._GtkWidget* %195 to i8*
  %197 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %198 = bitcast %struct._BenderDialog* %197 to i8*
  %call149 = call i64 @g_signal_connect_data(i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_smoothing_callback to void ()*), i8* %198, void (i8*, %struct._GClosure*)* null, i32 0)
  %call150 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0)) #5
  %call151 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call150)
  store %struct._GtkWidget* %call151, %struct._GtkWidget** %toggle, align 8
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_toggle_button_get_type() #6
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call152)
  %201 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkToggleButton*
  %202 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %antialias154 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %202, i32 0, i32 25
  %203 = load i32, i32* %antialias154, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %201, i32 %203)
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %205 = bitcast %struct._GtkWidget* %204 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_box_get_type() #6
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call155)
  %206 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkBox*
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %206, %struct._GtkWidget* %207, i32 0, i32 0, i32 0)
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %208)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %210 = bitcast %struct._GtkWidget* %209 to i8*
  %211 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %212 = bitcast %struct._BenderDialog* %211 to i8*
  %call157 = call i64 @g_signal_connect_data(i8* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_antialias_callback to void ()*), i8* %212, void (i8*, %struct._GClosure*)* null, i32 0)
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0)) #5
  %call159 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call158)
  store %struct._GtkWidget* %call159, %struct._GtkWidget** %toggle, align 8
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %214 = bitcast %struct._GtkWidget* %213 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_toggle_button_get_type() #6
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %214, i64 %call160)
  %215 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkToggleButton*
  %216 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %work_on_copy162 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %216, i32 0, i32 26
  %217 = load i32, i32* %work_on_copy162, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %215, i32 %217)
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %219 = bitcast %struct._GtkWidget* %218 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_box_get_type() #6
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %219, i64 %call163)
  %220 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkBox*
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %220, %struct._GtkWidget* %221, i32 0, i32 0, i32 0)
  %222 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %222)
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %224 = bitcast %struct._GtkWidget* %223 to i8*
  %225 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %226 = bitcast %struct._BenderDialog* %225 to i8*
  %call165 = call i64 @g_signal_connect_data(i8* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_work_on_copy_callback to void ()*), i8* %226, void (i8*, %struct._GClosure*)* null, i32 0)
  %call166 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0)) #5
  %call167 = call %struct._GtkWidget* @gimp_frame_new(i8* %call166)
  store %struct._GtkWidget* %call167, %struct._GtkWidget** %frame, align 8
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %228 = bitcast %struct._GtkWidget* %227 to %struct._GTypeInstance*
  %call168 = call i64 @gtk_box_get_type() #6
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %228, i64 %call168)
  %229 = bitcast %struct._GTypeInstance* %call169 to %struct._GtkBox*
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %229, %struct._GtkWidget* %230, i32 1, i32 1, i32 0)
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %231)
  %call170 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call170, %struct._GtkWidget** %vbox, align 8
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %233 = bitcast %struct._GtkWidget* %232 to %struct._GTypeInstance*
  %call171 = call i64 @gtk_container_get_type() #6
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call171)
  %234 = bitcast %struct._GTypeInstance* %call172 to %struct._GtkContainer*
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %234, %struct._GtkWidget* %235)
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %236)
  %call173 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call173, %struct._GtkWidget** %abox, align 8
  %237 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %238 = bitcast %struct._GtkWidget* %237 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_box_get_type() #6
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %238, i64 %call174)
  %239 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkBox*
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %239, %struct._GtkWidget* %240, i32 0, i32 0, i32 0)
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %241)
  %call176 = call %struct._GtkWidget* @gtk_drawing_area_new()
  %242 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %graph = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %242, i32 0, i32 3
  store %struct._GtkWidget* %call176, %struct._GtkWidget** %graph, align 8
  %243 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %graph177 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %243, i32 0, i32 3
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %graph177, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %244, i32 262, i32 262)
  %245 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %graph178 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %245, i32 0, i32 3
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %graph178, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %246, i32 4910)
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %248 = bitcast %struct._GtkWidget* %247 to %struct._GTypeInstance*
  %call179 = call i64 @gtk_container_get_type() #6
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %248, i64 %call179)
  %249 = bitcast %struct._GTypeInstance* %call180 to %struct._GtkContainer*
  %250 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %graph181 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %250, i32 0, i32 3
  %251 = load %struct._GtkWidget*, %struct._GtkWidget** %graph181, align 8
  call void @gtk_container_add(%struct._GtkContainer* %249, %struct._GtkWidget* %251)
  %252 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %graph182 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %252, i32 0, i32 3
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %graph182, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %253)
  %254 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %graph183 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %254, i32 0, i32 3
  %255 = load %struct._GtkWidget*, %struct._GtkWidget** %graph183, align 8
  %256 = bitcast %struct._GtkWidget* %255 to i8*
  %257 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %258 = bitcast %struct._BenderDialog* %257 to i8*
  %call184 = call i64 @g_signal_connect_data(i8* %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._BenderDialog*)* @bender_graph_events to void ()*), i8* %258, void (i8*, %struct._GClosure*)* null, i32 0)
  %call185 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call185, %struct._GtkWidget** %hbox, align 8
  %259 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %260 = bitcast %struct._GtkWidget* %259 to %struct._GTypeInstance*
  %call186 = call i64 @gtk_box_get_type() #6
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %260, i64 %call186)
  %261 = bitcast %struct._GTypeInstance* %call187 to %struct._GtkBox*
  %262 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %261, %struct._GtkWidget* %262, i32 0, i32 0, i32 0)
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %263)
  %call188 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0)) #5
  %264 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline189 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %264, i32 0, i32 10
  %265 = bitcast i32* %outline189 to i8*
  %266 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline190 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %266, i32 0, i32 10
  %267 = load i32, i32* %outline190, align 4
  %call191 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0)) #5
  %call192 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0)) #5
  %call193 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call188, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_border_callback to void ()*), i8* %265, i32 %267, i8* %call191, i32 0, %struct._GtkWidget** %upper, i8* %call192, i32 1, %struct._GtkWidget** %lower, i8* null)
  store %struct._GtkWidget* %call193, %struct._GtkWidget** %frame, align 8
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %upper, align 8
  %269 = bitcast %struct._GtkWidget* %268 to %struct._GTypeInstance*
  %call194 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 80)
  %270 = bitcast %struct._GTypeInstance* %call194 to %struct._GObject*
  %271 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %272 = bitcast %struct._BenderDialog* %271 to i8*
  call void @g_object_set_data(%struct._GObject* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8* %272)
  %273 = load %struct._GtkWidget*, %struct._GtkWidget** %lower, align 8
  %274 = bitcast %struct._GtkWidget* %273 to %struct._GTypeInstance*
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %274, i64 80)
  %275 = bitcast %struct._GTypeInstance* %call195 to %struct._GObject*
  %276 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %277 = bitcast %struct._BenderDialog* %276 to i8*
  call void @g_object_set_data(%struct._GObject* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8* %277)
  %278 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %279 = bitcast %struct._GtkWidget* %278 to %struct._GTypeInstance*
  %call196 = call i64 @gtk_box_get_type() #6
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %279, i64 %call196)
  %280 = bitcast %struct._GTypeInstance* %call197 to %struct._GtkBox*
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %280, %struct._GtkWidget* %281, i32 1, i32 1, i32 0)
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %282)
  %call198 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0)) #5
  %283 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve_type199 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %283, i32 0, i32 16
  %284 = bitcast i32* %curve_type199 to i8*
  %285 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve_type200 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %285, i32 0, i32 16
  %286 = load i32, i32* %curve_type200, align 4
  %call201 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0)) #5
  %call202 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0)) #5
  %call203 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call198, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_type_callback to void ()*), i8* %284, i32 %286, i8* %call201, i32 0, %struct._GtkWidget** %smooth, i8* %call202, i32 1, %struct._GtkWidget** %freew, i8* null)
  store %struct._GtkWidget* %call203, %struct._GtkWidget** %frame, align 8
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %smooth, align 8
  %288 = bitcast %struct._GtkWidget* %287 to %struct._GTypeInstance*
  %call204 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %288, i64 80)
  %289 = bitcast %struct._GTypeInstance* %call204 to %struct._GObject*
  %290 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %291 = bitcast %struct._BenderDialog* %290 to i8*
  call void @g_object_set_data(%struct._GObject* %289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8* %291)
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** %freew, align 8
  %293 = bitcast %struct._GtkWidget* %292 to %struct._GTypeInstance*
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 80)
  %294 = bitcast %struct._GTypeInstance* %call205 to %struct._GObject*
  %295 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %296 = bitcast %struct._BenderDialog* %295 to i8*
  call void @g_object_set_data(%struct._GObject* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8* %296)
  %297 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %298 = bitcast %struct._GtkWidget* %297 to %struct._GTypeInstance*
  %call206 = call i64 @gtk_box_get_type() #6
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %298, i64 %call206)
  %299 = bitcast %struct._GTypeInstance* %call207 to %struct._GtkBox*
  %300 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %299, %struct._GtkWidget* %300, i32 1, i32 1, i32 0)
  %301 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %301)
  %call208 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call208, %struct._GtkWidget** %hbox, align 8
  %302 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %303 = bitcast %struct._GtkWidget* %302 to %struct._GTypeInstance*
  %call209 = call i64 @gtk_box_get_type() #6
  %call210 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %303, i64 %call209)
  %304 = bitcast %struct._GTypeInstance* %call210 to %struct._GtkBox*
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %304, %struct._GtkWidget* %305, i32 0, i32 0, i32 0)
  %306 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %306)
  %call211 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)) #5
  %call212 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call211)
  store %struct._GtkWidget* %call212, %struct._GtkWidget** %button, align 8
  %307 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %308 = bitcast %struct._GtkWidget* %307 to %struct._GTypeInstance*
  %call213 = call i64 @gtk_box_get_type() #6
  %call214 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %308, i64 %call213)
  %309 = bitcast %struct._GTypeInstance* %call214 to %struct._GtkBox*
  %310 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %309, %struct._GtkWidget* %310, i32 1, i32 1, i32 0)
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %311)
  %312 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call215 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.91, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %312, i8* %call215, i8* null)
  %313 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %314 = bitcast %struct._GtkWidget* %313 to i8*
  %315 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %316 = bitcast %struct._BenderDialog* %315 to i8*
  %call216 = call i64 @g_signal_connect_data(i8* %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_copy_callback to void ()*), i8* %316, void (i8*, %struct._GClosure*)* null, i32 0)
  %call217 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0)) #5
  %call218 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call217)
  store %struct._GtkWidget* %call218, %struct._GtkWidget** %button, align 8
  %317 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %318 = bitcast %struct._GtkWidget* %317 to %struct._GTypeInstance*
  %call219 = call i64 @gtk_box_get_type() #6
  %call220 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %318, i64 %call219)
  %319 = bitcast %struct._GTypeInstance* %call220 to %struct._GtkBox*
  %320 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %319, %struct._GtkWidget* %320, i32 1, i32 1, i32 0)
  %321 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %321)
  %322 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call221 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.93, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %322, i8* %call221, i8* null)
  %323 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %324 = bitcast %struct._GtkWidget* %323 to i8*
  %325 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %326 = bitcast %struct._BenderDialog* %325 to i8*
  %call222 = call i64 @g_signal_connect_data(i8* %324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_copy_inv_callback to void ()*), i8* %326, void (i8*, %struct._GClosure*)* null, i32 0)
  %call223 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0)) #5
  %call224 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call223)
  store %struct._GtkWidget* %call224, %struct._GtkWidget** %button, align 8
  %327 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %328 = bitcast %struct._GtkWidget* %327 to %struct._GTypeInstance*
  %call225 = call i64 @gtk_box_get_type() #6
  %call226 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %328, i64 %call225)
  %329 = bitcast %struct._GTypeInstance* %call226 to %struct._GtkBox*
  %330 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %329, %struct._GtkWidget* %330, i32 1, i32 1, i32 0)
  %331 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %331)
  %332 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call227 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.95, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %332, i8* %call227, i8* null)
  %333 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %334 = bitcast %struct._GtkWidget* %333 to i8*
  %335 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %336 = bitcast %struct._BenderDialog* %335 to i8*
  %call228 = call i64 @g_signal_connect_data(i8* %334, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_swap_callback to void ()*), i8* %336, void (i8*, %struct._GClosure*)* null, i32 0)
  %call229 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0))
  store %struct._GtkWidget* %call229, %struct._GtkWidget** %button, align 8
  %337 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %338 = bitcast %struct._GtkWidget* %337 to %struct._GTypeInstance*
  %call230 = call i64 @gtk_box_get_type() #6
  %call231 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %338, i64 %call230)
  %339 = bitcast %struct._GTypeInstance* %call231 to %struct._GtkBox*
  %340 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %339, %struct._GtkWidget* %340, i32 1, i32 1, i32 0)
  %341 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %341)
  %342 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call232 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %342, i8* %call232, i8* null)
  %343 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %344 = bitcast %struct._GtkWidget* %343 to i8*
  %345 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %346 = bitcast %struct._BenderDialog* %345 to i8*
  %call233 = call i64 @g_signal_connect_data(i8* %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @bender_reset_callback to void ()*), i8* %346, void (i8*, %struct._GClosure*)* null, i32 0)
  %call234 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call234, %struct._GtkWidget** %hbox, align 8
  %347 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %348 = bitcast %struct._GtkWidget* %347 to %struct._GTypeInstance*
  %call235 = call i64 @gtk_box_get_type() #6
  %call236 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %348, i64 %call235)
  %349 = bitcast %struct._GTypeInstance* %call236 to %struct._GtkBox*
  %350 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %349, %struct._GtkWidget* %350, i32 0, i32 0, i32 0)
  %351 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %351)
  %call237 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0))
  store %struct._GtkWidget* %call237, %struct._GtkWidget** %button, align 8
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %353 = bitcast %struct._GtkWidget* %352 to %struct._GTypeInstance*
  %call238 = call i64 @gtk_box_get_type() #6
  %call239 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %353, i64 %call238)
  %354 = bitcast %struct._GTypeInstance* %call239 to %struct._GtkBox*
  %355 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %354, %struct._GtkWidget* %355, i32 1, i32 1, i32 0)
  %356 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %356)
  %357 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call240 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %357, i8* %call240, i8* null)
  %358 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %359 = bitcast %struct._GtkWidget* %358 to i8*
  %360 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %361 = bitcast %struct._BenderDialog* %360 to i8*
  %call241 = call i64 @g_signal_connect_data(i8* %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._BenderDialog*)* @bender_load_callback to void ()*), i8* %361, void (i8*, %struct._GClosure*)* null, i32 0)
  %call242 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0))
  store %struct._GtkWidget* %call242, %struct._GtkWidget** %button, align 8
  %362 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %363 = bitcast %struct._GtkWidget* %362 to %struct._GTypeInstance*
  %call243 = call i64 @gtk_box_get_type() #6
  %call244 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %363, i64 %call243)
  %364 = bitcast %struct._GTypeInstance* %call244 to %struct._GtkBox*
  %365 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %364, %struct._GtkWidget* %365, i32 1, i32 1, i32 0)
  %366 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %366)
  %367 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call245 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.101, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %367, i8* %call245, i8* null)
  %368 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %369 = bitcast %struct._GtkWidget* %368 to i8*
  %370 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %371 = bitcast %struct._BenderDialog* %370 to i8*
  %call246 = call i64 @g_signal_connect_data(i8* %369, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._BenderDialog*)* @bender_save_callback to void ()*), i8* %371, void (i8*, %struct._GClosure*)* null, i32 0)
  %372 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %372)
  %373 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  ret %struct._BenderDialog* %373
}

; Function Attrs: nounwind uwtable
define internal i32 @p_create_pv_image(%struct._GimpDrawable* %src_drawable, i32* %layer_id) #0 {
entry:
  %src_drawable.addr = alloca %struct._GimpDrawable*, align 8
  %layer_id.addr = alloca i32*, align 8
  %l_new_image_id = alloca i32, align 4
  %l_new_width = alloca i32, align 4
  %l_new_height = alloca i32, align 4
  %l_type = alloca i32, align 4
  %l_x = alloca i32, align 4
  %l_y = alloca i32, align 4
  %l_scale = alloca double, align 8
  %l_pixel = alloca [4 x i8], align 1
  %dst_drawable = alloca %struct._GimpDrawable*, align 8
  %l_src_gdrw = alloca %struct.t_GDRW, align 8
  %l_dst_gdrw = alloca %struct.t_GDRW, align 8
  store %struct._GimpDrawable* %src_drawable, %struct._GimpDrawable** %src_drawable.addr, align 8
  store i32* %layer_id, i32** %layer_id.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_item_get_image(i32 %1)
  %call1 = call i32 @gimp_image_base_type(i32 %call)
  %call2 = call i32 @gimp_image_new(i32 256, i32 256, i32 %call1)
  store i32 %call2, i32* %l_new_image_id, align 4
  %2 = load i32, i32* %l_new_image_id, align 4
  %call3 = call i32 @gimp_image_undo_disable(i32 %2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_type(i32 %4)
  store i32 %call5, i32* %l_type, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  %cmp = icmp ugt i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 128, i32* %l_new_height, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width6, align 4
  %11 = load i32, i32* %l_new_height, align 4
  %mul = mul i32 %10, %11
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 2
  %13 = load i32, i32* %height7, align 4
  %div = udiv i32 %mul, %13
  store i32 %div, i32* %l_new_width, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height8, align 4
  %conv = uitofp i32 %15 to float
  %div9 = fdiv float %conv, 1.280000e+02
  %conv10 = fpext float %div9 to double
  store double %conv10, double* %l_scale, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 128, i32* %l_new_width, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 2
  %17 = load i32, i32* %height11, align 4
  %18 = load i32, i32* %l_new_width, align 4
  %mul12 = mul i32 %17, %18
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %width13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width13, align 4
  %div14 = udiv i32 %mul12, %20
  store i32 %div14, i32* %l_new_height, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %width15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width15, align 4
  %conv16 = uitofp i32 %22 to float
  %div17 = fdiv float %conv16, 1.280000e+02
  %conv18 = fpext float %div17 to double
  store double %conv18, double* %l_scale, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i32, i32* %l_new_image_id, align 4
  %24 = load i32, i32* %l_new_width, align 4
  %25 = load i32, i32* %l_new_height, align 4
  %26 = load i32, i32* %l_type, align 4
  %call19 = call i32 @gimp_layer_new(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i32 0, i32 0), i32 %24, i32 %25, i32 %26, double 1.000000e+02, i32 0)
  %27 = load i32*, i32** %layer_id.addr, align 8
  store i32 %call19, i32* %27, align 4
  %28 = load i32*, i32** %layer_id.addr, align 8
  %29 = load i32, i32* %28, align 4
  %call20 = call i32 @gimp_drawable_has_alpha(i32 %29)
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.end
  %30 = load i32*, i32** %layer_id.addr, align 8
  %31 = load i32, i32* %30, align 4
  %call22 = call i32 @gimp_layer_add_alpha(i32 %31)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end
  %32 = load i32, i32* %l_new_image_id, align 4
  %33 = load i32*, i32** %layer_id.addr, align 8
  %34 = load i32, i32* %33, align 4
  %call24 = call i32 @gimp_image_insert_layer(i32 %32, i32 %34, i32 -1, i32 0)
  %35 = load i32*, i32** %layer_id.addr, align 8
  %36 = load i32, i32* %35, align 4
  %call25 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %36)
  store %struct._GimpDrawable* %call25, %struct._GimpDrawable** %dst_drawable, align 8
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  call void @p_init_gdrw(%struct.t_GDRW* %l_src_gdrw, %struct._GimpDrawable* %37, i32 0, i32 0)
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %dst_drawable, align 8
  call void @p_init_gdrw(%struct.t_GDRW* %l_dst_gdrw, %struct._GimpDrawable* %38, i32 1, i32 0)
  store i32 0, i32* %l_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %if.end.23
  %39 = load i32, i32* %l_y, align 4
  %40 = load i32, i32* %l_new_height, align 4
  %cmp26 = icmp ult i32 %39, %40
  br i1 %cmp26, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l_x, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %41 = load i32, i32* %l_x, align 4
  %42 = load i32, i32* %l_new_width, align 4
  %cmp29 = icmp ult i32 %41, %42
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %43 = load i32, i32* %l_x, align 4
  %conv32 = uitofp i32 %43 to double
  %44 = load double, double* %l_scale, align 8
  %mul33 = fmul double %conv32, %44
  %conv34 = fptosi double %mul33 to i32
  %45 = load i32, i32* %l_y, align 4
  %conv35 = uitofp i32 %45 to double
  %46 = load double, double* %l_scale, align 8
  %mul36 = fmul double %conv35, %46
  %conv37 = fptosi double %mul36 to i32
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  call void @p_get_pixel(%struct.t_GDRW* %l_src_gdrw, i32 %conv34, i32 %conv37, i8* %arrayidx)
  %47 = load i32, i32* %l_x, align 4
  %48 = load i32, i32* %l_y, align 4
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  call void @p_put_pixel(%struct.t_GDRW* %l_dst_gdrw, i32 %47, i32 %48, i8* %arrayidx38)
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %49 = load i32, i32* %l_x, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %l_x, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %50 = load i32, i32* %l_y, align 4
  %inc40 = add i32 %50, 1
  store i32 %inc40, i32* %l_y, align 4
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  call void @p_end_gdrw(%struct.t_GDRW* %l_src_gdrw)
  call void @p_end_gdrw(%struct.t_GDRW* %l_dst_gdrw)
  %51 = load i32, i32* %l_new_image_id, align 4
  ret i32 %51
}

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @bender_update(%struct._BenderDialog* %cd, i32 %update) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %update.addr = alloca i32, align 4
  %graph_style = alloca %struct._GtkStyle*, align 8
  %i = alloca i32, align 4
  %other = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %update, i32* %update.addr, align 4
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %graph = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %graph, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %graph_style, align 8
  %2 = load i32, i32* %update.addr, align 4
  %and = and i32 %2, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %3 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %shell = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %3, i32 0, i32 0
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %cursor_busy = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 7
  %8 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor_busy, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call3, %struct._GdkCursor* %8)
  call void @gdk_flush()
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %9, i32 0, i32 30
  %10 = load i32, i32* %preview_layer_id2, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_image_id = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %11, i32 0, i32 28
  %12 = load i32, i32* %preview_image_id, align 4
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id25 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 30
  %14 = load i32, i32* %preview_layer_id25, align 4
  %call6 = call i32 @gimp_image_remove_layer(i32 %12, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %15 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id1 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 29
  %17 = load i32, i32* %preview_layer_id1, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %17)
  %call8 = call i32 @p_main_bend(%struct._BenderDialog* %15, %struct._GimpDrawable* %call7, i32 1)
  %18 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id29 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %18, i32 0, i32 30
  store i32 %call8, i32* %preview_layer_id29, align 4
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %20 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id210 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %20, i32 0, i32 30
  %21 = load i32, i32* %preview_layer_id210, align 4
  call void @p_render_preview(%struct._BenderDialog* %19, i32 %21)
  %22 = load i32, i32* %update.addr, align 4
  %and11 = and i32 %22, 16
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %23 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %pv_widget = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %23, i32 0, i32 2
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %pv_widget, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %25 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %shell15 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %shell15, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %call18 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %28)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call18, %struct._GdkCursor* null)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.14, %entry
  %29 = load i32, i32* %update.addr, align 4
  %and20 = and i32 %29, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.37

if.then.22:                                       ; preds = %if.end.19
  %30 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id223 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %30, i32 0, i32 30
  %31 = load i32, i32* %preview_layer_id223, align 4
  %cmp24 = icmp slt i32 %31, 0
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.then.22
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id126 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 29
  %34 = load i32, i32* %preview_layer_id126, align 4
  %call27 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %34)
  %call28 = call i32 @p_main_bend(%struct._BenderDialog* %32, %struct._GimpDrawable* %call27, i32 1)
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id229 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %35, i32 0, i32 30
  store i32 %call28, i32* %preview_layer_id229, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.then.22
  %36 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %37 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview_layer_id231 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %37, i32 0, i32 30
  %38 = load i32, i32* %preview_layer_id231, align 4
  call void @p_render_preview(%struct._BenderDialog* %36, i32 %38)
  %39 = load i32, i32* %update.addr, align 4
  %and32 = and i32 %39, 16
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.30
  %40 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %pv_widget35 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %40, i32 0, i32 2
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %pv_widget35, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %41)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.19
  %42 = load i32, i32* %update.addr, align 4
  %and38 = and i32 %42, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true, label %if.end.154

land.lhs.true:                                    ; preds = %if.end.37
  %43 = load i32, i32* %update.addr, align 4
  %and40 = and i32 %43, 16
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.154

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %44 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %pixmap = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %44, i32 0, i32 5
  %45 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %cmp43 = icmp ne %struct._GdkDrawable* %45, null
  br i1 %cmp43, label %if.then.44, label %if.end.154

if.then.44:                                       ; preds = %land.lhs.true.42
  %46 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %graph45 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %46, i32 0, i32 3
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %graph45, align 8
  %call46 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %47)
  %call47 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call46)
  store %struct._cairo* %call47, %struct._cairo** %cr, align 8
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %48, double 1.000000e+00)
  %49 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %49, double 5.000000e-01, double 5.000000e-01)
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %51 = load %struct._GtkStyle*, %struct._GtkStyle** %graph_style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %51, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %50, %struct._GdkColor* %arrayidx)
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %52)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.44
  %53 = load i32, i32* %i, align 4
  %cmp48 = icmp slt i32 %53, 5
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %55 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %55, 64
  %add = add nsw i32 %mul, 3
  %conv = sitofp i32 %add to double
  call void @cairo_move_to(%struct._cairo* %54, double 3.000000e+00, double %conv)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %57 = load i32, i32* %i, align 4
  %mul49 = mul nsw i32 %57, 64
  %add50 = add nsw i32 %mul49, 3
  %conv51 = sitofp i32 %add50 to double
  call void @cairo_line_to(%struct._cairo* %56, double 2.590000e+02, double %conv51)
  %58 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %59 = load i32, i32* %i, align 4
  %mul52 = mul nsw i32 %59, 64
  %add53 = add nsw i32 %mul52, 3
  %conv54 = sitofp i32 %add53 to double
  call void @cairo_move_to(%struct._cairo* %58, double %conv54, double 3.000000e+00)
  %60 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %61 = load i32, i32* %i, align 4
  %mul55 = mul nsw i32 %61, 64
  %add56 = add nsw i32 %mul55, 3
  %conv57 = sitofp i32 %add56 to double
  call void @cairo_line_to(%struct._cairo* %60, double %conv57, double 2.590000e+02)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %64 = load %struct._GtkStyle*, %struct._GtkStyle** %graph_style, align 8
  %dark = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %64, i32 0, i32 4
  %arrayidx58 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %63, %struct._GdkColor* %arrayidx58)
  %65 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %65)
  %66 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %66, i32 0, i32 10
  %67 = load i32, i32* %outline, align 4
  %cmp59 = icmp eq i32 %67, 0
  %cond = select i1 %cmp59, i32 1, i32 0
  store i32 %cond, i32* %other, align 4
  %68 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %69 = load i32, i32* %other, align 4
  %idxprom = sext i32 %69 to i64
  %70 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %70, i32 0, i32 18
  %arrayidx61 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom
  %arrayidx62 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx61, i32 0, i64 0
  %71 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %71 to i32
  %sub = sub nsw i32 255, %conv63
  %add64 = add nsw i32 %sub, 3
  %conv65 = sitofp i32 %add64 to double
  call void @cairo_move_to(%struct._cairo* %68, double 3.000000e+00, double %conv65)
  store i32 1, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.81, %for.end
  %72 = load i32, i32* %i, align 4
  %cmp67 = icmp slt i32 %72, 256
  br i1 %cmp67, label %for.body.69, label %for.end.83

for.body.69:                                      ; preds = %for.cond.66
  %73 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %74 = load i32, i32* %i, align 4
  %add70 = add nsw i32 %74, 3
  %conv71 = sitofp i32 %add70 to double
  %75 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %75 to i64
  %76 = load i32, i32* %other, align 4
  %idxprom73 = sext i32 %76 to i64
  %77 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve74 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %77, i32 0, i32 18
  %arrayidx75 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve74, i32 0, i64 %idxprom73
  %arrayidx76 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx75, i32 0, i64 %idxprom72
  %78 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %78 to i32
  %sub78 = sub nsw i32 255, %conv77
  %add79 = add nsw i32 %sub78, 3
  %conv80 = sitofp i32 %add79 to double
  call void @cairo_line_to(%struct._cairo* %73, double %conv71, double %conv80)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.69
  %79 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %79, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.66

for.end.83:                                       ; preds = %for.cond.66
  %80 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %81 = load %struct._GtkStyle*, %struct._GtkStyle** %graph_style, align 8
  %dark84 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %81, i32 0, i32 4
  %arrayidx85 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark84, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %80, %struct._GdkColor* %arrayidx85)
  %82 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %82)
  %83 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %84 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline86 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %84, i32 0, i32 10
  %85 = load i32, i32* %outline86, align 4
  %idxprom87 = sext i32 %85 to i64
  %86 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve88 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %86, i32 0, i32 18
  %arrayidx89 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve88, i32 0, i64 %idxprom87
  %arrayidx90 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx89, i32 0, i64 0
  %87 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %87 to i32
  %sub92 = sub nsw i32 255, %conv91
  %add93 = add nsw i32 %sub92, 3
  %conv94 = sitofp i32 %add93 to double
  call void @cairo_move_to(%struct._cairo* %83, double 3.000000e+00, double %conv94)
  store i32 1, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.111, %for.end.83
  %88 = load i32, i32* %i, align 4
  %cmp96 = icmp slt i32 %88, 256
  br i1 %cmp96, label %for.body.98, label %for.end.113

for.body.98:                                      ; preds = %for.cond.95
  %89 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %90 = load i32, i32* %i, align 4
  %add99 = add nsw i32 %90, 3
  %conv100 = sitofp i32 %add99 to double
  %91 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %91 to i64
  %92 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline102 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %92, i32 0, i32 10
  %93 = load i32, i32* %outline102, align 4
  %idxprom103 = sext i32 %93 to i64
  %94 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve104 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %94, i32 0, i32 18
  %arrayidx105 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve104, i32 0, i64 %idxprom103
  %arrayidx106 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx105, i32 0, i64 %idxprom101
  %95 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %95 to i32
  %sub108 = sub nsw i32 255, %conv107
  %add109 = add nsw i32 %sub108, 3
  %conv110 = sitofp i32 %add109 to double
  call void @cairo_line_to(%struct._cairo* %89, double %conv100, double %conv110)
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.98
  %96 = load i32, i32* %i, align 4
  %inc112 = add nsw i32 %96, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.95

for.end.113:                                      ; preds = %for.cond.95
  %97 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %97, i32 0, i32 16
  %98 = load i32, i32* %curve_type, align 4
  %cmp114 = icmp eq i32 %98, 0
  br i1 %cmp114, label %if.then.116, label %if.end.153

if.then.116:                                      ; preds = %for.end.113
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.150, %if.then.116
  %99 = load i32, i32* %i, align 4
  %cmp118 = icmp slt i32 %99, 17
  br i1 %cmp118, label %for.body.120, label %for.end.152

for.body.120:                                     ; preds = %for.cond.117
  %100 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %100 to i64
  %101 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline122 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %101, i32 0, i32 10
  %102 = load i32, i32* %outline122, align 4
  %idxprom123 = sext i32 %102 to i64
  %103 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %103, i32 0, i32 17
  %arrayidx124 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom123
  %arrayidx125 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx124, i32 0, i64 %idxprom121
  %arrayidx126 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx125, i32 0, i64 0
  %104 = load double, double* %arrayidx126, align 8
  %cmp127 = fcmp une double %104, -1.000000e+00
  br i1 %cmp127, label %if.then.129, label %if.end.149

if.then.129:                                      ; preds = %for.body.120
  %105 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_new_sub_path(%struct._cairo* %105)
  %106 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %107 to i64
  %108 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline131 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %108, i32 0, i32 10
  %109 = load i32, i32* %outline131, align 4
  %idxprom132 = sext i32 %109 to i64
  %110 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points133 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %110, i32 0, i32 17
  %arrayidx134 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points133, i32 0, i64 %idxprom132
  %arrayidx135 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx134, i32 0, i64 %idxprom130
  %arrayidx136 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx135, i32 0, i64 0
  %111 = load double, double* %arrayidx136, align 8
  %mul137 = fmul double %111, 2.550000e+02
  %add138 = fadd double %mul137, 3.000000e+00
  %112 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %112 to i64
  %113 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline140 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %113, i32 0, i32 10
  %114 = load i32, i32* %outline140, align 4
  %idxprom141 = sext i32 %114 to i64
  %115 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points142 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %115, i32 0, i32 17
  %arrayidx143 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points142, i32 0, i64 %idxprom141
  %arrayidx144 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx143, i32 0, i64 %idxprom139
  %arrayidx145 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx144, i32 0, i64 1
  %116 = load double, double* %arrayidx145, align 8
  %mul146 = fmul double %116, 2.550000e+02
  %sub147 = fsub double 2.550000e+02, %mul146
  %add148 = fadd double %sub147, 3.000000e+00
  call void @cairo_arc(%struct._cairo* %106, double %add138, double %add148, double 3.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.129, %for.body.120
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %117 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %117, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.117

for.end.152:                                      ; preds = %for.cond.117
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.152, %for.end.113
  %118 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %119 = load %struct._GtkStyle*, %struct._GtkStyle** %graph_style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %119, i32 0, i32 9
  call void @gdk_cairo_set_source_color(%struct._cairo* %118, %struct._GdkColor* %black)
  %120 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %120)
  %121 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %121)
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %land.lhs.true.42, %land.lhs.true, %if.end.37
  ret void
}

declare void @gtk_main() #1

declare void @gdk_flush() #1

declare i32 @gimp_image_delete(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @bender_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._BenderDialog* %cd) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %cd.addr = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %run = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %1, i32 0, i32 34
  store i32 1, i32* %run, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %shell = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %5)
  call void @gtk_main_quit()
  ret void
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @bender_preview_update_once(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %2, i32 24)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @bender_preview_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 11
  store i32 %call2, i32* %preview, align 4
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview3 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 11
  %7 = load i32, i32* %preview3, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %8, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @bender_rotate_adj_callback(%struct._GtkAdjustment* %adjustment, i8* %client_data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %client_data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %3 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotation = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %3, i32 0, i32 27
  %4 = load double, double* %rotation, align 8
  %cmp = fcmp une double %call, %4
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %5)
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %rotation2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 27
  store double %call1, double* %rotation2, align 8
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 11
  %8 = load i32, i32* %preview, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %9, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_smoothing_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %smoothing = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 24
  store i32 %call2, i32* %smoothing, align 4
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 11
  %7 = load i32, i32* %preview, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %8, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_antialias_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %antialias = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 25
  store i32 %call2, i32* %antialias, align 4
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 11
  %7 = load i32, i32* %preview, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %8, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_work_on_copy_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %work_on_copy = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 26
  store i32 %call2, i32* %work_on_copy, align 4
  ret void
}

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @bender_graph_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._BenderDialog* %cd) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %new_type = alloca i32, align 4
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %i = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %closest_point = alloca i32, align 4
  %distance = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 0, i32* %new_type, align 4
  store i32 0, i32* %closest_point, align 4
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %graph = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %graph, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %call1 = call %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable* %call, i32* %tx, i32* %ty, i32* null)
  %2 = load i32, i32* %tx, align 4
  %sub = sub nsw i32 %2, 3
  %cmp = icmp sgt i32 %sub, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %tx, align 4
  %sub2 = sub nsw i32 %3, 3
  %cmp3 = icmp slt i32 %sub2, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %4 = load i32, i32* %tx, align 4
  %sub6 = sub nsw i32 %4, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 0, %cond.true.4 ], [ %sub6, %cond.false.5 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond8, i32* %x, align 4
  %5 = load i32, i32* %ty, align 4
  %sub9 = sub nsw i32 %5, 3
  %cmp10 = icmp sgt i32 %sub9, 255
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.7
  br label %cond.end.20

cond.false.12:                                    ; preds = %cond.end.7
  %6 = load i32, i32* %ty, align 4
  %sub13 = sub nsw i32 %6, 3
  %cmp14 = icmp slt i32 %sub13, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.12
  br label %cond.end.18

cond.false.16:                                    ; preds = %cond.false.12
  %7 = load i32, i32* %ty, align 4
  %sub17 = sub nsw i32 %7, 3
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.15
  %cond19 = phi i32 [ 0, %cond.true.15 ], [ %sub17, %cond.false.16 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end.18, %cond.true.11
  %cond21 = phi i32 [ 255, %cond.true.11 ], [ %cond19, %cond.end.18 ]
  store i32 %cond21, i32* %y, align 4
  store i32 2147483647, i32* %distance, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.20
  %8 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %8, 17
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %10, i32 0, i32 10
  %11 = load i32, i32* %outline, align 4
  %idxprom23 = sext i32 %11 to i64
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom23
  %arrayidx24 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx24, i32 0, i64 0
  %13 = load double, double* %arrayidx25, align 8
  %cmp26 = fcmp une double %13, -1.000000e+00
  br i1 %cmp26, label %if.then, label %if.end.52

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %x, align 4
  %conv = sitofp i32 %14 to double
  %15 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %15 to i64
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline28 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 10
  %17 = load i32, i32* %outline28, align 4
  %idxprom29 = sext i32 %17 to i64
  %18 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points30 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %18, i32 0, i32 17
  %arrayidx31 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points30, i32 0, i64 %idxprom29
  %arrayidx32 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx31, i32 0, i64 %idxprom27
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx32, i32 0, i64 0
  %19 = load double, double* %arrayidx33, align 8
  %mul = fmul double %19, 2.550000e+02
  %sub34 = fsub double %conv, %mul
  %conv35 = fptosi double %sub34 to i32
  %call36 = call i32 @abs(i32 %conv35) #6
  %20 = load i32, i32* %distance, align 4
  %cmp37 = icmp slt i32 %call36, %20
  br i1 %cmp37, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.then
  %21 = load i32, i32* %x, align 4
  %conv40 = sitofp i32 %21 to double
  %22 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %22 to i64
  %23 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline42 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %23, i32 0, i32 10
  %24 = load i32, i32* %outline42, align 4
  %idxprom43 = sext i32 %24 to i64
  %25 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points44 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %25, i32 0, i32 17
  %arrayidx45 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points44, i32 0, i64 %idxprom43
  %arrayidx46 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx45, i32 0, i64 %idxprom41
  %arrayidx47 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx46, i32 0, i64 0
  %26 = load double, double* %arrayidx47, align 8
  %mul48 = fmul double %26, 2.550000e+02
  %sub49 = fsub double %conv40, %mul48
  %conv50 = fptosi double %sub49 to i32
  %call51 = call i32 @abs(i32 %conv50) #6
  store i32 %call51, i32* %distance, align 4
  %27 = load i32, i32* %i, align 4
  store i32 %27, i32* %closest_point, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.39, %if.then
  br label %if.end.52

if.end.52:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %distance, align 4
  %cmp53 = icmp sgt i32 %29, 8
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end
  %30 = load i32, i32* %x, align 4
  %add = add nsw i32 %30, 8
  %div = sdiv i32 %add, 16
  store i32 %div, i32* %closest_point, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %for.end
  %31 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %31 to i32*
  %32 = load i32, i32* %type, align 4
  switch i32 %32, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.65
    i32 7, label %sw.bb.154
    i32 3, label %sw.bb.158
  ]

sw.bb:                                            ; preds = %if.end.56
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %pixmap = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 5
  %34 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %cmp57 = icmp eq %struct._GdkDrawable* %34, null
  br i1 %cmp57, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %sw.bb
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %graph60 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %35, i32 0, i32 3
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %graph60, align 8
  %call61 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %36)
  %call62 = call %struct._GdkDrawable* @gdk_pixmap_new(%struct._GdkDrawable* %call61, i32 262, i32 262, i32 -1)
  %37 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %pixmap63 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %37, i32 0, i32 5
  store %struct._GdkDrawable* %call62, %struct._GdkDrawable** %pixmap63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %sw.bb
  %38 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_update(%struct._BenderDialog* %38, i32 17)
  br label %sw.epilog.297

sw.bb.65:                                         ; preds = %if.end.56
  store i32 130, i32* %new_type, align 4
  %39 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %39, i32 0, i32 16
  %40 = load i32, i32* %curve_type, align 4
  switch i32 %40, label %sw.epilog [
    i32 0, label %sw.bb.66
    i32 1, label %sw.bb.145
  ]

sw.bb.66:                                         ; preds = %sw.bb.65
  %41 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %leftmost = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %41, i32 0, i32 14
  store i32 -1, i32* %leftmost, align 4
  %42 = load i32, i32* %closest_point, align 4
  %sub67 = sub nsw i32 %42, 1
  store i32 %sub67, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.93, %sw.bb.66
  %43 = load i32, i32* %i, align 4
  %cmp69 = icmp sge i32 %43, 0
  br i1 %cmp69, label %for.body.71, label %for.end.94

for.body.71:                                      ; preds = %for.cond.68
  %44 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %44 to i64
  %45 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline73 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %45, i32 0, i32 10
  %46 = load i32, i32* %outline73, align 4
  %idxprom74 = sext i32 %46 to i64
  %47 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points75 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %47, i32 0, i32 17
  %arrayidx76 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points75, i32 0, i64 %idxprom74
  %arrayidx77 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx76, i32 0, i64 %idxprom72
  %arrayidx78 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx77, i32 0, i64 0
  %48 = load double, double* %arrayidx78, align 8
  %cmp79 = fcmp une double %48, -1.000000e+00
  br i1 %cmp79, label %if.then.81, label %if.end.92

if.then.81:                                       ; preds = %for.body.71
  %49 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %49 to i64
  %50 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline83 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %50, i32 0, i32 10
  %51 = load i32, i32* %outline83, align 4
  %idxprom84 = sext i32 %51 to i64
  %52 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points85 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %52, i32 0, i32 17
  %arrayidx86 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points85, i32 0, i64 %idxprom84
  %arrayidx87 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx86, i32 0, i64 %idxprom82
  %arrayidx88 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx87, i32 0, i64 0
  %53 = load double, double* %arrayidx88, align 8
  %mul89 = fmul double %53, 2.550000e+02
  %conv90 = fptosi double %mul89 to i32
  %54 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %leftmost91 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %54, i32 0, i32 14
  store i32 %conv90, i32* %leftmost91, align 4
  br label %for.end.94

if.end.92:                                        ; preds = %for.body.71
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %55 = load i32, i32* %i, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.68

for.end.94:                                       ; preds = %if.then.81, %for.cond.68
  %56 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rightmost = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %56, i32 0, i32 15
  store i32 256, i32* %rightmost, align 4
  %57 = load i32, i32* %closest_point, align 4
  %add95 = add nsw i32 %57, 1
  store i32 %add95, i32* %i, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.121, %for.end.94
  %58 = load i32, i32* %i, align 4
  %cmp97 = icmp slt i32 %58, 17
  br i1 %cmp97, label %for.body.99, label %for.end.123

for.body.99:                                      ; preds = %for.cond.96
  %59 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %59 to i64
  %60 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline101 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %60, i32 0, i32 10
  %61 = load i32, i32* %outline101, align 4
  %idxprom102 = sext i32 %61 to i64
  %62 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points103 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %62, i32 0, i32 17
  %arrayidx104 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points103, i32 0, i64 %idxprom102
  %arrayidx105 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx104, i32 0, i64 %idxprom100
  %arrayidx106 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx105, i32 0, i64 0
  %63 = load double, double* %arrayidx106, align 8
  %cmp107 = fcmp une double %63, -1.000000e+00
  br i1 %cmp107, label %if.then.109, label %if.end.120

if.then.109:                                      ; preds = %for.body.99
  %64 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %64 to i64
  %65 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline111 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %65, i32 0, i32 10
  %66 = load i32, i32* %outline111, align 4
  %idxprom112 = sext i32 %66 to i64
  %67 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points113 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %67, i32 0, i32 17
  %arrayidx114 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points113, i32 0, i64 %idxprom112
  %arrayidx115 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx114, i32 0, i64 %idxprom110
  %arrayidx116 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx115, i32 0, i64 0
  %68 = load double, double* %arrayidx116, align 8
  %mul117 = fmul double %68, 2.550000e+02
  %conv118 = fptosi double %mul117 to i32
  %69 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rightmost119 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %69, i32 0, i32 15
  store i32 %conv118, i32* %rightmost119, align 4
  br label %for.end.123

if.end.120:                                       ; preds = %for.body.99
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %70 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %70, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.96

for.end.123:                                      ; preds = %if.then.109, %for.cond.96
  %71 = load i32, i32* %closest_point, align 4
  %72 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %72, i32 0, i32 12
  store i32 %71, i32* %grab_point, align 4
  %73 = load i32, i32* %x, align 4
  %conv124 = sitofp i32 %73 to double
  %div125 = fdiv double %conv124, 2.550000e+02
  %74 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point126 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %74, i32 0, i32 12
  %75 = load i32, i32* %grab_point126, align 4
  %idxprom127 = sext i32 %75 to i64
  %76 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline128 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %76, i32 0, i32 10
  %77 = load i32, i32* %outline128, align 4
  %idxprom129 = sext i32 %77 to i64
  %78 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points130 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %78, i32 0, i32 17
  %arrayidx131 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points130, i32 0, i64 %idxprom129
  %arrayidx132 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx131, i32 0, i64 %idxprom127
  %arrayidx133 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx132, i32 0, i64 0
  store double %div125, double* %arrayidx133, align 8
  %79 = load i32, i32* %y, align 4
  %sub134 = sub nsw i32 255, %79
  %conv135 = sitofp i32 %sub134 to double
  %div136 = fdiv double %conv135, 2.550000e+02
  %80 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point137 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %80, i32 0, i32 12
  %81 = load i32, i32* %grab_point137, align 4
  %idxprom138 = sext i32 %81 to i64
  %82 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline139 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %82, i32 0, i32 10
  %83 = load i32, i32* %outline139, align 4
  %idxprom140 = sext i32 %83 to i64
  %84 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points141 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %84, i32 0, i32 17
  %arrayidx142 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points141, i32 0, i64 %idxprom140
  %arrayidx143 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx142, i32 0, i64 %idxprom138
  %arrayidx144 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx143, i32 0, i64 1
  store double %div136, double* %arrayidx144, align 8
  %85 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_calculate_curve(%struct._BenderDialog* %85, i32 255, i32 255, i32 1)
  br label %sw.epilog

sw.bb.145:                                        ; preds = %sw.bb.65
  %86 = load i32, i32* %y, align 4
  %sub146 = sub nsw i32 255, %86
  %conv147 = trunc i32 %sub146 to i8
  %87 = load i32, i32* %x, align 4
  %idxprom148 = sext i32 %87 to i64
  %88 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline149 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %88, i32 0, i32 10
  %89 = load i32, i32* %outline149, align 4
  %idxprom150 = sext i32 %89 to i64
  %90 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %90, i32 0, i32 18
  %arrayidx151 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx151, i32 0, i64 %idxprom148
  store i8 %conv147, i8* %arrayidx152, align 1
  %91 = load i32, i32* %x, align 4
  %92 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point153 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %92, i32 0, i32 12
  store i32 %91, i32* %grab_point153, align 4
  %93 = load i32, i32* %y, align 4
  %94 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %last = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %94, i32 0, i32 13
  store i32 %93, i32* %last, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.65, %sw.bb.145, %for.end.123
  %95 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_update(%struct._BenderDialog* %95, i32 17)
  br label %sw.epilog.297

sw.bb.154:                                        ; preds = %if.end.56
  store i32 52, i32* %new_type, align 4
  %96 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point155 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %96, i32 0, i32 12
  store i32 -1, i32* %grab_point155, align 4
  %97 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %97, i32 0, i32 11
  %98 = load i32, i32* %preview, align 4
  %tobool = icmp ne i32 %98, 0
  br i1 %tobool, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %sw.bb.154
  %99 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_update(%struct._BenderDialog* %99, i32 24)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %sw.bb.154
  br label %sw.epilog.297

sw.bb.158:                                        ; preds = %if.end.56
  %100 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %101 = bitcast %union._GdkEvent* %100 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %101, %struct._GdkEventMotion** %mevent, align 8
  %102 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %is_hint = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %102, i32 0, i32 8
  %103 = load i16, i16* %is_hint, align 2
  %tobool159 = icmp ne i16 %103, 0
  br i1 %tobool159, label %if.then.160, label %if.end.165

if.then.160:                                      ; preds = %sw.bb.158
  %104 = load i32, i32* %tx, align 4
  %conv161 = sitofp i32 %104 to double
  %105 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x162 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %105, i32 0, i32 4
  store double %conv161, double* %x162, align 8
  %106 = load i32, i32* %ty, align 4
  %conv163 = sitofp i32 %106 to double
  %107 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y164 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %107, i32 0, i32 5
  store double %conv163, double* %y164, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.160, %sw.bb.158
  %108 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_type166 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %108, i32 0, i32 16
  %109 = load i32, i32* %curve_type166, align 4
  switch i32 %109, label %sw.epilog.292 [
    i32 0, label %sw.bb.167
    i32 1, label %sw.bb.236
  ]

sw.bb.167:                                        ; preds = %if.end.165
  %110 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point168 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %110, i32 0, i32 12
  %111 = load i32, i32* %grab_point168, align 4
  %cmp169 = icmp eq i32 %111, -1
  br i1 %cmp169, label %if.then.171, label %if.else.183

if.then.171:                                      ; preds = %sw.bb.167
  %112 = load i32, i32* %closest_point, align 4
  %idxprom172 = sext i32 %112 to i64
  %113 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline173 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %113, i32 0, i32 10
  %114 = load i32, i32* %outline173, align 4
  %idxprom174 = sext i32 %114 to i64
  %115 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points175 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %115, i32 0, i32 17
  %arrayidx176 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points175, i32 0, i64 %idxprom174
  %arrayidx177 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx176, i32 0, i64 %idxprom172
  %arrayidx178 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx177, i32 0, i64 0
  %116 = load double, double* %arrayidx178, align 8
  %cmp179 = fcmp une double %116, -1.000000e+00
  br i1 %cmp179, label %if.then.181, label %if.else

if.then.181:                                      ; preds = %if.then.171
  store i32 52, i32* %new_type, align 4
  br label %if.end.182

if.else:                                          ; preds = %if.then.171
  store i32 130, i32* %new_type, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.else, %if.then.181
  br label %if.end.235

if.else.183:                                      ; preds = %sw.bb.167
  store i32 130, i32* %new_type, align 4
  %117 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point184 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %117, i32 0, i32 12
  %118 = load i32, i32* %grab_point184, align 4
  %idxprom185 = sext i32 %118 to i64
  %119 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline186 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %119, i32 0, i32 10
  %120 = load i32, i32* %outline186, align 4
  %idxprom187 = sext i32 %120 to i64
  %121 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points188 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %121, i32 0, i32 17
  %arrayidx189 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points188, i32 0, i64 %idxprom187
  %arrayidx190 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx189, i32 0, i64 %idxprom185
  %arrayidx191 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx190, i32 0, i64 0
  store double -1.000000e+00, double* %arrayidx191, align 8
  %122 = load i32, i32* %x, align 4
  %123 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %leftmost192 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %123, i32 0, i32 14
  %124 = load i32, i32* %leftmost192, align 4
  %cmp193 = icmp sgt i32 %122, %124
  br i1 %cmp193, label %land.lhs.true, label %if.end.234

land.lhs.true:                                    ; preds = %if.else.183
  %125 = load i32, i32* %x, align 4
  %126 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rightmost195 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %126, i32 0, i32 15
  %127 = load i32, i32* %rightmost195, align 4
  %cmp196 = icmp slt i32 %125, %127
  br i1 %cmp196, label %if.then.198, label %if.end.234

if.then.198:                                      ; preds = %land.lhs.true
  %128 = load i32, i32* %x, align 4
  %add199 = add nsw i32 %128, 8
  %div200 = sdiv i32 %add199, 16
  store i32 %div200, i32* %closest_point, align 4
  %129 = load i32, i32* %closest_point, align 4
  %idxprom201 = sext i32 %129 to i64
  %130 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline202 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %130, i32 0, i32 10
  %131 = load i32, i32* %outline202, align 4
  %idxprom203 = sext i32 %131 to i64
  %132 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points204 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %132, i32 0, i32 17
  %arrayidx205 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points204, i32 0, i64 %idxprom203
  %arrayidx206 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx205, i32 0, i64 %idxprom201
  %arrayidx207 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx206, i32 0, i64 0
  %133 = load double, double* %arrayidx207, align 8
  %cmp208 = fcmp oeq double %133, -1.000000e+00
  br i1 %cmp208, label %if.then.210, label %if.end.212

if.then.210:                                      ; preds = %if.then.198
  %134 = load i32, i32* %closest_point, align 4
  %135 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point211 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %135, i32 0, i32 12
  store i32 %134, i32* %grab_point211, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.210, %if.then.198
  %136 = load i32, i32* %x, align 4
  %conv213 = sitofp i32 %136 to double
  %div214 = fdiv double %conv213, 2.550000e+02
  %137 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point215 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %137, i32 0, i32 12
  %138 = load i32, i32* %grab_point215, align 4
  %idxprom216 = sext i32 %138 to i64
  %139 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline217 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %139, i32 0, i32 10
  %140 = load i32, i32* %outline217, align 4
  %idxprom218 = sext i32 %140 to i64
  %141 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points219 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %141, i32 0, i32 17
  %arrayidx220 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points219, i32 0, i64 %idxprom218
  %arrayidx221 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx220, i32 0, i64 %idxprom216
  %arrayidx222 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx221, i32 0, i64 0
  store double %div214, double* %arrayidx222, align 8
  %142 = load i32, i32* %y, align 4
  %sub223 = sub nsw i32 255, %142
  %conv224 = sitofp i32 %sub223 to double
  %div225 = fdiv double %conv224, 2.550000e+02
  %143 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point226 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %143, i32 0, i32 12
  %144 = load i32, i32* %grab_point226, align 4
  %idxprom227 = sext i32 %144 to i64
  %145 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline228 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %145, i32 0, i32 10
  %146 = load i32, i32* %outline228, align 4
  %idxprom229 = sext i32 %146 to i64
  %147 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points230 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %147, i32 0, i32 17
  %arrayidx231 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points230, i32 0, i64 %idxprom229
  %arrayidx232 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx231, i32 0, i64 %idxprom227
  %arrayidx233 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx232, i32 0, i64 1
  store double %div225, double* %arrayidx233, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.212, %land.lhs.true, %if.else.183
  %148 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_calculate_curve(%struct._BenderDialog* %148, i32 255, i32 255, i32 1)
  %149 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_update(%struct._BenderDialog* %149, i32 17)
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.end.182
  br label %sw.epilog.292

sw.bb.236:                                        ; preds = %if.end.165
  %150 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point237 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %150, i32 0, i32 12
  %151 = load i32, i32* %grab_point237, align 4
  %cmp238 = icmp ne i32 %151, -1
  br i1 %cmp238, label %if.then.240, label %if.end.287

if.then.240:                                      ; preds = %sw.bb.236
  %152 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point241 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %152, i32 0, i32 12
  %153 = load i32, i32* %grab_point241, align 4
  %154 = load i32, i32* %x, align 4
  %cmp242 = icmp sgt i32 %153, %154
  br i1 %cmp242, label %if.then.244, label %if.else.247

if.then.244:                                      ; preds = %if.then.240
  %155 = load i32, i32* %x, align 4
  store i32 %155, i32* %x1, align 4
  %156 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point245 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %156, i32 0, i32 12
  %157 = load i32, i32* %grab_point245, align 4
  store i32 %157, i32* %x2, align 4
  %158 = load i32, i32* %y, align 4
  store i32 %158, i32* %y1, align 4
  %159 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %last246 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %159, i32 0, i32 13
  %160 = load i32, i32* %last246, align 4
  store i32 %160, i32* %y2, align 4
  br label %if.end.250

if.else.247:                                      ; preds = %if.then.240
  %161 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point248 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %161, i32 0, i32 12
  %162 = load i32, i32* %grab_point248, align 4
  store i32 %162, i32* %x1, align 4
  %163 = load i32, i32* %x, align 4
  store i32 %163, i32* %x2, align 4
  %164 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %last249 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %164, i32 0, i32 13
  %165 = load i32, i32* %last249, align 4
  store i32 %165, i32* %y1, align 4
  %166 = load i32, i32* %y, align 4
  store i32 %166, i32* %y2, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.247, %if.then.244
  %167 = load i32, i32* %x2, align 4
  %168 = load i32, i32* %x1, align 4
  %cmp251 = icmp ne i32 %167, %168
  br i1 %cmp251, label %if.then.253, label %if.else.275

if.then.253:                                      ; preds = %if.end.250
  %169 = load i32, i32* %x1, align 4
  store i32 %169, i32* %i, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.272, %if.then.253
  %170 = load i32, i32* %i, align 4
  %171 = load i32, i32* %x2, align 4
  %cmp255 = icmp sle i32 %170, %171
  br i1 %cmp255, label %for.body.257, label %for.end.274

for.body.257:                                     ; preds = %for.cond.254
  %172 = load i32, i32* %y1, align 4
  %173 = load i32, i32* %y2, align 4
  %174 = load i32, i32* %y1, align 4
  %sub258 = sub nsw i32 %173, %174
  %175 = load i32, i32* %i, align 4
  %176 = load i32, i32* %x1, align 4
  %sub259 = sub nsw i32 %175, %176
  %mul260 = mul nsw i32 %sub258, %sub259
  %177 = load i32, i32* %x2, align 4
  %178 = load i32, i32* %x1, align 4
  %sub261 = sub nsw i32 %177, %178
  %div262 = sdiv i32 %mul260, %sub261
  %add263 = add nsw i32 %172, %div262
  %sub264 = sub nsw i32 255, %add263
  %conv265 = trunc i32 %sub264 to i8
  %179 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %179 to i64
  %180 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline267 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %180, i32 0, i32 10
  %181 = load i32, i32* %outline267, align 4
  %idxprom268 = sext i32 %181 to i64
  %182 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve269 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %182, i32 0, i32 18
  %arrayidx270 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve269, i32 0, i64 %idxprom268
  %arrayidx271 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx270, i32 0, i64 %idxprom266
  store i8 %conv265, i8* %arrayidx271, align 1
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.body.257
  %183 = load i32, i32* %i, align 4
  %inc273 = add nsw i32 %183, 1
  store i32 %inc273, i32* %i, align 4
  br label %for.cond.254

for.end.274:                                      ; preds = %for.cond.254
  br label %if.end.284

if.else.275:                                      ; preds = %if.end.250
  %184 = load i32, i32* %y, align 4
  %sub276 = sub nsw i32 255, %184
  %conv277 = trunc i32 %sub276 to i8
  %185 = load i32, i32* %x, align 4
  %idxprom278 = sext i32 %185 to i64
  %186 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline279 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %186, i32 0, i32 10
  %187 = load i32, i32* %outline279, align 4
  %idxprom280 = sext i32 %187 to i64
  %188 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve281 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %188, i32 0, i32 18
  %arrayidx282 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve281, i32 0, i64 %idxprom280
  %arrayidx283 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx282, i32 0, i64 %idxprom278
  store i8 %conv277, i8* %arrayidx283, align 1
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.275, %for.end.274
  %189 = load i32, i32* %x, align 4
  %190 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %grab_point285 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %190, i32 0, i32 12
  store i32 %189, i32* %grab_point285, align 4
  %191 = load i32, i32* %y, align 4
  %192 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %last286 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %192, i32 0, i32 13
  store i32 %191, i32* %last286, align 4
  %193 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_update(%struct._BenderDialog* %193, i32 17)
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.284, %sw.bb.236
  %194 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %194, i32 0, i32 7
  %195 = load i32, i32* %state, align 4
  %and = and i32 %195, 256
  %tobool288 = icmp ne i32 %and, 0
  br i1 %tobool288, label %if.then.289, label %if.else.290

if.then.289:                                      ; preds = %if.end.287
  store i32 130, i32* %new_type, align 4
  br label %if.end.291

if.else.290:                                      ; preds = %if.end.287
  store i32 86, i32* %new_type, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.290, %if.then.289
  br label %sw.epilog.292

sw.epilog.292:                                    ; preds = %if.end.165, %if.end.291, %if.end.235
  %196 = load i32, i32* %new_type, align 4
  %197 = load i32, i32* @bender_graph_events.cursor_type, align 4
  %cmp293 = icmp ne i32 %196, %197
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %sw.epilog.292
  %198 = load i32, i32* %new_type, align 4
  store i32 %198, i32* @bender_graph_events.cursor_type, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %sw.epilog.292
  br label %sw.epilog.297

sw.default:                                       ; preds = %if.end.56
  br label %sw.epilog.297

sw.epilog.297:                                    ; preds = %sw.default, %if.end.296, %if.end.157, %sw.epilog, %if.end.64
  ret i32 0
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @bender_border_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0))
  %5 = bitcast i8* %call1 to %struct._BenderDialog*
  store %struct._BenderDialog* %5, %struct._BenderDialog** %cd, align 8
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %6, i32 17)
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @bender_type_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0))
  %5 = bitcast i8* %call1 to %struct._BenderDialog*
  store %struct._BenderDialog* %5, %struct._BenderDialog** %cd, align 8
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %tobool = icmp ne %struct._BenderDialog* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.34

if.end:                                           ; preds = %entry
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 16
  %8 = load i32, i32* %curve_type, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %9 = load i32, i32* %i, align 4
  %cmp3 = icmp sle i32 %9, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %10, 32
  %cmp4 = icmp sgt i32 %mul, 255
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.10

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 %11, 32
  %cmp6 = icmp slt i32 %mul5, 0
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %12 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %12, 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi i32 [ 0, %cond.true.7 ], [ %mul9, %cond.false.8 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond11, i32* %index, align 4
  %13 = load i32, i32* %index, align 4
  %conv = sitofp i32 %13 to double
  %div = fdiv double %conv, 2.550000e+02
  %14 = load i32, i32* %i, align 4
  %mul12 = mul nsw i32 %14, 2
  %idxprom = sext i32 %mul12 to i64
  %15 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %15, i32 0, i32 10
  %16 = load i32, i32* %outline, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %17, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom13
  %arrayidx14 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx14, i32 0, i64 0
  store double %div, double* %arrayidx15, align 8
  %18 = load i32, i32* %index, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline17 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 10
  %20 = load i32, i32* %outline17, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %21, i32 0, i32 18
  %arrayidx19 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx19, i32 0, i64 %idxprom16
  %22 = load i8, i8* %arrayidx20, align 1
  %conv21 = uitofp i8 %22 to double
  %div22 = fdiv double %conv21, 2.550000e+02
  %23 = load i32, i32* %i, align 4
  %mul23 = mul nsw i32 %23, 2
  %idxprom24 = sext i32 %mul23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline25 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 10
  %25 = load i32, i32* %outline25, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points27 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %26, i32 0, i32 17
  %arrayidx28 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points27, i32 0, i64 %idxprom26
  %arrayidx29 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx28, i32 0, i64 %idxprom24
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx29, i32 0, i64 1
  store double %div22, double* %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.10
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_calculate_curve(%struct._BenderDialog* %28, i32 255, i32 255, i32 1)
  %29 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %29, i32 17)
  %30 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %30, i32 0, i32 11
  %31 = load i32, i32* %preview, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.end
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %32, i32 24)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.end
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %33, i32 17)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then, %if.else, %if.end.33
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @bender_copy_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  %i = alloca i32, align 4
  %other = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 10
  %3 = load i32, i32* %outline, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %other, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline1 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 10
  %7 = load i32, i32* %outline1, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %8, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx3, i32 0, i64 0
  %9 = load double, double* %arrayidx4, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32, i32* %other, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points7 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 17
  %arrayidx8 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points7, i32 0, i64 %idxprom6
  %arrayidx9 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx8, i32 0, i64 %idxprom5
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx9, i32 0, i64 0
  store double %9, double* %arrayidx10, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline12 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 10
  %15 = load i32, i32* %outline12, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points14 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 17
  %arrayidx15 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx15, i32 0, i64 %idxprom11
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx16, i32 0, i64 1
  %17 = load double, double* %arrayidx17, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i32, i32* %other, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points20 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %20, i32 0, i32 17
  %arrayidx21 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points20, i32 0, i64 %idxprom19
  %arrayidx22 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx21, i32 0, i64 %idxprom18
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx22, i32 0, i64 1
  store double %17, double* %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.37, %for.end
  %22 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %22, 256
  br i1 %cmp25, label %for.body.26, label %for.end.39

for.body.26:                                      ; preds = %for.cond.24
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline28 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 10
  %25 = load i32, i32* %outline28, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %26, i32 0, i32 18
  %arrayidx30 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx30, i32 0, i64 %idxprom27
  %27 = load i8, i8* %arrayidx31, align 1
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load i32, i32* %other, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve34 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %30, i32 0, i32 18
  %arrayidx35 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve34, i32 0, i64 %idxprom33
  %arrayidx36 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx35, i32 0, i64 %idxprom32
  store i8 %27, i8* %arrayidx36, align 1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.26
  %31 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %31, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.24

for.end.39:                                       ; preds = %for.cond.24
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %32, i32 17)
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 11
  %34 = load i32, i32* %preview, align 4
  %tobool40 = icmp ne i32 %34, 0
  br i1 %tobool40, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.39
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %35, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_copy_inv_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  %i = alloca i32, align 4
  %other = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 10
  %3 = load i32, i32* %outline, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %other, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline1 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 10
  %7 = load i32, i32* %outline1, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %8, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx3, i32 0, i64 0
  %9 = load double, double* %arrayidx4, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32, i32* %other, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points7 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 17
  %arrayidx8 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points7, i32 0, i64 %idxprom6
  %arrayidx9 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx8, i32 0, i64 %idxprom5
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx9, i32 0, i64 0
  store double %9, double* %arrayidx10, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline12 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 10
  %15 = load i32, i32* %outline12, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points14 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 17
  %arrayidx15 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx15, i32 0, i64 %idxprom11
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx16, i32 0, i64 1
  %17 = load double, double* %arrayidx17, align 8
  %sub = fsub double 1.000000e+00, %17
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i32, i32* %other, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points20 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %20, i32 0, i32 17
  %arrayidx21 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points20, i32 0, i64 %idxprom19
  %arrayidx22 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx21, i32 0, i64 %idxprom18
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx22, i32 0, i64 1
  store double %sub, double* %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.39, %for.end
  %22 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %22, 256
  br i1 %cmp25, label %for.body.26, label %for.end.41

for.body.26:                                      ; preds = %for.cond.24
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline28 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 10
  %25 = load i32, i32* %outline28, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %26, i32 0, i32 18
  %arrayidx30 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx30, i32 0, i64 %idxprom27
  %27 = load i8, i8* %arrayidx31, align 1
  %conv = zext i8 %27 to i32
  %sub32 = sub nsw i32 255, %conv
  %conv33 = trunc i32 %sub32 to i8
  %28 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %28 to i64
  %29 = load i32, i32* %other, align 4
  %idxprom35 = sext i32 %29 to i64
  %30 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve36 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %30, i32 0, i32 18
  %arrayidx37 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve36, i32 0, i64 %idxprom35
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx37, i32 0, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx38, align 1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.26
  %31 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %31, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.24

for.end.41:                                       ; preds = %for.cond.24
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %32, i32 17)
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 11
  %34 = load i32, i32* %preview, align 4
  %tobool42 = icmp ne i32 %34, 0
  br i1 %tobool42, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.41
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %35, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.41
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_swap_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  %i = alloca i32, align 4
  %other = alloca i32, align 4
  %hd = alloca double, align 8
  %hu = alloca i8, align 1
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 10
  %3 = load i32, i32* %outline, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %other, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %other, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx2, i32 0, i64 0
  %8 = load double, double* %arrayidx3, align 8
  store double %8, double* %hd, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline5 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %10, i32 0, i32 10
  %11 = load i32, i32* %outline5, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points7 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %12, i32 0, i32 17
  %arrayidx8 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points7, i32 0, i64 %idxprom6
  %arrayidx9 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx8, i32 0, i64 %idxprom4
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx9, i32 0, i64 0
  %13 = load double, double* %arrayidx10, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %other, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points13 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 17
  %arrayidx14 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points13, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx14, i32 0, i64 %idxprom11
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx15, i32 0, i64 0
  store double %13, double* %arrayidx16, align 8
  %17 = load double, double* %hd, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline18 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 10
  %20 = load i32, i32* %outline18, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points20 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %21, i32 0, i32 17
  %arrayidx21 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points20, i32 0, i64 %idxprom19
  %arrayidx22 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx21, i32 0, i64 %idxprom17
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx22, i32 0, i64 0
  store double %17, double* %arrayidx23, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i32, i32* %other, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points26 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 17
  %arrayidx27 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points26, i32 0, i64 %idxprom25
  %arrayidx28 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx27, i32 0, i64 %idxprom24
  %arrayidx29 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx28, i32 0, i64 1
  %25 = load double, double* %arrayidx29, align 8
  store double %25, double* %hd, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline31 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %27, i32 0, i32 10
  %28 = load i32, i32* %outline31, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points33 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %29, i32 0, i32 17
  %arrayidx34 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points33, i32 0, i64 %idxprom32
  %arrayidx35 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx34, i32 0, i64 %idxprom30
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx35, i32 0, i64 1
  %30 = load double, double* %arrayidx36, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load i32, i32* %other, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points39 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 17
  %arrayidx40 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points39, i32 0, i64 %idxprom38
  %arrayidx41 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx40, i32 0, i64 %idxprom37
  %arrayidx42 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx41, i32 0, i64 1
  store double %30, double* %arrayidx42, align 8
  %34 = load double, double* %hd, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline44 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %36, i32 0, i32 10
  %37 = load i32, i32* %outline44, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points46 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %38, i32 0, i32 17
  %arrayidx47 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points46, i32 0, i64 %idxprom45
  %arrayidx48 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx47, i32 0, i64 %idxprom43
  %arrayidx49 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx48, i32 0, i64 1
  store double %34, double* %arrayidx49, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.74, %for.end
  %40 = load i32, i32* %i, align 4
  %cmp51 = icmp slt i32 %40, 256
  br i1 %cmp51, label %for.body.52, label %for.end.76

for.body.52:                                      ; preds = %for.cond.50
  %41 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load i32, i32* %other, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %43, i32 0, i32 18
  %arrayidx55 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx55, i32 0, i64 %idxprom53
  %44 = load i8, i8* %arrayidx56, align 1
  store i8 %44, i8* %hu, align 1
  %45 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %45 to i64
  %46 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline58 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %46, i32 0, i32 10
  %47 = load i32, i32* %outline58, align 4
  %idxprom59 = sext i32 %47 to i64
  %48 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve60 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %48, i32 0, i32 18
  %arrayidx61 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve60, i32 0, i64 %idxprom59
  %arrayidx62 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx61, i32 0, i64 %idxprom57
  %49 = load i8, i8* %arrayidx62, align 1
  %50 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %50 to i64
  %51 = load i32, i32* %other, align 4
  %idxprom64 = sext i32 %51 to i64
  %52 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve65 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %52, i32 0, i32 18
  %arrayidx66 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve65, i32 0, i64 %idxprom64
  %arrayidx67 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx66, i32 0, i64 %idxprom63
  store i8 %49, i8* %arrayidx67, align 1
  %53 = load i8, i8* %hu, align 1
  %54 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %54 to i64
  %55 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline69 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %55, i32 0, i32 10
  %56 = load i32, i32* %outline69, align 4
  %idxprom70 = sext i32 %56 to i64
  %57 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve71 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %57, i32 0, i32 18
  %arrayidx72 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve71, i32 0, i64 %idxprom70
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx72, i32 0, i64 %idxprom68
  store i8 %53, i8* %arrayidx73, align 1
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.52
  %58 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %58, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.50

for.end.76:                                       ; preds = %for.cond.50
  %59 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %59, i32 17)
  %60 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %60, i32 0, i32 11
  %61 = load i32, i32* %preview, align 4
  %tobool77 = icmp ne i32 %61, 0
  br i1 %tobool77, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.76
  %62 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %62, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.76
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @bender_reset_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  %cd = alloca %struct._BenderDialog*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._BenderDialog*
  store %struct._BenderDialog* %1, %struct._BenderDialog** %cd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 10
  %5 = load i32, i32* %outline, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 18
  %arrayidx = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 127, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %grab_point = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %8, i32 0, i32 12
  store i32 -1, i32* %grab_point, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.19, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %9, 17
  br i1 %cmp4, label %for.body.5, label %for.end.21

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline7 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %11, i32 0, i32 10
  %12 = load i32, i32* %outline7, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 17
  %arrayidx9 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx9, i32 0, i64 %idxprom6
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx10, i32 0, i64 0
  store double -1.000000e+00, double* %arrayidx11, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline13 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %15, i32 0, i32 10
  %16 = load i32, i32* %outline13, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points15 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %17, i32 0, i32 17
  %arrayidx16 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points15, i32 0, i64 %idxprom14
  %arrayidx17 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx16, i32 0, i64 %idxprom12
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx17, i32 0, i64 1
  store double -1.000000e+00, double* %arrayidx18, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.5
  %18 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.3

for.end.21:                                       ; preds = %for.cond.3
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline22 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 10
  %20 = load i32, i32* %outline22, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points24 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %21, i32 0, i32 17
  %arrayidx25 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points24, i32 0, i64 %idxprom23
  %arrayidx26 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx25, i32 0, i64 0
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx26, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx27, align 8
  %22 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline28 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %22, i32 0, i32 10
  %23 = load i32, i32* %outline28, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points30 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 17
  %arrayidx31 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points30, i32 0, i64 %idxprom29
  %arrayidx32 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx31, i32 0, i64 0
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx32, i32 0, i64 1
  store double 5.000000e-01, double* %arrayidx33, align 8
  %25 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline34 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %25, i32 0, i32 10
  %26 = load i32, i32* %outline34, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points36 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %27, i32 0, i32 17
  %arrayidx37 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points36, i32 0, i64 %idxprom35
  %arrayidx38 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx37, i32 0, i64 16
  %arrayidx39 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx38, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx39, align 8
  %28 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %outline40 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %28, i32 0, i32 10
  %29 = load i32, i32* %outline40, align 4
  %idxprom41 = sext i32 %29 to i64
  %30 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %points42 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %30, i32 0, i32 17
  %arrayidx43 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points42, i32 0, i64 %idxprom41
  %arrayidx44 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx43, i32 0, i64 16
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx44, i32 0, i64 1
  store double 5.000000e-01, double* %arrayidx45, align 8
  %31 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %31, i32 17)
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  %preview = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %32, i32 0, i32 11
  %33 = load i32, i32* %preview, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.21
  %34 = load %struct._BenderDialog*, %struct._BenderDialog** %cd, align 8
  call void @bender_update(%struct._BenderDialog* %34, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_load_callback(%struct._GtkWidget* %w, %struct._BenderDialog* %cd) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %cd.addr = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i32 0, i32 0)) #5
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  %3 = bitcast %struct._GtkWidget* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %4, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i32 -5, i8* null)
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser5 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 6
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %filechooser5, align 8
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser6 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 6
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser6, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %9, i32 -5, i32 -6, i32 -1)
  %10 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser9 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser9, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %13, i32 -5)
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser12 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser12, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %18 = bitcast %struct._BenderDialog* %17 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._BenderDialog*)* @p_points_load_from_file_response to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser14 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 6
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser14, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser15 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %22, i32 0, i32 6
  %23 = bitcast %struct._GtkWidget** %filechooser15 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser17 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 6
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser17, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_save_callback(%struct._GtkWidget* %w, %struct._BenderDialog* %cd) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %cd.addr = alloca %struct._BenderDialog*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.116, i32 0, i32 0)) #5
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  %3 = bitcast %struct._GtkWidget* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %4, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i32 -5, i8* null)
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser5 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 6
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %filechooser5, align 8
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser6 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 6
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser6, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %10 = bitcast %struct._BenderDialog* %9 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._BenderDialog*)* @p_points_save_to_file_response to void ()*), i8* %10, void (i8*, %struct._GClosure*)* null, i32 0)
  %11 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser8 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser8, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser9 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 6
  %15 = bitcast %struct._GtkWidget** %filechooser9 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser11 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser11, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_file_chooser_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %filechooser14 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %20, i32 0, i32 6
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %filechooser14, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_window_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %23)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_main_quit() #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable*, i32*, i32*, i32*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare %struct._GdkDrawable* @gdk_pixmap_new(%struct._GdkDrawable*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @bender_calculate_curve(%struct._BenderDialog* %cd, i32 %xmax, i32 %ymax, i32 %fix255) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %fix255.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %points = alloca [17 x i32], align 16
  %num_pts = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  %p4 = alloca i32, align 4
  %xmid = alloca i32, align 4
  %yfirst = alloca i32, align 4
  %ylast = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  store i32 %fix255, i32* %fix255.addr, align 4
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 16
  %1 = load i32, i32* %curve_type, align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %num_pts, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 10
  %5 = load i32, i32* %outline, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points3 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points3, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx4, i32 0, i64 0
  %7 = load double, double* %arrayidx5, align 8
  %cmp6 = fcmp une double %7, -1.000000e+00
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %num_pts, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %num_pts, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom7
  store i32 %8, i32* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %xmax.addr, align 4
  %div = sdiv i32 %11, 2
  store i32 %div, i32* %xmid, align 4
  %12 = load i32, i32* %num_pts, align 4
  %cmp10 = icmp ne i32 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.end.129

if.then.11:                                       ; preds = %for.end
  %13 = load i32, i32* %fix255.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.11
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.40, %if.then.12
  %14 = load i32, i32* %i, align 4
  %conv = sitofp i32 %14 to double
  %arrayidx14 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 0
  %15 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline16 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 10
  %17 = load i32, i32* %outline16, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points18 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %18, i32 0, i32 17
  %arrayidx19 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points18, i32 0, i64 %idxprom17
  %arrayidx20 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx19, i32 0, i64 %idxprom15
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx20, i32 0, i64 0
  %19 = load double, double* %arrayidx21, align 8
  %mul = fmul double %19, 2.550000e+02
  %cmp22 = fcmp olt double %conv, %mul
  br i1 %cmp22, label %for.body.24, label %for.end.42

for.body.24:                                      ; preds = %for.cond.13
  %arrayidx25 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 0
  %20 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline27 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %21, i32 0, i32 10
  %22 = load i32, i32* %outline27, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points29 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %23, i32 0, i32 17
  %arrayidx30 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points29, i32 0, i64 %idxprom28
  %arrayidx31 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx30, i32 0, i64 %idxprom26
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx31, i32 0, i64 1
  %24 = load double, double* %arrayidx32, align 8
  %mul33 = fmul double %24, 2.550000e+02
  %conv34 = fptoui double %mul33 to i8
  %25 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline36 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %26, i32 0, i32 10
  %27 = load i32, i32* %outline36, align 4
  %idxprom37 = sext i32 %27 to i64
  %28 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %28, i32 0, i32 18
  %arrayidx38 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx38, i32 0, i64 %idxprom35
  store i8 %conv34, i8* %arrayidx39, align 1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.24
  %29 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %29, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.13

for.end.42:                                       ; preds = %for.cond.13
  %30 = load i32, i32* %num_pts, align 4
  %sub = sub nsw i32 %30, 1
  %idxprom43 = sext i32 %sub to i64
  %arrayidx44 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom43
  %31 = load i32, i32* %arrayidx44, align 4
  %idxprom45 = sext i32 %31 to i64
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline46 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %32, i32 0, i32 10
  %33 = load i32, i32* %outline46, align 4
  %idxprom47 = sext i32 %33 to i64
  %34 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points48 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %34, i32 0, i32 17
  %arrayidx49 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points48, i32 0, i64 %idxprom47
  %arrayidx50 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx49, i32 0, i64 %idxprom45
  %arrayidx51 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx50, i32 0, i64 0
  %35 = load double, double* %arrayidx51, align 8
  %mul52 = fmul double %35, 2.550000e+02
  %conv53 = fptosi double %mul52 to i32
  store i32 %conv53, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.76, %for.end.42
  %36 = load i32, i32* %i, align 4
  %cmp55 = icmp slt i32 %36, 256
  br i1 %cmp55, label %for.body.57, label %for.end.78

for.body.57:                                      ; preds = %for.cond.54
  %37 = load i32, i32* %num_pts, align 4
  %sub58 = sub nsw i32 %37, 1
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom59
  %38 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %38 to i64
  %39 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline62 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %39, i32 0, i32 10
  %40 = load i32, i32* %outline62, align 4
  %idxprom63 = sext i32 %40 to i64
  %41 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points64 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %41, i32 0, i32 17
  %arrayidx65 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points64, i32 0, i64 %idxprom63
  %arrayidx66 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx65, i32 0, i64 %idxprom61
  %arrayidx67 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx66, i32 0, i64 1
  %42 = load double, double* %arrayidx67, align 8
  %mul68 = fmul double %42, 2.550000e+02
  %conv69 = fptoui double %mul68 to i8
  %43 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %43 to i64
  %44 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline71 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %44, i32 0, i32 10
  %45 = load i32, i32* %outline71, align 4
  %idxprom72 = sext i32 %45 to i64
  %46 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve73 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %46, i32 0, i32 18
  %arrayidx74 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve73, i32 0, i64 %idxprom72
  %arrayidx75 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx74, i32 0, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx75, align 1
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.57
  %47 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %47, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.54

for.end.78:                                       ; preds = %for.cond.54
  br label %if.end.128

if.else:                                          ; preds = %if.then.11
  %arrayidx79 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 0
  %48 = load i32, i32* %arrayidx79, align 4
  %idxprom80 = sext i32 %48 to i64
  %49 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline81 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %49, i32 0, i32 10
  %50 = load i32, i32* %outline81, align 4
  %idxprom82 = sext i32 %50 to i64
  %51 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points83 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %51, i32 0, i32 17
  %arrayidx84 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points83, i32 0, i64 %idxprom82
  %arrayidx85 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx84, i32 0, i64 %idxprom80
  %arrayidx86 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx85, i32 0, i64 1
  %52 = load double, double* %arrayidx86, align 8
  %53 = load i32, i32* %ymax.addr, align 4
  %conv87 = sitofp i32 %53 to double
  %mul88 = fmul double %52, %conv87
  %conv89 = fptosi double %mul88 to i32
  store i32 %conv89, i32* %yfirst, align 4
  %54 = load i32, i32* %num_pts, align 4
  %sub90 = sub nsw i32 %54, 1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom91
  %55 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %55 to i64
  %56 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline94 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %56, i32 0, i32 10
  %57 = load i32, i32* %outline94, align 4
  %idxprom95 = sext i32 %57 to i64
  %58 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points96 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %58, i32 0, i32 17
  %arrayidx97 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points96, i32 0, i64 %idxprom95
  %arrayidx98 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx97, i32 0, i64 %idxprom93
  %arrayidx99 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx98, i32 0, i64 1
  %59 = load double, double* %arrayidx99, align 8
  %60 = load i32, i32* %ymax.addr, align 4
  %conv100 = sitofp i32 %60 to double
  %mul101 = fmul double %59, %conv100
  %conv102 = fptosi double %mul101 to i32
  store i32 %conv102, i32* %ylast, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.112, %if.else
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %xmid, align 4
  %cmp104 = icmp slt i32 %61, %62
  br i1 %cmp104, label %for.body.106, label %for.end.114

for.body.106:                                     ; preds = %for.cond.103
  %63 = load i32, i32* %yfirst, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %64 to i64
  %65 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline108 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %65, i32 0, i32 10
  %66 = load i32, i32* %outline108, align 4
  %idxprom109 = sext i32 %66 to i64
  %67 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %67, i32 0, i32 19
  %arrayidx110 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr, i32 0, i64 %idxprom109
  %68 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %68, i64 %idxprom107
  store i32 %63, i32* %arrayidx111, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.106
  %69 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %69, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.103

for.end.114:                                      ; preds = %for.cond.103
  %70 = load i32, i32* %xmid, align 4
  store i32 %70, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.125, %for.end.114
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %xmax.addr, align 4
  %cmp116 = icmp sle i32 %71, %72
  br i1 %cmp116, label %for.body.118, label %for.end.127

for.body.118:                                     ; preds = %for.cond.115
  %73 = load i32, i32* %ylast, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %74 to i64
  %75 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline120 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %75, i32 0, i32 10
  %76 = load i32, i32* %outline120, align 4
  %idxprom121 = sext i32 %76 to i64
  %77 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr122 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %77, i32 0, i32 19
  %arrayidx123 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr122, i32 0, i64 %idxprom121
  %78 = load i32*, i32** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %78, i64 %idxprom119
  store i32 %73, i32* %arrayidx124, align 4
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.118
  %79 = load i32, i32* %i, align 4
  %inc126 = add nsw i32 %79, 1
  store i32 %inc126, i32* %i, align 4
  br label %for.cond.115

for.end.127:                                      ; preds = %for.cond.115
  br label %if.end.128

if.end.128:                                       ; preds = %for.end.127, %for.end.78
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.159, %if.end.129
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %num_pts, align 4
  %sub131 = sub nsw i32 %81, 1
  %cmp132 = icmp slt i32 %80, %sub131
  br i1 %cmp132, label %for.body.134, label %for.end.161

for.body.134:                                     ; preds = %for.cond.130
  %82 = load i32, i32* %i, align 4
  %cmp135 = icmp eq i32 %82, 0
  br i1 %cmp135, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.134
  %83 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %83 to i64
  %arrayidx138 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom137
  %84 = load i32, i32* %arrayidx138, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.134
  %85 = load i32, i32* %i, align 4
  %sub139 = sub nsw i32 %85, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom140
  %86 = load i32, i32* %arrayidx141, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %84, %cond.true ], [ %86, %cond.false ]
  store i32 %cond, i32* %p1, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %87 to i64
  %arrayidx143 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom142
  %88 = load i32, i32* %arrayidx143, align 4
  store i32 %88, i32* %p2, align 4
  %89 = load i32, i32* %i, align 4
  %add = add nsw i32 %89, 1
  %idxprom144 = sext i32 %add to i64
  %arrayidx145 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom144
  %90 = load i32, i32* %arrayidx145, align 4
  store i32 %90, i32* %p3, align 4
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %num_pts, align 4
  %sub146 = sub nsw i32 %92, 2
  %cmp147 = icmp eq i32 %91, %sub146
  br i1 %cmp147, label %cond.true.149, label %cond.false.153

cond.true.149:                                    ; preds = %cond.end
  %93 = load i32, i32* %num_pts, align 4
  %sub150 = sub nsw i32 %93, 1
  %idxprom151 = sext i32 %sub150 to i64
  %arrayidx152 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom151
  %94 = load i32, i32* %arrayidx152, align 4
  br label %cond.end.157

cond.false.153:                                   ; preds = %cond.end
  %95 = load i32, i32* %i, align 4
  %add154 = add nsw i32 %95, 2
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [17 x i32], [17 x i32]* %points, i32 0, i64 %idxprom155
  %96 = load i32, i32* %arrayidx156, align 4
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.153, %cond.true.149
  %cond158 = phi i32 [ %94, %cond.true.149 ], [ %96, %cond.false.153 ]
  store i32 %cond158, i32* %p4, align 4
  %97 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %98 = load i32, i32* %p1, align 4
  %99 = load i32, i32* %p2, align 4
  %100 = load i32, i32* %p3, align 4
  %101 = load i32, i32* %p4, align 4
  %102 = load i32, i32* %xmax.addr, align 4
  %103 = load i32, i32* %ymax.addr, align 4
  %104 = load i32, i32* %fix255.addr, align 4
  call void @bender_plot_curve(%struct._BenderDialog* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  br label %for.inc.159

for.inc.159:                                      ; preds = %cond.end.157
  %105 = load i32, i32* %i, align 4
  %inc160 = add nsw i32 %105, 1
  store i32 %inc160, i32* %i, align 4
  br label %for.cond.130

for.end.161:                                      ; preds = %for.cond.130
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.161, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_plot_curve(%struct._BenderDialog* %cd, i32 %p1, i32 %p2, i32 %p3, i32 %p4, i32 %xmax, i32 %ymax, i32 %fix255) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p3.addr = alloca i32, align 4
  %p4.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %fix255.addr = alloca i32, align 4
  %geometry = alloca [4 x [4 x double]], align 16
  %tmp1 = alloca [4 x [4 x double]], align 16
  %tmp2 = alloca [4 x [4 x double]], align 16
  %deltas = alloca [4 x [4 x double]], align 16
  %x = alloca double, align 8
  %dx = alloca double, align 8
  %dx2 = alloca double, align 8
  %dx3 = alloca double, align 8
  %y = alloca double, align 8
  %dy = alloca double, align 8
  %dy2 = alloca double, align 8
  %dy3 = alloca double, align 8
  %d = alloca double, align 8
  %d2 = alloca double, align 8
  %d3 = alloca double, align 8
  %lastx = alloca i32, align 4
  %lasty = alloca i32, align 4
  %newx = alloca i32, align 4
  %newy = alloca i32, align 4
  %ntimes = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %p3, i32* %p3.addr, align 4
  store i32 %p4, i32* %p4.addr, align 4
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  store i32 %fix255, i32* %fix255.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx1, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx3, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %p1.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %5 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %5, i32 0, i32 10
  %6 = load i32, i32* %outline, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %7, i32 0, i32 17
  %arrayidx7 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx7, i32 0, i64 %idxprom5
  %arrayidx9 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx8, i32 0, i64 0
  %8 = load double, double* %arrayidx9, align 8
  %9 = load i32, i32* %xmax.addr, align 4
  %conv = sitofp i32 %9 to double
  %mul = fmul double %8, %conv
  %arrayidx10 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx10, i32 0, i64 0
  store double %mul, double* %arrayidx11, align 8
  %10 = load i32, i32* %p2.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline13 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %11, i32 0, i32 10
  %12 = load i32, i32* %outline13, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points15 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 17
  %arrayidx16 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points15, i32 0, i64 %idxprom14
  %arrayidx17 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx16, i32 0, i64 %idxprom12
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx17, i32 0, i64 0
  %14 = load double, double* %arrayidx18, align 8
  %15 = load i32, i32* %xmax.addr, align 4
  %conv19 = sitofp i32 %15 to double
  %mul20 = fmul double %14, %conv19
  %arrayidx21 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 1
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx21, i32 0, i64 0
  store double %mul20, double* %arrayidx22, align 8
  %16 = load i32, i32* %p3.addr, align 4
  %idxprom23 = sext i32 %16 to i64
  %17 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline24 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %17, i32 0, i32 10
  %18 = load i32, i32* %outline24, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points26 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 17
  %arrayidx27 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points26, i32 0, i64 %idxprom25
  %arrayidx28 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx27, i32 0, i64 %idxprom23
  %arrayidx29 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx28, i32 0, i64 0
  %20 = load double, double* %arrayidx29, align 8
  %21 = load i32, i32* %xmax.addr, align 4
  %conv30 = sitofp i32 %21 to double
  %mul31 = fmul double %20, %conv30
  %arrayidx32 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 2
  %arrayidx33 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx32, i32 0, i64 0
  store double %mul31, double* %arrayidx33, align 8
  %22 = load i32, i32* %p4.addr, align 4
  %idxprom34 = sext i32 %22 to i64
  %23 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline35 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %23, i32 0, i32 10
  %24 = load i32, i32* %outline35, align 4
  %idxprom36 = sext i32 %24 to i64
  %25 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points37 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %25, i32 0, i32 17
  %arrayidx38 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points37, i32 0, i64 %idxprom36
  %arrayidx39 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx38, i32 0, i64 %idxprom34
  %arrayidx40 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx39, i32 0, i64 0
  %26 = load double, double* %arrayidx40, align 8
  %27 = load i32, i32* %xmax.addr, align 4
  %conv41 = sitofp i32 %27 to double
  %mul42 = fmul double %26, %conv41
  %arrayidx43 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 3
  %arrayidx44 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx43, i32 0, i64 0
  store double %mul42, double* %arrayidx44, align 8
  %28 = load i32, i32* %p1.addr, align 4
  %idxprom45 = sext i32 %28 to i64
  %29 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline46 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %29, i32 0, i32 10
  %30 = load i32, i32* %outline46, align 4
  %idxprom47 = sext i32 %30 to i64
  %31 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points48 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %31, i32 0, i32 17
  %arrayidx49 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points48, i32 0, i64 %idxprom47
  %arrayidx50 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx49, i32 0, i64 %idxprom45
  %arrayidx51 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx50, i32 0, i64 1
  %32 = load double, double* %arrayidx51, align 8
  %33 = load i32, i32* %ymax.addr, align 4
  %conv52 = sitofp i32 %33 to double
  %mul53 = fmul double %32, %conv52
  %arrayidx54 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 0
  %arrayidx55 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx54, i32 0, i64 1
  store double %mul53, double* %arrayidx55, align 8
  %34 = load i32, i32* %p2.addr, align 4
  %idxprom56 = sext i32 %34 to i64
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline57 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %35, i32 0, i32 10
  %36 = load i32, i32* %outline57, align 4
  %idxprom58 = sext i32 %36 to i64
  %37 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points59 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %37, i32 0, i32 17
  %arrayidx60 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points59, i32 0, i64 %idxprom58
  %arrayidx61 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx60, i32 0, i64 %idxprom56
  %arrayidx62 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx61, i32 0, i64 1
  %38 = load double, double* %arrayidx62, align 8
  %39 = load i32, i32* %ymax.addr, align 4
  %conv63 = sitofp i32 %39 to double
  %mul64 = fmul double %38, %conv63
  %arrayidx65 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 1
  %arrayidx66 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx65, i32 0, i64 1
  store double %mul64, double* %arrayidx66, align 8
  %40 = load i32, i32* %p3.addr, align 4
  %idxprom67 = sext i32 %40 to i64
  %41 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline68 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %41, i32 0, i32 10
  %42 = load i32, i32* %outline68, align 4
  %idxprom69 = sext i32 %42 to i64
  %43 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points70 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %43, i32 0, i32 17
  %arrayidx71 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points70, i32 0, i64 %idxprom69
  %arrayidx72 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx71, i32 0, i64 %idxprom67
  %arrayidx73 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx72, i32 0, i64 1
  %44 = load double, double* %arrayidx73, align 8
  %45 = load i32, i32* %ymax.addr, align 4
  %conv74 = sitofp i32 %45 to double
  %mul75 = fmul double %44, %conv74
  %arrayidx76 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 2
  %arrayidx77 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx76, i32 0, i64 1
  store double %mul75, double* %arrayidx77, align 8
  %46 = load i32, i32* %p4.addr, align 4
  %idxprom78 = sext i32 %46 to i64
  %47 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline79 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %47, i32 0, i32 10
  %48 = load i32, i32* %outline79, align 4
  %idxprom80 = sext i32 %48 to i64
  %49 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points81 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %49, i32 0, i32 17
  %arrayidx82 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points81, i32 0, i64 %idxprom80
  %arrayidx83 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx82, i32 0, i64 %idxprom78
  %arrayidx84 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx83, i32 0, i64 1
  %50 = load double, double* %arrayidx84, align 8
  %51 = load i32, i32* %ymax.addr, align 4
  %conv85 = sitofp i32 %51 to double
  %mul86 = fmul double %50, %conv85
  %arrayidx87 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i64 3
  %arrayidx88 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx87, i32 0, i64 1
  store double %mul86, double* %arrayidx88, align 8
  %52 = load i32, i32* %xmax.addr, align 4
  %mul89 = mul nsw i32 4, %52
  store i32 %mul89, i32* %ntimes, align 4
  %53 = load i32, i32* %ntimes, align 4
  %conv90 = sitofp i32 %53 to double
  %div = fdiv double 1.000000e+00, %conv90
  store double %div, double* %d, align 8
  %54 = load double, double* %d, align 8
  %55 = load double, double* %d, align 8
  %mul91 = fmul double %54, %55
  store double %mul91, double* %d2, align 8
  %56 = load double, double* %d, align 8
  %57 = load double, double* %d, align 8
  %mul92 = fmul double %56, %57
  %58 = load double, double* %d, align 8
  %mul93 = fmul double %mul92, %58
  store double %mul93, double* %d3, align 8
  %arrayidx94 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 0
  %arrayidx95 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx94, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 0
  %arrayidx97 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx96, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 0
  %arrayidx99 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx98, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 0
  %arrayidx101 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx100, i32 0, i64 3
  store double 1.000000e+00, double* %arrayidx101, align 8
  %59 = load double, double* %d3, align 8
  %arrayidx102 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 1
  %arrayidx103 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx102, i32 0, i64 0
  store double %59, double* %arrayidx103, align 8
  %60 = load double, double* %d2, align 8
  %arrayidx104 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 1
  %arrayidx105 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx104, i32 0, i64 1
  store double %60, double* %arrayidx105, align 8
  %61 = load double, double* %d, align 8
  %arrayidx106 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 1
  %arrayidx107 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx106, i32 0, i64 2
  store double %61, double* %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 1
  %arrayidx109 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx108, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx109, align 8
  %62 = load double, double* %d3, align 8
  %mul110 = fmul double 6.000000e+00, %62
  %arrayidx111 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 2
  %arrayidx112 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx111, i32 0, i64 0
  store double %mul110, double* %arrayidx112, align 8
  %63 = load double, double* %d2, align 8
  %mul113 = fmul double 2.000000e+00, %63
  %arrayidx114 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 2
  %arrayidx115 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx114, i32 0, i64 1
  store double %mul113, double* %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 2
  %arrayidx117 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx116, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 2
  %arrayidx119 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx118, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx119, align 8
  %64 = load double, double* %d3, align 8
  %mul120 = fmul double 6.000000e+00, %64
  %arrayidx121 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 3
  %arrayidx122 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx121, i32 0, i64 0
  store double %mul120, double* %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 3
  %arrayidx124 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx123, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 3
  %arrayidx126 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx125, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i64 3
  %arrayidx128 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx127, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx128, align 8
  %arraydecay = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %geometry, i32 0, i32 0
  %arraydecay129 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp1, i32 0, i32 0
  call void @bender_CR_compose([4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @CR_basis, i32 0, i32 0), [4 x double]* %arraydecay, [4 x double]* %arraydecay129)
  %arraydecay130 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp2, i32 0, i32 0
  %arraydecay131 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp1, i32 0, i32 0
  %arraydecay132 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i32 0
  call void @bender_CR_compose([4 x double]* %arraydecay130, [4 x double]* %arraydecay131, [4 x double]* %arraydecay132)
  %arrayidx133 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 0
  %arrayidx134 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx133, i32 0, i64 0
  %65 = load double, double* %arrayidx134, align 8
  store double %65, double* %x, align 8
  %arrayidx135 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 1
  %arrayidx136 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx135, i32 0, i64 0
  %66 = load double, double* %arrayidx136, align 8
  store double %66, double* %dx, align 8
  %arrayidx137 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 2
  %arrayidx138 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx137, i32 0, i64 0
  %67 = load double, double* %arrayidx138, align 8
  store double %67, double* %dx2, align 8
  %arrayidx139 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 3
  %arrayidx140 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx139, i32 0, i64 0
  %68 = load double, double* %arrayidx140, align 8
  store double %68, double* %dx3, align 8
  %arrayidx141 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 0
  %arrayidx142 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx141, i32 0, i64 1
  %69 = load double, double* %arrayidx142, align 8
  store double %69, double* %y, align 8
  %arrayidx143 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 1
  %arrayidx144 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx143, i32 0, i64 1
  %70 = load double, double* %arrayidx144, align 8
  store double %70, double* %dy, align 8
  %arrayidx145 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 2
  %arrayidx146 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx145, i32 0, i64 1
  %71 = load double, double* %arrayidx146, align 8
  store double %71, double* %dy2, align 8
  %arrayidx147 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %deltas, i32 0, i64 3
  %arrayidx148 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx147, i32 0, i64 1
  %72 = load double, double* %arrayidx148, align 8
  store double %72, double* %dy3, align 8
  %73 = load double, double* %x, align 8
  %74 = load i32, i32* %xmax.addr, align 4
  %conv149 = sitofp i32 %74 to double
  %cmp150 = fcmp ogt double %73, %conv149
  br i1 %cmp150, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %75 = load i32, i32* %xmax.addr, align 4
  %conv152 = sitofp i32 %75 to double
  br label %cond.end.157

cond.false:                                       ; preds = %for.end
  %76 = load double, double* %x, align 8
  %cmp153 = fcmp olt double %76, 0.000000e+00
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %cond.false
  br label %cond.end

cond.false.156:                                   ; preds = %cond.false
  %77 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.156, %cond.true.155
  %cond = phi double [ 0.000000e+00, %cond.true.155 ], [ %77, %cond.false.156 ]
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.end, %cond.true
  %cond158 = phi double [ %conv152, %cond.true ], [ %cond, %cond.end ]
  %conv159 = fptosi double %cond158 to i32
  store i32 %conv159, i32* %lastx, align 4
  %78 = load double, double* %y, align 8
  %79 = load i32, i32* %ymax.addr, align 4
  %conv160 = sitofp i32 %79 to double
  %cmp161 = fcmp ogt double %78, %conv160
  br i1 %cmp161, label %cond.true.163, label %cond.false.165

cond.true.163:                                    ; preds = %cond.end.157
  %80 = load i32, i32* %ymax.addr, align 4
  %conv164 = sitofp i32 %80 to double
  br label %cond.end.172

cond.false.165:                                   ; preds = %cond.end.157
  %81 = load double, double* %y, align 8
  %cmp166 = fcmp olt double %81, 0.000000e+00
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %cond.false.165
  br label %cond.end.170

cond.false.169:                                   ; preds = %cond.false.165
  %82 = load double, double* %y, align 8
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.168
  %cond171 = phi double [ 0.000000e+00, %cond.true.168 ], [ %82, %cond.false.169 ]
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.end.170, %cond.true.163
  %cond173 = phi double [ %conv164, %cond.true.163 ], [ %cond171, %cond.end.170 ]
  %conv174 = fptosi double %cond173 to i32
  store i32 %conv174, i32* %lasty, align 4
  %83 = load i32, i32* %fix255.addr, align 4
  %tobool = icmp ne i32 %83, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.172
  %84 = load i32, i32* %lasty, align 4
  %conv175 = trunc i32 %84 to i8
  %85 = load i32, i32* %lastx, align 4
  %idxprom176 = sext i32 %85 to i64
  %86 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline177 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %86, i32 0, i32 10
  %87 = load i32, i32* %outline177, align 4
  %idxprom178 = sext i32 %87 to i64
  %88 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %88, i32 0, i32 18
  %arrayidx179 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx179, i32 0, i64 %idxprom176
  store i8 %conv175, i8* %arrayidx180, align 1
  br label %if.end.188

if.else:                                          ; preds = %cond.end.172
  %89 = load i32, i32* %lasty, align 4
  %90 = load i32, i32* %lastx, align 4
  %idxprom181 = sext i32 %90 to i64
  %91 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline182 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %91, i32 0, i32 10
  %92 = load i32, i32* %outline182, align 4
  %idxprom183 = sext i32 %92 to i64
  %93 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %93, i32 0, i32 19
  %arrayidx184 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr, i32 0, i64 %idxprom183
  %94 = load i32*, i32** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %94, i64 %idxprom181
  store i32 %89, i32* %arrayidx185, align 4
  %95 = load i32, i32* @gb_debug, align 4
  %tobool186 = icmp ne i32 %95, 0
  br i1 %tobool186, label %if.then.187, label %if.end

if.then.187:                                      ; preds = %if.else
  %96 = load i32, i32* %xmax.addr, align 4
  %97 = load i32, i32* %ymax.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.102, i32 0, i32 0), i32 %96, i32 %97)
  br label %if.end

if.end:                                           ; preds = %if.then.187, %if.else
  br label %if.end.188

if.end.188:                                       ; preds = %if.end, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.262, %if.end.188
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %ntimes, align 4
  %cmp190 = icmp slt i32 %98, %99
  br i1 %cmp190, label %for.body.192, label %for.end.264

for.body.192:                                     ; preds = %for.cond.189
  %100 = load double, double* %dx, align 8
  %101 = load double, double* %x, align 8
  %add = fadd double %101, %100
  store double %add, double* %x, align 8
  %102 = load double, double* %dx2, align 8
  %103 = load double, double* %dx, align 8
  %add193 = fadd double %103, %102
  store double %add193, double* %dx, align 8
  %104 = load double, double* %dx3, align 8
  %105 = load double, double* %dx2, align 8
  %add194 = fadd double %105, %104
  store double %add194, double* %dx2, align 8
  %106 = load double, double* %dy, align 8
  %107 = load double, double* %y, align 8
  %add195 = fadd double %107, %106
  store double %add195, double* %y, align 8
  %108 = load double, double* %dy2, align 8
  %109 = load double, double* %dy, align 8
  %add196 = fadd double %109, %108
  store double %add196, double* %dy, align 8
  %110 = load double, double* %dy3, align 8
  %111 = load double, double* %dy2, align 8
  %add197 = fadd double %111, %110
  store double %add197, double* %dy2, align 8
  %112 = load double, double* %x, align 8
  %add198 = fadd double %112, 5.000000e-01
  %conv199 = fptosi double %add198 to i32
  %113 = load i32, i32* %xmax.addr, align 4
  %cmp200 = icmp sgt i32 %conv199, %113
  br i1 %cmp200, label %cond.true.202, label %cond.false.203

cond.true.202:                                    ; preds = %for.body.192
  %114 = load i32, i32* %xmax.addr, align 4
  br label %cond.end.214

cond.false.203:                                   ; preds = %for.body.192
  %115 = load double, double* %x, align 8
  %add204 = fadd double %115, 5.000000e-01
  %conv205 = fptosi double %add204 to i32
  %cmp206 = icmp slt i32 %conv205, 0
  br i1 %cmp206, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %cond.false.203
  br label %cond.end.212

cond.false.209:                                   ; preds = %cond.false.203
  %116 = load double, double* %x, align 8
  %add210 = fadd double %116, 5.000000e-01
  %conv211 = fptosi double %add210 to i32
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.209, %cond.true.208
  %cond213 = phi i32 [ 0, %cond.true.208 ], [ %conv211, %cond.false.209 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.true.202
  %cond215 = phi i32 [ %114, %cond.true.202 ], [ %cond213, %cond.end.212 ]
  store i32 %cond215, i32* %newx, align 4
  %117 = load double, double* %y, align 8
  %add216 = fadd double %117, 5.000000e-01
  %conv217 = fptosi double %add216 to i32
  %118 = load i32, i32* %ymax.addr, align 4
  %cmp218 = icmp sgt i32 %conv217, %118
  br i1 %cmp218, label %cond.true.220, label %cond.false.221

cond.true.220:                                    ; preds = %cond.end.214
  %119 = load i32, i32* %ymax.addr, align 4
  br label %cond.end.232

cond.false.221:                                   ; preds = %cond.end.214
  %120 = load double, double* %y, align 8
  %add222 = fadd double %120, 5.000000e-01
  %conv223 = fptosi double %add222 to i32
  %cmp224 = icmp slt i32 %conv223, 0
  br i1 %cmp224, label %cond.true.226, label %cond.false.227

cond.true.226:                                    ; preds = %cond.false.221
  br label %cond.end.230

cond.false.227:                                   ; preds = %cond.false.221
  %121 = load double, double* %y, align 8
  %add228 = fadd double %121, 5.000000e-01
  %conv229 = fptosi double %add228 to i32
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.227, %cond.true.226
  %cond231 = phi i32 [ 0, %cond.true.226 ], [ %conv229, %cond.false.227 ]
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.end.230, %cond.true.220
  %cond233 = phi i32 [ %119, %cond.true.220 ], [ %cond231, %cond.end.230 ]
  store i32 %cond233, i32* %newy, align 4
  %122 = load i32, i32* %lastx, align 4
  %123 = load i32, i32* %newx, align 4
  %cmp234 = icmp ne i32 %122, %123
  br i1 %cmp234, label %if.then.238, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.232
  %124 = load i32, i32* %lasty, align 4
  %125 = load i32, i32* %newy, align 4
  %cmp236 = icmp ne i32 %124, %125
  br i1 %cmp236, label %if.then.238, label %if.end.261

if.then.238:                                      ; preds = %lor.lhs.false, %cond.end.232
  %126 = load i32, i32* %fix255.addr, align 4
  %tobool239 = icmp ne i32 %126, 0
  br i1 %tobool239, label %if.then.240, label %if.else.248

if.then.240:                                      ; preds = %if.then.238
  %127 = load i32, i32* %newy, align 4
  %conv241 = trunc i32 %127 to i8
  %128 = load i32, i32* %newx, align 4
  %idxprom242 = sext i32 %128 to i64
  %129 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline243 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %129, i32 0, i32 10
  %130 = load i32, i32* %outline243, align 4
  %idxprom244 = sext i32 %130 to i64
  %131 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve245 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %131, i32 0, i32 18
  %arrayidx246 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve245, i32 0, i64 %idxprom244
  %arrayidx247 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx246, i32 0, i64 %idxprom242
  store i8 %conv241, i8* %arrayidx247, align 1
  br label %if.end.260

if.else.248:                                      ; preds = %if.then.238
  %132 = load i32, i32* %newy, align 4
  %133 = load i32, i32* %newx, align 4
  %idxprom249 = sext i32 %133 to i64
  %134 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline250 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %134, i32 0, i32 10
  %135 = load i32, i32* %outline250, align 4
  %idxprom251 = sext i32 %135 to i64
  %136 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr252 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %136, i32 0, i32 19
  %arrayidx253 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr252, i32 0, i64 %idxprom251
  %137 = load i32*, i32** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %137, i64 %idxprom249
  store i32 %132, i32* %arrayidx254, align 4
  %138 = load i32, i32* @gb_debug, align 4
  %tobool255 = icmp ne i32 %138, 0
  br i1 %tobool255, label %if.then.256, label %if.end.259

if.then.256:                                      ; preds = %if.else.248
  %139 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline257 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %139, i32 0, i32 10
  %140 = load i32, i32* %outline257, align 4
  %141 = load i32, i32* %newx, align 4
  %142 = load i32, i32* %newy, align 4
  %call258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.103, i32 0, i32 0), i32 %140, i32 %141, i32 %142)
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.256, %if.else.248
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.240
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %lor.lhs.false
  %143 = load i32, i32* %newx, align 4
  store i32 %143, i32* %lastx, align 4
  %144 = load i32, i32* %newy, align 4
  store i32 %144, i32* %lasty, align 4
  br label %for.inc.262

for.inc.262:                                      ; preds = %if.end.261
  %145 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %145, 1
  store i32 %inc263, i32* %i, align 4
  br label %for.cond.189

for.end.264:                                      ; preds = %for.cond.189
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_CR_compose([4 x double]* %a, [4 x double]* %b, [4 x double]* %ab) #0 {
entry:
  %a.addr = alloca [4 x double]*, align 8
  %b.addr = alloca [4 x double]*, align 8
  %ab.addr = alloca [4 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [4 x double]* %a, [4 x double]** %a.addr, align 8
  store [4 x double]* %b, [4 x double]** %b.addr, align 8
  store [4 x double]* %ab, [4 x double]** %ab.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load [4 x double]*, [4 x double]** %a.addr, align 8
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %3, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  %4 = load double, double* %arrayidx4, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load [4 x double]*, [4 x double]** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx6, i32 0, i64 %idxprom5
  %7 = load double, double* %arrayidx7, align 8
  %mul = fmul double %4, %7
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load [4 x double]*, [4 x double]** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx9, i32 0, i64 1
  %10 = load double, double* %arrayidx10, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load [4 x double]*, [4 x double]** %b.addr, align 8
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 1
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx12, i32 0, i64 %idxprom11
  %13 = load double, double* %arrayidx13, align 8
  %mul14 = fmul double %10, %13
  %add = fadd double %mul, %mul14
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load [4 x double]*, [4 x double]** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx16, i32 0, i64 2
  %16 = load double, double* %arrayidx17, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load [4 x double]*, [4 x double]** %b.addr, align 8
  %arrayidx19 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 2
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx19, i32 0, i64 %idxprom18
  %19 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %16, %19
  %add22 = fadd double %add, %mul21
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load [4 x double]*, [4 x double]** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %21, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx24, i32 0, i64 3
  %22 = load double, double* %arrayidx25, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load [4 x double]*, [4 x double]** %b.addr, align 8
  %arrayidx27 = getelementptr inbounds [4 x double], [4 x double]* %24, i64 3
  %arrayidx28 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx27, i32 0, i64 %idxprom26
  %25 = load double, double* %arrayidx28, align 8
  %mul29 = fmul double %22, %25
  %add30 = fadd double %add22, %mul29
  %26 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load [4 x double]*, [4 x double]** %ab.addr, align 8
  %arrayidx33 = getelementptr inbounds [4 x double], [4 x double]* %28, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx33, i32 0, i64 %idxprom31
  store double %add30, double* %arrayidx34, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %30, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @p_points_load_from_file_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._BenderDialog* %cd) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %5 = load i8*, i8** %filename, align 8
  %call3 = call i32 @p_load_pointfile(%struct._BenderDialog* %4, i8* %5)
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  call void @bender_update(%struct._BenderDialog* %6, i32 255)
  %7 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  ret void
}

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

; Function Attrs: nounwind uwtable
define internal i32 @p_load_pointfile(%struct._BenderDialog* %cd, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %filename.addr = alloca i8*, align 8
  %l_pi = alloca i32, align 4
  %l_ci = alloca i32, align 4
  %l_n = alloca i32, align 4
  %l_len = alloca i32, align 4
  %l_fp = alloca %struct._IO_FILE*, align 8
  %l_buff = alloca [2000 x i8], align 16
  %l_fux = alloca float, align 4
  %l_fuy = alloca float, align 4
  %l_flx = alloca float, align 4
  %l_fly = alloca float, align 4
  %l_iuy = alloca i32, align 4
  %l_ily = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %l_fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0)) #5
  %2 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  %call3 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %3) #6
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %l_pi, align 4
  store i32 0, i32* %l_ci, align 4
  %arraydecay = getelementptr inbounds [2000 x i8], [2000 x i8]* %l_buff, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call5 = call i8* @fgets(i8* %arraydecay, i32 1999, %struct._IO_FILE* %4)
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.end.13, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i32 0, i32 0)) #5
  %5 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call10 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %6) #6
  call void (i8*, ...) @g_message(i8* %call8, i8* %call9, i8* %call11)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %arraydecay14 = getelementptr inbounds [2000 x i8], [2000 x i8]* %l_buff, i32 0, i32 0
  %call15 = call i32 @strncmp(i8* %arraydecay14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i32 0, i32 0), i64 20) #7
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %if.then.16, label %if.end.86

if.then.16:                                       ; preds = %if.end.13
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %if.then.16
  %arraydecay17 = getelementptr inbounds [2000 x i8], [2000 x i8]* %l_buff, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call18 = call i8* @fgets(i8* %arraydecay17, i32 1999, %struct._IO_FILE* %8)
  %cmp19 = icmp ne i8* null, %call18
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 6, i32* %l_len, align 4
  %arraydecay20 = getelementptr inbounds [2000 x i8], [2000 x i8]* %l_buff, i32 0, i32 0
  %9 = load i32, i32* %l_len, align 4
  %conv = sext i32 %9 to i64
  %call21 = call i32 @strncmp(i8* %arraydecay20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i64 %conv) #7
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.56

if.then.24:                                       ; preds = %while.body
  %10 = load i32, i32* %l_len, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2000 x i8], [2000 x i8]* %l_buff, i32 0, i64 %idxprom
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), float* %l_fux, float* %l_fuy, float* %l_flx, float* %l_fly) #5
  store i32 %call25, i32* %l_n, align 4
  %11 = load i32, i32* %l_n, align 4
  %cmp26 = icmp eq i32 %11, 4
  br i1 %cmp26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.24
  %12 = load i32, i32* %l_pi, align 4
  %cmp28 = icmp slt i32 %12, 17
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true
  %13 = load float, float* %l_fux, align 4
  %conv31 = fpext float %13 to double
  %14 = load i32, i32* %l_pi, align 4
  %idxprom32 = sext i32 %14 to i64
  %15 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %15, i32 0, i32 17
  %arrayidx33 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx33, i32 0, i64 %idxprom32
  %arrayidx35 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx34, i32 0, i64 0
  store double %conv31, double* %arrayidx35, align 8
  %16 = load float, float* %l_fuy, align 4
  %conv36 = fpext float %16 to double
  %17 = load i32, i32* %l_pi, align 4
  %idxprom37 = sext i32 %17 to i64
  %18 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points38 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %18, i32 0, i32 17
  %arrayidx39 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points38, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx39, i32 0, i64 %idxprom37
  %arrayidx41 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx40, i32 0, i64 1
  store double %conv36, double* %arrayidx41, align 8
  %19 = load float, float* %l_flx, align 4
  %conv42 = fpext float %19 to double
  %20 = load i32, i32* %l_pi, align 4
  %idxprom43 = sext i32 %20 to i64
  %21 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points44 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %21, i32 0, i32 17
  %arrayidx45 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points44, i32 0, i64 1
  %arrayidx46 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx45, i32 0, i64 %idxprom43
  %arrayidx47 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx46, i32 0, i64 0
  store double %conv42, double* %arrayidx47, align 8
  %22 = load float, float* %l_fly, align 4
  %conv48 = fpext float %22 to double
  %23 = load i32, i32* %l_pi, align 4
  %idxprom49 = sext i32 %23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points50 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 17
  %arrayidx51 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx51, i32 0, i64 %idxprom49
  %arrayidx53 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx52, i32 0, i64 1
  store double %conv48, double* %arrayidx53, align 8
  %25 = load i32, i32* %l_pi, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %l_pi, align 4
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true, %if.then.24
  %26 = load i32, i32* %l_pi, align 4
  %27 = load i8*, i8** %filename.addr, align 8
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.112, i32 0, i32 0), i32 %26, i8* %27)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.30
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %while.body
  store i32 5, i32* %l_len, align 4
  %arraydecay57 = getelementptr inbounds [2000 x i8], [2000 x i8]* %l_buff, i32 0, i32 0
  %28 = load i32, i32* %l_len, align 4
  %conv58 = sext i32 %28 to i64
  %call59 = call i32 @strncmp(i8* %arraydecay57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i64 %conv58) #7
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.85

if.then.62:                                       ; preds = %if.end.56
  %29 = load i32, i32* %l_len, align 4
  %idxprom63 = sext i32 %29 to i64
  %arrayidx64 = getelementptr inbounds [2000 x i8], [2000 x i8]* %l_buff, i32 0, i64 %idxprom63
  %call65 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i32* %l_iuy, i32* %l_ily) #5
  store i32 %call65, i32* %l_n, align 4
  %30 = load i32, i32* %l_n, align 4
  %cmp66 = icmp eq i32 %30, 2
  br i1 %cmp66, label %land.lhs.true.68, label %if.else.82

land.lhs.true.68:                                 ; preds = %if.then.62
  %31 = load i32, i32* %l_ci, align 4
  %cmp69 = icmp slt i32 %31, 256
  br i1 %cmp69, label %if.then.71, label %if.else.82

if.then.71:                                       ; preds = %land.lhs.true.68
  %32 = load i32, i32* %l_iuy, align 4
  %conv72 = trunc i32 %32 to i8
  %33 = load i32, i32* %l_ci, align 4
  %idxprom73 = sext i32 %33 to i64
  %34 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %34, i32 0, i32 18
  %arrayidx74 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 0
  %arrayidx75 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx74, i32 0, i64 %idxprom73
  store i8 %conv72, i8* %arrayidx75, align 1
  %35 = load i32, i32* %l_ily, align 4
  %conv76 = trunc i32 %35 to i8
  %36 = load i32, i32* %l_ci, align 4
  %idxprom77 = sext i32 %36 to i64
  %37 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve78 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %37, i32 0, i32 18
  %arrayidx79 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve78, i32 0, i64 1
  %arrayidx80 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx79, i32 0, i64 %idxprom77
  store i8 %conv76, i8* %arrayidx80, align 1
  %38 = load i32, i32* %l_ci, align 4
  %inc81 = add nsw i32 %38, 1
  store i32 %inc81, i32* %l_ci, align 4
  br label %if.end.84

if.else.82:                                       ; preds = %land.lhs.true.68, %if.then.62
  %39 = load i32, i32* %l_ci, align 4
  %40 = load i8*, i8** %filename.addr, align 8
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.115, i32 0, i32 0), i32 %39, i8* %40)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.71
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.56
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.86

if.end.86:                                        ; preds = %while.end, %if.end.13
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call87 = call i32 @fclose(%struct._IO_FILE* %41)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.then.7, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare void @g_free(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @p_points_save_to_file_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._BenderDialog* %cd) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %5 = load i8*, i8** %filename, align 8
  %call3 = call i32 @p_save_pointfile(%struct._BenderDialog* %4, i8* %5)
  %6 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %7)
  ret void
}

declare void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @p_save_pointfile(%struct._BenderDialog* %cd, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %filename.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %l_fp = alloca %struct._IO_FILE*, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %l_fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.119, i32 0, i32 0)) #5
  %2 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  %call3 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %3) #6
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.122, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.123, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.124, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %10, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx11, i32 0, i64 0
  %14 = load double, double* %arrayidx12, align 8
  %conv = fptrunc double %14 to float
  %conv13 = fpext float %conv to double
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points15 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %16, i32 0, i32 17
  %arrayidx16 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx16, i32 0, i64 %idxprom14
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx17, i32 0, i64 1
  %17 = load double, double* %arrayidx18, align 8
  %conv19 = fptrunc double %17 to float
  %conv20 = fpext float %conv19 to double
  %18 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points22 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %19, i32 0, i32 17
  %arrayidx23 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points22, i32 0, i64 1
  %arrayidx24 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx23, i32 0, i64 %idxprom21
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx24, i32 0, i64 0
  %20 = load double, double* %arrayidx25, align 8
  %conv26 = fptrunc double %20 to float
  %conv27 = fpext float %conv26 to double
  %21 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points29 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %22, i32 0, i32 17
  %arrayidx30 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points29, i32 0, i64 1
  %arrayidx31 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx30, i32 0, i64 %idxprom28
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx31, i32 0, i64 1
  %23 = load double, double* %arrayidx32, align 8
  %conv33 = fptrunc double %23 to float
  %conv34 = fpext float %conv33 to double
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), double %conv13, double %conv20, double %conv27, double %conv34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.127, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.128, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.129, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.55, %for.end
  %30 = load i32, i32* %j, align 4
  %cmp42 = icmp slt i32 %30, 256
  br i1 %cmp42, label %for.body.44, label %for.end.57

for.body.44:                                      ; preds = %for.cond.41
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 18
  %arrayidx46 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 0
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx46, i32 0, i64 %idxprom45
  %34 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %34 to i32
  %35 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %35 to i64
  %36 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve50 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %36, i32 0, i32 18
  %arrayidx51 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx51, i32 0, i64 %idxprom49
  %37 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %37 to i32
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i32 %conv48, i32 %conv53)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.44
  %38 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %38, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond.41

for.end.57:                                       ; preds = %for.cond.41
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %l_fp, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* %39)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.57, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @p_init_gdrw(%struct.t_GDRW* %gdrw, %struct._GimpDrawable* %drawable, i32 %dirty, i32 %shadow) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dirty.addr = alloca i32, align 4
  %shadow.addr = alloca i32, align 4
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %dirty, i32* %dirty.addr, align 4
  store i32 %shadow, i32* %shadow.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %drawable1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %1, i32 0, i32 0
  store %struct._GimpDrawable* %0, %struct._GimpDrawable** %drawable1, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %2, i32 0)
  %3 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %pft = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %3, i32 0, i32 7
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %4 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %pft2 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %4, i32 0, i32 7
  %5 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft2, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %5, i32 3)
  %call3 = call i32 @gimp_tile_width() #6
  %6 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_width = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %6, i32 0, i32 8
  store i32 %call3, i32* %tile_width, align 4
  %call4 = call i32 @gimp_tile_height() #6
  %7 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %tile_height = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %7, i32 0, i32 9
  store i32 %call4, i32* %tile_height, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %10 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %10, i32 0, i32 1
  %11 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %11, i32 0, i32 2
  %12 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %x2 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %12, i32 0, i32 3
  %13 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %y2 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %13, i32 0, i32 4
  %call5 = call i32 @gimp_drawable_mask_bounds(i32 %9, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 3
  %15 = load i32, i32* %bpp, align 4
  %16 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp6 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %16, i32 0, i32 6
  store i32 %15, i32* %bpp6, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id7, align 4
  %call8 = call i32 @gimp_drawable_has_alpha(i32 %18)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %bpp9 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %19, i32 0, i32 6
  %20 = load i32, i32* %bpp9, align 4
  %sub = sub nsw i32 %20, 1
  %21 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %21, i32 0, i32 5
  store i32 %sub, i32* %index_alpha, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha10 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %22, i32 0, i32 5
  store i32 0, i32* %index_alpha10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_get_pixel(%struct.t_GDRW* %gdrw, i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load i8*, i8** %pixel.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  store i8 -1, i8* %arrayidx, align 1
  %1 = load i8*, i8** %pixel.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 -1, i8* %arrayidx1, align 1
  %2 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %pft = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %2, i32 0, i32 7
  %3 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i8*, i8** %pixel.addr, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %3, i32 %4, i32 %5, i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_put_pixel(%struct.t_GDRW* %gdrw, i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %pft = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %0, i32 0, i32 7
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i8*, i8** %pixel.addr, align 8
  call void @gimp_pixel_fetcher_put_pixel(%struct._GimpPixelFetcher* %1, i32 %2, i32 %3, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_end_gdrw(%struct.t_GDRW* %gdrw) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  %0 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %pft = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %0, i32 0, i32 7
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %1)
  ret void
}

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare void @gimp_pixel_fetcher_put_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare i32 @gimp_image_remove_layer(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @p_render_preview(%struct._BenderDialog* %cd, i32 %layer_id) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %layer_id.addr = alloca i32, align 4
  %l_pixel = alloca [4 x i8], align 1
  %l_buf = alloca i8*, align 8
  %l_ptr = alloca i8*, align 8
  %l_pv_drawable = alloca %struct._GimpDrawable*, align 8
  %l_x = alloca i32, align 4
  %l_y = alloca i32, align 4
  %l_ofx = alloca i32, align 4
  %l_ofy = alloca i32, align 4
  %l_gdrw = alloca %struct.t_GDRW, align 8
  %gdrw = alloca %struct.t_GDRW*, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %layer_id, i32* %layer_id.addr, align 4
  %0 = load i32, i32* %layer_id.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %l_pv_drawable, align 8
  %call1 = call noalias i8* @g_malloc_n(i64 262144, i64 1)
  store i8* %call1, i8** %l_buf, align 8
  store i8* %call1, i8** %l_ptr, align 8
  store %struct.t_GDRW* %l_gdrw, %struct.t_GDRW** %gdrw, align 8
  %1 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %l_pv_drawable, align 8
  call void @p_init_gdrw(%struct.t_GDRW* %1, %struct._GimpDrawable* %2, i32 0, i32 0)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %l_pv_drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %div = udiv i32 %4, 2
  %sub = sub i32 %div, 128
  store i32 %sub, i32* %l_ofx, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %l_pv_drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  %div2 = udiv i32 %6, 2
  %sub3 = sub i32 %div2, 128
  store i32 %sub3, i32* %l_ofy, align 4
  store i32 0, i32* %l_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %7 = load i32, i32* %l_y, align 4
  %cmp = icmp slt i32 %7, 256
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l_x, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %l_x, align 4
  %cmp5 = icmp slt i32 %8, 256
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw, align 8
  %10 = load i32, i32* %l_x, align 4
  %11 = load i32, i32* %l_ofx, align 4
  %add = add nsw i32 %10, %11
  %12 = load i32, i32* %l_y, align 4
  %13 = load i32, i32* %l_ofy, align 4
  %add7 = add nsw i32 %12, %13
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  call void @p_get_pixel(%struct.t_GDRW* %9, i32 %add, i32 %add7, i8* %arrayidx)
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %color = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 9
  %15 = load i32, i32* %color, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  %16 = load i8, i8* %arrayidx8, align 1
  %17 = load i8*, i8** %l_ptr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 1
  %18 = load i8, i8* %arrayidx10, align 1
  %19 = load i8*, i8** %l_ptr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %18, i8* %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 2
  %20 = load i8, i8* %arrayidx12, align 1
  %21 = load i8*, i8** %l_ptr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %20, i8* %arrayidx13, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.6
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  %22 = load i8, i8* %arrayidx14, align 1
  %23 = load i8*, i8** %l_ptr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  %24 = load i8, i8* %arrayidx16, align 1
  %25 = load i8*, i8** %l_ptr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  %26 = load i8, i8* %arrayidx18, align 1
  %27 = load i8*, i8** %l_ptr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %arrayidx19, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw, align 8
  %index_alpha = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %28, i32 0, i32 5
  %29 = load i32, i32* %index_alpha, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 %idxprom
  %30 = load i8, i8* %arrayidx20, align 1
  %31 = load i8*, i8** %l_ptr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %31, i64 3
  store i8 %30, i8* %arrayidx21, align 1
  %32 = load i8*, i8** %l_ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %add.ptr, i8** %l_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %l_x, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %l_x, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %34 = load i32, i32* %l_y, align 4
  %inc23 = add nsw i32 %34, 1
  store i32 %inc23, i32* %l_y, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %pv_widget = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %35, i32 0, i32 2
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %pv_widget, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_preview_area_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call25)
  %38 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpPreviewArea*
  %39 = load i8*, i8** %l_buf, align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %38, i32 0, i32 0, i32 256, i32 256, i32 1, i8* %39, i32 1024)
  %40 = load i8*, i8** %l_buf, align 8
  call void @g_free(i8* %40)
  %41 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw, align 8
  call void @p_end_gdrw(%struct.t_GDRW* %41)
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_new_sub_path(%struct._cairo*) #1

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @p_cd_from_bval(%struct._BenderDialog* %cd, %struct._BenderValues* %bval) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %bval.addr = alloca %struct._BenderValues*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store %struct._BenderValues* %bval, %struct._BenderValues** %bval.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 256
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %curve = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx5, align 1
  %6 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve8 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %8, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve8, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx9, i32 0, i64 %idxprom6
  store i8 %5, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.37, %for.end
  %10 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %10, 17
  br i1 %cmp12, label %for.body.13, label %for.end.39

for.body.13:                                      ; preds = %for.cond.11
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %points = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx16, i32 0, i64 %idxprom14
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx17, i32 0, i64 0
  %14 = load double, double* %arrayidx18, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points21 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %17, i32 0, i32 17
  %arrayidx22 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points21, i32 0, i64 %idxprom20
  %arrayidx23 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx22, i32 0, i64 %idxprom19
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx23, i32 0, i64 0
  store double %14, double* %arrayidx24, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %20 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %points27 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %20, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points27, i32 0, i64 %idxprom26
  %arrayidx29 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx28, i32 0, i64 %idxprom25
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx29, i32 0, i64 1
  %21 = load double, double* %arrayidx30, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points33 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 17
  %arrayidx34 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points33, i32 0, i64 %idxprom32
  %arrayidx35 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx34, i32 0, i64 %idxprom31
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx35, i32 0, i64 1
  store double %21, double* %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.13
  %25 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %25, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.11

for.end.39:                                       ; preds = %for.cond.11
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %26 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %27 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %curve_type = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %27, i32 0, i32 2
  %28 = load i32, i32* %curve_type, align 4
  %29 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_type43 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %29, i32 0, i32 16
  store i32 %28, i32* %curve_type43, align 4
  %30 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %smoothing = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %30, i32 0, i32 3
  %31 = load i32, i32* %smoothing, align 4
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %smoothing44 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %32, i32 0, i32 24
  store i32 %31, i32* %smoothing44, align 4
  %33 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %antialias = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %33, i32 0, i32 4
  %34 = load i32, i32* %antialias, align 4
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %antialias45 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %35, i32 0, i32 25
  store i32 %34, i32* %antialias45, align 4
  %36 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %work_on_copy = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %36, i32 0, i32 5
  %37 = load i32, i32* %work_on_copy, align 4
  %38 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %work_on_copy46 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %38, i32 0, i32 26
  store i32 %37, i32* %work_on_copy46, align 4
  %39 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %rotation = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %39, i32 0, i32 6
  %40 = load double, double* %rotation, align 8
  %41 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rotation47 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %41, i32 0, i32 27
  store double %40, double* %rotation47, align 8
  ret void
}

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_layer_copy(i32) #1

declare i32 @gimp_item_set_visible(i32, i32) #1

declare i32 @gimp_item_set_name(i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @p_gimp_rotate(i32 %image_id, i32 %drawable_id, i32 %interpolation, double %angle_deg) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %angle_deg.addr = alloca double, align 8
  %l_angle_rad = alloca double, align 8
  %l_rc = alloca i32, align 4
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %angle_deg, double* %angle_deg.addr, align 8
  %0 = load double, double* %angle_deg.addr, align 8
  %mul = fmul double %0, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  store double %div, double* %l_angle_rad, align 8
  %call = call i32 @gimp_context_push()
  %1 = load i32, i32* %interpolation.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @gimp_context_set_interpolation(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @gimp_context_set_transform_resize(i32 0)
  %2 = load i32, i32* %drawable_id.addr, align 4
  %3 = load double, double* %l_angle_rad, align 8
  %call3 = call i32 @gimp_item_transform_rotate(i32 %2, double %3, i32 1, double -1.000000e+00, double -1.000000e+00)
  store i32 %call3, i32* %l_rc, align 4
  %call4 = call i32 @gimp_context_pop()
  %4 = load i32, i32* %l_rc, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.140, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %5 = load i32, i32* %l_rc, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @p_bender_calculate_iter_curve(%struct._BenderDialog* %cd, i32 %xmax, i32 %ymax) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %l_x = alloca i32, align 4
  %l_outline = alloca i32, align 4
  %cd_from = alloca %struct._BenderDialog*, align 8
  %cd_to = alloca %struct._BenderDialog*, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 10
  %1 = load i32, i32* %outline, align 4
  store i32 %1, i32* %l_outline, align 4
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_from = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 31
  %3 = load %struct._BenderValues*, %struct._BenderValues** %bval_from, align 8
  %cmp = icmp eq %struct._BenderValues* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_to = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 32
  %5 = load %struct._BenderValues*, %struct._BenderValues** %bval_to, align 8
  %cmp1 = icmp eq %struct._BenderValues* %5, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 33
  %7 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr, align 8
  %cmp3 = icmp eq %struct._BenderValues* %7, null
  br i1 %cmp3, label %if.then, label %if.else.10

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %8 = load i32, i32* @gb_debug, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %9, i32 0, i32 16
  %10 = load i32, i32* %curve_type, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline7 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %11, i32 0, i32 10
  store i32 0, i32* %outline7, align 4
  %12 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %13 = load i32, i32* %xmax.addr, align 4
  %14 = load i32, i32* %ymax.addr, align 4
  call void @bender_calculate_curve(%struct._BenderDialog* %12, i32 %13, i32 %14, i32 0)
  %15 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline8 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %15, i32 0, i32 10
  store i32 1, i32* %outline8, align 4
  %16 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %17 = load i32, i32* %xmax.addr, align 4
  %18 = load i32, i32* %ymax.addr, align 4
  call void @bender_calculate_curve(%struct._BenderDialog* %16, i32 %17, i32 %18, i32 0)
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %19 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %20 = load i32, i32* %xmax.addr, align 4
  %21 = load i32, i32* %ymax.addr, align 4
  call void @p_stretch_curves(%struct._BenderDialog* %19, i32 %20, i32 %21)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  br label %if.end.86

if.else.10:                                       ; preds = %lor.lhs.false.2
  %22 = load i32, i32* @gb_debug, align 4
  %tobool11 = icmp ne i32 %22, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else.10
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.142, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.else.10
  %call15 = call noalias i8* @g_malloc_n(i64 1, i64 1272)
  %23 = bitcast i8* %call15 to %struct._BenderDialog*
  store %struct._BenderDialog* %23, %struct._BenderDialog** %cd_from, align 8
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %25 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_from16 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %25, i32 0, i32 31
  %26 = load %struct._BenderValues*, %struct._BenderValues** %bval_from16, align 8
  call void @p_cd_from_bval(%struct._BenderDialog* %24, %struct._BenderValues* %26)
  %27 = load i32, i32* %xmax.addr, align 4
  %add = add nsw i32 1, %27
  %conv = sext i32 %add to i64
  %call17 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %28 = bitcast i8* %call17 to i32*
  %29 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %curve_ptr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %29, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr, i32 0, i64 0
  store i32* %28, i32** %arrayidx, align 8
  %30 = load i32, i32* %xmax.addr, align 4
  %add18 = add nsw i32 1, %30
  %conv19 = sext i32 %add18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 4)
  %31 = bitcast i8* %call20 to i32*
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %curve_ptr21 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %32, i32 0, i32 19
  %arrayidx22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr21, i32 0, i64 1
  store i32* %31, i32** %arrayidx22, align 8
  %call23 = call noalias i8* @g_malloc_n(i64 1, i64 1272)
  %33 = bitcast i8* %call23 to %struct._BenderDialog*
  store %struct._BenderDialog* %33, %struct._BenderDialog** %cd_to, align 8
  %34 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %35 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_to24 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %35, i32 0, i32 32
  %36 = load %struct._BenderValues*, %struct._BenderValues** %bval_to24, align 8
  call void @p_cd_from_bval(%struct._BenderDialog* %34, %struct._BenderValues* %36)
  %37 = load i32, i32* %xmax.addr, align 4
  %add25 = add nsw i32 1, %37
  %conv26 = sext i32 %add25 to i64
  %call27 = call noalias i8* @g_malloc_n(i64 %conv26, i64 4)
  %38 = bitcast i8* %call27 to i32*
  %39 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %curve_ptr28 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %39, i32 0, i32 19
  %arrayidx29 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr28, i32 0, i64 0
  store i32* %38, i32** %arrayidx29, align 8
  %40 = load i32, i32* %xmax.addr, align 4
  %add30 = add nsw i32 1, %40
  %conv31 = sext i32 %add30 to i64
  %call32 = call noalias i8* @g_malloc_n(i64 %conv31, i64 4)
  %41 = bitcast i8* %call32 to i32*
  %42 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %curve_ptr33 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %42, i32 0, i32 19
  %arrayidx34 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr33, i32 0, i64 1
  store i32* %41, i32** %arrayidx34, align 8
  %43 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %curve_type35 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %43, i32 0, i32 16
  %44 = load i32, i32* %curve_type35, align 4
  %cmp36 = icmp eq i32 %44, 0
  br i1 %cmp36, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %if.end.14
  %45 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %outline39 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %45, i32 0, i32 10
  store i32 0, i32* %outline39, align 4
  %46 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %47 = load i32, i32* %xmax.addr, align 4
  %48 = load i32, i32* %ymax.addr, align 4
  call void @bender_calculate_curve(%struct._BenderDialog* %46, i32 %47, i32 %48, i32 0)
  %49 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %outline40 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %49, i32 0, i32 10
  store i32 1, i32* %outline40, align 4
  %50 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %51 = load i32, i32* %xmax.addr, align 4
  %52 = load i32, i32* %ymax.addr, align 4
  call void @bender_calculate_curve(%struct._BenderDialog* %50, i32 %51, i32 %52, i32 0)
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.14
  %53 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %54 = load i32, i32* %xmax.addr, align 4
  %55 = load i32, i32* %ymax.addr, align 4
  call void @p_stretch_curves(%struct._BenderDialog* %53, i32 %54, i32 %55)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.38
  %56 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %curve_type43 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %56, i32 0, i32 16
  %57 = load i32, i32* %curve_type43, align 4
  %cmp44 = icmp eq i32 %57, 0
  br i1 %cmp44, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %if.end.42
  %58 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %outline47 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %58, i32 0, i32 10
  store i32 0, i32* %outline47, align 4
  %59 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %60 = load i32, i32* %xmax.addr, align 4
  %61 = load i32, i32* %ymax.addr, align 4
  call void @bender_calculate_curve(%struct._BenderDialog* %59, i32 %60, i32 %61, i32 0)
  %62 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %outline48 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %62, i32 0, i32 10
  store i32 1, i32* %outline48, align 4
  %63 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %64 = load i32, i32* %xmax.addr, align 4
  %65 = load i32, i32* %ymax.addr, align 4
  call void @bender_calculate_curve(%struct._BenderDialog* %63, i32 %64, i32 %65, i32 0)
  br label %if.end.50

if.else.49:                                       ; preds = %if.end.42
  %66 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %67 = load i32, i32* %xmax.addr, align 4
  %68 = load i32, i32* %ymax.addr, align 4
  call void @p_stretch_curves(%struct._BenderDialog* %66, i32 %67, i32 %68)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.46
  store i32 0, i32* %l_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %69 = load i32, i32* %l_x, align 4
  %70 = load i32, i32* %xmax.addr, align 4
  %cmp51 = icmp sle i32 %69, %70
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load i32, i32* %l_x, align 4
  %idxprom = sext i32 %71 to i64
  %72 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr53 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %72, i32 0, i32 19
  %arrayidx54 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr53, i32 0, i64 0
  %73 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %73, i64 %idxprom
  %74 = load i32, i32* %l_x, align 4
  %idxprom56 = sext i32 %74 to i64
  %75 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %curve_ptr57 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %75, i32 0, i32 19
  %arrayidx58 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr57, i32 0, i64 0
  %76 = load i32*, i32** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %76, i64 %idxprom56
  %77 = load i32, i32* %arrayidx59, align 4
  %78 = load i32, i32* %l_x, align 4
  %idxprom60 = sext i32 %78 to i64
  %79 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %curve_ptr61 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %79, i32 0, i32 19
  %arrayidx62 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr61, i32 0, i64 0
  %80 = load i32*, i32** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %80, i64 %idxprom60
  %81 = load i32, i32* %arrayidx63, align 4
  %82 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr64 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %82, i32 0, i32 33
  %83 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr64, align 8
  %total_steps = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %83, i32 0, i32 7
  %84 = load i32, i32* %total_steps, align 4
  %85 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr65 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %85, i32 0, i32 33
  %86 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr65, align 8
  %current_step = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %86, i32 0, i32 8
  %87 = load double, double* %current_step, align 8
  call void @p_delta_gint32(i32* %arrayidx55, i32 %77, i32 %81, i32 %84, double %87)
  %88 = load i32, i32* %l_x, align 4
  %idxprom66 = sext i32 %88 to i64
  %89 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr67 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %89, i32 0, i32 19
  %arrayidx68 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr67, i32 0, i64 1
  %90 = load i32*, i32** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %90, i64 %idxprom66
  %91 = load i32, i32* %l_x, align 4
  %idxprom70 = sext i32 %91 to i64
  %92 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %curve_ptr71 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %92, i32 0, i32 19
  %arrayidx72 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr71, i32 0, i64 1
  %93 = load i32*, i32** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %93, i64 %idxprom70
  %94 = load i32, i32* %arrayidx73, align 4
  %95 = load i32, i32* %l_x, align 4
  %idxprom74 = sext i32 %95 to i64
  %96 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %curve_ptr75 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %96, i32 0, i32 19
  %arrayidx76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr75, i32 0, i64 1
  %97 = load i32*, i32** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %97, i64 %idxprom74
  %98 = load i32, i32* %arrayidx77, align 4
  %99 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr78 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %99, i32 0, i32 33
  %100 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr78, align 8
  %total_steps79 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %100, i32 0, i32 7
  %101 = load i32, i32* %total_steps79, align 4
  %102 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %bval_curr80 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %102, i32 0, i32 33
  %103 = load %struct._BenderValues*, %struct._BenderValues** %bval_curr80, align 8
  %current_step81 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %103, i32 0, i32 8
  %104 = load double, double* %current_step81, align 8
  call void @p_delta_gint32(i32* %arrayidx69, i32 %94, i32 %98, i32 %101, double %104)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %105 = load i32, i32* %l_x, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %l_x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %curve_ptr82 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %106, i32 0, i32 19
  %arrayidx83 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr82, i32 0, i64 0
  %107 = load i32*, i32** %arrayidx83, align 8
  %108 = bitcast i32* %107 to i8*
  call void @g_free(i8* %108)
  %109 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %curve_ptr84 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %109, i32 0, i32 19
  %arrayidx85 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr84, i32 0, i64 1
  %110 = load i32*, i32** %arrayidx85, align 8
  %111 = bitcast i32* %110 to i8*
  call void @g_free(i8* %111)
  %112 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_from, align 8
  %113 = bitcast %struct._BenderDialog* %112 to i8*
  call void @g_free(i8* %113)
  %114 = load %struct._BenderDialog*, %struct._BenderDialog** %cd_to, align 8
  %115 = bitcast %struct._BenderDialog* %114 to i8*
  call void @g_free(i8* %115)
  br label %if.end.86

if.end.86:                                        ; preds = %for.end, %if.end.9
  %116 = load i32, i32* %l_outline, align 4
  %117 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %outline87 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %117, i32 0, i32 10
  store i32 %116, i32* %outline87, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bender_init_min_max(%struct._BenderDialog* %cd, i32 %xmax) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %xmax.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %min2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 20
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %min2, i32 0, i64 %idxprom
  store i32 65000, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %max2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %max2, i32 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %xmax.addr, align 4
  %cmp4 = icmp sle i32 %5, %6
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %9, i32 0, i32 19
  %arrayidx8 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr, i32 0, i64 %idxprom7
  %10 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx9, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %max211 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 21
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %max211, i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sgt i32 %11, %14
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr16 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %17, i32 0, i32 19
  %arrayidx17 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr16, i32 0, i64 %idxprom15
  %18 = load i32*, i32** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %18, i64 %idxprom14
  %19 = load i32, i32* %arrayidx18, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %max220 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %21, i32 0, i32 21
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %max220, i32 0, i64 %idxprom19
  store i32 %19, i32* %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  %22 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %24 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr24 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %24, i32 0, i32 19
  %arrayidx25 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr24, i32 0, i64 %idxprom23
  %25 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %25, i64 %idxprom22
  %26 = load i32, i32* %arrayidx26, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %min228 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %28, i32 0, i32 20
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %min228, i32 0, i64 %idxprom27
  %29 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp slt i32 %26, %29
  br i1 %cmp30, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %if.end
  %30 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %31 to i64
  %32 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr34 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %32, i32 0, i32 19
  %arrayidx35 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr34, i32 0, i64 %idxprom33
  %33 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %33, i64 %idxprom32
  %34 = load i32, i32* %arrayidx36, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %min238 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %36, i32 0, i32 20
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %min238, i32 0, i64 %idxprom37
  store i32 %34, i32* %arrayidx39, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.31, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %38 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %38, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %39 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr44 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %39, i32 0, i32 19
  %arrayidx45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr44, i32 0, i64 0
  %40 = load i32*, i32** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx46, align 4
  %42 = load i32, i32* %xmax.addr, align 4
  %idxprom47 = sext i32 %42 to i64
  %43 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr48 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %43, i32 0, i32 19
  %arrayidx49 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr48, i32 0, i64 0
  %44 = load i32*, i32** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %44, i64 %idxprom47
  %45 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp slt i32 %41, %45
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.43
  %46 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr52 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %46, i32 0, i32 19
  %arrayidx53 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr52, i32 0, i64 0
  %47 = load i32*, i32** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx54, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.43
  %49 = load i32, i32* %xmax.addr, align 4
  %idxprom55 = sext i32 %49 to i64
  %50 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr56 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %50, i32 0, i32 19
  %arrayidx57 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr56, i32 0, i64 0
  %51 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %51, i64 %idxprom55
  %52 = load i32, i32* %arrayidx58, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %52, %cond.false ]
  %53 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %53, i32 0, i32 22
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %zero2, i32 0, i64 0
  store i32 %cond, i32* %arrayidx59, align 4
  %54 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr60 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %54, i32 0, i32 19
  %arrayidx61 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr60, i32 0, i64 1
  %55 = load i32*, i32** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx62, align 4
  %57 = load i32, i32* %xmax.addr, align 4
  %idxprom63 = sext i32 %57 to i64
  %58 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr64 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %58, i32 0, i32 19
  %arrayidx65 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr64, i32 0, i64 1
  %59 = load i32*, i32** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %59, i64 %idxprom63
  %60 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp sgt i32 %56, %60
  br i1 %cmp67, label %cond.true.68, label %cond.false.72

cond.true.68:                                     ; preds = %cond.end
  %61 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr69 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %61, i32 0, i32 19
  %arrayidx70 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr69, i32 0, i64 1
  %62 = load i32*, i32** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx71, align 4
  br label %cond.end.77

cond.false.72:                                    ; preds = %cond.end
  %64 = load i32, i32* %xmax.addr, align 4
  %idxprom73 = sext i32 %64 to i64
  %65 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr74 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %65, i32 0, i32 19
  %arrayidx75 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr74, i32 0, i64 1
  %66 = load i32*, i32** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %66, i64 %idxprom73
  %67 = load i32, i32* %arrayidx76, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.72, %cond.true.68
  %cond78 = phi i32 [ %63, %cond.true.68 ], [ %67, %cond.false.72 ]
  %68 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero279 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %68, i32 0, i32 22
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* %zero279, i32 0, i64 1
  store i32 %cond78, i32* %arrayidx80, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @p_upper_curve_extend(%struct._BenderDialog* %cd, i32 %drawable_width, i32 %drawable_height) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %drawable_width.addr = alloca i32, align 4
  %drawable_height.addr = alloca i32, align 4
  %l_y1 = alloca i32, align 4
  %l_y2 = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %drawable_width, i32* %drawable_width.addr, align 4
  store i32 %drawable_height, i32* %drawable_height.addr, align 4
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %max2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 21
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %max2, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 22
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %zero2, i32 0, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %l_y1, align 4
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %max22 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %max22, i32 0, i64 1
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero24 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 22
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %zero24, i32 0, i64 1
  %7 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %5, %7
  %8 = load i32, i32* %drawable_height.addr, align 4
  %sub7 = sub nsw i32 %sub6, %8
  store i32 %sub7, i32* %l_y2, align 4
  %9 = load i32, i32* %l_y1, align 4
  %10 = load i32, i32* %l_y2, align 4
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %l_y1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %l_y2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @p_lower_curve_extend(%struct._BenderDialog* %cd, i32 %drawable_width, i32 %drawable_height) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %drawable_width.addr = alloca i32, align 4
  %drawable_height.addr = alloca i32, align 4
  %l_y1 = alloca i32, align 4
  %l_y2 = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %drawable_width, i32* %drawable_width.addr, align 4
  store i32 %drawable_height, i32* %drawable_height.addr, align 4
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %zero2, i32 0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %min2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %2, i32 0, i32 20
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %min2, i32 0, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %l_y1, align 4
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero22 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %zero22, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %min24 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 20
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %min24, i32 0, i64 0
  %7 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %5, %7
  %8 = load i32, i32* %drawable_height.addr, align 4
  %sub7 = sub nsw i32 %sub6, %8
  store i32 %sub7, i32* %l_y2, align 4
  %9 = load i32, i32* %l_y1, align 4
  %10 = load i32, i32* %l_y2, align 4
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %l_y1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %l_y2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpDrawable* @p_add_layer(i32 %width, i32 %height, %struct._GimpDrawable* %src_drawable) #0 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %src_drawable.addr = alloca %struct._GimpDrawable*, align 8
  %l_type = alloca i32, align 4
  %l_new_layer_id = alloca i32, align 4
  %l_name = alloca i8*, align 8
  %l_name2 = alloca i8*, align 8
  %l_opacity = alloca double, align 8
  %l_mode = alloca i32, align 4
  %l_visible = alloca i32, align 4
  %image_id = alloca i32, align 4
  %stack_position = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpDrawable* %src_drawable, %struct._GimpDrawable** %src_drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_item_get_image(i32 %1)
  store i32 %call, i32* %image_id, align 4
  store i32 0, i32* %stack_position, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_type(i32 %3)
  store i32 %call2, i32* %l_type, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_item_get_visible(i32 %5)
  store i32 %call4, i32* %l_visible, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id5, align 4
  %call6 = call i8* @gimp_item_get_name(i32 %7)
  store i8* %call6, i8** %l_name2, align 8
  %8 = load i8*, i8** %l_name2, align 8
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i8* %8)
  store i8* %call7, i8** %l_name, align 8
  %9 = load i8*, i8** %l_name2, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_layer_get_mode(i32 %11)
  store i32 %call9, i32* %l_mode, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable.addr, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id10, align 4
  %call11 = call double @gimp_layer_get_opacity(i32 %13)
  store double %call11, double* %l_opacity, align 8
  %14 = load i32, i32* %image_id, align 4
  %15 = load i8*, i8** %l_name, align 8
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %height.addr, align 4
  %18 = load i32, i32* %l_type, align 4
  %19 = load double, double* %l_opacity, align 8
  %20 = load i32, i32* %l_mode, align 4
  %call12 = call i32 @gimp_layer_new(i32 %14, i8* %15, i32 %16, i32 %17, i32 %18, double %19, i32 %20)
  store i32 %call12, i32* %l_new_layer_id, align 4
  %21 = load i8*, i8** %l_name, align 8
  call void @g_free(i8* %21)
  %22 = load i32, i32* %l_new_layer_id, align 4
  %call13 = call i32 @gimp_drawable_has_alpha(i32 %22)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %l_new_layer_id, align 4
  %call14 = call i32 @gimp_layer_add_alpha(i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %l_new_layer_id, align 4
  %call15 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %24)
  store %struct._GimpDrawable* %call15, %struct._GimpDrawable** @p_add_layer.l_new_drawable, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** @p_add_layer.l_new_drawable, align 8
  %tobool16 = icmp ne %struct._GimpDrawable* %25, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.144, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %26 = load i32, i32* %image_id, align 4
  %27 = load i32, i32* %l_new_layer_id, align 4
  %28 = load i32, i32* %stack_position, align 4
  %call19 = call i32 @gimp_image_insert_layer(i32 %26, i32 %27, i32 -1, i32 %28)
  %29 = load i32, i32* %l_new_layer_id, align 4
  %30 = load i32, i32* %l_visible, align 4
  %call20 = call i32 @gimp_item_set_visible(i32 %29, i32 %30)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** @p_add_layer.l_new_drawable, align 8
  store %struct._GimpDrawable* %31, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %32
}

declare i32 @gimp_layer_resize(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @p_clear_drawable(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %l_row = alloca i32, align 4
  %l_ptr = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %0, i32 0, i32 0, i32 %2, i32 %4, i32 1, i32 0)
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %pixel_rgn)
  store i8* %call, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %5 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %l_ptr, align 8
  store i32 0, i32* %l_row, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %l_row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 7
  %8 = load i32, i32* %h, align 4
  %cmp2 = icmp ult i32 %7, %8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i8*, i8** %l_ptr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 6
  %10 = load i32, i32* %w, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 3
  %12 = load i32, i32* %bpp, align 4
  %mul = mul i32 %10, %12
  %conv = zext i32 %mul to i64
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %conv, i32 1, i1 false)
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 3
  %13 = load i32, i32* %rowstride, align 4
  %14 = load i8*, i8** %l_ptr, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %l_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %15 = load i32, i32* %l_row, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %l_row, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %16 = load i8*, i8** %pr, align 8
  %call5 = call i8* @gimp_pixel_rgns_process(i8* %16)
  store i8* %call5, i8** %pr, align 8
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_vertical_bend(%struct._BenderDialog* %cd, %struct.t_GDRW* %src_gdrw, %struct.t_GDRW* %dst_gdrw) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %src_gdrw.addr = alloca %struct.t_GDRW*, align 8
  %dst_gdrw.addr = alloca %struct.t_GDRW*, align 8
  %l_row = alloca i32, align 4
  %l_col = alloca i32, align 4
  %l_first_row = alloca i32, align 4
  %l_first_col = alloca i32, align 4
  %l_last_row = alloca i32, align 4
  %l_last_col = alloca i32, align 4
  %l_x = alloca i32, align 4
  %l_y = alloca i32, align 4
  %l_x2 = alloca i32, align 4
  %l_y2 = alloca i32, align 4
  %l_curvy = alloca i32, align 4
  %l_nb_curvy = alloca i32, align 4
  %l_nb2_curvy = alloca i32, align 4
  %l_desty = alloca i32, align 4
  %l_othery = alloca i32, align 4
  %l_miny = alloca i32, align 4
  %l_maxy = alloca i32, align 4
  %l_sign = alloca i32, align 4
  %l_dy = alloca i32, align 4
  %l_diff = alloca i32, align 4
  %l_topshift = alloca i32, align 4
  %l_progress_step = alloca float, align 4
  %l_progress_max = alloca float, align 4
  %l_progress = alloca float, align 4
  %last_arr = alloca %struct.t_Last*, align 8
  %first_arr = alloca %struct.t_Last*, align 8
  %color = alloca [4 x i8], align 1
  %mixcolor = alloca [4 x i8], align 1
  %l_alias_dir = alloca i32, align 4
  %l_mixmask = alloca i8, align 1
  %l_alpha_lo = alloca i8, align 1
  %alpha1 = alloca i64, align 8
  %alpha2 = alloca i64, align 8
  %alpha = alloca i64, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store %struct.t_GDRW* %src_gdrw, %struct.t_GDRW** %src_gdrw.addr, align 8
  store %struct.t_GDRW* %dst_gdrw, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %1 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %1, i32 0, i32 0
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %4 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %4, i32 0, i32 0
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  %call = call i32 @p_upper_curve_extend(%struct._BenderDialog* %0, i32 %3, i32 %6)
  store i32 %call, i32* %l_topshift, align 4
  store i32 0, i32* %l_maxy, align 4
  store i32 0, i32* %l_miny, align 4
  store i32 0, i32* %l_nb2_curvy, align 4
  store i32 0, i32* %l_nb_curvy, align 4
  store i32 0, i32* %l_curvy, align 4
  store i32 0, i32* %l_diff, align 4
  %7 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %x2 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %7, i32 0, i32 3
  %8 = load i32, i32* %x2, align 4
  %conv = sext i32 %8 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %9 = bitcast i8* %call2 to %struct.t_Last*
  store %struct.t_Last* %9, %struct.t_Last** %last_arr, align 8
  %10 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %x23 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %10, i32 0, i32 3
  %11 = load i32, i32* %x23, align 4
  %conv4 = sext i32 %11 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 8)
  %12 = bitcast i8* %call5 to %struct.t_Last*
  store %struct.t_Last* %12, %struct.t_Last** %first_arr, align 8
  %13 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %13, i32 0, i32 2
  %14 = load i32, i32* %y1, align 4
  %15 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_height = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %15, i32 0, i32 9
  %16 = load i32, i32* %tile_height, align 4
  %div = sdiv i32 %14, %16
  store i32 %div, i32* %l_first_row, align 4
  %17 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y2 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %17, i32 0, i32 4
  %18 = load i32, i32* %y2, align 4
  %19 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_height6 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %19, i32 0, i32 9
  %20 = load i32, i32* %tile_height6, align 4
  %div7 = sdiv i32 %18, %20
  store i32 %div7, i32* %l_last_row, align 4
  %21 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %x1 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %21, i32 0, i32 1
  %22 = load i32, i32* %x1, align 4
  %23 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_width = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %23, i32 0, i32 8
  %24 = load i32, i32* %tile_width, align 4
  %div8 = sdiv i32 %22, %24
  store i32 %div8, i32* %l_first_col, align 4
  %25 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %x29 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %25, i32 0, i32 3
  %26 = load i32, i32* %x29, align 4
  %27 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_width10 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %27, i32 0, i32 8
  %28 = load i32, i32* %tile_width10, align 4
  %div11 = sdiv i32 %26, %28
  store i32 %div11, i32* %l_last_col, align 4
  %29 = load i32, i32* %l_last_row, align 4
  %add = add nsw i32 1, %29
  %30 = load i32, i32* %l_first_row, align 4
  %sub = sub nsw i32 %add, %30
  %31 = load i32, i32* %l_last_col, align 4
  %add12 = add nsw i32 1, %31
  %32 = load i32, i32* %l_first_col, align 4
  %sub13 = sub nsw i32 %add12, %32
  %mul = mul nsw i32 %sub, %sub13
  %conv14 = sitofp i32 %mul to float
  store float %conv14, float* %l_progress_max, align 4
  %33 = load float, float* %l_progress_max, align 4
  %conv15 = fpext float %33 to double
  %div16 = fdiv double 1.000000e+00, %conv15
  %conv17 = fptrunc double %div16 to float
  store float %conv17, float* %l_progress_step, align 4
  store float 0.000000e+00, float* %l_progress, align 4
  %34 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %show_progress = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %34, i32 0, i32 23
  %35 = load i32, i32* %show_progress, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0)) #5
  %call19 = call i32 @gimp_progress_init(i8* %call18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load i32, i32* %l_first_row, align 4
  store i32 %36, i32* %l_row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.478, %if.end
  %37 = load i32, i32* %l_row, align 4
  %38 = load i32, i32* %l_last_row, align 4
  %cmp = icmp sle i32 %37, %38
  br i1 %cmp, label %for.body, label %for.end.480

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %l_first_col, align 4
  store i32 %39, i32* %l_col, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.475, %for.body
  %40 = load i32, i32* %l_col, align 4
  %41 = load i32, i32* %l_last_col, align 4
  %cmp22 = icmp sle i32 %40, %41
  br i1 %cmp22, label %for.body.24, label %for.end.477

for.body.24:                                      ; preds = %for.cond.21
  %42 = load i32, i32* %l_col, align 4
  %43 = load i32, i32* %l_first_col, align 4
  %cmp25 = icmp eq i32 %42, %43
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.body.24
  %44 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %x128 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %44, i32 0, i32 1
  %45 = load i32, i32* %x128, align 4
  store i32 %45, i32* %l_x, align 4
  br label %if.end.31

if.else:                                          ; preds = %for.body.24
  %46 = load i32, i32* %l_col, align 4
  %47 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_width29 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %47, i32 0, i32 8
  %48 = load i32, i32* %tile_width29, align 4
  %mul30 = mul nsw i32 %46, %48
  store i32 %mul30, i32* %l_x, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.27
  %49 = load i32, i32* %l_col, align 4
  %50 = load i32, i32* %l_last_col, align 4
  %cmp32 = icmp eq i32 %49, %50
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.31
  %51 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %x235 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %51, i32 0, i32 3
  %52 = load i32, i32* %x235, align 4
  store i32 %52, i32* %l_x2, align 4
  br label %if.end.40

if.else.36:                                       ; preds = %if.end.31
  %53 = load i32, i32* %l_col, align 4
  %add37 = add nsw i32 %53, 1
  %54 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_width38 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %54, i32 0, i32 8
  %55 = load i32, i32* %tile_width38, align 4
  %mul39 = mul nsw i32 %add37, %55
  store i32 %mul39, i32* %l_x2, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.36, %if.then.34
  %56 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %show_progress41 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %56, i32 0, i32 23
  %57 = load i32, i32* %show_progress41, align 4
  %tobool42 = icmp ne i32 %57, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.40
  %58 = load float, float* %l_progress_step, align 4
  %59 = load float, float* %l_progress, align 4
  %add44 = fadd float %59, %58
  store float %add44, float* %l_progress, align 4
  %conv45 = fpext float %add44 to double
  %call46 = call i32 @gimp_progress_update(double %conv45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.40
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.472, %if.end.47
  %60 = load i32, i32* %l_x, align 4
  %61 = load i32, i32* %l_x2, align 4
  %cmp49 = icmp slt i32 %60, %61
  br i1 %cmp49, label %for.body.51, label %for.end.474

for.body.51:                                      ; preds = %for.cond.48
  %62 = load i32, i32* %l_row, align 4
  %63 = load i32, i32* %l_first_row, align 4
  %cmp52 = icmp eq i32 %62, %63
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %for.body.51
  %64 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y155 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %64, i32 0, i32 2
  %65 = load i32, i32* %y155, align 4
  store i32 %65, i32* %l_y, align 4
  br label %if.end.59

if.else.56:                                       ; preds = %for.body.51
  %66 = load i32, i32* %l_row, align 4
  %67 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_height57 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %67, i32 0, i32 9
  %68 = load i32, i32* %tile_height57, align 4
  %mul58 = mul nsw i32 %66, %68
  store i32 %mul58, i32* %l_y, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.54
  %69 = load i32, i32* %l_row, align 4
  %70 = load i32, i32* %l_last_row, align 4
  %cmp60 = icmp eq i32 %69, %70
  br i1 %cmp60, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.end.59
  %71 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y263 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %71, i32 0, i32 4
  %72 = load i32, i32* %y263, align 4
  store i32 %72, i32* %l_y2, align 4
  br label %if.end.68

if.else.64:                                       ; preds = %if.end.59
  %73 = load i32, i32* %l_row, align 4
  %add65 = add nsw i32 %73, 1
  %74 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %tile_height66 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %74, i32 0, i32 9
  %75 = load i32, i32* %tile_height66, align 4
  %mul67 = mul nsw i32 %add65, %75
  store i32 %mul67, i32* %l_y2, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.64, %if.then.62
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.469, %if.end.68
  %76 = load i32, i32* %l_y, align 4
  %77 = load i32, i32* %l_y2, align 4
  %cmp70 = icmp slt i32 %76, %77
  br i1 %cmp70, label %for.body.72, label %for.end.471

for.body.72:                                      ; preds = %for.cond.69
  %78 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %79 = load i32, i32* %l_x, align 4
  %80 = load i32, i32* %l_y, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  call void @p_get_pixel(%struct.t_GDRW* %78, i32 %79, i32 %80, i8* %arraydecay)
  %81 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %82 = load i32, i32* %l_x, align 4
  %83 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable73 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %83, i32 0, i32 0
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable73, align 8
  %width74 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %84, i32 0, i32 1
  %85 = load i32, i32* %width74, align 4
  %86 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable75 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %86, i32 0, i32 0
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable75, align 8
  %height76 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %87, i32 0, i32 2
  %88 = load i32, i32* %height76, align 4
  %89 = load i32, i32* %l_y, align 4
  %conv77 = sitofp i32 %89 to double
  %call78 = call i32 @p_curve_get_dy(%struct._BenderDialog* %81, i32 %82, i32 %85, i32 %88, double %conv77)
  store i32 %call78, i32* %l_curvy, align 4
  %90 = load i32, i32* %l_y, align 4
  %91 = load i32, i32* %l_topshift, align 4
  %add79 = add nsw i32 %90, %91
  %92 = load i32, i32* %l_curvy, align 4
  %add80 = add nsw i32 %add79, %92
  store i32 %add80, i32* %l_desty, align 4
  %93 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %smoothing = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %93, i32 0, i32 24
  %94 = load i32, i32* %smoothing, align 4
  %tobool81 = icmp ne i32 %94, 0
  br i1 %tobool81, label %land.lhs.true, label %if.else.108

land.lhs.true:                                    ; preds = %for.body.72
  %95 = load i32, i32* %l_x, align 4
  %cmp82 = icmp sgt i32 %95, 0
  br i1 %cmp82, label %if.then.84, label %if.else.108

if.then.84:                                       ; preds = %land.lhs.true
  %96 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %97 = load i32, i32* %l_x, align 4
  %sub85 = sub nsw i32 %97, 1
  %98 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable86 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %98, i32 0, i32 0
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable86, align 8
  %width87 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %99, i32 0, i32 1
  %100 = load i32, i32* %width87, align 4
  %101 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable88 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %101, i32 0, i32 0
  %102 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable88, align 8
  %height89 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %102, i32 0, i32 2
  %103 = load i32, i32* %height89, align 4
  %104 = load i32, i32* %l_y, align 4
  %conv90 = sitofp i32 %104 to double
  %call91 = call i32 @p_curve_get_dy(%struct._BenderDialog* %96, i32 %sub85, i32 %100, i32 %103, double %conv90)
  store i32 %call91, i32* %l_nb_curvy, align 4
  %105 = load i32, i32* %l_nb_curvy, align 4
  %106 = load i32, i32* %l_curvy, align 4
  %cmp92 = icmp eq i32 %105, %106
  br i1 %cmp92, label %land.lhs.true.94, label %if.else.105

land.lhs.true.94:                                 ; preds = %if.then.84
  %107 = load i32, i32* %l_x, align 4
  %cmp95 = icmp sgt i32 %107, 1
  br i1 %cmp95, label %if.then.97, label %if.else.105

if.then.97:                                       ; preds = %land.lhs.true.94
  %108 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %109 = load i32, i32* %l_x, align 4
  %sub98 = sub nsw i32 %109, 2
  %110 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable99 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %110, i32 0, i32 0
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable99, align 8
  %width100 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 1
  %112 = load i32, i32* %width100, align 4
  %113 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable101 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %113, i32 0, i32 0
  %114 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable101, align 8
  %height102 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %114, i32 0, i32 2
  %115 = load i32, i32* %height102, align 4
  %116 = load i32, i32* %l_y, align 4
  %conv103 = sitofp i32 %116 to double
  %call104 = call i32 @p_curve_get_dy(%struct._BenderDialog* %108, i32 %sub98, i32 %112, i32 %115, double %conv103)
  store i32 %call104, i32* %l_nb2_curvy, align 4
  br label %if.end.106

if.else.105:                                      ; preds = %land.lhs.true.94, %if.then.84
  %117 = load i32, i32* %l_nb_curvy, align 4
  store i32 %117, i32* %l_nb2_curvy, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.97
  %118 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %119 = load i32, i32* %l_x, align 4
  %120 = load i32, i32* %l_desty, align 4
  %arraydecay107 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %121 = load i32, i32* %l_nb_curvy, align 4
  %122 = load i32, i32* %l_nb2_curvy, align 4
  %123 = load i32, i32* %l_curvy, align 4
  call void @p_put_mix_pixel(%struct.t_GDRW* %118, i32 %119, i32 %120, i8* %arraydecay107, i32 %121, i32 %122, i32 %123)
  br label %if.end.110

if.else.108:                                      ; preds = %land.lhs.true, %for.body.72
  %124 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %125 = load i32, i32* %l_x, align 4
  %126 = load i32, i32* %l_desty, align 4
  %arraydecay109 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  call void @p_put_pixel(%struct.t_GDRW* %124, i32 %125, i32 %126, i8* %arraydecay109)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.end.106
  %127 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %antialias = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %127, i32 0, i32 25
  %128 = load i32, i32* %antialias, align 4
  %tobool111 = icmp ne i32 %128, 0
  br i1 %tobool111, label %if.then.112, label %if.end.318

if.then.112:                                      ; preds = %if.end.110
  %129 = load i32, i32* %l_desty, align 4
  store i32 %129, i32* %l_othery, align 4
  %130 = load i32, i32* %l_y, align 4
  %131 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y1113 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %131, i32 0, i32 2
  %132 = load i32, i32* %y1113, align 4
  %cmp114 = icmp eq i32 %130, %132
  br i1 %cmp114, label %if.then.116, label %if.end.178

if.then.116:                                      ; preds = %if.then.112
  %133 = load i32, i32* %l_curvy, align 4
  %134 = load i32, i32* %l_x, align 4
  %idxprom = sext i32 %134 to i64
  %135 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx = getelementptr inbounds %struct.t_Last, %struct.t_Last* %135, i64 %idxprom
  %y = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx, i32 0, i32 0
  store i32 %133, i32* %y, align 4
  %136 = load i32, i32* %l_x, align 4
  %idxprom117 = sext i32 %136 to i64
  %137 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx118 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %137, i64 %idxprom117
  %color119 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx118, i32 0, i32 1
  %138 = bitcast [4 x i8]* %color119 to i8*
  %139 = bitcast [4 x i8]* %color to i8*
  %140 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %drawable120 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %140, i32 0, i32 0
  %141 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable120, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %141, i32 0, i32 3
  %142 = load i32, i32* %bpp, align 4
  %conv121 = zext i32 %142 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 %conv121, i32 1, i1 false)
  %143 = load i32, i32* %l_x, align 4
  %cmp122 = icmp sgt i32 %143, 0
  br i1 %cmp122, label %if.then.124, label %if.end.177

if.then.124:                                      ; preds = %if.then.116
  %144 = bitcast [4 x i8]* %mixcolor to i8*
  %145 = load i32, i32* %l_x, align 4
  %sub125 = sub nsw i32 %145, 1
  %idxprom126 = sext i32 %sub125 to i64
  %146 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx127 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %146, i64 %idxprom126
  %color128 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx127, i32 0, i32 1
  %147 = bitcast [4 x i8]* %color128 to i8*
  %148 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %drawable129 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %148, i32 0, i32 0
  %149 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable129, align 8
  %bpp130 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %149, i32 0, i32 3
  %150 = load i32, i32* %bpp130, align 4
  %conv131 = zext i32 %150 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %147, i64 %conv131, i32 1, i1 false)
  %151 = load i32, i32* %l_x, align 4
  %sub132 = sub nsw i32 %151, 1
  %idxprom133 = sext i32 %sub132 to i64
  %152 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx134 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %152, i64 %idxprom133
  %y135 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx134, i32 0, i32 0
  %153 = load i32, i32* %y135, align 4
  %154 = load i32, i32* %l_curvy, align 4
  %sub136 = sub nsw i32 %153, %154
  %call137 = call i32 @abs(i32 %sub136) #6
  %add138 = add nsw i32 %call137, 1
  store i32 %add138, i32* %l_diff, align 4
  %155 = load i32, i32* %l_x, align 4
  %sub139 = sub nsw i32 %155, 1
  %idxprom140 = sext i32 %sub139 to i64
  %156 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx141 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %156, i64 %idxprom140
  %y142 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx141, i32 0, i32 0
  %157 = load i32, i32* %y142, align 4
  %158 = load i32, i32* %l_curvy, align 4
  %cmp143 = icmp slt i32 %157, %158
  br i1 %cmp143, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.124
  %159 = load i32, i32* %l_x, align 4
  %sub145 = sub nsw i32 %159, 1
  %idxprom146 = sext i32 %sub145 to i64
  %160 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx147 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %160, i64 %idxprom146
  %y148 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx147, i32 0, i32 0
  %161 = load i32, i32* %y148, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.124
  %162 = load i32, i32* %l_curvy, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %161, %cond.true ], [ %162, %cond.false ]
  %sub149 = sub nsw i32 %cond, 1
  store i32 %sub149, i32* %l_miny, align 4
  %163 = load i32, i32* %l_x, align 4
  %sub150 = sub nsw i32 %163, 1
  %idxprom151 = sext i32 %sub150 to i64
  %164 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx152 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %164, i64 %idxprom151
  %y153 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx152, i32 0, i32 0
  %165 = load i32, i32* %y153, align 4
  %166 = load i32, i32* %l_curvy, align 4
  %cmp154 = icmp sgt i32 %165, %166
  br i1 %cmp154, label %cond.true.156, label %cond.false.161

cond.true.156:                                    ; preds = %cond.end
  %167 = load i32, i32* %l_x, align 4
  %sub157 = sub nsw i32 %167, 1
  %idxprom158 = sext i32 %sub157 to i64
  %168 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %arrayidx159 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %168, i64 %idxprom158
  %y160 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx159, i32 0, i32 0
  %169 = load i32, i32* %y160, align 4
  br label %cond.end.162

cond.false.161:                                   ; preds = %cond.end
  %170 = load i32, i32* %l_curvy, align 4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.161, %cond.true.156
  %cond163 = phi i32 [ %169, %cond.true.156 ], [ %170, %cond.false.161 ]
  %add164 = add nsw i32 %cond163, 1
  store i32 %add164, i32* %l_maxy, align 4
  %171 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y2165 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %171, i32 0, i32 4
  %172 = load i32, i32* %y2165, align 4
  %sub166 = sub nsw i32 %172, 1
  %173 = load i32, i32* %l_topshift, align 4
  %add167 = add nsw i32 %sub166, %173
  %174 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %175 = load i32, i32* %l_x, align 4
  %176 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable168 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %176, i32 0, i32 0
  %177 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable168, align 8
  %width169 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %177, i32 0, i32 1
  %178 = load i32, i32* %width169, align 4
  %179 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable170 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %179, i32 0, i32 0
  %180 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable170, align 8
  %height171 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %180, i32 0, i32 2
  %181 = load i32, i32* %height171, align 4
  %182 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y2172 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %182, i32 0, i32 4
  %183 = load i32, i32* %y2172, align 4
  %sub173 = sub nsw i32 %183, 1
  %conv174 = sitofp i32 %sub173 to double
  %call175 = call i32 @p_curve_get_dy(%struct._BenderDialog* %174, i32 %175, i32 %178, i32 %181, double %conv174)
  %add176 = add nsw i32 %add167, %call175
  store i32 %add176, i32* %l_othery, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %cond.end.162, %if.then.116
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.112
  %184 = load i32, i32* %l_y, align 4
  %185 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y2179 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %185, i32 0, i32 4
  %186 = load i32, i32* %y2179, align 4
  %sub180 = sub nsw i32 %186, 1
  %cmp181 = icmp eq i32 %184, %sub180
  br i1 %cmp181, label %if.then.183, label %if.end.242

if.then.183:                                      ; preds = %if.end.178
  %187 = load i32, i32* %l_x, align 4
  %cmp184 = icmp sgt i32 %187, 0
  br i1 %cmp184, label %if.then.186, label %if.end.231

if.then.186:                                      ; preds = %if.then.183
  %188 = bitcast [4 x i8]* %mixcolor to i8*
  %189 = load i32, i32* %l_x, align 4
  %sub187 = sub nsw i32 %189, 1
  %idxprom188 = sext i32 %sub187 to i64
  %190 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx189 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %190, i64 %idxprom188
  %color190 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx189, i32 0, i32 1
  %191 = bitcast [4 x i8]* %color190 to i8*
  %192 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %drawable191 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %192, i32 0, i32 0
  %193 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable191, align 8
  %bpp192 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %193, i32 0, i32 3
  %194 = load i32, i32* %bpp192, align 4
  %conv193 = zext i32 %194 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %191, i64 %conv193, i32 1, i1 false)
  %195 = load i32, i32* %l_x, align 4
  %sub194 = sub nsw i32 %195, 1
  %idxprom195 = sext i32 %sub194 to i64
  %196 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx196 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %196, i64 %idxprom195
  %y197 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx196, i32 0, i32 0
  %197 = load i32, i32* %y197, align 4
  %198 = load i32, i32* %l_curvy, align 4
  %sub198 = sub nsw i32 %197, %198
  %call199 = call i32 @abs(i32 %sub198) #6
  %add200 = add nsw i32 %call199, 1
  store i32 %add200, i32* %l_diff, align 4
  %199 = load i32, i32* %l_x, align 4
  %sub201 = sub nsw i32 %199, 1
  %idxprom202 = sext i32 %sub201 to i64
  %200 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx203 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %200, i64 %idxprom202
  %y204 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx203, i32 0, i32 0
  %201 = load i32, i32* %y204, align 4
  %202 = load i32, i32* %l_curvy, align 4
  %cmp205 = icmp sgt i32 %201, %202
  br i1 %cmp205, label %cond.true.207, label %cond.false.212

cond.true.207:                                    ; preds = %if.then.186
  %203 = load i32, i32* %l_x, align 4
  %sub208 = sub nsw i32 %203, 1
  %idxprom209 = sext i32 %sub208 to i64
  %204 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx210 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %204, i64 %idxprom209
  %y211 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx210, i32 0, i32 0
  %205 = load i32, i32* %y211, align 4
  br label %cond.end.213

cond.false.212:                                   ; preds = %if.then.186
  %206 = load i32, i32* %l_curvy, align 4
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.212, %cond.true.207
  %cond214 = phi i32 [ %205, %cond.true.207 ], [ %206, %cond.false.212 ]
  %add215 = add nsw i32 %cond214, 1
  store i32 %add215, i32* %l_maxy, align 4
  %207 = load i32, i32* %l_x, align 4
  %sub216 = sub nsw i32 %207, 1
  %idxprom217 = sext i32 %sub216 to i64
  %208 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx218 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %208, i64 %idxprom217
  %y219 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx218, i32 0, i32 0
  %209 = load i32, i32* %y219, align 4
  %210 = load i32, i32* %l_curvy, align 4
  %cmp220 = icmp slt i32 %209, %210
  br i1 %cmp220, label %cond.true.222, label %cond.false.227

cond.true.222:                                    ; preds = %cond.end.213
  %211 = load i32, i32* %l_x, align 4
  %sub223 = sub nsw i32 %211, 1
  %idxprom224 = sext i32 %sub223 to i64
  %212 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx225 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %212, i64 %idxprom224
  %y226 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx225, i32 0, i32 0
  %213 = load i32, i32* %y226, align 4
  br label %cond.end.228

cond.false.227:                                   ; preds = %cond.end.213
  %214 = load i32, i32* %l_curvy, align 4
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.227, %cond.true.222
  %cond229 = phi i32 [ %213, %cond.true.222 ], [ %214, %cond.false.227 ]
  %sub230 = sub nsw i32 %cond229, 1
  store i32 %sub230, i32* %l_miny, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %cond.end.228, %if.then.183
  %215 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y1232 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %215, i32 0, i32 2
  %216 = load i32, i32* %y1232, align 4
  %217 = load i32, i32* %l_topshift, align 4
  %add233 = add nsw i32 %216, %217
  %218 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %219 = load i32, i32* %l_x, align 4
  %220 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable234 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %220, i32 0, i32 0
  %221 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable234, align 8
  %width235 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %221, i32 0, i32 1
  %222 = load i32, i32* %width235, align 4
  %223 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable236 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %223, i32 0, i32 0
  %224 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable236, align 8
  %height237 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %224, i32 0, i32 2
  %225 = load i32, i32* %height237, align 4
  %226 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y1238 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %226, i32 0, i32 2
  %227 = load i32, i32* %y1238, align 4
  %conv239 = sitofp i32 %227 to double
  %call240 = call i32 @p_curve_get_dy(%struct._BenderDialog* %218, i32 %219, i32 %222, i32 %225, double %conv239)
  %add241 = add nsw i32 %add233, %call240
  store i32 %add241, i32* %l_othery, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.231, %if.end.178
  %228 = load i32, i32* %l_desty, align 4
  %229 = load i32, i32* %l_othery, align 4
  %cmp243 = icmp slt i32 %228, %229
  br i1 %cmp243, label %if.then.245, label %if.else.246

if.then.245:                                      ; preds = %if.end.242
  store i32 1, i32* %l_alias_dir, align 4
  br label %if.end.252

if.else.246:                                      ; preds = %if.end.242
  %230 = load i32, i32* %l_desty, align 4
  %231 = load i32, i32* %l_othery, align 4
  %cmp247 = icmp sgt i32 %230, %231
  br i1 %cmp247, label %if.then.249, label %if.else.250

if.then.249:                                      ; preds = %if.else.246
  store i32 -1, i32* %l_alias_dir, align 4
  br label %if.end.251

if.else.250:                                      ; preds = %if.else.246
  store i32 0, i32* %l_alias_dir, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.250, %if.then.249
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.then.245
  %232 = load i32, i32* %l_alias_dir, align 4
  %cmp253 = icmp ne i32 %232, 0
  br i1 %cmp253, label %if.then.255, label %if.end.317

if.then.255:                                      ; preds = %if.end.252
  store i8 20, i8* %l_alpha_lo, align 1
  %233 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %drawable256 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %233, i32 0, i32 0
  %234 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable256, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %234, i32 0, i32 0
  %235 = load i32, i32* %drawable_id, align 4
  %call257 = call i32 @gimp_drawable_has_alpha(i32 %235)
  %tobool258 = icmp ne i32 %call257, 0
  br i1 %tobool258, label %if.then.259, label %if.end.274

if.then.259:                                      ; preds = %if.then.255
  %236 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %index_alpha = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %236, i32 0, i32 5
  %237 = load i32, i32* %index_alpha, align 4
  %idxprom260 = sext i32 %237 to i64
  %arrayidx261 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 %idxprom260
  %238 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %238 to i32
  %cmp263 = icmp slt i32 20, %conv262
  br i1 %cmp263, label %cond.true.265, label %cond.false.266

cond.true.265:                                    ; preds = %if.then.259
  br label %cond.end.271

cond.false.266:                                   ; preds = %if.then.259
  %239 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %index_alpha267 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %239, i32 0, i32 5
  %240 = load i32, i32* %index_alpha267, align 4
  %idxprom268 = sext i32 %240 to i64
  %arrayidx269 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 %idxprom268
  %241 = load i8, i8* %arrayidx269, align 1
  %conv270 = zext i8 %241 to i32
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.266, %cond.true.265
  %cond272 = phi i32 [ 20, %cond.true.265 ], [ %conv270, %cond.false.266 ]
  %conv273 = trunc i32 %cond272 to i8
  store i8 %conv273, i8* %l_alpha_lo, align 1
  br label %if.end.274

if.end.274:                                       ; preds = %cond.end.271, %if.then.255
  store i32 0, i32* %l_dy, align 4
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc, %if.end.274
  %242 = load i32, i32* %l_dy, align 4
  %243 = load i32, i32* %l_diff, align 4
  %cmp276 = icmp slt i32 %242, %243
  br i1 %cmp276, label %for.body.278, label %for.end

for.body.278:                                     ; preds = %for.cond.275
  %244 = load i32, i32* %l_dy, align 4
  %add279 = add nsw i32 %244, 1
  %conv280 = sitofp i32 %add279 to double
  %245 = load i32, i32* %l_diff, align 4
  %add281 = add nsw i32 %245, 1
  %conv282 = sitofp i32 %add281 to double
  %div283 = fdiv double %conv280, %conv282
  %mul284 = fmul double 2.550000e+02, %div283
  %conv285 = fptoui double %mul284 to i8
  store i8 %conv285, i8* %l_mixmask, align 1
  %246 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %index_alpha286 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %246, i32 0, i32 5
  %247 = load i32, i32* %index_alpha286, align 4
  %idxprom287 = sext i32 %247 to i64
  %arrayidx288 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 %idxprom287
  %248 = load i8, i8* %arrayidx288, align 1
  %conv289 = zext i8 %248 to i32
  %249 = load i8, i8* %l_mixmask, align 1
  %conv290 = zext i8 %249 to i32
  %mul291 = mul nsw i32 %conv289, %conv290
  %250 = load i8, i8* %l_alpha_lo, align 1
  %conv292 = zext i8 %250 to i32
  %251 = load i8, i8* %l_mixmask, align 1
  %conv293 = zext i8 %251 to i32
  %sub294 = sub nsw i32 255, %conv293
  %mul295 = mul nsw i32 %conv292, %sub294
  %add296 = add nsw i32 %mul291, %mul295
  %div297 = sdiv i32 %add296, 255
  %conv298 = trunc i32 %div297 to i8
  %252 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %index_alpha299 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %252, i32 0, i32 5
  %253 = load i32, i32* %index_alpha299, align 4
  %idxprom300 = sext i32 %253 to i64
  %arrayidx301 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 %idxprom300
  store i8 %conv298, i8* %arrayidx301, align 1
  %254 = load i32, i32* %l_alias_dir, align 4
  %cmp302 = icmp sgt i32 %254, 0
  br i1 %cmp302, label %if.then.304, label %if.else.310

if.then.304:                                      ; preds = %for.body.278
  %255 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %256 = load i32, i32* %l_x, align 4
  %sub305 = sub nsw i32 %256, 1
  %257 = load i32, i32* %l_y, align 4
  %258 = load i32, i32* %l_topshift, align 4
  %add306 = add nsw i32 %257, %258
  %259 = load i32, i32* %l_miny, align 4
  %add307 = add nsw i32 %add306, %259
  %260 = load i32, i32* %l_dy, align 4
  %add308 = add nsw i32 %add307, %260
  %arraydecay309 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i32 0
  call void @p_put_pixel(%struct.t_GDRW* %255, i32 %sub305, i32 %add308, i8* %arraydecay309)
  br label %if.end.316

if.else.310:                                      ; preds = %for.body.278
  %261 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %262 = load i32, i32* %l_x, align 4
  %sub311 = sub nsw i32 %262, 1
  %263 = load i32, i32* %l_y, align 4
  %264 = load i32, i32* %l_topshift, align 4
  %add312 = add nsw i32 %263, %264
  %265 = load i32, i32* %l_maxy, align 4
  %266 = load i32, i32* %l_dy, align 4
  %sub313 = sub nsw i32 %265, %266
  %add314 = add nsw i32 %add312, %sub313
  %arraydecay315 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i32 0
  call void @p_put_pixel(%struct.t_GDRW* %261, i32 %sub311, i32 %add314, i8* %arraydecay315)
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.310, %if.then.304
  br label %for.inc

for.inc:                                          ; preds = %if.end.316
  %267 = load i32, i32* %l_dy, align 4
  %inc = add nsw i32 %267, 1
  store i32 %inc, i32* %l_dy, align 4
  br label %for.cond.275

for.end:                                          ; preds = %for.cond.275
  br label %if.end.317

if.end.317:                                       ; preds = %for.end, %if.end.252
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.end.110
  %268 = load i32, i32* %l_y, align 4
  %269 = load %struct.t_GDRW*, %struct.t_GDRW** %src_gdrw.addr, align 8
  %y1319 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %269, i32 0, i32 2
  %270 = load i32, i32* %y1319, align 4
  %cmp320 = icmp eq i32 %268, %270
  br i1 %cmp320, label %if.then.322, label %if.else.323

if.then.322:                                      ; preds = %if.end.318
  store i32 0, i32* %l_diff, align 4
  store i32 1, i32* %l_sign, align 4
  br label %if.end.337

if.else.323:                                      ; preds = %if.end.318
  %271 = load i32, i32* %l_x, align 4
  %idxprom324 = sext i32 %271 to i64
  %272 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx325 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %272, i64 %idxprom324
  %y326 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx325, i32 0, i32 0
  %273 = load i32, i32* %y326, align 4
  %274 = load i32, i32* %l_curvy, align 4
  %sub327 = sub nsw i32 %273, %274
  store i32 %sub327, i32* %l_diff, align 4
  %275 = load i32, i32* %l_diff, align 4
  %cmp328 = icmp slt i32 %275, 0
  br i1 %cmp328, label %if.then.330, label %if.else.332

if.then.330:                                      ; preds = %if.else.323
  %276 = load i32, i32* %l_diff, align 4
  %sub331 = sub nsw i32 0, %276
  store i32 %sub331, i32* %l_diff, align 4
  store i32 -1, i32* %l_sign, align 4
  br label %if.end.333

if.else.332:                                      ; preds = %if.else.323
  store i32 1, i32* %l_sign, align 4
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.332, %if.then.330
  %277 = bitcast [4 x i8]* %mixcolor to i8*
  %278 = bitcast [4 x i8]* %color to i8*
  %279 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %drawable334 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %279, i32 0, i32 0
  %280 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable334, align 8
  %bpp335 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %280, i32 0, i32 3
  %281 = load i32, i32* %bpp335, align 4
  %conv336 = zext i32 %281 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* %278, i64 %conv336, i32 1, i1 false)
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.333, %if.then.322
  store i32 1, i32* %l_dy, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.457, %if.end.337
  %282 = load i32, i32* %l_dy, align 4
  %283 = load i32, i32* %l_diff, align 4
  %cmp339 = icmp sle i32 %282, %283
  br i1 %cmp339, label %for.body.341, label %for.end.459

for.body.341:                                     ; preds = %for.cond.338
  %284 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %smoothing342 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %284, i32 0, i32 24
  %285 = load i32, i32* %smoothing342, align 4
  %tobool343 = icmp ne i32 %285, 0
  br i1 %tobool343, label %if.then.344, label %if.else.429

if.then.344:                                      ; preds = %for.body.341
  %286 = load i32, i32* %l_x, align 4
  %idxprom345 = sext i32 %286 to i64
  %287 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx346 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %287, i64 %idxprom345
  %color347 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx346, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [4 x i8], [4 x i8]* %color347, i32 0, i64 3
  %288 = load i8, i8* %arrayidx348, align 1
  %conv349 = zext i8 %288 to i64
  store i64 %conv349, i64* %alpha1, align 8
  %arrayidx350 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 3
  %289 = load i8, i8* %arrayidx350, align 1
  %conv351 = zext i8 %289 to i64
  store i64 %conv351, i64* %alpha2, align 8
  %290 = load i32, i32* %l_dy, align 4
  %conv352 = sitofp i32 %290 to double
  %291 = load i32, i32* %l_diff, align 4
  %add353 = add nsw i32 %291, 1
  %conv354 = sitofp i32 %add353 to double
  %div355 = fdiv double %conv352, %conv354
  %mul356 = fmul double 2.550000e+02, %div355
  %conv357 = fptoui double %mul356 to i8
  store i8 %conv357, i8* %l_mixmask, align 1
  %292 = load i64, i64* %alpha1, align 8
  %293 = load i8, i8* %l_mixmask, align 1
  %conv358 = zext i8 %293 to i64
  %mul359 = mul i64 %292, %conv358
  %294 = load i64, i64* %alpha2, align 8
  %295 = load i8, i8* %l_mixmask, align 1
  %conv360 = zext i8 %295 to i32
  %sub361 = sub nsw i32 255, %conv360
  %conv362 = sext i32 %sub361 to i64
  %mul363 = mul i64 %294, %conv362
  %add364 = add i64 %mul359, %mul363
  store i64 %add364, i64* %alpha, align 8
  %296 = load i64, i64* %alpha, align 8
  %div365 = udiv i64 %296, 255
  %conv366 = trunc i64 %div365 to i8
  %arrayidx367 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 3
  store i8 %conv366, i8* %arrayidx367, align 1
  %arrayidx368 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 3
  %297 = load i8, i8* %arrayidx368, align 1
  %tobool369 = icmp ne i8 %297, 0
  br i1 %tobool369, label %if.then.370, label %if.end.428

if.then.370:                                      ; preds = %if.then.344
  %298 = load i64, i64* %alpha1, align 8
  %299 = load i8, i8* %l_mixmask, align 1
  %conv371 = zext i8 %299 to i64
  %mul372 = mul i64 %298, %conv371
  %300 = load i32, i32* %l_x, align 4
  %idxprom373 = sext i32 %300 to i64
  %301 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx374 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %301, i64 %idxprom373
  %color375 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx374, i32 0, i32 1
  %arrayidx376 = getelementptr inbounds [4 x i8], [4 x i8]* %color375, i32 0, i64 0
  %302 = load i8, i8* %arrayidx376, align 1
  %conv377 = zext i8 %302 to i64
  %mul378 = mul i64 %mul372, %conv377
  %303 = load i64, i64* %alpha2, align 8
  %304 = load i8, i8* %l_mixmask, align 1
  %conv379 = zext i8 %304 to i32
  %sub380 = sub nsw i32 255, %conv379
  %conv381 = sext i32 %sub380 to i64
  %mul382 = mul i64 %303, %conv381
  %arrayidx383 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %305 = load i8, i8* %arrayidx383, align 1
  %conv384 = zext i8 %305 to i64
  %mul385 = mul i64 %mul382, %conv384
  %add386 = add i64 %mul378, %mul385
  %306 = load i64, i64* %alpha, align 8
  %div387 = udiv i64 %add386, %306
  %conv388 = trunc i64 %div387 to i8
  %arrayidx389 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 0
  store i8 %conv388, i8* %arrayidx389, align 1
  %307 = load i64, i64* %alpha1, align 8
  %308 = load i8, i8* %l_mixmask, align 1
  %conv390 = zext i8 %308 to i64
  %mul391 = mul i64 %307, %conv390
  %309 = load i32, i32* %l_x, align 4
  %idxprom392 = sext i32 %309 to i64
  %310 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx393 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %310, i64 %idxprom392
  %color394 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx393, i32 0, i32 1
  %arrayidx395 = getelementptr inbounds [4 x i8], [4 x i8]* %color394, i32 0, i64 1
  %311 = load i8, i8* %arrayidx395, align 1
  %conv396 = zext i8 %311 to i64
  %mul397 = mul i64 %mul391, %conv396
  %312 = load i64, i64* %alpha2, align 8
  %313 = load i8, i8* %l_mixmask, align 1
  %conv398 = zext i8 %313 to i32
  %sub399 = sub nsw i32 255, %conv398
  %conv400 = sext i32 %sub399 to i64
  %mul401 = mul i64 %312, %conv400
  %arrayidx402 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  %314 = load i8, i8* %arrayidx402, align 1
  %conv403 = zext i8 %314 to i64
  %mul404 = mul i64 %mul401, %conv403
  %add405 = add i64 %mul397, %mul404
  %315 = load i64, i64* %alpha, align 8
  %div406 = udiv i64 %add405, %315
  %conv407 = trunc i64 %div406 to i8
  %arrayidx408 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 1
  store i8 %conv407, i8* %arrayidx408, align 1
  %316 = load i64, i64* %alpha1, align 8
  %317 = load i8, i8* %l_mixmask, align 1
  %conv409 = zext i8 %317 to i64
  %mul410 = mul i64 %316, %conv409
  %318 = load i32, i32* %l_x, align 4
  %idxprom411 = sext i32 %318 to i64
  %319 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx412 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %319, i64 %idxprom411
  %color413 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx412, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [4 x i8], [4 x i8]* %color413, i32 0, i64 2
  %320 = load i8, i8* %arrayidx414, align 1
  %conv415 = zext i8 %320 to i64
  %mul416 = mul i64 %mul410, %conv415
  %321 = load i64, i64* %alpha2, align 8
  %322 = load i8, i8* %l_mixmask, align 1
  %conv417 = zext i8 %322 to i32
  %sub418 = sub nsw i32 255, %conv417
  %conv419 = sext i32 %sub418 to i64
  %mul420 = mul i64 %321, %conv419
  %arrayidx421 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  %323 = load i8, i8* %arrayidx421, align 1
  %conv422 = zext i8 %323 to i64
  %mul423 = mul i64 %mul420, %conv422
  %add424 = add i64 %mul416, %mul423
  %324 = load i64, i64* %alpha, align 8
  %div425 = udiv i64 %add424, %324
  %conv426 = trunc i64 %div425 to i8
  %arrayidx427 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i64 2
  store i8 %conv426, i8* %arrayidx427, align 1
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.370, %if.then.344
  br label %if.end.445

if.else.429:                                      ; preds = %for.body.341
  %325 = load i32, i32* %l_dy, align 4
  %326 = load i32, i32* %l_diff, align 4
  %div430 = sdiv i32 %326, 2
  %cmp431 = icmp slt i32 %325, %div430
  br i1 %cmp431, label %if.then.433, label %if.else.437

if.then.433:                                      ; preds = %if.else.429
  %327 = bitcast [4 x i8]* %mixcolor to i8*
  %328 = bitcast [4 x i8]* %color to i8*
  %329 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %drawable434 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %329, i32 0, i32 0
  %330 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable434, align 8
  %bpp435 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %330, i32 0, i32 3
  %331 = load i32, i32* %bpp435, align 4
  %conv436 = zext i32 %331 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %327, i8* %328, i64 %conv436, i32 1, i1 false)
  br label %if.end.444

if.else.437:                                      ; preds = %if.else.429
  %332 = bitcast [4 x i8]* %mixcolor to i8*
  %333 = load i32, i32* %l_x, align 4
  %idxprom438 = sext i32 %333 to i64
  %334 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx439 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %334, i64 %idxprom438
  %color440 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx439, i32 0, i32 1
  %335 = bitcast [4 x i8]* %color440 to i8*
  %336 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %drawable441 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %336, i32 0, i32 0
  %337 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable441, align 8
  %bpp442 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %337, i32 0, i32 3
  %338 = load i32, i32* %bpp442, align 4
  %conv443 = zext i32 %338 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %332, i8* %335, i64 %conv443, i32 1, i1 false)
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.437, %if.then.433
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.end.428
  %339 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %smoothing446 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %339, i32 0, i32 24
  %340 = load i32, i32* %smoothing446, align 4
  %tobool447 = icmp ne i32 %340, 0
  br i1 %tobool447, label %if.then.448, label %if.else.452

if.then.448:                                      ; preds = %if.end.445
  %341 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %342 = load i32, i32* %l_x, align 4
  %343 = load i32, i32* %l_desty, align 4
  %344 = load i32, i32* %l_dy, align 4
  %345 = load i32, i32* %l_sign, align 4
  %mul449 = mul nsw i32 %344, %345
  %add450 = add nsw i32 %343, %mul449
  %arraydecay451 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i32 0
  %346 = load i32, i32* %l_nb_curvy, align 4
  %347 = load i32, i32* %l_nb2_curvy, align 4
  %348 = load i32, i32* %l_curvy, align 4
  call void @p_put_mix_pixel(%struct.t_GDRW* %341, i32 %342, i32 %add450, i8* %arraydecay451, i32 %346, i32 %347, i32 %348)
  br label %if.end.456

if.else.452:                                      ; preds = %if.end.445
  %349 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %350 = load i32, i32* %l_x, align 4
  %351 = load i32, i32* %l_desty, align 4
  %352 = load i32, i32* %l_dy, align 4
  %353 = load i32, i32* %l_sign, align 4
  %mul453 = mul nsw i32 %352, %353
  %add454 = add nsw i32 %351, %mul453
  %arraydecay455 = getelementptr inbounds [4 x i8], [4 x i8]* %mixcolor, i32 0, i32 0
  call void @p_put_pixel(%struct.t_GDRW* %349, i32 %350, i32 %add454, i8* %arraydecay455)
  br label %if.end.456

if.end.456:                                       ; preds = %if.else.452, %if.then.448
  br label %for.inc.457

for.inc.457:                                      ; preds = %if.end.456
  %354 = load i32, i32* %l_dy, align 4
  %inc458 = add nsw i32 %354, 1
  store i32 %inc458, i32* %l_dy, align 4
  br label %for.cond.338

for.end.459:                                      ; preds = %for.cond.338
  %355 = load i32, i32* %l_curvy, align 4
  %356 = load i32, i32* %l_x, align 4
  %idxprom460 = sext i32 %356 to i64
  %357 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx461 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %357, i64 %idxprom460
  %y462 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx461, i32 0, i32 0
  store i32 %355, i32* %y462, align 4
  %358 = load i32, i32* %l_x, align 4
  %idxprom463 = sext i32 %358 to i64
  %359 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %arrayidx464 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %359, i64 %idxprom463
  %color465 = getelementptr inbounds %struct.t_Last, %struct.t_Last* %arrayidx464, i32 0, i32 1
  %360 = bitcast [4 x i8]* %color465 to i8*
  %361 = bitcast [4 x i8]* %color to i8*
  %362 = load %struct.t_GDRW*, %struct.t_GDRW** %dst_gdrw.addr, align 8
  %drawable466 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %362, i32 0, i32 0
  %363 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable466, align 8
  %bpp467 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %363, i32 0, i32 3
  %364 = load i32, i32* %bpp467, align 4
  %conv468 = zext i32 %364 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %360, i8* %361, i64 %conv468, i32 1, i1 false)
  br label %for.inc.469

for.inc.469:                                      ; preds = %for.end.459
  %365 = load i32, i32* %l_y, align 4
  %inc470 = add nsw i32 %365, 1
  store i32 %inc470, i32* %l_y, align 4
  br label %for.cond.69

for.end.471:                                      ; preds = %for.cond.69
  br label %for.inc.472

for.inc.472:                                      ; preds = %for.end.471
  %366 = load i32, i32* %l_x, align 4
  %inc473 = add nsw i32 %366, 1
  store i32 %inc473, i32* %l_x, align 4
  br label %for.cond.48

for.end.474:                                      ; preds = %for.cond.48
  br label %for.inc.475

for.inc.475:                                      ; preds = %for.end.474
  %367 = load i32, i32* %l_col, align 4
  %inc476 = add nsw i32 %367, 1
  store i32 %inc476, i32* %l_col, align 4
  br label %for.cond.21

for.end.477:                                      ; preds = %for.cond.21
  br label %for.inc.478

for.inc.478:                                      ; preds = %for.end.477
  %368 = load i32, i32* %l_row, align 4
  %inc479 = add nsw i32 %368, 1
  store i32 %inc479, i32* %l_row, align 4
  br label %for.cond

for.end.480:                                      ; preds = %for.cond
  %call481 = call i32 @gimp_progress_update(double 1.000000e+00)
  %369 = load %struct.t_Last*, %struct.t_Last** %last_arr, align 8
  %370 = bitcast %struct.t_Last* %369 to i8*
  call void @g_free(i8* %370)
  %371 = load %struct.t_Last*, %struct.t_Last** %first_arr, align 8
  %372 = bitcast %struct.t_Last* %371 to i8*
  call void @g_free(i8* %372)
  ret void
}

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare i32 @gimp_context_push() #1

declare i32 @gimp_context_set_interpolation(i32) #1

declare i32 @gimp_context_set_transform_resize(i32) #1

declare i32 @gimp_item_transform_rotate(i32, double, i32, double, double) #1

declare i32 @gimp_context_pop() #1

; Function Attrs: nounwind uwtable
define internal void @p_stretch_curves(%struct._BenderDialog* %cd, i32 %xmax, i32 %ymax) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %l_x1 = alloca i32, align 4
  %l_x2 = alloca i32, align 4
  %l_ya = alloca double, align 8
  %l_yb = alloca double, align 8
  %l_rest = alloca double, align 8
  %l_outline = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  store i32 0, i32* %l_outline, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %0 = load i32, i32* %l_outline, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l_x1, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %l_x1, align 4
  %2 = load i32, i32* %xmax.addr, align 4
  %cmp2 = icmp sle i32 %1, %2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %l_x1, align 4
  %mul = mul nsw i32 %3, 255
  %4 = load i32, i32* %xmax.addr, align 4
  %div = sdiv i32 %mul, %4
  store i32 %div, i32* %l_x2, align 4
  %5 = load i32, i32* %xmax.addr, align 4
  %cmp4 = icmp sle i32 %5, 255
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.3
  %6 = load i32, i32* %l_x2, align 4
  %cmp5 = icmp slt i32 %6, 255
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %l_x2, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %l_outline, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %9, i32 0, i32 18
  %arrayidx = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %ymax.addr, align 4
  %mul8 = mul nsw i32 %conv, %11
  %div9 = sdiv i32 %mul8, 255
  %conv10 = sitofp i32 %div9 to double
  %add = fadd double %conv10, 5.000000e-01
  %conv11 = fptosi double %add to i32
  %12 = load i32, i32* %l_x1, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32, i32* %l_outline, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %14, i32 0, i32 19
  %arrayidx14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr, i32 0, i64 %idxprom13
  %15 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %15, i64 %idxprom12
  store i32 %conv11, i32* %arrayidx15, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body.3
  %16 = load i32, i32* %l_x1, align 4
  %conv16 = sitofp i32 %16 to double
  %mul17 = fmul double %conv16, 2.550000e+02
  %17 = load i32, i32* %xmax.addr, align 4
  %conv18 = sitofp i32 %17 to double
  %div19 = fdiv double %mul17, %conv18
  %18 = load i32, i32* %l_x2, align 4
  %conv20 = sitofp i32 %18 to double
  %sub = fsub double %div19, %conv20
  store double %sub, double* %l_rest, align 8
  %19 = load i32, i32* %l_x2, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i32, i32* %l_outline, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve23 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %21, i32 0, i32 18
  %arrayidx24 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve23, i32 0, i64 %idxprom22
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx24, i32 0, i64 %idxprom21
  %22 = load i8, i8* %arrayidx25, align 1
  %conv26 = uitofp i8 %22 to double
  store double %conv26, double* %l_ya, align 8
  %23 = load i32, i32* %l_x2, align 4
  %add27 = add nsw i32 %23, 1
  %idxprom28 = sext i32 %add27 to i64
  %24 = load i32, i32* %l_outline, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve30 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %25, i32 0, i32 18
  %arrayidx31 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve30, i32 0, i64 %idxprom29
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx31, i32 0, i64 %idxprom28
  %26 = load i8, i8* %arrayidx32, align 1
  %conv33 = uitofp i8 %26 to double
  store double %conv33, double* %l_yb, align 8
  %27 = load double, double* %l_ya, align 8
  %28 = load double, double* %l_yb, align 8
  %29 = load double, double* %l_ya, align 8
  %sub34 = fsub double %28, %29
  %30 = load double, double* %l_rest, align 8
  %mul35 = fmul double %sub34, %30
  %add36 = fadd double %27, %mul35
  %31 = load i32, i32* %ymax.addr, align 4
  %conv37 = sitofp i32 %31 to double
  %mul38 = fmul double %add36, %conv37
  %div39 = fdiv double %mul38, 2.550000e+02
  %add40 = fadd double %div39, 5.000000e-01
  %conv41 = fptosi double %add40 to i32
  %32 = load i32, i32* %l_x1, align 4
  %idxprom42 = sext i32 %32 to i64
  %33 = load i32, i32* %l_outline, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr44 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %34, i32 0, i32 19
  %arrayidx45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr44, i32 0, i64 %idxprom43
  %35 = load i32*, i32** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %35, i64 %idxprom42
  store i32 %conv41, i32* %arrayidx46, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, i32* %l_x1, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %l_x1, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %37 = load i32, i32* %l_outline, align 4
  %inc48 = add nsw i32 %37, 1
  store i32 %inc48, i32* %l_outline, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_delta_gint32(i32* %val, i32 %val_from, i32 %val_to, i32 %total_steps, double %current_step) #0 {
entry:
  %val.addr = alloca i32*, align 8
  %val_from.addr = alloca i32, align 4
  %val_to.addr = alloca i32, align 4
  %total_steps.addr = alloca i32, align 4
  %current_step.addr = alloca double, align 8
  %delta = alloca double, align 8
  store i32* %val, i32** %val.addr, align 8
  store i32 %val_from, i32* %val_from.addr, align 4
  store i32 %val_to, i32* %val_to.addr, align 4
  store i32 %total_steps, i32* %total_steps.addr, align 4
  store double %current_step, double* %current_step.addr, align 8
  %0 = load i32, i32* %total_steps.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %val_to.addr, align 4
  %2 = load i32, i32* %val_from.addr, align 4
  %sub = sub nsw i32 %1, %2
  %conv = sitofp i32 %sub to double
  %3 = load i32, i32* %total_steps.addr, align 4
  %conv1 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv1
  %4 = load i32, i32* %total_steps.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %5 = load double, double* %current_step.addr, align 8
  %sub3 = fsub double %conv2, %5
  %mul = fmul double %div, %sub3
  store double %mul, double* %delta, align 8
  %6 = load i32, i32* %val_from.addr, align 4
  %conv4 = sitofp i32 %6 to double
  %7 = load double, double* %delta, align 8
  %add = fadd double %conv4, %7
  %conv5 = fptosi double %add to i32
  %8 = load i32*, i32** %val.addr, align 8
  store i32 %conv5, i32* %8, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_item_get_visible(i32) #1

declare i8* @gimp_item_get_name(i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_layer_get_mode(i32) #1

declare double @gimp_layer_get_opacity(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal i32 @p_curve_get_dy(%struct._BenderDialog* %cd, i32 %x, i32 %drawable_width, i32 %total_steps, double %current_step) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %x.addr = alloca i32, align 4
  %drawable_width.addr = alloca i32, align 4
  %total_steps.addr = alloca i32, align 4
  %current_step.addr = alloca double, align 8
  %l_y1 = alloca double, align 8
  %l_y2 = alloca double, align 8
  %delta = alloca double, align 8
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %drawable_width, i32* %drawable_width.addr, align 4
  store i32 %total_steps, i32* %total_steps.addr, align 4
  store double %current_step, double* %current_step.addr, align 8
  %0 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero2 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %0, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %zero2, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %3, i32 0, i32 19
  %arrayidx1 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr, i32 0, i64 0
  %4 = load i32*, i32** %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %1, %5
  %conv = sitofp i32 %sub to double
  store double %conv, double* %l_y1, align 8
  %6 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %zero23 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %6, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %zero23, i32 0, i64 1
  %7 = load i32, i32* %arrayidx4, align 4
  %8 = load i32, i32* %x.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_ptr6 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %9, i32 0, i32 19
  %arrayidx7 = getelementptr inbounds [2 x i32*], [2 x i32*]* %curve_ptr6, i32 0, i64 1
  %10 = load i32*, i32** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %11 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %7, %11
  %conv10 = sitofp i32 %sub9 to double
  store double %conv10, double* %l_y2, align 8
  %12 = load double, double* %l_y2, align 8
  %13 = load double, double* %l_y1, align 8
  %sub11 = fsub double %12, %13
  %14 = load i32, i32* %total_steps.addr, align 4
  %sub12 = sub nsw i32 %14, 1
  %conv13 = sitofp i32 %sub12 to double
  %div = fdiv double %sub11, %conv13
  %15 = load double, double* %current_step.addr, align 8
  %mul = fmul double %div, %15
  store double %mul, double* %delta, align 8
  %16 = load double, double* %l_y1, align 8
  %17 = load double, double* %delta, align 8
  %add = fadd double %16, %17
  %cmp = fcmp olt double %add, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load double, double* %l_y1, align 8
  %19 = load double, double* %delta, align 8
  %add15 = fadd double %18, %19
  %sub16 = fsub double %add15, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load double, double* %l_y1, align 8
  %21 = load double, double* %delta, align 8
  %add17 = fadd double %20, %21
  %add18 = fadd double %add17, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub16, %cond.true ], [ %add18, %cond.false ]
  %conv19 = fptosi double %cond to i32
  ret i32 %conv19
}

; Function Attrs: nounwind uwtable
define internal void @p_put_mix_pixel(%struct.t_GDRW* %gdrw, i32 %x, i32 %y, i8* %color, i32 %nb_curvy, i32 %nb2_curvy, i32 %curvy) #0 {
entry:
  %gdrw.addr = alloca %struct.t_GDRW*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca i8*, align 8
  %nb_curvy.addr = alloca i32, align 4
  %nb2_curvy.addr = alloca i32, align 4
  %curvy.addr = alloca i32, align 4
  %l_pixel = alloca [4 x i8], align 1
  %l_mixmask = alloca i8, align 1
  %l_idx = alloca i32, align 4
  %l_diff = alloca i32, align 4
  store %struct.t_GDRW* %gdrw, %struct.t_GDRW** %gdrw.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %color, i8** %color.addr, align 8
  store i32 %nb_curvy, i32* %nb_curvy.addr, align 4
  store i32 %nb2_curvy, i32* %nb2_curvy.addr, align 4
  store i32 %curvy, i32* %curvy.addr, align 4
  store i8 -97, i8* %l_mixmask, align 1
  %0 = load i32, i32* %nb_curvy.addr, align 4
  %1 = load i32, i32* %curvy.addr, align 4
  %sub = sub nsw i32 %0, %1
  %call = call i32 @abs(i32 %sub) #6
  store i32 %call, i32* %l_diff, align 4
  %2 = load i32, i32* %l_diff, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  store i8 -49, i8* %l_mixmask, align 1
  %3 = load i32, i32* %nb2_curvy.addr, align 4
  %4 = load i32, i32* %curvy.addr, align 4
  %sub1 = sub nsw i32 %3, %4
  %call2 = call i32 @abs(i32 %sub1) #6
  store i32 %call2, i32* %l_diff, align 4
  %5 = load i32, i32* %l_diff, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i8*, i8** %color.addr, align 8
  call void @p_put_pixel(%struct.t_GDRW* %6, i32 %7, i32 %8, i8* %9)
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %11 = load i32, i32* %x.addr, align 4
  %sub6 = sub nsw i32 %11, 1
  %12 = load i32, i32* %y.addr, align 4
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  call void @p_get_pixel(%struct.t_GDRW* %10, i32 %sub6, i32 %12, i8* %arrayidx)
  %13 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %13, i32 0, i32 5
  %14 = load i32, i32* %index_alpha, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %15 to i32
  %cmp8 = icmp slt i32 %conv, 10
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  %16 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i8*, i8** %color.addr, align 8
  call void @p_put_pixel(%struct.t_GDRW* %16, i32 %17, i32 %18, i8* %19)
  br label %return

if.end.11:                                        ; preds = %if.end.5
  store i32 0, i32* %l_idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %20 = load i32, i32* %l_idx, align 4
  %21 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha12 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %21, i32 0, i32 5
  %22 = load i32, i32* %index_alpha12, align 4
  %cmp13 = icmp slt i32 %20, %22
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %l_idx, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load i8*, i8** %color.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %24, i64 %idxprom15
  %25 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %25 to i32
  %26 = load i8, i8* %l_mixmask, align 1
  %conv18 = zext i8 %26 to i32
  %mul = mul nsw i32 %conv17, %conv18
  %27 = load i32, i32* %l_idx, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 %idxprom19
  %28 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %28 to i32
  %29 = load i8, i8* %l_mixmask, align 1
  %conv22 = zext i8 %29 to i32
  %sub23 = sub nsw i32 255, %conv22
  %mul24 = mul nsw i32 %conv21, %sub23
  %add = add nsw i32 %mul, %mul24
  %div = sdiv i32 %add, 255
  %conv25 = trunc i32 %div to i8
  %30 = load i32, i32* %l_idx, align 4
  %idxprom26 = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %l_idx, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %l_idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha28 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %32, i32 0, i32 5
  %33 = load i32, i32* %index_alpha28, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load i8*, i8** %color.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %34, i64 %idxprom29
  %35 = load i8, i8* %arrayidx30, align 1
  %36 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %index_alpha31 = getelementptr inbounds %struct.t_GDRW, %struct.t_GDRW* %36, i32 0, i32 5
  %37 = load i32, i32* %index_alpha31, align 4
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 %idxprom32
  store i8 %35, i8* %arrayidx33, align 1
  %38 = load %struct.t_GDRW*, %struct.t_GDRW** %gdrw.addr, align 8
  %39 = load i32, i32* %x.addr, align 4
  %40 = load i32, i32* %y.addr, align 4
  %arrayidx34 = getelementptr inbounds [4 x i8], [4 x i8]* %l_pixel, i32 0, i64 0
  call void @p_put_pixel(%struct.t_GDRW* %38, i32 %39, i32 %40, i8* %arrayidx34)
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_cd_to_bval(%struct._BenderDialog* %cd, %struct._BenderValues* %bval) #0 {
entry:
  %cd.addr = alloca %struct._BenderDialog*, align 8
  %bval.addr = alloca %struct._BenderValues*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._BenderDialog* %cd, %struct._BenderDialog** %cd.addr, align 8
  store %struct._BenderValues* %bval, %struct._BenderValues** %bval.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 256
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %4, i32 0, i32 18
  %arrayidx = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx5, align 1
  %6 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %curve8 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %curve8, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx9, i32 0, i64 %idxprom6
  store i8 %5, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.37, %for.end
  %10 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %10, 17
  br i1 %cmp12, label %for.body.13, label %for.end.39

for.body.13:                                      ; preds = %for.cond.11
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %13, i32 0, i32 17
  %arrayidx16 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx16, i32 0, i64 %idxprom14
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx17, i32 0, i64 0
  %14 = load double, double* %arrayidx18, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %points21 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points21, i32 0, i64 %idxprom20
  %arrayidx23 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx22, i32 0, i64 %idxprom19
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx23, i32 0, i64 0
  store double %14, double* %arrayidx24, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %20 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %points27 = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %20, i32 0, i32 17
  %arrayidx28 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points27, i32 0, i64 %idxprom26
  %arrayidx29 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx28, i32 0, i64 %idxprom25
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx29, i32 0, i64 1
  %21 = load double, double* %arrayidx30, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %24 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %points33 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %24, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [2 x [17 x [2 x double]]], [2 x [17 x [2 x double]]]* %points33, i32 0, i64 %idxprom32
  %arrayidx35 = getelementptr inbounds [17 x [2 x double]], [17 x [2 x double]]* %arrayidx34, i32 0, i64 %idxprom31
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx35, i32 0, i64 1
  store double %21, double* %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.13
  %25 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %25, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.11

for.end.39:                                       ; preds = %for.cond.11
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %26 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %27 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %curve_type = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %27, i32 0, i32 16
  %28 = load i32, i32* %curve_type, align 4
  %29 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %curve_type43 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %29, i32 0, i32 2
  store i32 %28, i32* %curve_type43, align 4
  %30 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %smoothing = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %30, i32 0, i32 24
  %31 = load i32, i32* %smoothing, align 4
  %32 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %smoothing44 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %32, i32 0, i32 3
  store i32 %31, i32* %smoothing44, align 4
  %33 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %antialias = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %33, i32 0, i32 25
  %34 = load i32, i32* %antialias, align 4
  %35 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %antialias45 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %35, i32 0, i32 4
  store i32 %34, i32* %antialias45, align 4
  %36 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %work_on_copy = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %36, i32 0, i32 26
  %37 = load i32, i32* %work_on_copy, align 4
  %38 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %work_on_copy46 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %38, i32 0, i32 5
  store i32 %37, i32* %work_on_copy46, align 4
  %39 = load %struct._BenderDialog*, %struct._BenderDialog** %cd.addr, align 8
  %rotation = getelementptr inbounds %struct._BenderDialog, %struct._BenderDialog* %39, i32 0, i32 27
  %40 = load double, double* %rotation, align 8
  %41 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %rotation47 = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %41, i32 0, i32 6
  store double %40, double* %rotation47, align 8
  %42 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %total_steps = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %42, i32 0, i32 7
  store i32 0, i32* %total_steps, align 4
  %43 = load %struct._BenderValues*, %struct._BenderValues** %bval.addr, align 8
  %current_step = getelementptr inbounds %struct._BenderValues, %struct._BenderValues* %43, i32 0, i32 8
  store double 0.000000e+00, double* %current_step, align 8
  ret void
}

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
