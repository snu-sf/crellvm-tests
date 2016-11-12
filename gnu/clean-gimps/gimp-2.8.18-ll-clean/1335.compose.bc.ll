; ModuleID = './plug-ins/common/compose.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.COMPOSE_DSC = type { i8*, i32, [4 x i8*], [4 x i8*], i8*, void (i8**, i32*, i32, i8*, i32)* }
%struct.ComposeVals = type { [4 x %struct.ComposeInput], [32 x i8], i32, i32 }
%struct.ComposeInput = type { %union.anon, i32 }
%union.anon = type { i32 }
%struct.ComposeInterface = type { i32, i32, [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*], [4 x %struct.ComposeInput], i32 }
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
%struct._GString = type { i8*, i64, i64 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpHSL = type { double, double, double, double }
%struct._GimpCMYK = type { double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeModel = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal global [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* null }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"image1\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"First input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Input drawable (not used)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"image2\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Second input image\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"image3\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Third input image\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"image4\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Fourth input image\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"compose-type\00", align 1
@query.return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0) }], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"new_image\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.drw_args = internal global [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* null }], align 16
@.str.15 = private unnamed_addr constant [29 x i8] c"First input image (not used)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"drawable1\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"First input drawable\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"drawable2\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Second input drawable\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"drawable3\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Third input drawable\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"drawable4\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Fourth input drawable\00", align 1
@query.drw_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0) }], align 16
@query.recompose_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0) }], align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Image to recompose from\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Not used\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"What to compose: \00", align 1
@compose_dsc = internal global [11 x %struct.COMPOSE_DSC] [%struct.COMPOSE_DSC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* null], [4 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* null], i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_rgb }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 4, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0)], i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_rgba }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_hsv }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_hsl }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_cmy }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 4, [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0)], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_cmyk }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_lab }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_ycbcr470 }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.90, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_ycbcr709 }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_ycbcr470f }, %struct.COMPOSE_DSC { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i32 3, [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i8* null], [4 x i8*] zeroinitializer, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i32 0, i32 0), void (i8**, i32*, i32, i8*, i32)* @compose_ycbcr709f }], align 16
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"plug-in-compose\00", align 1
@.str.30 = private unnamed_addr constant [61 x i8] c"Create an image using multiple gray images as color channels\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"This function creates a new image from multiple gray images\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Peter Kirchgessner\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Peter Kirchgessner (peter@kirchgessner.net)\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"C_ompose...\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"GRAY*\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"<Image>/Colors/Components\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"plug-in-drawable-compose\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"Compose an image from multiple drawables of gray images\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"This function creates a new image from multiple drawables of gray images\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"plug-in-recompose\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"Recompose an image that was previously decomposed\00", align 1
@.str.44 = private unnamed_addr constant [163 x i8] c"This function recombines the grayscale layers produced by Decompose into a single RGB or RGBA layer, and replaces the originally decomposed layer with the result.\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Bill Skaggs\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"R_ecompose\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"_Red:\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"_Green:\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"_Blue:\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"gimp-channel-red\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"gimp-channel-green\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"gimp-channel-blue\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"rgb-compose\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"_Alpha:\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"gimp-channel-alpha\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"rgba-compose\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"_Hue:\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"_Saturation:\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"_Value:\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"hsv-compose\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"_Lightness:\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"hsl-compose\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"CMY\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"_Cyan:\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"_Magenta:\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"_Yellow:\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"cmy-compose\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"_Black:\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"cmyk-compose\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"LAB\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"_L:\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"_A:\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"_B:\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"lab-compose\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"YCbCr_ITU_R470\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"_Luma y470:\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"_Blueness cb470:\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"_Redness cr470:\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"ycbcr470-compose\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"YCbCr_ITU_R709\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"_Luma y709:\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"_Blueness cb709:\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"_Redness cr709:\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"ycbcr709-compose\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"YCbCr_ITU_R470_256\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"_Luma y470f:\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"_Blueness cb470f:\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"_Redness cr470f:\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"ycbcr470F-compose\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"YCbCr_ITU_R709_256\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"_Luma y709f:\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"_Blueness cb709f:\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"_Redness cr709f:\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"ycbcr709F-compose\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.101 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@run_mode = internal global i32 0, align 4
@.str.103 = private unnamed_addr constant [15 x i8] c"decompose-data\00", align 1
@.str.104 = private unnamed_addr constant [89 x i8] c"You can only run 'Recompose' if the active image was originally produced by 'Decompose'.\00", align 1
@.str.105 = private unnamed_addr constant [32 x i8] c"source=%d type=%31s %d %d %d %d\00", align 1
@composevals = internal global %struct.ComposeVals { [4 x %struct.ComposeInput] zeroinitializer, [32 x i8] c"rgb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 -1 }, align 4
@.str.106 = private unnamed_addr constant [63 x i8] c"Error scanning 'decompose-data' parasite: too few layers found\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"Could not get layers for image %d\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"Composing\00", align 1
@composeint = internal global %struct.ComposeInterface zeroinitializer, align 8
@.str.109 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Compose\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"gimp-compose\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"Compose Channels\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"Color _model:\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"Channel Representations\00", align 1
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"gimp-channel-gray\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"Mask value\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.124 = private unnamed_addr constant [40 x i8] c"At least one image is needed to compose\00", align 1
@.str.125 = private unnamed_addr constant [29 x i8] c"Specified layer %d not found\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"Drawables have different size\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"Images have different size\00", align 1
@.str.128 = private unnamed_addr constant [27 x i8] c"Error in getting layer IDs\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"Image is not a gray image (bpp=%d)\00", align 1
@.str.130 = private unnamed_addr constant [44 x i8] c"Unable to recompose, source layer not found\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"Background\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %type_desc = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GString* %call, %struct._GString** %type_desc, align 8
  %0 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call1 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %0, i8 signext 34)
  %1 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %2 = load i8*, i8** getelementptr inbounds ([11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 0, i32 0), align 8
  %call2 = call %struct._GString* @g_string_append(%struct._GString* %1, i8* %2)
  %3 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call3 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %3, i8 signext 34)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call5 = call %struct._GString* @g_string_append(%struct._GString* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  %6 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call6 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %6, i8 signext 34)
  %7 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom
  %compose_type = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %compose_type, align 8
  %call7 = call %struct._GString* @g_string_append(%struct._GString* %7, i8* %9)
  %10 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call8 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %10, i8 signext 34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %12, i32 0, i32 0
  %13 = load i8*, i8** %str, align 8
  store i8* %13, i8** getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i64 6, i32 2), align 8
  %14 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %str9 = getelementptr inbounds %struct._GString, %struct._GString* %14, i32 0, i32 0
  %15 = load i8*, i8** %str9, align 8
  store i8* %15, i8** getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.drw_args, i32 0, i64 6, i32 2), align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 7, i32 1, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call10 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 7, i32 1, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.drw_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.drw_return_vals, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.recompose_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call11 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0))
  %16 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call12 = call i8* @g_string_free(%struct._GString* %16, i32 1)
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
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %compose_by_drawable = alloca i32, align 4
  %i = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %nret = alloca i32, align 4
  %layer_list = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 -1, i32* %drawable_ID, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* @run_mode, align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %compose_by_drawable, align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  store i32 -1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %6 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0)) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.else.24

if.then:                                          ; preds = %do.end
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data9 to i32*
  %8 = load i32, i32* %d_image, align 4
  %call10 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0))
  store %struct._GimpParasite* %call10, %struct._GimpParasite** %parasite, align 8
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %9, null
  br i1 %tobool, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.104, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call12)
  store i32 0, i32* %status, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %10 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call13 = call i8* @gimp_parasite_data(%struct._GimpParasite* %10)
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %call13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.105, i32 0, i32 0), i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 3), i8* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 1, i32 0), i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i32 0, i32 0, i32 0), i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i64 1, i32 0, i32 0), i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i64 2, i32 0, i32 0), i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i64 3, i32 0, i32 0)) #6
  store i32 %call14, i32* %nret, align 4
  %11 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %11)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %12, 4
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom
  %is_ID = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx17, i32 0, i32 1
  store i32 1, i32* %is_ID, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %nret, align 4
  %cmp18 = icmp slt i32 %15, 5
  br i1 %cmp18, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %for.end
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.106, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call21)
  store i32 0, i32* %status, align 4
  br label %if.end

if.else.22:                                       ; preds = %for.end
  store i32 1, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 2), align 4
  store i32 1, i32* %compose_by_drawable, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.11
  br label %if.end.104

if.else.24:                                       ; preds = %do.end
  store i32 0, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 2), align 4
  %16 = load i32, i32* @run_mode, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.54
    i32 2, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %if.else.24
  %17 = load i8*, i8** %name.addr, align 8
  %call25 = call i32 @gimp_procedural_db_get_data(i8* %17, i8* bitcast (%struct.ComposeVals* @composevals to i8*))
  store i32 1, i32* %compose_by_drawable, align 4
  %18 = load i8*, i8** %name.addr, align 8
  %call26 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #8
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.45

if.then.29:                                       ; preds = %sw.bb
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 1
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %20 = load i32, i32* %d_int3232, align 4
  %call33 = call i32* @gimp_image_get_layers(i32 %20, i32* %nlayers)
  store i32* %call33, i32** %layer_list, align 8
  %21 = load i32*, i32** %layer_list, align 8
  %cmp34 = icmp eq i32* %21, null
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.29
  %22 = load i32, i32* %nlayers, align 4
  %cmp36 = icmp sle i32 %22, 0
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %lor.lhs.false, %if.then.29
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.107, i32 0, i32 0)) #6
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 1
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_int3242 = bitcast %union._GimpParamData* %data41 to i32*
  %24 = load i32, i32* %d_int3242, align 4
  call void (i8*, ...) @g_message(i8* %call39, i32 %24)
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false
  %25 = load i32*, i32** %layer_list, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx44, align 4
  store i32 %26, i32* %drawable_ID, align 4
  %27 = load i32*, i32** %layer_list, align 8
  %28 = bitcast i32* %27 to i8*
  call void @g_free(i8* %28)
  br label %if.end.49

if.else.45:                                       ; preds = %sw.bb
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 2
  %data47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx46, i32 0, i32 1
  %d_int3248 = bitcast %union._GimpParamData* %data47 to i32*
  %30 = load i32, i32* %d_int3248, align 4
  store i32 %30, i32* %drawable_ID, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.45, %if.end.43
  %31 = load i32, i32* %drawable_ID, align 4
  %call50 = call i32 @compose_dialog(i8* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 1, i32 0), i32 %31)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.49
  br label %return

if.end.53:                                        ; preds = %if.end.49
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.else.24
  %32 = load i32, i32* %nparams.addr, align 4
  %cmp55 = icmp slt i32 %32, 7
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %sw.bb.54
  store i32 1, i32* %status, align 4
  br label %if.end.101

if.else.58:                                       ; preds = %sw.bb.54
  %33 = load i32, i32* %compose_by_drawable, align 4
  %tobool59 = icmp ne i32 %33, 0
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.58
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 2
  %data61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx60, i32 0, i32 1
  %d_int3262 = bitcast %union._GimpParamData* %data61 to i32*
  %35 = load i32, i32* %d_int3262, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else.58
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 1
  %data64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 1
  %d_int3265 = bitcast %union._GimpParamData* %data64 to i32*
  %37 = load i32, i32* %d_int3265, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %37, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 3
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int3268 = bitcast %union._GimpParamData* %data67 to i32*
  %39 = load i32, i32* %d_int3268, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i64 1, i32 0, i32 0), align 4
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 4
  %data70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx69, i32 0, i32 1
  %d_int3271 = bitcast %union._GimpParamData* %data70 to i32*
  %41 = load i32, i32* %d_int3271, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i64 2, i32 0, i32 0), align 4
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 5
  %data73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx72, i32 0, i32 1
  %d_int3274 = bitcast %union._GimpParamData* %data73 to i32*
  %43 = load i32, i32* %d_int3274, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i64 3, i32 0, i32 0), align 4
  %44 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 6
  %data76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx75, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data76 to i8**
  %45 = load i8*, i8** %d_string, align 8
  %call77 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 1, i32 0), i8* %45, i64 32) #6
  store i8 0, i8* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 1, i64 31), align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.98, %cond.end
  %46 = load i32, i32* %i, align 4
  %cmp79 = icmp slt i32 %46, 4
  br i1 %cmp79, label %for.body.81, label %for.end.100

for.body.81:                                      ; preds = %for.cond.78
  %47 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %47 to i64
  %arrayidx83 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom82
  %comp = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx83, i32 0, i32 0
  %ID = bitcast %union.anon* %comp to i32*
  %48 = load i32, i32* %ID, align 4
  %cmp84 = icmp eq i32 %48, -1
  br i1 %cmp84, label %if.then.86, label %if.else.93

if.then.86:                                       ; preds = %for.body.81
  %49 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %49 to i64
  %arrayidx88 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom87
  %is_ID89 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx88, i32 0, i32 1
  store i32 0, i32* %is_ID89, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %50 to i64
  %arrayidx91 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom90
  %comp92 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx91, i32 0, i32 0
  %val = bitcast %union.anon* %comp92 to i8*
  store i8 0, i8* %val, align 1
  br label %if.end.97

if.else.93:                                       ; preds = %for.body.81
  %51 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %51 to i64
  %arrayidx95 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom94
  %is_ID96 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx95, i32 0, i32 1
  store i32 1, i32* %is_ID96, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.93, %if.then.86
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %52 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %52, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond.78

for.end.100:                                      ; preds = %for.cond.78
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %if.then.57
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.else.24
  %53 = load i8*, i8** %name.addr, align 8
  %call103 = call i32 @gimp_procedural_db_get_data(i8* %53, i8* bitcast (%struct.ComposeVals* @composevals to i8*))
  store i32 1, i32* %compose_by_drawable, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.102, %if.end.101, %if.end.53
  br label %if.end.104

if.end.104:                                       ; preds = %sw.epilog, %if.end.23
  %54 = load i32, i32* %status, align 4
  %cmp105 = icmp eq i32 %54, 3
  br i1 %cmp105, label %if.then.107, label %if.end.133

if.then.107:                                      ; preds = %if.end.104
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0)) #6
  %call109 = call i32 @gimp_progress_init(i8* %call108)
  %55 = load i32, i32* %compose_by_drawable, align 4
  %call110 = call i32 @compose(i8* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 1, i32 0), %struct.ComposeInput* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0, i32 0), i32 %55)
  store i32 %call110, i32* %image_ID, align 4
  %56 = load i32, i32* %image_ID, align 4
  %cmp111 = icmp slt i32 %56, 0
  br i1 %cmp111, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %if.then.107
  store i32 0, i32* %status, align 4
  br label %if.end.127

if.else.114:                                      ; preds = %if.then.107
  %57 = load i32, i32* %image_ID, align 4
  store i32 %57, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 2), align 4
  %tobool115 = icmp ne i32 %58, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.else.114
  %call117 = call i32 @gimp_displays_flush()
  br label %if.end.126

if.else.118:                                      ; preds = %if.else.114
  %59 = load i32, i32* %image_ID, align 4
  %call119 = call i32 @gimp_image_undo_enable(i32 %59)
  %60 = load i32, i32* %image_ID, align 4
  %call120 = call i32 @gimp_image_clean_all(i32 %60)
  %61 = load i32, i32* @run_mode, align 4
  %cmp121 = icmp ne i32 %61, 1
  br i1 %cmp121, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.else.118
  %62 = load i32, i32* %image_ID, align 4
  %call124 = call i32 @gimp_display_new(i32 %62)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %if.else.118
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.116
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.113
  %63 = load i32, i32* @run_mode, align 4
  %cmp128 = icmp eq i32 %63, 0
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.127
  %64 = load i8*, i8** %name.addr, align 8
  %call131 = call i32 @gimp_procedural_db_set_data(i8* %64, i8* bitcast (%struct.ComposeVals* @composevals to i8*), i32 72)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.104
  %65 = load i32, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 2), align 4
  %tobool134 = icmp ne i32 %65, 0
  %cond135 = select i1 %tobool134, i32 1, i32 2
  %66 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 %cond135, i32* %66, align 4
  %67 = load i32, i32* %status, align 4
  store i32 %67, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.133, %if.then.52, %if.then.38
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

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #2 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal void @compose_rgb(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %red_src = alloca i8*, align 8
  %green_src = alloca i8*, align 8
  %blue_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %red_incr = alloca i32, align 4
  %green_incr = alloca i32, align 4
  %blue_incr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %red_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %green_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %blue_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %red_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %green_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %blue_incr, align 4
  %14 = load i32, i32* %red_incr, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* %green_incr, align 4
  %cmp6 = icmp eq i32 %15, 1
  br i1 %cmp6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %16 = load i32, i32* %blue_incr, align 4
  %cmp8 = icmp eq i32 %16, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.7
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %17 = load i32, i32* %count, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %count, align 4
  %cmp9 = icmp sgt i32 %17, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %red_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %red_src, align 8
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr10, i8** %rgb_dst, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i8*, i8** %green_src, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr11, i8** %green_src, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr12, i8** %rgb_dst, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i8*, i8** %blue_src, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr13, i8** %blue_src, align 8
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr14, i8** %rgb_dst, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %while.body
  %28 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %rgb_dst, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %entry
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.31, %if.else
  %29 = load i32, i32* %count, align 4
  %dec18 = add nsw i32 %29, -1
  store i32 %dec18, i32* %count, align 4
  %cmp19 = icmp sgt i32 %29, 0
  br i1 %cmp19, label %while.body.20, label %while.end.32

while.body.20:                                    ; preds = %while.cond.17
  %30 = load i8*, i8** %red_src, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr21, i8** %rgb_dst, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %red_incr, align 4
  %34 = load i8*, i8** %red_src, align 8
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %red_src, align 8
  %35 = load i8*, i8** %green_src, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr22, i8** %rgb_dst, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %green_incr, align 4
  %39 = load i8*, i8** %green_src, align 8
  %idx.ext23 = sext i32 %38 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %39, i64 %idx.ext23
  store i8* %add.ptr24, i8** %green_src, align 8
  %40 = load i8*, i8** %blue_src, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr25, i8** %rgb_dst, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %blue_incr, align 4
  %44 = load i8*, i8** %blue_src, align 8
  %idx.ext26 = sext i32 %43 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %44, i64 %idx.ext26
  store i8* %add.ptr27, i8** %blue_src, align 8
  %45 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool28 = icmp ne i32 %45, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %while.body.20
  %46 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr30, i8** %rgb_dst, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %while.body.20
  br label %while.cond.17

while.end.32:                                     ; preds = %while.cond.17
  br label %if.end.33

if.end.33:                                        ; preds = %while.end.32, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_rgba(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %red_src = alloca i8*, align 8
  %green_src = alloca i8*, align 8
  %blue_src = alloca i8*, align 8
  %alpha_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %red_incr = alloca i32, align 4
  %green_incr = alloca i32, align 4
  %blue_incr = alloca i32, align 4
  %alpha_incr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %red_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %green_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %blue_src, align 8
  %6 = load i8**, i8*** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 3
  %7 = load i8*, i8** %arrayidx3, align 8
  store i8* %7, i8** %alpha_src, align 8
  %8 = load i8*, i8** %dst.addr, align 8
  store i8* %8, i8** %rgb_dst, align 8
  %9 = load i32, i32* %numpix.addr, align 4
  store i32 %9, i32* %count, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %red_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %green_incr, align 4
  %14 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 2
  %15 = load i32, i32* %arrayidx6, align 4
  store i32 %15, i32* %blue_incr, align 4
  %16 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 3
  %17 = load i32, i32* %arrayidx7, align 4
  store i32 %17, i32* %alpha_incr, align 4
  %18 = load i32, i32* %red_incr, align 4
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %19 = load i32, i32* %green_incr, align 4
  %cmp8 = icmp eq i32 %19, 1
  br i1 %cmp8, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %20 = load i32, i32* %blue_incr, align 4
  %cmp10 = icmp eq i32 %20, 1
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %21 = load i32, i32* %alpha_incr, align 4
  %cmp12 = icmp eq i32 %21, 1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %22 = load i32, i32* %count, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %count, align 4
  %cmp13 = icmp sgt i32 %22, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %red_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %red_src, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr14, i8** %rgb_dst, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** %green_src, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr15, i8** %green_src, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %rgb_dst, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %blue_src, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr17, i8** %blue_src, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr18, i8** %rgb_dst, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %alpha_src, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr19, i8** %alpha_src, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr20, i8** %rgb_dst, align 8
  store i8 %33, i8* %34, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %entry
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.24, %if.else
  %35 = load i32, i32* %count, align 4
  %dec22 = add nsw i32 %35, -1
  store i32 %dec22, i32* %count, align 4
  %cmp23 = icmp sgt i32 %35, 0
  br i1 %cmp23, label %while.body.24, label %while.end.35

while.body.24:                                    ; preds = %while.cond.21
  %36 = load i8*, i8** %red_src, align 8
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr25, i8** %rgb_dst, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %red_incr, align 4
  %40 = load i8*, i8** %red_src, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %red_src, align 8
  %41 = load i8*, i8** %green_src, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr26, i8** %rgb_dst, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %green_incr, align 4
  %45 = load i8*, i8** %green_src, align 8
  %idx.ext27 = sext i32 %44 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %45, i64 %idx.ext27
  store i8* %add.ptr28, i8** %green_src, align 8
  %46 = load i8*, i8** %blue_src, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr29, i8** %rgb_dst, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %blue_incr, align 4
  %50 = load i8*, i8** %blue_src, align 8
  %idx.ext30 = sext i32 %49 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %50, i64 %idx.ext30
  store i8* %add.ptr31, i8** %blue_src, align 8
  %51 = load i8*, i8** %alpha_src, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr32, i8** %rgb_dst, align 8
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %alpha_incr, align 4
  %55 = load i8*, i8** %alpha_src, align 8
  %idx.ext33 = sext i32 %54 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %55, i64 %idx.ext33
  store i8* %add.ptr34, i8** %alpha_src, align 8
  br label %while.cond.21

while.end.35:                                     ; preds = %while.cond.21
  br label %if.end

if.end:                                           ; preds = %while.end.35, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_hsv(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %hue_src = alloca i8*, align 8
  %sat_src = alloca i8*, align 8
  %val_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %hue_incr = alloca i32, align 4
  %sat_incr = alloca i32, align 4
  %val_incr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %hue_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %sat_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %val_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %hue_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %sat_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %val_incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %rgb_dst, align 8
  %16 = load i8*, i8** %hue_src, align 8
  %17 = load i8, i8* %16, align 1
  %conv = uitofp i8 %17 to double
  %div = fdiv double %conv, 2.550000e+02
  %18 = load i8*, i8** %sat_src, align 8
  %19 = load i8, i8* %18, align 1
  %conv6 = uitofp i8 %19 to double
  %div7 = fdiv double %conv6, 2.550000e+02
  %20 = load i8*, i8** %val_src, align 8
  %21 = load i8, i8* %20, align 1
  %conv8 = uitofp i8 %21 to double
  %div9 = fdiv double %conv8, 2.550000e+02
  call void @gimp_hsv_to_rgb4(i8* %15, double %div, double %div7, double %div9)
  %22 = load i8*, i8** %rgb_dst, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %add.ptr, i8** %rgb_dst, align 8
  %23 = load i32, i32* %hue_incr, align 4
  %24 = load i8*, i8** %hue_src, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr10, i8** %hue_src, align 8
  %25 = load i32, i32* %sat_incr, align 4
  %26 = load i8*, i8** %sat_src, align 8
  %idx.ext11 = sext i32 %25 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %26, i64 %idx.ext11
  store i8* %add.ptr12, i8** %sat_src, align 8
  %27 = load i32, i32* %val_incr, align 4
  %28 = load i8*, i8** %val_src, align 8
  %idx.ext13 = sext i32 %27 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %28, i64 %idx.ext13
  store i8* %add.ptr14, i8** %val_src, align 8
  %29 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %30 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_hsl(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %hue_src = alloca i8*, align 8
  %sat_src = alloca i8*, align 8
  %lum_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %hue_incr = alloca i32, align 4
  %sat_incr = alloca i32, align 4
  %lum_incr = alloca i32, align 4
  %hsl = alloca %struct._GimpHSL, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %hue_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %sat_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %lum_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %hue_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %sat_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %lum_incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %hue_src, align 8
  %16 = load i8, i8* %15, align 1
  %conv = uitofp i8 %16 to double
  %div = fdiv double %conv, 2.550000e+02
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  store double %div, double* %h, align 8
  %17 = load i8*, i8** %sat_src, align 8
  %18 = load i8, i8* %17, align 1
  %conv6 = uitofp i8 %18 to double
  %div7 = fdiv double %conv6, 2.550000e+02
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  store double %div7, double* %s, align 8
  %19 = load i8*, i8** %lum_src, align 8
  %20 = load i8, i8* %19, align 1
  %conv8 = uitofp i8 %20 to double
  %div9 = fdiv double %conv8, 2.550000e+02
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  store double %div9, double* %l, align 8
  call void @gimp_hsl_to_rgb(%struct._GimpHSL* %hsl, %struct._GimpRGB* %rgb)
  %21 = load i8*, i8** %rgb_dst, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8*, i8** %rgb_dst, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8*, i8** %rgb_dst, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %23, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %rgb, i8* %arrayidx10, i8* %arrayidx11, i8* %arrayidx12)
  %24 = load i8*, i8** %rgb_dst, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 3
  store i8* %add.ptr, i8** %rgb_dst, align 8
  %25 = load i32, i32* %hue_incr, align 4
  %26 = load i8*, i8** %hue_src, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr13, i8** %hue_src, align 8
  %27 = load i32, i32* %sat_incr, align 4
  %28 = load i8*, i8** %sat_src, align 8
  %idx.ext14 = sext i32 %27 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %28, i64 %idx.ext14
  store i8* %add.ptr15, i8** %sat_src, align 8
  %29 = load i32, i32* %lum_incr, align 4
  %30 = load i8*, i8** %lum_src, align 8
  %idx.ext16 = sext i32 %29 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %30, i64 %idx.ext16
  store i8* %add.ptr17, i8** %lum_src, align 8
  %31 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %32 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_cmy(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %cyan_src = alloca i8*, align 8
  %magenta_src = alloca i8*, align 8
  %yellow_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %cyan_incr = alloca i32, align 4
  %magenta_incr = alloca i32, align 4
  %yellow_incr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %cyan_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %magenta_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %yellow_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %cyan_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %magenta_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %yellow_incr, align 4
  %14 = load i32, i32* %cyan_incr, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* %magenta_incr, align 4
  %cmp6 = icmp eq i32 %15, 1
  br i1 %cmp6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %16 = load i32, i32* %yellow_incr, align 4
  %cmp8 = icmp eq i32 %16, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.7
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %17 = load i32, i32* %count, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %count, align 4
  %cmp9 = icmp sgt i32 %17, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %cyan_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %cyan_src, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  %sub = sub nsw i32 255, %conv
  %conv10 = trunc i32 %sub to i8
  %20 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr11, i8** %rgb_dst, align 8
  store i8 %conv10, i8* %20, align 1
  %21 = load i8*, i8** %magenta_src, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr12, i8** %magenta_src, align 8
  %22 = load i8, i8* %21, align 1
  %conv13 = zext i8 %22 to i32
  %sub14 = sub nsw i32 255, %conv13
  %conv15 = trunc i32 %sub14 to i8
  %23 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr16, i8** %rgb_dst, align 8
  store i8 %conv15, i8* %23, align 1
  %24 = load i8*, i8** %yellow_src, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr17, i8** %yellow_src, align 8
  %25 = load i8, i8* %24, align 1
  %conv18 = zext i8 %25 to i32
  %sub19 = sub nsw i32 255, %conv18
  %conv20 = trunc i32 %sub19 to i8
  %26 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr21, i8** %rgb_dst, align 8
  store i8 %conv20, i8* %26, align 1
  %27 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %while.body
  %28 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr23, i8** %rgb_dst, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.22, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %entry
  br label %while.cond.24

while.cond.24:                                    ; preds = %if.end.48, %if.else
  %29 = load i32, i32* %count, align 4
  %dec25 = add nsw i32 %29, -1
  store i32 %dec25, i32* %count, align 4
  %cmp26 = icmp sgt i32 %29, 0
  br i1 %cmp26, label %while.body.28, label %while.end.49

while.body.28:                                    ; preds = %while.cond.24
  %30 = load i8*, i8** %cyan_src, align 8
  %31 = load i8, i8* %30, align 1
  %conv29 = zext i8 %31 to i32
  %sub30 = sub nsw i32 255, %conv29
  %conv31 = trunc i32 %sub30 to i8
  %32 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr32, i8** %rgb_dst, align 8
  store i8 %conv31, i8* %32, align 1
  %33 = load i8*, i8** %magenta_src, align 8
  %34 = load i8, i8* %33, align 1
  %conv33 = zext i8 %34 to i32
  %sub34 = sub nsw i32 255, %conv33
  %conv35 = trunc i32 %sub34 to i8
  %35 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr36, i8** %rgb_dst, align 8
  store i8 %conv35, i8* %35, align 1
  %36 = load i8*, i8** %yellow_src, align 8
  %37 = load i8, i8* %36, align 1
  %conv37 = zext i8 %37 to i32
  %sub38 = sub nsw i32 255, %conv37
  %conv39 = trunc i32 %sub38 to i8
  %38 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr40, i8** %rgb_dst, align 8
  store i8 %conv39, i8* %38, align 1
  %39 = load i32, i32* %cyan_incr, align 4
  %40 = load i8*, i8** %cyan_src, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %cyan_src, align 8
  %41 = load i32, i32* %magenta_incr, align 4
  %42 = load i8*, i8** %magenta_src, align 8
  %idx.ext41 = sext i32 %41 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %42, i64 %idx.ext41
  store i8* %add.ptr42, i8** %magenta_src, align 8
  %43 = load i32, i32* %yellow_incr, align 4
  %44 = load i8*, i8** %yellow_src, align 8
  %idx.ext43 = sext i32 %43 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %44, i64 %idx.ext43
  store i8* %add.ptr44, i8** %yellow_src, align 8
  %45 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool45 = icmp ne i32 %45, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %while.body.28
  %46 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr47, i8** %rgb_dst, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %while.body.28
  br label %while.cond.24

while.end.49:                                     ; preds = %while.cond.24
  br label %if.end.50

if.end.50:                                        ; preds = %while.end.49, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_cmyk(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %cyan_src = alloca i8*, align 8
  %magenta_src = alloca i8*, align 8
  %yellow_src = alloca i8*, align 8
  %black_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %cyan_incr = alloca i32, align 4
  %magenta_incr = alloca i32, align 4
  %yellow_incr = alloca i32, align 4
  %black_incr = alloca i32, align 4
  %grgb = alloca %struct._GimpRGB, align 8
  %gcmyk = alloca %struct._GimpCMYK, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %cyan_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %magenta_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %yellow_src, align 8
  %6 = load i8**, i8*** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 3
  %7 = load i8*, i8** %arrayidx3, align 8
  store i8* %7, i8** %black_src, align 8
  %8 = load i8*, i8** %dst.addr, align 8
  store i8* %8, i8** %rgb_dst, align 8
  %9 = load i32, i32* %numpix.addr, align 4
  store i32 %9, i32* %count, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %cyan_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %magenta_incr, align 4
  %14 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 2
  %15 = load i32, i32* %arrayidx6, align 4
  store i32 %15, i32* %yellow_incr, align 4
  %16 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 3
  %17 = load i32, i32* %arrayidx7, align 4
  store i32 %17, i32* %black_incr, align 4
  call void @gimp_rgb_set(%struct._GimpRGB* %grgb, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %18 = load i32, i32* %count, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %cyan_src, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %magenta_src, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %yellow_src, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %black_src, align 8
  %26 = load i8, i8* %25, align 1
  call void @gimp_cmyk_set_uchar(%struct._GimpCMYK* %gcmyk, i8 zeroext %20, i8 zeroext %22, i8 zeroext %24, i8 zeroext %26)
  call void @gimp_cmyk_to_rgb(%struct._GimpCMYK* %gcmyk, %struct._GimpRGB* %grgb)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %grgb, i8* %r, i8* %g, i8* %b)
  %27 = load i8, i8* %r, align 1
  %28 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8, i8* %g, align 1
  %30 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr8, i8** %rgb_dst, align 8
  store i8 %29, i8* %30, align 1
  %31 = load i8, i8* %b, align 1
  %32 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr9, i8** %rgb_dst, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %cyan_incr, align 4
  %34 = load i8*, i8** %cyan_src, align 8
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %cyan_src, align 8
  %35 = load i32, i32* %magenta_incr, align 4
  %36 = load i8*, i8** %magenta_src, align 8
  %idx.ext10 = sext i32 %35 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %36, i64 %idx.ext10
  store i8* %add.ptr11, i8** %magenta_src, align 8
  %37 = load i32, i32* %yellow_incr, align 4
  %38 = load i8*, i8** %yellow_src, align 8
  %idx.ext12 = sext i32 %37 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %38, i64 %idx.ext12
  store i8* %add.ptr13, i8** %yellow_src, align 8
  %39 = load i32, i32* %black_incr, align 4
  %40 = load i8*, i8** %black_src, align 8
  %idx.ext14 = sext i32 %39 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %40, i64 %idx.ext14
  store i8* %add.ptr15, i8** %black_src, align 8
  %41 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %42 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr16, i8** %rgb_dst, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_lab(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %l_src = alloca i8*, align 8
  %a_src = alloca i8*, align 8
  %b_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %l_incr = alloca i32, align 4
  %a_incr = alloca i32, align 4
  %b_incr = alloca i32, align 4
  %red = alloca double, align 8
  %green = alloca double, align 8
  %blue = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %l = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %p = alloca double, align 8
  %yyn = alloca double, align 8
  %ha = alloca double, align 8
  %hb = alloca double, align 8
  %sqyyn = alloca double, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %l_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %a_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %b_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %l_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %a_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %b_incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.106, %entry
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %l_src, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %conv6 = sitofp i32 %conv to double
  %div = fdiv double %conv6, 2.550000e+00
  store double %div, double* %l, align 8
  %17 = load i8*, i8** %a_src, align 8
  %18 = load i8, i8* %17, align 1
  %conv7 = zext i8 %18 to i32
  %conv8 = sitofp i32 %conv7 to double
  %sub = fsub double %conv8, 1.280000e+02
  %div9 = fdiv double %sub, 1.270000e+00
  store double %div9, double* %a, align 8
  %19 = load i8*, i8** %b_src, align 8
  %20 = load i8, i8* %19, align 1
  %conv10 = zext i8 %20 to i32
  %conv11 = sitofp i32 %conv10 to double
  %sub12 = fsub double %conv11, 1.280000e+02
  %div13 = fdiv double %sub12, 1.270000e+00
  store double %div13, double* %b, align 8
  %21 = load double, double* %l, align 8
  %add = fadd double %21, 1.600000e+01
  %div14 = fdiv double %add, 1.160000e+02
  store double %div14, double* %p, align 8
  %22 = load double, double* %p, align 8
  %23 = load double, double* %p, align 8
  %mul = fmul double %22, %23
  %24 = load double, double* %p, align 8
  %mul15 = fmul double %mul, %24
  store double %mul15, double* %yyn, align 8
  %25 = load double, double* %yyn, align 8
  %cmp16 = fcmp ogt double %25, 8.856000e-03
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %26 = load double, double* %yyn, align 8
  %mul18 = fmul double 1.000000e+00, %26
  store double %mul18, double* %y, align 8
  %27 = load double, double* %p, align 8
  %28 = load double, double* %a, align 8
  %div19 = fdiv double %28, 5.000000e+02
  %add20 = fadd double %27, %div19
  store double %add20, double* %ha, align 8
  %29 = load double, double* %ha, align 8
  %mul21 = fmul double 9.510000e-01, %29
  %30 = load double, double* %ha, align 8
  %mul22 = fmul double %mul21, %30
  %31 = load double, double* %ha, align 8
  %mul23 = fmul double %mul22, %31
  store double %mul23, double* %x, align 8
  %32 = load double, double* %p, align 8
  %33 = load double, double* %b, align 8
  %div24 = fdiv double %33, 2.000000e+02
  %sub25 = fsub double %32, %div24
  store double %sub25, double* %hb, align 8
  %34 = load double, double* %hb, align 8
  %mul26 = fmul double 1.089000e+00, %34
  %35 = load double, double* %hb, align 8
  %mul27 = fmul double %mul26, %35
  %36 = load double, double* %hb, align 8
  %mul28 = fmul double %mul27, %36
  store double %mul28, double* %z, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %37 = load double, double* %l, align 8
  %mul29 = fmul double 1.000000e+00, %37
  %div30 = fdiv double %mul29, 9.033000e+02
  store double %div30, double* %y, align 8
  %38 = load double, double* %l, align 8
  %div31 = fdiv double %38, 9.033000e+02
  %call = call double @pow(double %div31, double 0x3FD5555555555555) #6
  store double %call, double* %sqyyn, align 8
  %39 = load double, double* %a, align 8
  %div32 = fdiv double %39, 5.000000e+02
  %div33 = fdiv double %div32, 7.787000e+00
  %40 = load double, double* %sqyyn, align 8
  %add34 = fadd double %div33, %40
  store double %add34, double* %ha, align 8
  %41 = load double, double* %ha, align 8
  %mul35 = fmul double 9.510000e-01, %41
  %42 = load double, double* %ha, align 8
  %mul36 = fmul double %mul35, %42
  %43 = load double, double* %ha, align 8
  %mul37 = fmul double %mul36, %43
  store double %mul37, double* %x, align 8
  %44 = load double, double* %sqyyn, align 8
  %45 = load double, double* %b, align 8
  %div38 = fdiv double %45, 2.000000e+02
  %div39 = fdiv double %div38, 7.787000e+00
  %sub40 = fsub double %44, %div39
  store double %sub40, double* %hb, align 8
  %46 = load double, double* %hb, align 8
  %mul41 = fmul double 1.089000e+00, %46
  %47 = load double, double* %hb, align 8
  %mul42 = fmul double %mul41, %47
  %48 = load double, double* %hb, align 8
  %mul43 = fmul double %mul42, %48
  store double %mul43, double* %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %49 = load double, double* %x, align 8
  %mul44 = fmul double 3.063000e+00, %49
  %50 = load double, double* %y, align 8
  %mul45 = fmul double 1.393000e+00, %50
  %sub46 = fsub double %mul44, %mul45
  %51 = load double, double* %z, align 8
  %mul47 = fmul double 4.760000e-01, %51
  %sub48 = fsub double %sub46, %mul47
  store double %sub48, double* %red, align 8
  %52 = load double, double* %x, align 8
  %mul49 = fmul double -9.690000e-01, %52
  %53 = load double, double* %y, align 8
  %mul50 = fmul double 1.876000e+00, %53
  %add51 = fadd double %mul49, %mul50
  %54 = load double, double* %z, align 8
  %mul52 = fmul double 4.200000e-02, %54
  %add53 = fadd double %add51, %mul52
  store double %add53, double* %green, align 8
  %55 = load double, double* %x, align 8
  %mul54 = fmul double 6.800000e-02, %55
  %56 = load double, double* %y, align 8
  %mul55 = fmul double 2.290000e-01, %56
  %sub56 = fsub double %mul54, %mul55
  %57 = load double, double* %z, align 8
  %mul57 = fmul double 1.069000e+00, %57
  %add58 = fadd double %sub56, %mul57
  store double %add58, double* %blue, align 8
  %58 = load double, double* %red, align 8
  %cmp59 = fcmp ogt double %58, 0.000000e+00
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %59 = load double, double* %red, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %59, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond, double* %red, align 8
  %60 = load double, double* %green, align 8
  %cmp61 = fcmp ogt double %60, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end
  %61 = load double, double* %green, align 8
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.end
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi double [ %61, %cond.true.63 ], [ 0.000000e+00, %cond.false.64 ]
  store double %cond66, double* %green, align 8
  %62 = load double, double* %blue, align 8
  %cmp67 = fcmp ogt double %62, 0.000000e+00
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.end.65
  %63 = load double, double* %blue, align 8
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.end.65
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.69
  %cond72 = phi double [ %63, %cond.true.69 ], [ 0.000000e+00, %cond.false.70 ]
  store double %cond72, double* %blue, align 8
  %64 = load double, double* %red, align 8
  %cmp73 = fcmp olt double %64, 1.000000e+00
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.71
  %65 = load double, double* %red, align 8
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.end.71
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi double [ %65, %cond.true.75 ], [ 1.000000e+00, %cond.false.76 ]
  store double %cond78, double* %red, align 8
  %66 = load double, double* %green, align 8
  %cmp79 = fcmp olt double %66, 1.000000e+00
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.end.77
  %67 = load double, double* %green, align 8
  br label %cond.end.83

cond.false.82:                                    ; preds = %cond.end.77
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.81
  %cond84 = phi double [ %67, %cond.true.81 ], [ 1.000000e+00, %cond.false.82 ]
  store double %cond84, double* %green, align 8
  %68 = load double, double* %blue, align 8
  %cmp85 = fcmp olt double %68, 1.000000e+00
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.end.83
  %69 = load double, double* %blue, align 8
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.83
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.87
  %cond90 = phi double [ %69, %cond.true.87 ], [ 1.000000e+00, %cond.false.88 ]
  store double %cond90, double* %blue, align 8
  %70 = load double, double* %red, align 8
  %mul91 = fmul double %70, 2.559990e+02
  %conv92 = fptoui double %mul91 to i8
  %71 = load i8*, i8** %rgb_dst, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 %conv92, i8* %arrayidx93, align 1
  %72 = load double, double* %green, align 8
  %mul94 = fmul double %72, 2.559990e+02
  %conv95 = fptoui double %mul94 to i8
  %73 = load i8*, i8** %rgb_dst, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %conv95, i8* %arrayidx96, align 1
  %74 = load double, double* %blue, align 8
  %mul97 = fmul double %74, 2.559990e+02
  %conv98 = fptoui double %mul97 to i8
  %75 = load i8*, i8** %rgb_dst, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %75, i64 2
  store i8 %conv98, i8* %arrayidx99, align 1
  %76 = load i8*, i8** %rgb_dst, align 8
  %add.ptr = getelementptr inbounds i8, i8* %76, i64 3
  store i8* %add.ptr, i8** %rgb_dst, align 8
  %77 = load i32, i32* %l_incr, align 4
  %78 = load i8*, i8** %l_src, align 8
  %idx.ext = sext i32 %77 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  store i8* %add.ptr100, i8** %l_src, align 8
  %79 = load i32, i32* %a_incr, align 4
  %80 = load i8*, i8** %a_src, align 8
  %idx.ext101 = sext i32 %79 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %80, i64 %idx.ext101
  store i8* %add.ptr102, i8** %a_src, align 8
  %81 = load i32, i32* %b_incr, align 4
  %82 = load i8*, i8** %b_src, align 8
  %idx.ext103 = sext i32 %81 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %82, i64 %idx.ext103
  store i8* %add.ptr104, i8** %b_src, align 8
  %83 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %83, 0
  br i1 %tobool, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %cond.end.89
  %84 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %cond.end.89
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_ycbcr470(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %y_src = alloca i8*, align 8
  %cb_src = alloca i8*, align 8
  %cr_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %y_incr = alloca i32, align 4
  %cb_incr = alloca i32, align 4
  %cr_incr = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %y_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %cb_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %cr_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %y_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %cb_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %cr_incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %entry
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %y_src, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %sub = sub nsw i32 %conv, 16
  store i32 %sub, i32* %y, align 4
  %17 = load i8*, i8** %cb_src, align 8
  %18 = load i8, i8* %17, align 1
  %conv6 = zext i8 %18 to i32
  %sub7 = sub nsw i32 %conv6, 128
  store i32 %sub7, i32* %cb, align 4
  %19 = load i8*, i8** %cr_src, align 8
  %20 = load i8, i8* %19, align 1
  %conv8 = zext i8 %20 to i32
  %sub9 = sub nsw i32 %conv8, 128
  store i32 %sub9, i32* %cr, align 4
  %21 = load i32, i32* %y_incr, align 4
  %22 = load i8*, i8** %y_src, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %y_src, align 8
  %23 = load i32, i32* %cb_incr, align 4
  %24 = load i8*, i8** %cb_src, align 8
  %idx.ext10 = sext i32 %23 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %24, i64 %idx.ext10
  store i8* %add.ptr11, i8** %cb_src, align 8
  %25 = load i32, i32* %cr_incr, align 4
  %26 = load i8*, i8** %cr_src, align 8
  %idx.ext12 = sext i32 %25 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %26, i64 %idx.ext12
  store i8* %add.ptr13, i8** %cr_src, align 8
  %27 = load i32, i32* %y, align 4
  %mul = mul nsw i32 76309, %27
  %28 = load i32, i32* %cr, align 4
  %mul14 = mul nsw i32 104612, %28
  %add = add nsw i32 %mul, %mul14
  %add15 = add nsw i32 %add, 32768
  %shr = ashr i32 %add15, 16
  store i32 %shr, i32* %r, align 4
  %29 = load i32, i32* %y, align 4
  %mul16 = mul nsw i32 76309, %29
  %30 = load i32, i32* %cb, align 4
  %mul17 = mul nsw i32 25784, %30
  %sub18 = sub nsw i32 %mul16, %mul17
  %31 = load i32, i32* %cr, align 4
  %mul19 = mul nsw i32 53306, %31
  %sub20 = sub nsw i32 %sub18, %mul19
  %add21 = add nsw i32 %sub20, 32768
  %shr22 = ashr i32 %add21, 16
  store i32 %shr22, i32* %g, align 4
  %32 = load i32, i32* %y, align 4
  %mul23 = mul nsw i32 76309, %32
  %33 = load i32, i32* %cb, align 4
  %mul24 = mul nsw i32 132127, %33
  %add25 = add nsw i32 %mul23, %mul24
  %add26 = add nsw i32 %add25, 32768
  %shr27 = ashr i32 %add26, 16
  store i32 %shr27, i32* %b, align 4
  %34 = load i32, i32* %r, align 4
  %cmp28 = icmp ugt i32 %34, 255
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %35 = load i32, i32* %r, align 4
  %shr30 = ashr i32 %35, 10
  %and = and i32 %shr30, 255
  %xor = xor i32 %and, 255
  store i32 %xor, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %36 = load i32, i32* %g, align 4
  %cmp31 = icmp ugt i32 %36, 255
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end
  %37 = load i32, i32* %g, align 4
  %shr34 = ashr i32 %37, 10
  %and35 = and i32 %shr34, 255
  %xor36 = xor i32 %and35, 255
  store i32 %xor36, i32* %g, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end
  %38 = load i32, i32* %b, align 4
  %cmp38 = icmp ugt i32 %38, 255
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.37
  %39 = load i32, i32* %b, align 4
  %shr41 = ashr i32 %39, 10
  %and42 = and i32 %shr41, 255
  %xor43 = xor i32 %and42, 255
  store i32 %xor43, i32* %b, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end.37
  %40 = load i32, i32* %r, align 4
  %conv45 = trunc i32 %40 to i8
  %41 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  store i8 %conv45, i8* %41, align 1
  %42 = load i32, i32* %g, align 4
  %conv46 = trunc i32 %42 to i8
  %43 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr47, i8** %rgb_dst, align 8
  store i8 %conv46, i8* %43, align 1
  %44 = load i32, i32* %b, align 4
  %conv48 = trunc i32 %44 to i8
  %45 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr49, i8** %rgb_dst, align 8
  store i8 %conv48, i8* %45, align 1
  %46 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.44
  %47 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr51, i8** %rgb_dst, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.44
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_ycbcr709(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %y_src = alloca i8*, align 8
  %cb_src = alloca i8*, align 8
  %cr_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %y_incr = alloca i32, align 4
  %cb_incr = alloca i32, align 4
  %cr_incr = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %y_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %cb_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %cr_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %y_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %cb_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %cr_incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %entry
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %y_src, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %sub = sub nsw i32 %conv, 16
  store i32 %sub, i32* %y, align 4
  %17 = load i8*, i8** %cb_src, align 8
  %18 = load i8, i8* %17, align 1
  %conv6 = zext i8 %18 to i32
  %sub7 = sub nsw i32 %conv6, 128
  store i32 %sub7, i32* %cb, align 4
  %19 = load i8*, i8** %cr_src, align 8
  %20 = load i8, i8* %19, align 1
  %conv8 = zext i8 %20 to i32
  %sub9 = sub nsw i32 %conv8, 128
  store i32 %sub9, i32* %cr, align 4
  %21 = load i32, i32* %y_incr, align 4
  %22 = load i8*, i8** %y_src, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %y_src, align 8
  %23 = load i32, i32* %cb_incr, align 4
  %24 = load i8*, i8** %cb_src, align 8
  %idx.ext10 = sext i32 %23 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %24, i64 %idx.ext10
  store i8* %add.ptr11, i8** %cb_src, align 8
  %25 = load i32, i32* %cr_incr, align 4
  %26 = load i8*, i8** %cr_src, align 8
  %idx.ext12 = sext i32 %25 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %26, i64 %idx.ext12
  store i8* %add.ptr13, i8** %cr_src, align 8
  %27 = load i32, i32* %y, align 4
  %mul = mul nsw i32 76309, %27
  %28 = load i32, i32* %cr, align 4
  %mul14 = mul nsw i32 117489, %28
  %add = add nsw i32 %mul, %mul14
  %add15 = add nsw i32 %add, 32768
  %shr = ashr i32 %add15, 16
  store i32 %shr, i32* %r, align 4
  %29 = load i32, i32* %y, align 4
  %mul16 = mul nsw i32 76309, %29
  %30 = load i32, i32* %cb, align 4
  %mul17 = mul nsw i32 13974, %30
  %sub18 = sub nsw i32 %mul16, %mul17
  %31 = load i32, i32* %cr, align 4
  %mul19 = mul nsw i32 34923, %31
  %sub20 = sub nsw i32 %sub18, %mul19
  %add21 = add nsw i32 %sub20, 32768
  %shr22 = ashr i32 %add21, 16
  store i32 %shr22, i32* %g, align 4
  %32 = load i32, i32* %y, align 4
  %mul23 = mul nsw i32 76309, %32
  %33 = load i32, i32* %cb, align 4
  %mul24 = mul nsw i32 138438, %33
  %add25 = add nsw i32 %mul23, %mul24
  %add26 = add nsw i32 %add25, 32768
  %shr27 = ashr i32 %add26, 16
  store i32 %shr27, i32* %b, align 4
  %34 = load i32, i32* %r, align 4
  %cmp28 = icmp ugt i32 %34, 255
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %35 = load i32, i32* %r, align 4
  %shr30 = ashr i32 %35, 10
  %and = and i32 %shr30, 255
  %xor = xor i32 %and, 255
  store i32 %xor, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %36 = load i32, i32* %g, align 4
  %cmp31 = icmp ugt i32 %36, 255
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end
  %37 = load i32, i32* %g, align 4
  %shr34 = ashr i32 %37, 10
  %and35 = and i32 %shr34, 255
  %xor36 = xor i32 %and35, 255
  store i32 %xor36, i32* %g, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end
  %38 = load i32, i32* %b, align 4
  %cmp38 = icmp ugt i32 %38, 255
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.37
  %39 = load i32, i32* %b, align 4
  %shr41 = ashr i32 %39, 10
  %and42 = and i32 %shr41, 255
  %xor43 = xor i32 %and42, 255
  store i32 %xor43, i32* %b, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end.37
  %40 = load i32, i32* %r, align 4
  %conv45 = trunc i32 %40 to i8
  %41 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  store i8 %conv45, i8* %41, align 1
  %42 = load i32, i32* %g, align 4
  %conv46 = trunc i32 %42 to i8
  %43 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr47, i8** %rgb_dst, align 8
  store i8 %conv46, i8* %43, align 1
  %44 = load i32, i32* %b, align 4
  %conv48 = trunc i32 %44 to i8
  %45 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr49, i8** %rgb_dst, align 8
  store i8 %conv48, i8* %45, align 1
  %46 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.44
  %47 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr51, i8** %rgb_dst, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.44
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_ycbcr470f(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %y_src = alloca i8*, align 8
  %cb_src = alloca i8*, align 8
  %cr_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %y_incr = alloca i32, align 4
  %cb_incr = alloca i32, align 4
  %cr_incr = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %y_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %cb_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %cr_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %y_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %cb_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %cr_incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %entry
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %y_src, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %y, align 4
  %17 = load i8*, i8** %cb_src, align 8
  %18 = load i8, i8* %17, align 1
  %conv6 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv6, 128
  store i32 %sub, i32* %cb, align 4
  %19 = load i8*, i8** %cr_src, align 8
  %20 = load i8, i8* %19, align 1
  %conv7 = zext i8 %20 to i32
  %sub8 = sub nsw i32 %conv7, 128
  store i32 %sub8, i32* %cr, align 4
  %21 = load i32, i32* %y_incr, align 4
  %22 = load i8*, i8** %y_src, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %y_src, align 8
  %23 = load i32, i32* %cb_incr, align 4
  %24 = load i8*, i8** %cb_src, align 8
  %idx.ext9 = sext i32 %23 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %24, i64 %idx.ext9
  store i8* %add.ptr10, i8** %cb_src, align 8
  %25 = load i32, i32* %cr_incr, align 4
  %26 = load i8*, i8** %cr_src, align 8
  %idx.ext11 = sext i32 %25 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %26, i64 %idx.ext11
  store i8* %add.ptr12, i8** %cr_src, align 8
  %27 = load i32, i32* %y, align 4
  %mul = mul nsw i32 65536, %27
  %28 = load i32, i32* %cr, align 4
  %mul13 = mul nsw i32 91895, %28
  %add = add nsw i32 %mul, %mul13
  %add14 = add nsw i32 %add, 32768
  %shr = ashr i32 %add14, 16
  store i32 %shr, i32* %r, align 4
  %29 = load i32, i32* %y, align 4
  %mul15 = mul nsw i32 65536, %29
  %30 = load i32, i32* %cb, align 4
  %mul16 = mul nsw i32 22649, %30
  %sub17 = sub nsw i32 %mul15, %mul16
  %31 = load i32, i32* %cr, align 4
  %mul18 = mul nsw i32 46825, %31
  %sub19 = sub nsw i32 %sub17, %mul18
  %add20 = add nsw i32 %sub19, 32768
  %shr21 = ashr i32 %add20, 16
  store i32 %shr21, i32* %g, align 4
  %32 = load i32, i32* %y, align 4
  %mul22 = mul nsw i32 65536, %32
  %33 = load i32, i32* %cb, align 4
  %mul23 = mul nsw i32 116064, %33
  %add24 = add nsw i32 %mul22, %mul23
  %add25 = add nsw i32 %add24, 32768
  %shr26 = ashr i32 %add25, 16
  store i32 %shr26, i32* %b, align 4
  %34 = load i32, i32* %r, align 4
  %cmp27 = icmp ugt i32 %34, 255
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %35 = load i32, i32* %r, align 4
  %shr29 = ashr i32 %35, 10
  %and = and i32 %shr29, 255
  %xor = xor i32 %and, 255
  store i32 %xor, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %36 = load i32, i32* %g, align 4
  %cmp30 = icmp ugt i32 %36, 255
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end
  %37 = load i32, i32* %g, align 4
  %shr33 = ashr i32 %37, 10
  %and34 = and i32 %shr33, 255
  %xor35 = xor i32 %and34, 255
  store i32 %xor35, i32* %g, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end
  %38 = load i32, i32* %b, align 4
  %cmp37 = icmp ugt i32 %38, 255
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.36
  %39 = load i32, i32* %b, align 4
  %shr40 = ashr i32 %39, 10
  %and41 = and i32 %shr40, 255
  %xor42 = xor i32 %and41, 255
  store i32 %xor42, i32* %b, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.36
  %40 = load i32, i32* %r, align 4
  %conv44 = trunc i32 %40 to i8
  %41 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  store i8 %conv44, i8* %41, align 1
  %42 = load i32, i32* %g, align 4
  %conv45 = trunc i32 %42 to i8
  %43 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr46, i8** %rgb_dst, align 8
  store i8 %conv45, i8* %43, align 1
  %44 = load i32, i32* %b, align 4
  %conv47 = trunc i32 %44 to i8
  %45 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr48, i8** %rgb_dst, align 8
  store i8 %conv47, i8* %45, align 1
  %46 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.43
  %47 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr50, i8** %rgb_dst, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compose_ycbcr709f(i8** %src, i32* %incr_src, i32 %numpix, i8* %dst, i32 %dst_has_alpha) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %incr_src.addr = alloca i32*, align 8
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_has_alpha.addr = alloca i32, align 4
  %y_src = alloca i8*, align 8
  %cb_src = alloca i8*, align 8
  %cr_src = alloca i8*, align 8
  %rgb_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %y_incr = alloca i32, align 4
  %cb_incr = alloca i32, align 4
  %cr_incr = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8
  store i32* %incr_src, i32** %incr_src.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_has_alpha, i32* %dst_has_alpha.addr, align 4
  %0 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %y_src, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %cb_src, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %cr_src, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %rgb_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %y_incr, align 4
  %10 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  store i32 %11, i32* %cb_incr, align 4
  %12 = load i32*, i32** %incr_src.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %cr_incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %entry
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %y_src, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %y, align 4
  %17 = load i8*, i8** %cb_src, align 8
  %18 = load i8, i8* %17, align 1
  %conv6 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv6, 128
  store i32 %sub, i32* %cb, align 4
  %19 = load i8*, i8** %cr_src, align 8
  %20 = load i8, i8* %19, align 1
  %conv7 = zext i8 %20 to i32
  %sub8 = sub nsw i32 %conv7, 128
  store i32 %sub8, i32* %cr, align 4
  %21 = load i32, i32* %y_incr, align 4
  %22 = load i8*, i8** %y_src, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %y_src, align 8
  %23 = load i32, i32* %cb_incr, align 4
  %24 = load i8*, i8** %cb_src, align 8
  %idx.ext9 = sext i32 %23 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %24, i64 %idx.ext9
  store i8* %add.ptr10, i8** %cb_src, align 8
  %25 = load i32, i32* %cr_incr, align 4
  %26 = load i8*, i8** %cr_src, align 8
  %idx.ext11 = sext i32 %25 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %26, i64 %idx.ext11
  store i8* %add.ptr12, i8** %cr_src, align 8
  %27 = load i32, i32* %y, align 4
  %mul = mul nsw i32 65536, %27
  %28 = load i32, i32* %cr, align 4
  %mul13 = mul nsw i32 103206, %28
  %add = add nsw i32 %mul, %mul13
  %add14 = add nsw i32 %add, 32768
  %shr = ashr i32 %add14, 16
  store i32 %shr, i32* %r, align 4
  %29 = load i32, i32* %y, align 4
  %mul15 = mul nsw i32 65536, %29
  %30 = load i32, i32* %cb, align 4
  %mul16 = mul nsw i32 12275, %30
  %sub17 = sub nsw i32 %mul15, %mul16
  %31 = load i32, i32* %cr, align 4
  %mul18 = mul nsw i32 30677, %31
  %sub19 = sub nsw i32 %sub17, %mul18
  %add20 = add nsw i32 %sub19, 32768
  %shr21 = ashr i32 %add20, 16
  store i32 %shr21, i32* %g, align 4
  %32 = load i32, i32* %y, align 4
  %mul22 = mul nsw i32 65536, %32
  %33 = load i32, i32* %cb, align 4
  %mul23 = mul nsw i32 121609, %33
  %add24 = add nsw i32 %mul22, %mul23
  %add25 = add nsw i32 %add24, 32768
  %shr26 = ashr i32 %add25, 16
  store i32 %shr26, i32* %b, align 4
  %34 = load i32, i32* %r, align 4
  %cmp27 = icmp ugt i32 %34, 255
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %35 = load i32, i32* %r, align 4
  %shr29 = ashr i32 %35, 10
  %and = and i32 %shr29, 255
  %xor = xor i32 %and, 255
  store i32 %xor, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %36 = load i32, i32* %g, align 4
  %cmp30 = icmp ugt i32 %36, 255
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end
  %37 = load i32, i32* %g, align 4
  %shr33 = ashr i32 %37, 10
  %and34 = and i32 %shr33, 255
  %xor35 = xor i32 %and34, 255
  store i32 %xor35, i32* %g, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end
  %38 = load i32, i32* %b, align 4
  %cmp37 = icmp ugt i32 %38, 255
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.36
  %39 = load i32, i32* %b, align 4
  %shr40 = ashr i32 %39, 10
  %and41 = and i32 %shr40, 255
  %xor42 = xor i32 %and41, 255
  store i32 %xor42, i32* %b, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.36
  %40 = load i32, i32* %r, align 4
  %conv44 = trunc i32 %40 to i8
  %41 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %rgb_dst, align 8
  store i8 %conv44, i8* %41, align 1
  %42 = load i32, i32* %g, align 4
  %conv45 = trunc i32 %42 to i8
  %43 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr46, i8** %rgb_dst, align 8
  store i8 %conv45, i8* %43, align 1
  %44 = load i32, i32* %b, align 4
  %conv47 = trunc i32 %44 to i8
  %45 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr48, i8** %rgb_dst, align 8
  store i8 %conv47, i8* %45, align 1
  %46 = load i32, i32* %dst_has_alpha.addr, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.43
  %47 = load i8*, i8** %rgb_dst, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr50, i8** %rgb_dst, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @gimp_hsv_to_rgb4(i8*, double, double, double) #1

declare void @gimp_hsl_to_rgb(%struct._GimpHSL*, %struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

declare void @gimp_cmyk_set_uchar(%struct._GimpCMYK*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare void @gimp_cmyk_to_rgb(%struct._GimpCMYK*, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

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
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compose_dialog(i8* %compose_type, i32 %drawable_ID) #0 {
entry:
  %compose_type.addr = alloca i8*, align 8
  %drawable_ID.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  %layer_list = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %j = alloca i32, align 4
  %run = alloca i32, align 4
  %label45 = alloca i8*, align 8
  %l = alloca i8*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %label90 = alloca %struct._GtkWidget*, align 8
  %combo91 = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkObject*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %ico = alloca %struct._GdkPixbuf*, align 8
  %j184 = alloca i32, align 4
  store i8* %compose_type, i8** %compose_type.addr, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %compose_type.addr, align 8
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom
  %compose_type2 = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %compose_type2, align 8
  %call = call i32 @g_ascii_strcasecmp(i8* %1, i8* %3)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %call5 = call i32 @gimp_drawable_width(i32 %6)
  store i32 %call5, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 0), align 4
  %7 = load i32, i32* %drawable_ID.addr, align 4
  %call6 = call i32 @gimp_drawable_height(i32 %7)
  store i32 %call6, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 1), align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i32 1)
  %8 = load i32, i32* %drawable_ID.addr, align 4
  %call7 = call i32 @gimp_item_get_image(i32 %8)
  %call8 = call i32* @gimp_image_get_layers(i32 %call7, i32* %nlayers)
  store i32* %call8, i32** %layer_list, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0)) #6
  %call10 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %dialog, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %11, i32 -5, i32 -6, i32 -1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @check_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %16)
  %call16 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %main_vbox, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %19, i32 12)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_dialog_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkDialog*
  %call21 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %22)
  %23 = bitcast %struct._GtkWidget* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 1, i32 1, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0)) #6
  %call25 = call %struct._GtkWidget* @gimp_frame_new(i8* %call24)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %frame, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call26)
  %29 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %call28 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %hbox, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call29)
  %34 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call31 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call31, %struct._GtkSizeGroup** %size_group, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i32 0, i32 0)) #6
  %call33 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %label, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_misc_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call34)
  %39 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %39, float 0.000000e+00, float 5.000000e-01)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call36)
  %42 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %45, %struct._GtkWidget* %46)
  %47 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %48 = bitcast %struct._GtkSizeGroup* %47 to i8*
  call void @g_object_unref(i8* %48)
  %call38 = call i64 @gimp_int_combo_box_get_type() #7
  %call39 = call i8* (i64, i8*, ...) @g_object_new(i64 %call38, i8* null)
  %49 = bitcast i8* %call39 to %struct._GtkWidget*
  store %struct._GtkWidget* %49, %struct._GtkWidget** %combo, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.65, %for.end
  %50 = load i32, i32* %j, align 4
  %conv41 = sext i32 %50 to i64
  %cmp42 = icmp ult i64 %conv41, 11
  br i1 %cmp42, label %for.body.44, label %for.end.67

for.body.44:                                      ; preds = %for.cond.40
  %51 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom46
  %compose_type48 = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx47, i32 0, i32 0
  %52 = load i8*, i8** %compose_type48, align 8
  %call49 = call i8* @gettext(i8* %52) #6
  %call50 = call noalias i8* @g_strdup(i8* %call49)
  store i8* %call50, i8** %label45, align 8
  %53 = load i8*, i8** %label45, align 8
  store i8* %53, i8** %l, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.61, %for.body.44
  %54 = load i8*, i8** %l, align 8
  %55 = load i8, i8* %54, align 1
  %tobool = icmp ne i8 %55, 0
  br i1 %tobool, label %for.body.52, label %for.end.62

for.body.52:                                      ; preds = %for.cond.51
  %56 = load i8*, i8** %l, align 8
  %57 = load i8, i8* %56, align 1
  %conv53 = sext i8 %57 to i32
  %cmp54 = icmp eq i32 %conv53, 45
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.52
  %58 = load i8*, i8** %l, align 8
  %59 = load i8, i8* %58, align 1
  %conv56 = sext i8 %59 to i32
  %cmp57 = icmp eq i32 %conv56, 95
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false, %for.body.52
  %60 = load i8*, i8** %l, align 8
  store i8 32, i8* %60, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %lor.lhs.false
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %61 = load i8*, i8** %l, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %l, align 8
  br label %for.cond.51

for.end.62:                                       ; preds = %for.cond.51
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_int_combo_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call63)
  %64 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpIntComboBox*
  %65 = load i8*, i8** %label45, align 8
  %66 = load i32, i32* %j, align 4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %64, i32 1, i8* %65, i32 0, i32 %66, i32 -1)
  %67 = load i8*, i8** %label45, align 8
  call void @g_free(i8* %67)
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.62
  %68 = load i32, i32* %j, align 4
  %inc66 = add nsw i32 %68, 1
  store i32 %inc66, i32* %j, align 4
  br label %for.cond.40

for.end.67:                                       ; preds = %for.cond.40
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call68)
  %71 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 1, i32 1, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_label_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call70)
  %76 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkLabel*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %76, %struct._GtkWidget* %77)
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i32 0, i32 0)) #6
  %call73 = call %struct._GtkWidget* @gimp_frame_new(i8* %call72)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %frame, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call74)
  %80 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %81, i32 1, i32 1, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call76 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %vbox, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_container_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call77)
  %85 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkContainer*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %85, %struct._GtkWidget* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call79 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 4, i32 0)
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %table, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call80)
  %90 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %90, i32 6)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call82)
  %93 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %93, i32 6)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call84)
  %96 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %97, i32 0, i32 0, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  store i32 0, i32* %j, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.171, %for.end.67
  %99 = load i32, i32* %j, align 4
  %cmp87 = icmp slt i32 %99, 4
  br i1 %cmp87, label %for.body.89, label %for.end.173

for.body.89:                                      ; preds = %for.cond.86
  %call92 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %hbox, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call93)
  %102 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %104 = load i32, i32* %j, align 4
  %105 = load i32, i32* %j, align 4
  %add = add nsw i32 %105, 1
  call void @gtk_table_attach(%struct._GtkTable* %102, %struct._GtkWidget* %103, i32 0, i32 1, i32 %104, i32 %add, i32 4, i32 4, i32 0, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %107, %struct._GtkWidget* %108)
  %call95 = call %struct._GtkWidget* @gtk_image_new()
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %image, align 8
  %109 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %109 to i64
  %arrayidx97 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 3), i32 0, i64 %idxprom96
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %arrayidx97, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_box_get_type() #7
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call98)
  %112 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkBox*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %112, %struct._GtkWidget* %113, i32 0, i32 0, i32 0)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %call100 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.118, i32 0, i32 0))
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %label90, align 8
  %115 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %115 to i64
  %arrayidx102 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 2), i32 0, i64 %idxprom101
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %arrayidx102, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %label90, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_misc_get_type() #7
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call103)
  %118 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %118, float 0.000000e+00, float 5.000000e-01)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call105)
  %121 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %label90, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %121, %struct._GtkWidget* %122, i32 0, i32 0, i32 0)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %label90, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %123)
  %124 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  %cmp107 = icmp sge i32 %124, 0
  br i1 %cmp107, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.89
  %125 = load i32, i32* %nlayers, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  %idxprom109 = sext i32 %126 to i64
  %arrayidx110 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom109
  %num_images = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx110, i32 0, i32 1
  %127 = load i32, i32* %num_images, align 4
  %cmp111 = icmp sge i32 %125, %127
  br i1 %cmp111, label %land.lhs.true.113, label %if.else

land.lhs.true.113:                                ; preds = %land.lhs.true
  %128 = load i32, i32* %j, align 4
  %129 = load i32, i32* %nlayers, align 4
  %cmp114 = icmp slt i32 %128, %129
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %land.lhs.true.113
  %130 = load i32, i32* %j, align 4
  %idxprom117 = sext i32 %130 to i64
  %131 = load i32*, i32** %layer_list, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %131, i64 %idxprom117
  %132 = load i32, i32* %arrayidx118, align 4
  %133 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %133 to i64
  %arrayidx120 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom119
  %comp = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx120, i32 0, i32 0
  %ID = bitcast %union.anon* %comp to i32*
  store i32 %132, i32* %ID, align 4
  br label %if.end.125

if.else:                                          ; preds = %land.lhs.true.113, %land.lhs.true, %for.body.89
  %134 = load i32, i32* %drawable_ID.addr, align 4
  %135 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %135 to i64
  %arrayidx122 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom121
  %comp123 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx122, i32 0, i32 0
  %ID124 = bitcast %union.anon* %comp123 to i32*
  store i32 %134, i32* %ID124, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.else, %if.then.116
  %136 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %136 to i64
  %arrayidx127 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom126
  %is_ID = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx127, i32 0, i32 1
  store i32 1, i32* %is_ID, align 4
  %call128 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @check_gray, i8* null)
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %combo91, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %combo91, align 8
  %138 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %138 to i64
  %arrayidx130 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 4), i32 0, i64 %idxprom129
  store %struct._GtkWidget* %137, %struct._GtkWidget** %arrayidx130, align 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call131 = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.119, i32 0, i32 0), i32 4, i8* null)
  store %struct._GdkPixbuf* %call131, %struct._GdkPixbuf** %ico, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %combo91, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_combo_box_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call132)
  %142 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkComboBox*
  %call134 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %142)
  store %struct._GtkTreeModel* %call134, %struct._GtkTreeModel** %model, align 8
  %143 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %144 = bitcast %struct._GtkTreeModel* %143 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_list_store_get_type() #7
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call135)
  %145 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkListStore*
  call void @gtk_list_store_append(%struct._GtkListStore* %145, %struct._GtkTreeIter* %iter)
  %146 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %147 = bitcast %struct._GtkTreeModel* %146 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_list_store_get_type() #7
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call137)
  %148 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkListStore*
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0)) #6
  %149 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %ico, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %148, %struct._GtkTreeIter* %iter, i32 0, i32 -1, i32 1, i8* %call139, i32 3, %struct._GdkPixbuf* %149, i32 -1)
  %150 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %ico, align 8
  %151 = bitcast %struct._GdkPixbuf* %150 to i8*
  call void @g_object_unref(i8* %151)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #7
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call140)
  %154 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %combo91, align 8
  %156 = load i32, i32* %j, align 4
  %157 = load i32, i32* %j, align 4
  %add142 = add nsw i32 %157, 1
  call void @gtk_table_attach(%struct._GtkTable* %154, %struct._GtkWidget* %155, i32 1, i32 2, i32 %156, i32 %add142, i32 5, i32 5, i32 0, i32 0)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %combo91, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %label90, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_label_get_type() #7
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call143)
  %161 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkLabel*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %combo91, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %161, %struct._GtkWidget* %162)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_table_get_type() #7
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call145)
  %165 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkTable*
  %166 = load i32, i32* %j, align 4
  %call147 = call %struct._GtkObject* @gimp_color_scale_entry_new(%struct._GtkTable* %165, i32 2, i32 %166, i8* null, i32 100, i32 4, double 2.550000e+02, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i8* null, i8* null)
  store %struct._GtkObject* %call147, %struct._GtkObject** %scale, align 8
  %167 = load %struct._GtkObject*, %struct._GtkObject** %scale, align 8
  %168 = bitcast %struct._GtkObject* %167 to %struct._GTypeInstance*
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 80)
  %169 = bitcast %struct._GTypeInstance* %call148 to %struct._GObject*
  %call149 = call i8* @g_object_get_data(%struct._GObject* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0))
  %170 = bitcast i8* %call149 to %struct._GtkWidget*
  %171 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %171 to i64
  %arrayidx151 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 5), i32 0, i64 %idxprom150
  store %struct._GtkWidget* %170, %struct._GtkWidget** %arrayidx151, align 8
  %172 = load %struct._GtkObject*, %struct._GtkObject** %scale, align 8
  %173 = bitcast %struct._GtkObject* %172 to %struct._GTypeInstance*
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 80)
  %174 = bitcast %struct._GTypeInstance* %call152 to %struct._GObject*
  %call153 = call i8* @g_object_get_data(%struct._GObject* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0))
  %175 = bitcast i8* %call153 to %struct._GtkWidget*
  %176 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %176 to i64
  %arrayidx155 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 6), i32 0, i64 %idxprom154
  store %struct._GtkWidget* %175, %struct._GtkWidget** %arrayidx155, align 8
  %177 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %177 to i64
  %arrayidx157 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 5), i32 0, i64 %idxprom156
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx157, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %178, i32 0)
  %179 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %179 to i64
  %arrayidx159 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 6), i32 0, i64 %idxprom158
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx159, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %180, i32 0)
  %181 = load %struct._GtkObject*, %struct._GtkObject** %scale, align 8
  %182 = bitcast %struct._GtkObject* %181 to i8*
  %183 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %183 to i64
  %arrayidx161 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom160
  %184 = bitcast %struct.ComposeInput* %arrayidx161 to i8*
  %call162 = call i64 @g_signal_connect_data(i8* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.ComposeInput*)* @scale_callback to void ()*), i8* %184, void (i8*, %struct._GClosure*)* null, i32 0)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %combo91, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call163 = call i64 @gimp_int_combo_box_get_type() #7
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call163)
  %187 = bitcast %struct._GTypeInstance* %call164 to %struct._GimpIntComboBox*
  %188 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %188 to i64
  %arrayidx166 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom165
  %comp167 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx166, i32 0, i32 0
  %ID168 = bitcast %union.anon* %comp167 to i32*
  %189 = load i32, i32* %ID168, align 4
  %190 = load i32, i32* %j, align 4
  %conv169 = sext i32 %190 to i64
  %191 = inttoptr i64 %conv169 to i8*
  %call170 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %187, i32 %189, void ()* bitcast (void (%struct._GimpIntComboBox*, i8*)* @combo_callback to void ()*), i8* %191)
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.125
  %192 = load i32, i32* %j, align 4
  %inc172 = add nsw i32 %192, 1
  store i32 %inc172, i32* %j, align 4
  br label %for.cond.86

for.end.173:                                      ; preds = %for.cond.86
  %193 = load i32*, i32** %layer_list, align 8
  %194 = bitcast i32* %193 to i8*
  call void @g_free(i8* %194)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call174 = call i64 @gimp_int_combo_box_get_type() #7
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call174)
  %197 = bitcast %struct._GTypeInstance* %call175 to %struct._GimpIntComboBox*
  %198 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  %call176 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %197, i32 %198, void ()* bitcast (void (%struct._GimpIntComboBox*, i8*)* @type_combo_callback to void ()*), i8* null)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %199)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %201 = bitcast %struct._GtkWidget* %200 to %struct._GTypeInstance*
  %call177 = call i64 @gimp_dialog_get_type() #7
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call177)
  %202 = bitcast %struct._GTypeInstance* %call178 to %struct._GimpDialog*
  %call179 = call i32 @gimp_dialog_run(%struct._GimpDialog* %202)
  %cmp180 = icmp eq i32 %call179, -5
  %conv181 = zext i1 %cmp180 to i32
  store i32 %conv181, i32* %run, align 4
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %203)
  %204 = load i32, i32* %run, align 4
  %tobool182 = icmp ne i32 %204, 0
  br i1 %tobool182, label %if.then.183, label %if.end.224

if.then.183:                                      ; preds = %for.end.173
  store i32 0, i32* %j184, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.217, %if.then.183
  %205 = load i32, i32* %j184, align 4
  %cmp186 = icmp slt i32 %205, 4
  br i1 %cmp186, label %for.body.188, label %for.end.219

for.body.188:                                     ; preds = %for.cond.185
  %206 = load i32, i32* %j184, align 4
  %idxprom189 = sext i32 %206 to i64
  %arrayidx190 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom189
  %is_ID191 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx190, i32 0, i32 1
  %207 = load i32, i32* %is_ID191, align 4
  %208 = load i32, i32* %j184, align 4
  %idxprom192 = sext i32 %208 to i64
  %arrayidx193 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom192
  %is_ID194 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx193, i32 0, i32 1
  store i32 %207, i32* %is_ID194, align 4
  %209 = load i32, i32* %j184, align 4
  %idxprom195 = sext i32 %209 to i64
  %arrayidx196 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom195
  %is_ID197 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx196, i32 0, i32 1
  %210 = load i32, i32* %is_ID197, align 4
  %tobool198 = icmp ne i32 %210, 0
  br i1 %tobool198, label %if.then.199, label %if.else.208

if.then.199:                                      ; preds = %for.body.188
  %211 = load i32, i32* %j184, align 4
  %idxprom200 = sext i32 %211 to i64
  %arrayidx201 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom200
  %comp202 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx201, i32 0, i32 0
  %ID203 = bitcast %union.anon* %comp202 to i32*
  %212 = load i32, i32* %ID203, align 4
  %213 = load i32, i32* %j184, align 4
  %idxprom204 = sext i32 %213 to i64
  %arrayidx205 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom204
  %comp206 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx205, i32 0, i32 0
  %ID207 = bitcast %union.anon* %comp206 to i32*
  store i32 %212, i32* %ID207, align 4
  br label %if.end.216

if.else.208:                                      ; preds = %for.body.188
  %214 = load i32, i32* %j184, align 4
  %idxprom209 = sext i32 %214 to i64
  %arrayidx210 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom209
  %comp211 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx210, i32 0, i32 0
  %val = bitcast %union.anon* %comp211 to i8*
  %215 = load i8, i8* %val, align 1
  %216 = load i32, i32* %j184, align 4
  %idxprom212 = sext i32 %216 to i64
  %arrayidx213 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 0), i32 0, i64 %idxprom212
  %comp214 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx213, i32 0, i32 0
  %val215 = bitcast %union.anon* %comp214 to i8*
  store i8 %215, i8* %val215, align 1
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.208, %if.then.199
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %217 = load i32, i32* %j184, align 4
  %inc218 = add nsw i32 %217, 1
  store i32 %inc218, i32* %j184, align 4
  br label %for.cond.185

for.end.219:                                      ; preds = %for.cond.185
  %218 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  %idxprom220 = sext i32 %218 to i64
  %arrayidx221 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom220
  %compose_type222 = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx221, i32 0, i32 0
  %219 = load i8*, i8** %compose_type222, align 8
  %call223 = call i8* @strcpy(i8* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 1, i32 0), i8* %219) #6
  br label %if.end.224

if.end.224:                                       ; preds = %for.end.219, %for.end.173
  %220 = load i32, i32* %run, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compose(i8* %compose_type, %struct.ComposeInput* %inputs, i32 %compose_by_drawable) #0 {
entry:
  %retval = alloca i32, align 4
  %compose_type.addr = alloca i8*, align 8
  %inputs.addr = alloca %struct.ComposeInput*, align 8
  %compose_by_drawable.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %num_images = alloca i32, align 4
  %compose_idx = alloca i32, align 4
  %incr_src = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_layers = alloca i32, align 4
  %layer_ID_dst = alloca i32, align 4
  %image_ID_dst = alloca i32, align 4
  %src = alloca [4 x i8*], align 16
  %dst = alloca i8*, align 8
  %first_ID = alloca i32, align 4
  %gdtype_dst = alloca i32, align 4
  %drawable_src = alloca [4 x %struct._GimpDrawable*], align 16
  %drawable_dst = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn_src = alloca [4 x %struct._GimpPixelRgn], align 16
  %pixel_rgn_dst = alloca %struct._GimpPixelRgn, align 8
  %pixel_rgn_dst_read = alloca %struct._GimpPixelRgn, align 8
  %layers = alloca i32*, align 8
  %s = alloca i64, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store i8* %compose_type, i8** %compose_type.addr, align 8
  store %struct.ComposeInput* %inputs, %struct.ComposeInput** %inputs.addr, align 8
  store i32 %compose_by_drawable, i32* %compose_by_drawable.addr, align 4
  store i32 -1, i32* %compose_idx, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %compose_type.addr, align 8
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom
  %compose_type2 = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %compose_type2, align 8
  %call = call i32 @g_ascii_strcasecmp(i8* %1, i8* %3)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  store i32 %4, i32* %compose_idx, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, i32* %compose_idx, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.end
  %7 = load i32, i32* %compose_idx, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom9
  %num_images11 = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx10, i32 0, i32 1
  %8 = load i32, i32* %num_images11, align 4
  store i32 %8, i32* %num_images, align 4
  store i32 -1, i32* %first_ID, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.20, %if.end.8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num_images, align 4
  %cmp13 = icmp slt i32 %9, %10
  br i1 %cmp13, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.12
  %11 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %12 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %12, i64 %idxprom16
  %is_ID = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx17, i32 0, i32 1
  %13 = load i32, i32* %is_ID, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.15
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %first_ID, align 4
  br label %for.end.22

if.end.19:                                        ; preds = %for.body.15
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %15 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.12

for.end.22:                                       ; preds = %if.then.18, %for.cond.12
  %16 = load i32, i32* %first_ID, align 4
  %cmp23 = icmp eq i32 -1, %16
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %for.end.22
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.124, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call26)
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %for.end.22
  %call28 = call i32 @gimp_tile_height() #7
  store i32 %call28, i32* %tile_height, align 4
  %17 = load i32, i32* %compose_by_drawable.addr, align 4
  %tobool29 = icmp ne i32 %17, 0
  br i1 %tobool29, label %if.then.30, label %if.else.117

if.then.30:                                       ; preds = %if.end.27
  %18 = load i32, i32* %first_ID, align 4
  %idxprom31 = sext i32 %18 to i64
  %19 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %19, i64 %idxprom31
  %comp = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx32, i32 0, i32 0
  %ID = bitcast %union.anon* %comp to i32*
  %20 = load i32, i32* %ID, align 4
  %call33 = call i32 @gimp_item_is_valid(i32 %20)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.41, label %if.then.35

if.then.35:                                       ; preds = %if.then.30
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i32 0, i32 0)) #6
  %21 = load i32, i32* %first_ID, align 4
  %idxprom37 = sext i32 %21 to i64
  %22 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %22, i64 %idxprom37
  %comp39 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx38, i32 0, i32 0
  %ID40 = bitcast %union.anon* %comp39 to i32*
  %23 = load i32, i32* %ID40, align 4
  call void (i8*, ...) @g_message(i8* %call36, i32 %23)
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.30
  %24 = load i32, i32* %first_ID, align 4
  %idxprom42 = sext i32 %24 to i64
  %25 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %25, i64 %idxprom42
  %comp44 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx43, i32 0, i32 0
  %ID45 = bitcast %union.anon* %comp44 to i32*
  %26 = load i32, i32* %ID45, align 4
  %call46 = call i32 @gimp_drawable_width(i32 %26)
  store i32 %call46, i32* %width, align 4
  %27 = load i32, i32* %first_ID, align 4
  %idxprom47 = sext i32 %27 to i64
  %28 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %28, i64 %idxprom47
  %comp49 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx48, i32 0, i32 0
  %ID50 = bitcast %union.anon* %comp49 to i32*
  %29 = load i32, i32* %ID50, align 4
  %call51 = call i32 @gimp_drawable_height(i32 %29)
  store i32 %call51, i32* %height, align 4
  %30 = load i32, i32* %first_ID, align 4
  %add = add nsw i32 %30, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.92, %if.end.41
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %num_images, align 4
  %cmp53 = icmp slt i32 %31, %32
  br i1 %cmp53, label %for.body.55, label %for.end.94

for.body.55:                                      ; preds = %for.cond.52
  %33 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %33 to i64
  %34 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %34, i64 %idxprom56
  %is_ID58 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx57, i32 0, i32 1
  %35 = load i32, i32* %is_ID58, align 4
  %tobool59 = icmp ne i32 %35, 0
  br i1 %tobool59, label %if.then.60, label %if.end.91

if.then.60:                                       ; preds = %for.body.55
  %36 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %36 to i64
  %37 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %37, i64 %idxprom61
  %comp63 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx62, i32 0, i32 0
  %ID64 = bitcast %union.anon* %comp63 to i32*
  %38 = load i32, i32* %ID64, align 4
  %call65 = call i32 @gimp_item_is_valid(i32 %38)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.73, label %if.then.67

if.then.67:                                       ; preds = %if.then.60
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i32 0, i32 0)) #6
  %39 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %39 to i64
  %40 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %40, i64 %idxprom69
  %comp71 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx70, i32 0, i32 0
  %ID72 = bitcast %union.anon* %comp71 to i32*
  %41 = load i32, i32* %ID72, align 4
  call void (i8*, ...) @g_message(i8* %call68, i32 %41)
  store i32 -1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.then.60
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %43 to i64
  %44 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %44, i64 %idxprom74
  %comp76 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx75, i32 0, i32 0
  %ID77 = bitcast %union.anon* %comp76 to i32*
  %45 = load i32, i32* %ID77, align 4
  %call78 = call i32 @gimp_drawable_width(i32 %45)
  %cmp79 = icmp ne i32 %42, %call78
  br i1 %cmp79, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.73
  %46 = load i32, i32* %height, align 4
  %47 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %47 to i64
  %48 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %48, i64 %idxprom81
  %comp83 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx82, i32 0, i32 0
  %ID84 = bitcast %union.anon* %comp83 to i32*
  %49 = load i32, i32* %ID84, align 4
  %call85 = call i32 @gimp_drawable_height(i32 %49)
  %cmp86 = icmp ne i32 %46, %call85
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %lor.lhs.false, %if.end.73
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.126, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call89)
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %lor.lhs.false
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.body.55
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %50 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %50, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.52

for.end.94:                                       ; preds = %for.cond.52
  store i32 0, i32* %j, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.114, %for.end.94
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %num_images, align 4
  %cmp96 = icmp slt i32 %51, %52
  br i1 %cmp96, label %for.body.98, label %for.end.116

for.body.98:                                      ; preds = %for.cond.95
  %53 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %53 to i64
  %54 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %54, i64 %idxprom99
  %is_ID101 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx100, i32 0, i32 1
  %55 = load i32, i32* %is_ID101, align 4
  %tobool102 = icmp ne i32 %55, 0
  br i1 %tobool102, label %if.then.103, label %if.else

if.then.103:                                      ; preds = %for.body.98
  %56 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %56 to i64
  %57 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx105 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %57, i64 %idxprom104
  %comp106 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx105, i32 0, i32 0
  %ID107 = bitcast %union.anon* %comp106 to i32*
  %58 = load i32, i32* %ID107, align 4
  %call108 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %58)
  %59 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %59 to i64
  %arrayidx110 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_src, i32 0, i64 %idxprom109
  store %struct._GimpDrawable* %call108, %struct._GimpDrawable** %arrayidx110, align 8
  br label %if.end.113

if.else:                                          ; preds = %for.body.98
  %60 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %60 to i64
  %arrayidx112 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_src, i32 0, i64 %idxprom111
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %arrayidx112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.else, %if.then.103
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %61 = load i32, i32* %j, align 4
  %inc115 = add nsw i32 %61, 1
  store i32 %inc115, i32* %j, align 4
  br label %for.cond.95

for.end.116:                                      ; preds = %for.cond.95
  br label %if.end.189

if.else.117:                                      ; preds = %if.end.27
  %62 = load i32, i32* %first_ID, align 4
  %idxprom118 = sext i32 %62 to i64
  %63 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %63, i64 %idxprom118
  %comp120 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx119, i32 0, i32 0
  %ID121 = bitcast %union.anon* %comp120 to i32*
  %64 = load i32, i32* %ID121, align 4
  %call122 = call i32 @gimp_image_width(i32 %64)
  store i32 %call122, i32* %width, align 4
  %65 = load i32, i32* %first_ID, align 4
  %idxprom123 = sext i32 %65 to i64
  %66 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %66, i64 %idxprom123
  %comp125 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx124, i32 0, i32 0
  %ID126 = bitcast %union.anon* %comp125 to i32*
  %67 = load i32, i32* %ID126, align 4
  %call127 = call i32 @gimp_image_height(i32 %67)
  store i32 %call127, i32* %height, align 4
  %68 = load i32, i32* %first_ID, align 4
  %add128 = add nsw i32 %68, 1
  store i32 %add128, i32* %j, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.157, %if.else.117
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %num_images, align 4
  %cmp130 = icmp slt i32 %69, %70
  br i1 %cmp130, label %for.body.132, label %for.end.159

for.body.132:                                     ; preds = %for.cond.129
  %71 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %71 to i64
  %72 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %72, i64 %idxprom133
  %is_ID135 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx134, i32 0, i32 1
  %73 = load i32, i32* %is_ID135, align 4
  %tobool136 = icmp ne i32 %73, 0
  br i1 %tobool136, label %if.then.137, label %if.end.156

if.then.137:                                      ; preds = %for.body.132
  %74 = load i32, i32* %width, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %75 to i64
  %76 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx139 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %76, i64 %idxprom138
  %comp140 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx139, i32 0, i32 0
  %ID141 = bitcast %union.anon* %comp140 to i32*
  %77 = load i32, i32* %ID141, align 4
  %call142 = call i32 @gimp_image_width(i32 %77)
  %cmp143 = icmp ne i32 %74, %call142
  br i1 %cmp143, label %if.then.153, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %if.then.137
  %78 = load i32, i32* %height, align 4
  %79 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %79 to i64
  %80 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx147 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %80, i64 %idxprom146
  %comp148 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx147, i32 0, i32 0
  %ID149 = bitcast %union.anon* %comp148 to i32*
  %81 = load i32, i32* %ID149, align 4
  %call150 = call i32 @gimp_image_height(i32 %81)
  %cmp151 = icmp ne i32 %78, %call150
  br i1 %cmp151, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %lor.lhs.false.145, %if.then.137
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call154)
  store i32 -1, i32* %retval
  br label %return

if.end.155:                                       ; preds = %lor.lhs.false.145
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %for.body.132
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %82 = load i32, i32* %j, align 4
  %inc158 = add nsw i32 %82, 1
  store i32 %inc158, i32* %j, align 4
  br label %for.cond.129

for.end.159:                                      ; preds = %for.cond.129
  store i32 0, i32* %j, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.186, %for.end.159
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %num_images, align 4
  %cmp161 = icmp slt i32 %83, %84
  br i1 %cmp161, label %for.body.163, label %for.end.188

for.body.163:                                     ; preds = %for.cond.160
  %85 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %85 to i64
  %86 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %86, i64 %idxprom164
  %is_ID166 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx165, i32 0, i32 1
  %87 = load i32, i32* %is_ID166, align 4
  %tobool167 = icmp ne i32 %87, 0
  br i1 %tobool167, label %if.then.168, label %if.end.185

if.then.168:                                      ; preds = %for.body.163
  %88 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %88 to i64
  %89 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx170 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %89, i64 %idxprom169
  %comp171 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx170, i32 0, i32 0
  %ID172 = bitcast %union.anon* %comp171 to i32*
  %90 = load i32, i32* %ID172, align 4
  %call173 = call i32* @gimp_image_get_layers(i32 %90, i32* %num_layers)
  store i32* %call173, i32** %layers, align 8
  %91 = load i32*, i32** %layers, align 8
  %tobool174 = icmp ne i32* %91, null
  br i1 %tobool174, label %lor.lhs.false.175, label %if.then.178

lor.lhs.false.175:                                ; preds = %if.then.168
  %92 = load i32, i32* %num_layers, align 4
  %cmp176 = icmp sle i32 %92, 0
  br i1 %cmp176, label %if.then.178, label %if.end.180

if.then.178:                                      ; preds = %lor.lhs.false.175, %if.then.168
  %call179 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call179)
  store i32 -1, i32* %retval
  br label %return

if.end.180:                                       ; preds = %lor.lhs.false.175
  %93 = load i32*, i32** %layers, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %93, i64 0
  %94 = load i32, i32* %arrayidx181, align 4
  %call182 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %94)
  %95 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %95 to i64
  %arrayidx184 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_src, i32 0, i64 %idxprom183
  store %struct._GimpDrawable* %call182, %struct._GimpDrawable** %arrayidx184, align 8
  %96 = load i32*, i32** %layers, align 8
  %97 = bitcast i32* %96 to i8*
  call void @g_free(i8* %97)
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.180, %for.body.163
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %98 = load i32, i32* %j, align 4
  %inc187 = add nsw i32 %98, 1
  store i32 %inc187, i32* %j, align 4
  br label %for.cond.160

for.end.188:                                      ; preds = %for.cond.160
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %for.end.116
  store i32 0, i32* %j, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.243, %if.end.189
  %99 = load i32, i32* %j, align 4
  %100 = load i32, i32* %num_images, align 4
  %cmp191 = icmp slt i32 %99, %100
  br i1 %cmp191, label %for.body.193, label %for.end.245

for.body.193:                                     ; preds = %for.cond.190
  %101 = load i32, i32* %j, align 4
  %idxprom194 = sext i32 %101 to i64
  %102 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx195 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %102, i64 %idxprom194
  %is_ID196 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx195, i32 0, i32 1
  %103 = load i32, i32* %is_ID196, align 4
  %tobool197 = icmp ne i32 %103, 0
  br i1 %tobool197, label %if.then.198, label %if.else.220

if.then.198:                                      ; preds = %for.body.193
  %104 = load i32, i32* %j, align 4
  %idxprom199 = sext i32 %104 to i64
  %arrayidx200 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_src, i32 0, i64 %idxprom199
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx200, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %105, i32 0, i32 3
  %106 = load i32, i32* %bpp, align 4
  %107 = load i32, i32* %j, align 4
  %idxprom201 = sext i32 %107 to i64
  %arrayidx202 = getelementptr inbounds [4 x i32], [4 x i32]* %incr_src, i32 0, i64 %idxprom201
  store i32 %106, i32* %arrayidx202, align 4
  %108 = load i32, i32* %j, align 4
  %idxprom203 = sext i32 %108 to i64
  %arrayidx204 = getelementptr inbounds [4 x i32], [4 x i32]* %incr_src, i32 0, i64 %idxprom203
  %109 = load i32, i32* %arrayidx204, align 4
  %cmp205 = icmp ne i32 %109, 1
  br i1 %cmp205, label %land.lhs.true, label %if.end.215

land.lhs.true:                                    ; preds = %if.then.198
  %110 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %110 to i64
  %arrayidx208 = getelementptr inbounds [4 x i32], [4 x i32]* %incr_src, i32 0, i64 %idxprom207
  %111 = load i32, i32* %arrayidx208, align 4
  %cmp209 = icmp ne i32 %111, 2
  br i1 %cmp209, label %if.then.211, label %if.end.215

if.then.211:                                      ; preds = %land.lhs.true
  %call212 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.129, i32 0, i32 0)) #6
  %112 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %112 to i64
  %arrayidx214 = getelementptr inbounds [4 x i32], [4 x i32]* %incr_src, i32 0, i64 %idxprom213
  %113 = load i32, i32* %arrayidx214, align 4
  call void (i8*, ...) @g_message(i8* %call212, i32 %113)
  store i32 -1, i32* %retval
  br label %return

if.end.215:                                       ; preds = %land.lhs.true, %if.then.198
  %114 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %114 to i64
  %arrayidx217 = getelementptr inbounds [4 x %struct._GimpPixelRgn], [4 x %struct._GimpPixelRgn]* %pixel_rgn_src, i32 0, i64 %idxprom216
  %115 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %115 to i64
  %arrayidx219 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_src, i32 0, i64 %idxprom218
  %116 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx219, align 8
  %117 = load i32, i32* %width, align 4
  %118 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %arrayidx217, %struct._GimpDrawable* %116, i32 0, i32 0, i32 %117, i32 %118, i32 0, i32 0)
  br label %if.end.223

if.else.220:                                      ; preds = %for.body.193
  %119 = load i32, i32* %j, align 4
  %idxprom221 = sext i32 %119 to i64
  %arrayidx222 = getelementptr inbounds [4 x i32], [4 x i32]* %incr_src, i32 0, i64 %idxprom221
  store i32 1, i32* %arrayidx222, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.220, %if.end.215
  %120 = load i32, i32* %tile_height, align 4
  %121 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %120, %121
  %122 = load i32, i32* %j, align 4
  %idxprom224 = sext i32 %122 to i64
  %arrayidx225 = getelementptr inbounds [4 x i32], [4 x i32]* %incr_src, i32 0, i64 %idxprom224
  %123 = load i32, i32* %arrayidx225, align 4
  %mul226 = mul nsw i32 %mul, %123
  %conv227 = sext i32 %mul226 to i64
  store i64 %conv227, i64* %s, align 8
  %124 = load i64, i64* %s, align 8
  %call228 = call noalias i8* @g_malloc_n(i64 %124, i64 1)
  %125 = load i32, i32* %j, align 4
  %idxprom229 = sext i32 %125 to i64
  %arrayidx230 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src, i32 0, i64 %idxprom229
  store i8* %call228, i8** %arrayidx230, align 8
  %126 = load i32, i32* %j, align 4
  %idxprom231 = sext i32 %126 to i64
  %127 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx232 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %127, i64 %idxprom231
  %is_ID233 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx232, i32 0, i32 1
  %128 = load i32, i32* %is_ID233, align 4
  %tobool234 = icmp ne i32 %128, 0
  br i1 %tobool234, label %if.end.242, label %if.then.235

if.then.235:                                      ; preds = %if.end.223
  %129 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %129 to i64
  %arrayidx237 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src, i32 0, i64 %idxprom236
  %130 = load i8*, i8** %arrayidx237, align 8
  %131 = load i32, i32* %j, align 4
  %idxprom238 = sext i32 %131 to i64
  %132 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx239 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %132, i64 %idxprom238
  %comp240 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx239, i32 0, i32 0
  %val = bitcast %union.anon* %comp240 to i8*
  %133 = load i8, i8* %val, align 1
  %conv241 = zext i8 %133 to i32
  %134 = trunc i32 %conv241 to i8
  %135 = load i64, i64* %s, align 8
  call void @llvm.memset.p0i8.i64(i8* %130, i8 %134, i64 %135, i32 1, i1 false)
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.235, %if.end.223
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %136 = load i32, i32* %j, align 4
  %inc244 = add nsw i32 %136, 1
  store i32 %inc244, i32* %j, align 4
  br label %for.cond.190

for.end.245:                                      ; preds = %for.cond.190
  %137 = load i32, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 2), align 4
  %tobool246 = icmp ne i32 %137, 0
  br i1 %tobool246, label %if.then.247, label %if.else.259

if.then.247:                                      ; preds = %for.end.245
  %138 = load i32, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 3), align 4
  store i32 %138, i32* %layer_ID_dst, align 4
  %139 = load i32, i32* %layer_ID_dst, align 4
  %call248 = call i32 @gimp_item_is_valid(i32 %139)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.end.252, label %if.then.250

if.then.250:                                      ; preds = %if.then.247
  %call251 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.130, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call251)
  store i32 -1, i32* %retval
  br label %return

if.end.252:                                       ; preds = %if.then.247
  %140 = load i32, i32* %layer_ID_dst, align 4
  %call253 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %140)
  store %struct._GimpDrawable* %call253, %struct._GimpDrawable** %drawable_dst, align 8
  %141 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %142 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %width254 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %142, i32 0, i32 1
  %143 = load i32, i32* %width254, align 4
  %144 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %height255 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %144, i32 0, i32 2
  %145 = load i32, i32* %height255, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn_dst, %struct._GimpDrawable* %141, i32 0, i32 0, i32 %143, i32 %145, i32 1, i32 1)
  %146 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %147 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %width256 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %147, i32 0, i32 1
  %148 = load i32, i32* %width256, align 4
  %149 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %height257 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %149, i32 0, i32 2
  %150 = load i32, i32* %height257, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn_dst_read, %struct._GimpDrawable* %146, i32 0, i32 0, i32 %148, i32 %150, i32 0, i32 0)
  %151 = load i32, i32* %layer_ID_dst, align 4
  %call258 = call i32 @gimp_item_get_image(i32 %151)
  store i32 %call258, i32* %image_ID_dst, align 4
  br label %if.end.267

if.else.259:                                      ; preds = %for.end.245
  %152 = load i32, i32* %compose_idx, align 4
  %idxprom260 = sext i32 %152 to i64
  %arrayidx261 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom260
  %compose_fun = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx261, i32 0, i32 5
  %153 = load void (i8**, i32*, i32, i8*, i32)*, void (i8**, i32*, i32, i8*, i32)** %compose_fun, align 8
  %cmp262 = icmp eq void (i8**, i32*, i32, i8*, i32)* %153, @compose_rgba
  %cond = select i1 %cmp262, i32 1, i32 0
  store i32 %cond, i32* %gdtype_dst, align 4
  %154 = load i32, i32* %compose_idx, align 4
  %idxprom264 = sext i32 %154 to i64
  %arrayidx265 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom264
  %filename = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx265, i32 0, i32 4
  %155 = load i8*, i8** %filename, align 8
  %156 = load i32, i32* %width, align 4
  %157 = load i32, i32* %height, align 4
  %158 = load i32, i32* %gdtype_dst, align 4
  %call266 = call i32 @create_new_image(i8* %155, i32 %156, i32 %157, i32 %158, i32* %layer_ID_dst, %struct._GimpDrawable** %drawable_dst, %struct._GimpPixelRgn* %pixel_rgn_dst)
  store i32 %call266, i32* %image_ID_dst, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.259, %if.end.252
  %159 = load i32, i32* %compose_by_drawable.addr, align 4
  %tobool268 = icmp ne i32 %159, 0
  br i1 %tobool268, label %if.end.276, label %if.then.269

if.then.269:                                      ; preds = %if.end.267
  %160 = load i32, i32* %first_ID, align 4
  %idxprom270 = sext i32 %160 to i64
  %161 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx271 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %161, i64 %idxprom270
  %comp272 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx271, i32 0, i32 0
  %ID273 = bitcast %union.anon* %comp272 to i32*
  %162 = load i32, i32* %ID273, align 4
  %call274 = call i32 @gimp_image_get_resolution(i32 %162, double* %xres, double* %yres)
  %163 = load i32, i32* %image_ID_dst, align 4
  %164 = load double, double* %xres, align 8
  %165 = load double, double* %yres, align 8
  %call275 = call i32 @gimp_image_set_resolution(i32 %163, double %164, double %165)
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.269, %if.end.267
  %166 = load i32, i32* %tile_height, align 4
  %167 = load i32, i32* %width, align 4
  %mul277 = mul nsw i32 %166, %167
  %168 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %bpp278 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %168, i32 0, i32 3
  %169 = load i32, i32* %bpp278, align 4
  %mul279 = mul i32 %mul277, %169
  %conv280 = zext i32 %mul279 to i64
  %call281 = call noalias i8* @g_malloc_n(i64 %conv280, i64 1)
  store i8* %call281, i8** %dst, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.308, %if.end.276
  %170 = load i32, i32* %i, align 4
  %171 = load i32, i32* %height, align 4
  %cmp282 = icmp slt i32 %170, %171
  br i1 %cmp282, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* %tile_height, align 4
  %add284 = add nsw i32 %172, %173
  %sub = sub nsw i32 %add284, 1
  %174 = load i32, i32* %height, align 4
  %cmp285 = icmp slt i32 %sub, %174
  br i1 %cmp285, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %175 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %176 = load i32, i32* %height, align 4
  %177 = load i32, i32* %i, align 4
  %sub287 = sub nsw i32 %176, %177
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond288 = phi i32 [ %175, %cond.true ], [ %sub287, %cond.false ]
  store i32 %cond288, i32* %scan_lines, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.303, %cond.end
  %178 = load i32, i32* %j, align 4
  %179 = load i32, i32* %num_images, align 4
  %cmp290 = icmp slt i32 %178, %179
  br i1 %cmp290, label %for.body.292, label %for.end.305

for.body.292:                                     ; preds = %for.cond.289
  %180 = load i32, i32* %j, align 4
  %idxprom293 = sext i32 %180 to i64
  %181 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx294 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %181, i64 %idxprom293
  %is_ID295 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx294, i32 0, i32 1
  %182 = load i32, i32* %is_ID295, align 4
  %tobool296 = icmp ne i32 %182, 0
  br i1 %tobool296, label %if.then.297, label %if.end.302

if.then.297:                                      ; preds = %for.body.292
  %183 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %183 to i64
  %arrayidx299 = getelementptr inbounds [4 x %struct._GimpPixelRgn], [4 x %struct._GimpPixelRgn]* %pixel_rgn_src, i32 0, i64 %idxprom298
  %184 = load i32, i32* %j, align 4
  %idxprom300 = sext i32 %184 to i64
  %arrayidx301 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src, i32 0, i64 %idxprom300
  %185 = load i8*, i8** %arrayidx301, align 8
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* %width, align 4
  %188 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %arrayidx299, i8* %185, i32 0, i32 %186, i32 %187, i32 %188)
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.297, %for.body.292
  br label %for.inc.303

for.inc.303:                                      ; preds = %if.end.302
  %189 = load i32, i32* %j, align 4
  %inc304 = add nsw i32 %189, 1
  store i32 %inc304, i32* %j, align 4
  br label %for.cond.289

for.end.305:                                      ; preds = %for.cond.289
  %190 = load i32, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 2), align 4
  %tobool306 = icmp ne i32 %190, 0
  br i1 %tobool306, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %for.end.305
  %191 = load i8*, i8** %dst, align 8
  %192 = load i32, i32* %i, align 4
  %193 = load i32, i32* %width, align 4
  %194 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn_dst_read, i8* %191, i32 0, i32 %192, i32 %193, i32 %194)
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %for.end.305
  %195 = load i32, i32* %compose_idx, align 4
  %idxprom309 = sext i32 %195 to i64
  %arrayidx310 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom309
  %compose_fun311 = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx310, i32 0, i32 5
  %196 = load void (i8**, i32*, i32, i8*, i32)*, void (i8**, i32*, i32, i8*, i32)** %compose_fun311, align 8
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %src, i32 0, i32 0
  %arraydecay312 = getelementptr inbounds [4 x i32], [4 x i32]* %incr_src, i32 0, i32 0
  %197 = load i32, i32* %width, align 4
  %198 = load i32, i32* %tile_height, align 4
  %mul313 = mul nsw i32 %197, %198
  %199 = load i8*, i8** %dst, align 8
  %200 = load i32, i32* %layer_ID_dst, align 4
  %call314 = call i32 @gimp_drawable_has_alpha(i32 %200)
  call void %196(i8** %arraydecay, i32* %arraydecay312, i32 %mul313, i8* %199, i32 %call314)
  %201 = load i8*, i8** %dst, align 8
  %202 = load i32, i32* %i, align 4
  %203 = load i32, i32* %width, align 4
  %204 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn_dst, i8* %201, i32 0, i32 %202, i32 %203, i32 %204)
  %205 = load i32, i32* %scan_lines, align 4
  %206 = load i32, i32* %i, align 4
  %add315 = add nsw i32 %206, %205
  store i32 %add315, i32* %i, align 4
  %207 = load i32, i32* %i, align 4
  %conv316 = sitofp i32 %207 to double
  %208 = load i32, i32* %height, align 4
  %conv317 = sitofp i32 %208 to double
  %div = fdiv double %conv316, %conv317
  %call318 = call i32 @gimp_progress_update(double %div)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call319 = call i32 @gimp_progress_update(double 1.000000e+00)
  store i32 0, i32* %j, align 4
  br label %for.cond.320

for.cond.320:                                     ; preds = %for.inc.334, %while.end
  %209 = load i32, i32* %j, align 4
  %210 = load i32, i32* %num_images, align 4
  %cmp321 = icmp slt i32 %209, %210
  br i1 %cmp321, label %for.body.323, label %for.end.336

for.body.323:                                     ; preds = %for.cond.320
  %211 = load i32, i32* %j, align 4
  %idxprom324 = sext i32 %211 to i64
  %arrayidx325 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src, i32 0, i64 %idxprom324
  %212 = load i8*, i8** %arrayidx325, align 8
  call void @g_free(i8* %212)
  %213 = load i32, i32* %j, align 4
  %idxprom326 = sext i32 %213 to i64
  %214 = load %struct.ComposeInput*, %struct.ComposeInput** %inputs.addr, align 8
  %arrayidx327 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %214, i64 %idxprom326
  %is_ID328 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx327, i32 0, i32 1
  %215 = load i32, i32* %is_ID328, align 4
  %tobool329 = icmp ne i32 %215, 0
  br i1 %tobool329, label %if.then.330, label %if.end.333

if.then.330:                                      ; preds = %for.body.323
  %216 = load i32, i32* %j, align 4
  %idxprom331 = sext i32 %216 to i64
  %arrayidx332 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_src, i32 0, i64 %idxprom331
  %217 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx332, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %217)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.330, %for.body.323
  br label %for.inc.334

for.inc.334:                                      ; preds = %if.end.333
  %218 = load i32, i32* %j, align 4
  %inc335 = add nsw i32 %218, 1
  store i32 %inc335, i32* %j, align 4
  br label %for.cond.320

for.end.336:                                      ; preds = %for.cond.320
  %219 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %219)
  %220 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %220)
  %221 = load i32, i32* getelementptr inbounds (%struct.ComposeVals, %struct.ComposeVals* @composevals, i32 0, i32 2), align 4
  %tobool337 = icmp ne i32 %221, 0
  br i1 %tobool337, label %if.then.338, label %if.end.340

if.then.338:                                      ; preds = %for.end.336
  %222 = load i32, i32* %layer_ID_dst, align 4
  %call339 = call i32 @gimp_drawable_merge_shadow(i32 %222, i32 1)
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.338, %for.end.336
  %223 = load i32, i32* %layer_ID_dst, align 4
  %224 = load i32, i32* %layer_ID_dst, align 4
  %call341 = call i32 @gimp_drawable_width(i32 %224)
  %225 = load i32, i32* %layer_ID_dst, align 4
  %call342 = call i32 @gimp_drawable_height(i32 %225)
  %call343 = call i32 @gimp_drawable_update(i32 %223, i32 0, i32 0, i32 %call341, i32 %call342)
  %226 = load i32, i32* %image_ID_dst, align 4
  store i32 %226, i32* %retval
  br label %return

return:                                           ; preds = %if.end.340, %if.then.250, %if.then.211, %if.then.178, %if.then.153, %if.then.88, %if.then.67, %if.then.35, %if.then.25, %if.then.7
  %227 = load i32, i32* %retval
  ret i32 %227
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @gimp_image_clean_all(i32) #1

declare i32 @gimp_display_new(i32) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #4

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @check_response(%struct._GtkWidget* %dialog, i32 %response, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %nb = alloca i32, align 4
  %has_image = alloca i32, align 4
  %d = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response, i32* %response.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %nb, align 4
  store i32 0, i32* %has_image, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom
  %num_images = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %num_images, align 4
  store i32 %2, i32* %nb, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nb, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom1
  %is_ID = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx2, i32 0, i32 1
  %6 = load i32, i32* %is_ID, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %has_image, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %has_image, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end.11, label %if.then.4

if.then.4:                                        ; preds = %for.end
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  call void @g_signal_stop_emission_by_name(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0))
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.124, i32 0, i32 0)) #6
  %call7 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* %13, i32 3, i32 3, i32 2, i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %d, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %d, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call i32 @gtk_dialog_run(%struct._GtkDialog* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %d, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.4, %for.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.11
  ret void
}

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #4

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #4

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #4

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_int_combo_box_append(%struct._GimpIntComboBox*, ...) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #4

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #4

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new() #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_gray(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %image_id.addr, align 4
  %call = call i32 @gimp_image_base_type(i32 %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %image_id.addr, align 4
  %call1 = call i32 @gimp_image_width(i32 %1)
  %2 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 0), align 4
  %cmp2 = icmp eq i32 %call1, %2
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* %image_id.addr, align 4
  %call3 = call i32 @gimp_image_height(i32 %3)
  %4 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 1), align 4
  %cmp4 = icmp eq i32 %call3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

declare %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget*, i8*, i32, i8*) #1

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #4

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #4

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare %struct._GtkObject* @gimp_color_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i8*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @scale_callback(%struct._GtkAdjustment* %adj, %struct.ComposeInput* %input) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %input.addr = alloca %struct.ComposeInput*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct.ComposeInput* %input, %struct.ComposeInput** %input.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %conv = fptoui double %call to i8
  %1 = load %struct.ComposeInput*, %struct.ComposeInput** %input.addr, align 8
  %comp = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %1, i32 0, i32 0
  %val = bitcast %union.anon* %comp to i8*
  store i8 %conv, i8* %val, align 1
  ret void
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @combo_callback(%struct._GimpIntComboBox* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GimpIntComboBox*, align 8
  %data.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._GimpIntComboBox* %widget, %struct._GimpIntComboBox** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %widget.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %id)
  %3 = load i8*, i8** %data.addr, align 8
  %4 = ptrtoint i8* %3 to i64
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %n, align 4
  %5 = load i32, i32* %id, align 4
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %n, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 5), i32 0, i64 %idxprom
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 1)
  %8 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 6), i32 0, i64 %idxprom4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx5, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %9, i32 1)
  %10 = load i32, i32* %n, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom6
  %is_ID = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx7, i32 0, i32 1
  store i32 0, i32* %is_ID, align 4
  %11 = load i32, i32* %n, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 5), i32 0, i64 %idxprom8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx9, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_range_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkRange*
  %call12 = call double @gtk_range_get_value(%struct._GtkRange* %14)
  %conv13 = fptoui double %call12 to i8
  %15 = load i32, i32* %n, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom14
  %comp = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx15, i32 0, i32 0
  %val = bitcast %union.anon* %comp to i8*
  store i8 %conv13, i8* %val, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %n, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 5), i32 0, i64 %idxprom16
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx17, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %17, i32 0)
  %18 = load i32, i32* %n, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 6), i32 0, i64 %idxprom18
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx19, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %19, i32 0)
  %20 = load i32, i32* %n, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom20
  %is_ID22 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx21, i32 0, i32 1
  store i32 1, i32* %is_ID22, align 4
  %21 = load i32, i32* %id, align 4
  %22 = load i32, i32* %n, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [4 x %struct.ComposeInput], [4 x %struct.ComposeInput]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7), i32 0, i64 %idxprom23
  %comp25 = getelementptr inbounds %struct.ComposeInput, %struct.ComposeInput* %arrayidx24, i32 0, i32 0
  %ID = bitcast %union.anon* %comp25 to i32*
  store i32 %21, i32* %ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @type_combo_callback(%struct._GimpIntComboBox* %combo, i8* %data) #0 {
entry:
  %combo.addr = alloca %struct._GimpIntComboBox*, align 8
  %data.addr = alloca i8*, align 8
  %combo4 = alloca i32, align 4
  %scale4 = alloca i32, align 4
  %compose_idx = alloca i32, align 4
  %j = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  %icon = alloca i8*, align 8
  store %struct._GimpIntComboBox* %combo, %struct._GimpIntComboBox** %combo.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo.addr, align 8
  %call = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %0, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 8), align 4
  store i32 %1, i32* %compose_idx, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 2), i32 0, i64 %idxprom
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  store %struct._GtkWidget* %4, %struct._GtkWidget** %label, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 3), i32 0, i64 %idxprom1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx2, align 8
  store %struct._GtkWidget* %6, %struct._GtkWidget** %image, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32, i32* %compose_idx, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom4
  %channel_name = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx5, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [4 x i8*], [4 x i8*]* %channel_name, i32 0, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx6, align 8
  store i8* %9, i8** %text, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32, i32* %compose_idx, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom8
  %channel_icon = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx9, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [4 x i8*], [4 x i8*]* %channel_icon, i32 0, i64 %idxprom7
  %12 = load i8*, i8** %arrayidx10, align 8
  store i8* %12, i8** %icon, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %16 = load i8*, i8** %text, align 8
  %tobool13 = icmp ne i8* %16, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %17 = load i8*, i8** %text, align 8
  %call14 = call i8* @gettext(i8* %17) #6
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call14, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.118, i32 0, i32 0), %cond.false ]
  call void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel* %15, i8* %cond)
  %18 = load i8*, i8** %icon, align 8
  %tobool15 = icmp ne i8* %18, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %cond.end
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_image_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkImage*
  %22 = load i8*, i8** %icon, align 8
  call void @gtk_image_set_from_stock(%struct._GtkImage* %21, i8* %22, i32 4)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_image_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkImage*
  call void @gtk_image_clear(%struct._GtkImage* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %compose_idx, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [11 x %struct.COMPOSE_DSC], [11 x %struct.COMPOSE_DSC]* @compose_dsc, i32 0, i64 %idxprom21
  %channel_name23 = getelementptr inbounds %struct.COMPOSE_DSC, %struct.COMPOSE_DSC* %arrayidx22, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %channel_name23, i32 0, i64 3
  %30 = load i8*, i8** %arrayidx24, align 8
  %cmp25 = icmp ne i8* %30, null
  %conv = zext i1 %cmp25 to i32
  store i32 %conv, i32* %combo4, align 4
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 4, i64 3), align 8
  %32 = load i32, i32* %combo4, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 %32)
  %33 = load i32, i32* %combo4, align 4
  %tobool26 = icmp ne i32 %33, 0
  br i1 %tobool26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %34 = load i32, i32* getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 7, i64 3, i32 1), align 4
  %tobool27 = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool27, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %35 = phi i1 [ false, %for.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %35 to i32
  store i32 %land.ext, i32* %scale4, align 4
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 5, i64 3), align 8
  %37 = load i32, i32* %scale4, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %36, i32 %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ComposeInterface, %struct.ComposeInterface* @composeint, i32 0, i32 6, i64 3), align 8
  %39 = load i32, i32* %scale4, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %38, i32 %39)
  br label %if.end.28

if.end.28:                                        ; preds = %land.end, %entry
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #4

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare double @gtk_range_get_value(%struct._GtkRange*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_range_get_type() #4

declare void @gtk_label_set_text_with_mnemonic(%struct._GtkLabel*, i8*) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #4

declare void @gtk_image_clear(%struct._GtkImage*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #4

declare i32 @gimp_item_is_valid(i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal i32 @create_new_image(i8* %filename, i32 %width, i32 %height, i32 %gdtype, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %gdtype.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32*, align 8
  %drawable.addr = alloca %struct._GimpDrawable**, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %image_ID = alloca i32, align 4
  %gitype = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %gdtype, i32* %gdtype.addr, align 4
  store i32* %layer_ID, i32** %layer_ID.addr, align 8
  store %struct._GimpDrawable** %drawable, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load i32, i32* %gdtype.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %gdtype.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %gitype, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %gdtype.addr, align 4
  %cmp2 = icmp eq i32 %2, 4
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.else
  %3 = load i32, i32* %gdtype.addr, align 4
  %cmp4 = icmp eq i32 %3, 5
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.else
  store i32 2, i32* %gitype, align 4
  br label %if.end

if.else.6:                                        ; preds = %lor.lhs.false.3
  store i32 0, i32* %gitype, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %6 = load i32, i32* %gitype, align 4
  %call = call i32 @gimp_image_new(i32 %4, i32 %5, i32 %6)
  store i32 %call, i32* %image_ID, align 4
  %7 = load i32, i32* %image_ID, align 4
  %call8 = call i32 @gimp_image_undo_disable(i32 %7)
  %8 = load i32, i32* %image_ID, align 4
  %9 = load i8*, i8** %filename.addr, align 8
  %call9 = call i32 @gimp_image_set_filename(i32 %8, i8* %9)
  %10 = load i32, i32* %image_ID, align 4
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.131, i32 0, i32 0)) #6
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %13 = load i32, i32* %gdtype.addr, align 4
  %call11 = call i32 @gimp_layer_new(i32 %10, i8* %call10, i32 %11, i32 %12, i32 %13, double 1.000000e+02, i32 0)
  %14 = load i32*, i32** %layer_ID.addr, align 8
  store i32 %call11, i32* %14, align 4
  %15 = load i32, i32* %image_ID, align 4
  %16 = load i32*, i32** %layer_ID.addr, align 8
  %17 = load i32, i32* %16, align 4
  %call12 = call i32 @gimp_image_insert_layer(i32 %15, i32 %17, i32 -1, i32 0)
  %18 = load i32*, i32** %layer_ID.addr, align 8
  %19 = load i32, i32* %18, align 4
  %call13 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %19)
  %20 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpDrawable* %call13, %struct._GimpDrawable** %20, align 8
  %21 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %22 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %22, align 8
  %24 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %24, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load i32, i32* %width14, align 4
  %27 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %27, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 2
  %29 = load i32, i32* %height15, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %21, %struct._GimpDrawable* %23, i32 0, i32 0, i32 %26, i32 %29, i32 1, i32 0)
  %30 = load i32, i32* %image_ID, align 4
  ret i32 %30
}

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_set_resolution(i32, double, double) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
