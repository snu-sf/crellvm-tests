; ModuleID = './plug-ins/pagecurl/pagecurl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.CurlParams = type { i32, double, i32, i32, i32 }
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
%struct._GimpVector2 = type { double, double }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GdkPixbuf = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.0, %struct._GdkDrawable*, i32 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%union.anon.0 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"FG- and BG-Color (0), Current gradient (1), Current gradient reversed (2)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"Edge to curl (1-4, clockwise, starting in the lower right edge)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Vertical (0), Horizontal (1)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"shade\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Shade the region under the curl (1) or not (0)\00", align 1
@query.return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str.14 = private unnamed_addr constant [11 x i8] c"Curl Layer\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"The new layer with the curl.\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"plug-in-pagecurl\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Curl up one of the image corners\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"This plug-in creates a pagecurl-effect.\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Federico Mena Quintero and Simon Budig\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"July 2004, 1.0\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"_Pagecurl...\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@curl = internal global %struct.CurlParams zeroinitializer, align 8
@image_id = internal global i32 0, align 4
@sel_x = internal global i32 0, align 4
@sel_y = internal global i32 0, align 4
@true_sel_width = internal global i32 0, align 4
@true_sel_height = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"pagecurl\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Pagecurl Effect\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"gimp-pagecurl\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Curl Location\00", align 1
@curl_image = internal global %struct._GtkWidget* null, align 8
@dialog.name = internal global [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)], align 16
@.str.32 = private unnamed_addr constant [12 x i8] c"Lower right\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Lower left\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Upper left\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Upper right\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Curl Orientation\00", align 1
@dialog.name.39 = internal global [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str.40 = private unnamed_addr constant [10 x i8] c"_Vertical\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"_Horizontal\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"_Shade under curl\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"Current gradient (reversed)\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"Current gradient\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Foreground / background colors\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"gimp-default-colors\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"_Opacity:\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@curl_pixbufs = internal global [8 x i8*] [i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl0, i32 0, i32 0), i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl1, i32 0, i32 0), i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl2, i32 0, i32 0), i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl3, i32 0, i32 0), i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl4, i32 0, i32 0), i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl5, i32 0, i32 0), i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl6, i32 0, i32 0), i8* getelementptr inbounds ([3325 x i8], [3325 x i8]* @curl7, i32 0, i32 0)], align 16
@curl0 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC333\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC333\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC\CC\CC\CC333\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\00\00\00fffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\99\99\99\00\00\00fffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\FF\FF\FF\CC\CC\CC\00\00\00\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FFfff333fff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\99\99\99\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\CC\CC\CC\FF\FF\FF\CC\CC\CC333333ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\CC\CC\CC333fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\CC\CC\CCfff\00\00\00fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\99\99\99333\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00333333\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99fff\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC333\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99333\CC\CC\CC\99\99\99333\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99ffffff333fff333fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99fffffffff333333\00\00\00fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffff333333\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffff333333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99fffffffff333333\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99fffffffff333333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffff333333333\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99fffffffff333333\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00", align 4
@curl1 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC333\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC333\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC333\CC\CC\CC\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\00\00\00\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\00\00\00\99\99\99\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\00\00\00\CC\CC\CC\FF\FF\FFfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333fff\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00\99\99\99\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff333333\CC\CC\CC\FF\FF\FF\CC\CC\CC333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333\CC\CC\CC\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff\00\00\00fff\CC\CC\CC\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC333\99\99\99\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00fff\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC333333\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF333\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00333\99\99\99\CC\CC\CC333\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333fff333ffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff\00\00\00333333fffffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00333333ffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333333ffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00333333fffffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333333fffffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00333333333ffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00333333fffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 4
@curl2 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99fffffffff333333\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffff333333333\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99fffffffff333333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99fffffffff333333\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffff333333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffff333333\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99fffffffff333333\00\00\00fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99ffffff333fff333fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99333\CC\CC\CC\99\99\99333\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC333\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00333333\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99fff\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\99\99\99333\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\CC\CC\CCfff\00\00\00fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\CC\CC\CC333fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\CC\CC\CC\FF\FF\FF\CC\CC\CC333333ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\99\99\99\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FFfff333fff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\FF\FF\FF\CC\CC\CC\00\00\00\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\99\99\99\00\00\00fffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\00\00\00fffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC\CC\CC\CC333\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC333\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC333\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 4
@curl3 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00333333fffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00333333333ffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333333fffffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00333333fffffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333333ffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00333333ffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff\00\00\00333333fffffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333fff333ffffff\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00333\99\99\99\CC\CC\CC333\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF333\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00fff\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC333333\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC333\99\99\99\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff\00\00\00fff\CC\CC\CC\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333\CC\CC\CC\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff333333\CC\CC\CC\FF\FF\FF\CC\CC\CC333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00\99\99\99\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333fff\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\00\00\00\CC\CC\CC\FF\FF\FFfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\00\00\00\99\99\99\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\00\00\00\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC333\CC\CC\CC\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC333\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC333\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 4
@curl4 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99\99\99\99fff\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99fffffffff\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffffffffff\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00333\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99fffffffff333333\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff333\CC\CC\CC\99\99\99\99\99\99ffffffffffff333333333\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\CC\CC\CC333\99\99\99fffffffff333333333333\00\00\00\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF333ffffff333333333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC333333333\00\00\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333333\00\00\00fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\CC\CC\CCfff\00\00\00333\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC\FF\FF\FF\99\99\99\00\00\00333ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\00\00\00\CC\CC\CC333333fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\00\00\00\00\00\00333\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00333fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00", align 4
@curl5 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00fff\99\99\99\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00fffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00ffffffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00333333fffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC333\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00333333333ffffffffffff\99\99\99\99\99\99\CC\CC\CC333fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\00\00\00333333333333fffffffff\99\99\99333\CC\CC\CC\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333333333ffffff333\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\00\00333333333\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff\00\00\00333333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC333\00\00\00fff\CC\CC\CC\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff333\00\00\00\99\99\99\FF\FF\FF\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff333333\CC\CC\CC\00\00\00\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC333\00\00\00\00\00\00\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333\00\00\00\00\00", align 4
@curl6 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!\00\00\00333fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\00\00\00\00\00\00333\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\00\00\00\CC\CC\CC333333fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\CC\CC\CC\FF\FF\FF\99\99\99\00\00\00333ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\CC\CC\CCfff\00\00\00333\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00ffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333333\00\00\00fff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCfffffffff\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC333333333\00\00\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF333ffffff333333333\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00333fff\99\99\99\CC\CC\CC333\99\99\99fffffffff333333333333\00\00\00\CC\CC\CC\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00fff333\CC\CC\CC\99\99\99\99\99\99ffffffffffff333333333\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00333\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99fffffffff333333\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99ffffffffffff\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99fffffffff\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99\99\99\99fff\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\99\99\99\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\99\99\99\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\99\99\99\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 4
@curl7 = internal constant [3325 x i8] c"GdkP\00\00\0C\FC\01\01\00\01\00\00\00d\00\00\00!\00\00\00!fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff333\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC333\00\00\00\00\00\00\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff333333\CC\CC\CC\00\00\00\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff333\00\00\00\99\99\99\FF\FF\FF\CC\CC\CC\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC333\00\00\00fff\CC\CC\CC\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00333\99\99\99\FF\FF\FF\FF\FF\FF\99\99\99\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00333fff\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CCfff\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\00\00\00333\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCffffff\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfffffffff\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\CC\CC\CCfff\00\00\00333333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00fffffffff\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333fff\99\99\99\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CCfff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00\00\00333333333\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00333333333ffffff333\FF\FF\FF\FF\FF\FF\CC\CC\CC\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\CC\CC\CC\00\00\00333333333333fffffffff\99\99\99333\CC\CC\CC\99\99\99fff333\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00333333333ffffffffffff\99\99\99\99\99\99\CC\CC\CC333fff\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00333333fffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC333\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00ffffffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00fffffffff\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00fff\99\99\99\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\99\99\99\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\99\99\99\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\99\99\99\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\CC\CC\CC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 4
@.str.50 = private unnamed_addr constant [10 x i8] c"Page Curl\00", align 1
@drawable_position = internal global i32 0, align 4
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@center = internal global %struct._GimpVector2 zeroinitializer, align 8
@radius = internal global double 0.000000e+00, align 8
@left_tangent = internal global %struct._GimpVector2 zeroinitializer, align 8
@right_tangent = internal global %struct._GimpVector2 zeroinitializer, align 8
@diagl_slope = internal global double 0.000000e+00, align 8
@diagr_slope = internal global double 0.000000e+00, align 8
@diagb_slope = internal global double 0.000000e+00, align 8
@diagm_slope = internal global double 0.000000e+00, align 8
@fore_color = internal global [3 x i8] zeroinitializer, align 1
@back_color = internal global [3 x i8] zeroinitializer, align 1
@curl_layer = internal global %struct._GimpDrawable* null, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 7, i32 1, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0))
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
  %drawable_id = alloca i32, align 4
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @set_default_params()
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.CurlParams* @curl to i8*))
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 14, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  store i32 -1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  store i32 %6, i32* %drawable_id, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data8 to i32*
  %8 = load i32, i32* %d_image, align 4
  store i32 %8, i32* @image_id, align 4
  %9 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_is_rgb(i32 %9)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %10 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_is_gray(i32 %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end
  %11 = load i32, i32* %drawable_id, align 4
  %call12 = call i32 @gimp_drawable_mask_intersect(i32 %11, i32* @sel_x, i32* @sel_y, i32* @true_sel_width, i32* @true_sel_height)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %run_mode, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %if.then
  %call14 = call i32 @dialog()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then
  %13 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %13, 7
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.17
  store i32 1, i32* %status, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %sw.bb.17
  %14 = load i32, i32* %status, align 4
  %cmp20 = icmp eq i32 %14, 3
  br i1 %cmp20, label %if.then.21, label %if.end.80

if.then.21:                                       ; preds = %if.end.19
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %16 = load i32, i32* %d_int3224, align 4
  %cmp25 = icmp sgt i32 %16, 2
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  br label %cond.end.35

cond.false:                                       ; preds = %if.then.21
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_int3228 = bitcast %union._GimpParamData* %data27 to i32*
  %18 = load i32, i32* %d_int3228, align 4
  %cmp29 = icmp slt i32 %18, 0
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 3
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_int3234 = bitcast %union._GimpParamData* %data33 to i32*
  %20 = load i32, i32* %d_int3234, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond = phi i32 [ 0, %cond.true.30 ], [ %20, %cond.false.31 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end, %cond.true
  %cond36 = phi i32 [ 2, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond36, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 0), align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 4
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int3239 = bitcast %union._GimpParamData* %data38 to i32*
  %22 = load i32, i32* %d_int3239, align 4
  %cmp40 = icmp sgt i32 %22, 4
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.35
  br label %cond.end.54

cond.false.42:                                    ; preds = %cond.end.35
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 4
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_int3245 = bitcast %union._GimpParamData* %data44 to i32*
  %24 = load i32, i32* %d_int3245, align 4
  %cmp46 = icmp slt i32 %24, 1
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.42
  br label %cond.end.52

cond.false.48:                                    ; preds = %cond.false.42
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 4
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %26 = load i32, i32* %d_int3251, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.48, %cond.true.47
  %cond53 = phi i32 [ 1, %cond.true.47 ], [ %26, %cond.false.48 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.41
  %cond55 = phi i32 [ 4, %cond.true.41 ], [ %cond53, %cond.end.52 ]
  store i32 %cond55, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 5
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_int3258 = bitcast %union._GimpParamData* %data57 to i32*
  %28 = load i32, i32* %d_int3258, align 4
  %cmp59 = icmp sgt i32 %28, 1
  br i1 %cmp59, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.54
  br label %cond.end.73

cond.false.61:                                    ; preds = %cond.end.54
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 5
  %data63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx62, i32 0, i32 1
  %d_int3264 = bitcast %union._GimpParamData* %data63 to i32*
  %30 = load i32, i32* %d_int3264, align 4
  %cmp65 = icmp slt i32 %30, 0
  br i1 %cmp65, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.false.61
  br label %cond.end.71

cond.false.67:                                    ; preds = %cond.false.61
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 5
  %data69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx68, i32 0, i32 1
  %d_int3270 = bitcast %union._GimpParamData* %data69 to i32*
  %32 = load i32, i32* %d_int3270, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.67, %cond.true.66
  %cond72 = phi i32 [ 0, %cond.true.66 ], [ %32, %cond.false.67 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.60
  %cond74 = phi i32 [ 1, %cond.true.60 ], [ %cond72, %cond.end.71 ]
  store i32 %cond74, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4), align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 6
  %data76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx75, i32 0, i32 1
  %d_int3277 = bitcast %union._GimpParamData* %data76 to i32*
  %34 = load i32, i32* %d_int3277, align 4
  %tobool78 = icmp ne i32 %34, 0
  %cond79 = select i1 %tobool78, i32 1, i32 0
  store i32 %cond79, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 2), align 4
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end.73, %if.end.19
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.81, %if.end.80, %if.end
  %35 = load i32, i32* %status, align 4
  %cmp82 = icmp eq i32 %35, 3
  br i1 %cmp82, label %if.then.83, label %if.end.93

if.then.83:                                       ; preds = %sw.epilog
  %36 = load i32, i32* %drawable_id, align 4
  %call84 = call i32 @page_curl(i32 %36)
  store i32 %call84, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %37 = load i32, i32* %run_mode, align 4
  %cmp85 = icmp ne i32 %37, 1
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.then.83
  %call87 = call i32 @gimp_displays_flush()
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.then.83
  %38 = load i32, i32* %run_mode, align 4
  %cmp89 = icmp eq i32 %38, 0
  br i1 %cmp89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.end.88
  %call91 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.CurlParams* @curl to i8*), i32 32)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.end.88
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %sw.epilog
  br label %if.end.94

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.end.93
  %39 = load i32, i32* %status, align 4
  store i32 %39, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.94, %if.then.16
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

; Function Attrs: nounwind uwtable
define internal void @set_default_params() #0 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 0), align 4
  store double 1.000000e+00, double* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4), align 4
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  %i = alloca i32, align 4
  %i78 = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0)) #6
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 1)
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
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %call25 = call %struct._GtkWidget* @gtk_image_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** @curl_image, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call26)
  %32 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @curl_image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %32, %struct._GtkWidget* %33, i32 0, i32 2, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** @curl_image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  call void @curl_pixbuf_update()
  store %struct._GtkWidget* null, %struct._GtkWidget** %button, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %35 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %35, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %cmp28 = icmp eq %struct._GtkWidget* %36, null
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_radio_button_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkRadioButton*
  %call31 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %39)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ null, %cond.true ], [ %call31, %cond.false ]
  %40 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %40, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @dialog.name, i32 0, i64 %idxprom
  %41 = load i8*, i8** %arrayidx, align 8
  %call32 = call i8* @gettext(i8* %41) #6
  %call33 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %cond, i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_toggle_button_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call34)
  %44 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkToggleButton*
  %45 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %46 = load i32, i32* %i, align 4
  %cmp36 = icmp eq i32 %45, %46
  %conv = zext i1 %cmp36 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %44, i32 %conv)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %50 = load i32, i32* %i, align 4
  %conv38 = sext i32 %50 to i64
  %51 = inttoptr i64 %conv38 to i8*
  call void @g_object_set_data(%struct._GObject* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call39)
  %54 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = load i32, i32* %i, align 4
  %cmp41 = icmp eq i32 %56, 2
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end
  %57 = load i32, i32* %i, align 4
  %cmp43 = icmp eq i32 %57, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %58 = phi i1 [ true, %cond.end ], [ %cmp43, %lor.rhs ]
  %cond45 = select i1 %58, i32 0, i32 1
  %59 = load i32, i32* %i, align 4
  %cmp46 = icmp eq i32 %59, 2
  br i1 %cmp46, label %lor.end.51, label %lor.rhs.48

lor.rhs.48:                                       ; preds = %lor.end
  %60 = load i32, i32* %i, align 4
  %cmp49 = icmp eq i32 %60, 3
  br label %lor.end.51

lor.end.51:                                       ; preds = %lor.rhs.48, %lor.end
  %61 = phi i1 [ true, %lor.end ], [ %cmp49, %lor.rhs.48 ]
  %cond52 = select i1 %61, i32 1, i32 2
  %62 = load i32, i32* %i, align 4
  %cmp53 = icmp eq i32 %62, 3
  br i1 %cmp53, label %lor.end.58, label %lor.rhs.55

lor.rhs.55:                                       ; preds = %lor.end.51
  %63 = load i32, i32* %i, align 4
  %cmp56 = icmp eq i32 %63, 4
  br label %lor.end.58

lor.end.58:                                       ; preds = %lor.rhs.55, %lor.end.51
  %64 = phi i1 [ true, %lor.end.51 ], [ %cmp56, %lor.rhs.55 ]
  %cond59 = select i1 %64, i32 0, i32 2
  %65 = load i32, i32* %i, align 4
  %cmp60 = icmp eq i32 %65, 3
  br i1 %cmp60, label %lor.end.65, label %lor.rhs.62

lor.rhs.62:                                       ; preds = %lor.end.58
  %66 = load i32, i32* %i, align 4
  %cmp63 = icmp eq i32 %66, 4
  br label %lor.end.65

lor.end.65:                                       ; preds = %lor.rhs.62, %lor.end.58
  %67 = phi i1 [ true, %lor.end.58 ], [ %cmp63, %lor.rhs.62 ]
  %cond66 = select i1 %67, i32 1, i32 3
  call void @gtk_table_attach(%struct._GtkTable* %54, %struct._GtkWidget* %55, i32 %cond45, i32 %cond52, i32 %cond59, i32 %cond66, i32 5, i32 2, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* @curl_pixbuf_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %lor.end.65
  %73 = load i32, i32* %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0)) #6
  %call70 = call %struct._GtkWidget* @gimp_frame_new(i8* %call69)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %frame, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_box_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call71)
  %78 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkBox*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %78, %struct._GtkWidget* %79, i32 0, i32 0, i32 0)
  %call73 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %hbox, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call74)
  %82 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %82, i32 1)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_container_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call76)
  %85 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkContainer*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %85, %struct._GtkWidget* %86)
  store %struct._GtkWidget* null, %struct._GtkWidget** %button, align 8
  store i32 0, i32* %i78, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.106, %for.end
  %87 = load i32, i32* %i78, align 4
  %cmp80 = icmp sle i32 %87, 1
  br i1 %cmp80, label %for.body.82, label %for.end.108

for.body.82:                                      ; preds = %for.cond.79
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %cmp83 = icmp eq %struct._GtkWidget* %88, null
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %for.body.82
  br label %cond.end.90

cond.false.86:                                    ; preds = %for.body.82
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_radio_button_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call87)
  %91 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkRadioButton*
  %call89 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %91)
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.86, %cond.true.85
  %cond91 = phi %struct._GSList* [ null, %cond.true.85 ], [ %call89, %cond.false.86 ]
  %92 = load i32, i32* %i78, align 4
  %idxprom92 = sext i32 %92 to i64
  %arrayidx93 = getelementptr inbounds [2 x i8*], [2 x i8*]* @dialog.name.39, i32 0, i64 %idxprom92
  %93 = load i8*, i8** %arrayidx93, align 8
  %call94 = call i8* @gettext(i8* %93) #6
  %call95 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %cond91, i8* %call94)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %button, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_toggle_button_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call96)
  %96 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkToggleButton*
  %97 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4), align 4
  %98 = load i32, i32* %i78, align 4
  %cmp98 = icmp eq i32 %97, %98
  %conv99 = zext i1 %cmp98 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %96, i32 %conv99)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 80)
  %101 = bitcast %struct._GTypeInstance* %call100 to %struct._GObject*
  %102 = load i32, i32* %i78, align 4
  %conv101 = sext i32 %102 to i64
  %103 = inttoptr i64 %conv101 to i8*
  call void @g_object_set_data(%struct._GObject* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_box_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call102)
  %106 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkBox*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %106, %struct._GtkWidget* %107, i32 1, i32 1, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %110 = bitcast %struct._GtkWidget* %109 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %112 = bitcast %struct._GtkWidget* %111 to i8*
  %call105 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* @curl_pixbuf_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc.106

for.inc.106:                                      ; preds = %cond.end.90
  %113 = load i32, i32* %i78, align 4
  %inc107 = add nsw i32 %113, 1
  store i32 %inc107, i32* %i78, align 4
  br label %for.cond.79

for.end.108:                                      ; preds = %for.cond.79
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call109 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0)) #6
  %call110 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call109)
  store %struct._GtkWidget* %call110, %struct._GtkWidget** %button, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_toggle_button_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call111)
  %118 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkToggleButton*
  %119 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %118, i32 %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_box_get_type() #5
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call113)
  %122 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkBox*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %call115 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call116 = call i64 @gimp_int_combo_box_get_type() #5
  %call117 = call i8* (i64, i8*, ...) @g_object_new(i64 %call116, i8* null)
  %127 = bitcast i8* %call117 to %struct._GtkWidget*
  store %struct._GtkWidget* %127, %struct._GtkWidget** %combo, align 8
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_int_combo_box_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call118)
  %130 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpIntComboBox*
  %call120 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0)) #6
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %130, i32 0, i32 2, i32 1, i8* %call120, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i32 -1)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_int_combo_box_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call121)
  %133 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpIntComboBox*
  %call123 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0)) #6
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %133, i32 0, i32 1, i32 1, i8* %call123, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i32 -1)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_int_combo_box_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call124)
  %136 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpIntComboBox*
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0)) #6
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %136, i32 0, i32 0, i32 1, i8* %call126, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i32 -1)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_box_get_type() #5
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call127)
  %139 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkBox*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %139, %struct._GtkWidget* %140, i32 0, i32 0, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call129 = call i64 @gimp_int_combo_box_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call129)
  %144 = bitcast %struct._GTypeInstance* %call130 to %struct._GimpIntComboBox*
  %145 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 0), align 4
  %call131 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %144, i32 %145, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (%struct.CurlParams* @curl to i8*))
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %146)
  %call132 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call132, %struct._GtkWidget** %table, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_table_get_type() #5
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call133)
  %149 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %149, i32 6)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_box_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call135)
  %152 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkBox*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %152, %struct._GtkWidget* %153, i32 0, i32 0, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %154)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_table_get_type() #5
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call137)
  %157 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkTable*
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0)) #6
  %158 = load double, double* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 1), align 8
  %mul = fmul double %158, 1.000000e+02
  %call140 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %157, i32 0, i32 0, i8* %call139, i32 100, i32 0, double %mul, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call140, %struct._GtkObject** %adjustment, align 8
  %159 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %160 = bitcast %struct._GtkObject* %159 to i8*
  %call141 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, double*)* @dialog_scale_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call142 = call i64 @gimp_dialog_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call142)
  %163 = bitcast %struct._GTypeInstance* %call143 to %struct._GimpDialog*
  %call144 = call i32 @gimp_dialog_run(%struct._GimpDialog* %163)
  %cmp145 = icmp eq i32 %call144, -5
  %conv146 = zext i1 %cmp145 to i32
  store i32 %conv146, i32* %run, align 4
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %164)
  %165 = load i32, i32* %run, align 4
  ret i32 %165
}

; Function Attrs: nounwind uwtable
define internal i32 @page_curl(i32 %drawable_id) #0 {
entry:
  %drawable_id.addr = alloca i32, align 4
  %curl_layer_id = alloca i32, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  %0 = load i32, i32* @image_id, align 4
  %call = call i32 @gimp_image_undo_group_start(i32 %0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0)) #6
  %call2 = call i32 @gimp_progress_init(i8* %call1)
  %1 = load i32, i32* %drawable_id.addr, align 4
  call void @init_calculation(i32 %1)
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call3 = call i32 @do_curl_effect(i32 %2)
  store i32 %call3, i32* %curl_layer_id, align 4
  %3 = load i32, i32* %drawable_id.addr, align 4
  call void @clear_curled_region(i32 %3)
  %4 = load i32, i32* @image_id, align 4
  %call4 = call i32 @gimp_image_undo_group_end(i32 %4)
  %5 = load i32, i32* %curl_layer_id, align 4
  ret i32 %5
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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @curl_pixbuf_update() #0 {
entry:
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %index = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %index, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %index, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %index, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %index, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4), align 4
  %mul = mul i32 %1, 4
  %2 = load i32, i32* %index, align 4
  %add = add i32 %2, %mul
  store i32 %add, i32* %index, align 4
  %3 = load i32, i32* %index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* @curl_pixbufs, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_inline(i32 -1, i8* %4, i32 0, %struct._GError** null)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @curl_image, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_image_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkImage*
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gtk_image_set_from_pixbuf(%struct._GtkImage* %7, %struct._GdkPixbuf* %8)
  %9 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %10 = bitcast %struct._GdkPixbuf* %9 to i8*
  call void @g_object_unref(i8* %10)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare void @gimp_int_combo_box_prepend(%struct._GimpIntComboBox*, ...) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_scale_update(%struct._GtkAdjustment* %adjustment, double* %value) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value.addr = alloca double*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store double* %value, double** %value.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  %1 = load double*, double** %value.addr, align 8
  store double %div, double* %1, align 8
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_inline(i32, i8*, i32, %struct._GError**) #1

declare void @gtk_image_set_from_pixbuf(%struct._GtkImage*, %struct._GdkPixbuf*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #3

declare void @g_object_unref(i8*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @init_calculation(i32 %drawable_id) #0 {
entry:
  %drawable_id.addr = alloca i32, align 4
  %k = alloca double, align 8
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %angle = alloca double, align 8
  %v1 = alloca %struct._GimpVector2, align 8
  %v2 = alloca %struct._GimpVector2, align 8
  %image_layers = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_layer_add_alpha(i32 %0)
  %1 = load i32, i32* @image_id, align 4
  %call1 = call i32* @gimp_image_get_layers(i32 %1, i32* %nlayers)
  store i32* %call1, i32** %image_layers, align 8
  store i32 0, i32* @drawable_position, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* @drawable_position, align 4
  %3 = load i32, i32* %nlayers, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* @drawable_position, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %image_layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %drawable_id.addr, align 4
  %cmp2 = icmp ne i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* @drawable_position, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @drawable_position, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4), align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %while.end
  %11 = load i32, i32* @true_sel_width, align 4
  store i32 %11, i32* @sel_width, align 4
  %12 = load i32, i32* @true_sel_height, align 4
  store i32 %12, i32* @sel_height, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.end
  %13 = load i32, i32* @true_sel_height, align 4
  store i32 %13, i32* @sel_width, align 4
  %14 = load i32, i32* @true_sel_width, align 4
  store i32 %14, i32* @sel_height, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb.3, %sw.bb
  %15 = load i32, i32* @sel_height, align 4
  %conv = sitofp i32 %15 to double
  %16 = load i32, i32* @sel_width, align 4
  %conv4 = sitofp i32 %16 to double
  %div = fdiv double %conv, %conv4
  %call5 = call double @atan(double %div) #6
  store double %call5, double* %alpha, align 8
  %17 = load double, double* %alpha, align 8
  %div6 = fdiv double %17, 2.000000e+00
  store double %div6, double* %beta, align 8
  %18 = load i32, i32* @sel_width, align 4
  %conv7 = sitofp i32 %18 to double
  %19 = load double, double* %alpha, align 8
  %add = fadd double 0x400921FB54442D18, %19
  %20 = load double, double* %beta, align 8
  %call8 = call double @sin(double %20) #6
  %mul = fmul double %add, %call8
  %21 = load double, double* %beta, align 8
  %call9 = call double @cos(double %21) #6
  %add10 = fadd double %mul, %call9
  %div11 = fdiv double %conv7, %add10
  store double %div11, double* %k, align 8
  %22 = load double, double* %k, align 8
  %23 = load double, double* %beta, align 8
  %call12 = call double @cos(double %23) #6
  %mul13 = fmul double %22, %call12
  %24 = load double, double* %k, align 8
  %25 = load double, double* %beta, align 8
  %call14 = call double @sin(double %25) #6
  %mul15 = fmul double %24, %call14
  call void @gimp_vector2_set(%struct._GimpVector2* @center, double %mul13, double %mul15)
  %26 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @center, i32 0, i32 1), align 8
  store double %26, double* @radius, align 8
  %27 = load double, double* @radius, align 8
  %28 = load double, double* %alpha, align 8
  %call16 = call double @sin(double %28) #6
  %sub = fsub double -0.000000e+00, %call16
  %mul17 = fmul double %27, %sub
  %29 = load double, double* @radius, align 8
  %30 = load double, double* %alpha, align 8
  %call18 = call double @cos(double %30) #6
  %mul19 = fmul double %29, %call18
  call void @gimp_vector2_set(%struct._GimpVector2* @left_tangent, double %mul17, double %mul19)
  call void @gimp_vector2_add(%struct._GimpVector2* @left_tangent, %struct._GimpVector2* @left_tangent, %struct._GimpVector2* @center)
  call void @gimp_vector2_sub(%struct._GimpVector2* %v1, %struct._GimpVector2* @left_tangent, %struct._GimpVector2* @center)
  %31 = load i32, i32* @sel_width, align 4
  %conv20 = sitofp i32 %31 to double
  %32 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @center, i32 0, i32 0), align 8
  %sub21 = fsub double %conv20, %32
  %33 = load i32, i32* @sel_height, align 4
  %conv22 = sitofp i32 %33 to double
  %34 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @center, i32 0, i32 1), align 8
  %sub23 = fsub double %conv22, %34
  call void @gimp_vector2_set(%struct._GimpVector2* %v2, double %sub21, double %sub23)
  %call24 = call double @gimp_vector2_inner_product(%struct._GimpVector2* %v1, %struct._GimpVector2* %v2)
  %call25 = call double @gimp_vector2_length(%struct._GimpVector2* %v1)
  %call26 = call double @gimp_vector2_length(%struct._GimpVector2* %v2)
  %mul27 = fmul double %call25, %call26
  %div28 = fdiv double %call24, %mul27
  %call29 = call double @acos(double %div28) #6
  %mul30 = fmul double -2.000000e+00, %call29
  store double %mul30, double* %angle, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 0
  %35 = load double, double* %x, align 8
  %36 = load double, double* %angle, align 8
  %call31 = call double @cos(double %36) #6
  %mul32 = fmul double %35, %call31
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 1
  %37 = load double, double* %y, align 8
  %38 = load double, double* %angle, align 8
  %call33 = call double @sin(double %38) #6
  %sub34 = fsub double -0.000000e+00, %call33
  %mul35 = fmul double %37, %sub34
  %add36 = fadd double %mul32, %mul35
  %x37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 0
  %39 = load double, double* %x37, align 8
  %40 = load double, double* %angle, align 8
  %call38 = call double @sin(double %40) #6
  %mul39 = fmul double %39, %call38
  %y40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 1
  %41 = load double, double* %y40, align 8
  %42 = load double, double* %angle, align 8
  %call41 = call double @cos(double %42) #6
  %mul42 = fmul double %41, %call41
  %add43 = fadd double %mul39, %mul42
  call void @gimp_vector2_set(%struct._GimpVector2* @right_tangent, double %add36, double %add43)
  call void @gimp_vector2_add(%struct._GimpVector2* @right_tangent, %struct._GimpVector2* @right_tangent, %struct._GimpVector2* @center)
  %43 = load i32, i32* @sel_width, align 4
  %conv44 = sitofp i32 %43 to double
  %44 = load i32, i32* @sel_height, align 4
  %conv45 = sitofp i32 %44 to double
  %div46 = fdiv double %conv44, %conv45
  store double %div46, double* @diagl_slope, align 8
  %45 = load i32, i32* @sel_width, align 4
  %conv47 = sitofp i32 %45 to double
  %46 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 0), align 8
  %sub48 = fsub double %conv47, %46
  %47 = load i32, i32* @sel_height, align 4
  %conv49 = sitofp i32 %47 to double
  %48 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 1), align 8
  %sub50 = fsub double %conv49, %48
  %div51 = fdiv double %sub48, %sub50
  store double %div51, double* @diagr_slope, align 8
  %49 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 1), align 8
  %50 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @left_tangent, i32 0, i32 1), align 8
  %sub52 = fsub double %49, %50
  %51 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 0), align 8
  %52 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @left_tangent, i32 0, i32 0), align 8
  %sub53 = fsub double %51, %52
  %div54 = fdiv double %sub52, %sub53
  store double %div54, double* @diagb_slope, align 8
  %53 = load i32, i32* @sel_width, align 4
  %conv55 = sitofp i32 %53 to double
  %54 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @center, i32 0, i32 0), align 8
  %sub56 = fsub double %conv55, %54
  %55 = load i32, i32* @sel_height, align 4
  %conv57 = sitofp i32 %55 to double
  %div58 = fdiv double %sub56, %conv57
  store double %div58, double* @diagm_slope, align 8
  %call59 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 2))
  %call60 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 2))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @do_curl_effect(i32 %drawable_id) #0 {
entry:
  %drawable_id.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %color_image = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %k = alloca i32, align 4
  %alpha_pos = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %intensity = alloca double, align 8
  %alpha = alloca double, align 8
  %v = alloca %struct._GimpVector2, align 8
  %dl = alloca %struct._GimpVector2, align 8
  %dr = alloca %struct._GimpVector2, align 8
  %dl_mag = alloca double, align 8
  %dr_mag = alloca double, align 8
  %angle = alloca double, align 8
  %factor = alloca double, align 8
  %pp = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %fore_grayval = alloca i8, align 1
  %back_grayval = alloca i8, align 1
  %gradsamp = alloca i8*, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %curl_layer_id = alloca i32, align 4
  %grad_samples = alloca i8*, align 8
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  store i8* null, i8** %grad_samples, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %0)
  store i32 %call, i32* %color_image, align 4
  %1 = load i32, i32* @image_id, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)) #6
  %2 = load i32, i32* @true_sel_width, align 4
  %3 = load i32, i32* @true_sel_height, align 4
  %4 = load i32, i32* %color_image, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 3
  %call2 = call i32 @gimp_layer_new(i32 %1, i8* %call1, i32 %2, i32 %3, i32 %cond, double 1.000000e+02, i32 0)
  %call3 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %call2)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** @curl_layer, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id4, align 4
  store i32 %6, i32* %curl_layer_id, align 4
  %7 = load i32, i32* @image_id, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id5, align 4
  %10 = load i32, i32* %drawable_id.addr, align 4
  %call6 = call i32 @gimp_item_get_parent(i32 %10)
  %11 = load i32, i32* @drawable_position, align 4
  %call7 = call i32 @gimp_image_insert_layer(i32 %7, i32 %9, i32 %call6, i32 %11)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_fill(i32 %13, i32 3)
  %14 = load i32, i32* %drawable_id.addr, align 4
  %call10 = call i32 @gimp_drawable_offsets(i32 %14, i32* %x1, i32* %y1)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id11, align 4
  %17 = load i32, i32* @sel_x, align 4
  %18 = load i32, i32* %x1, align 4
  %add = add nsw i32 %17, %18
  %19 = load i32, i32* @sel_y, align 4
  %20 = load i32, i32* %y1, align 4
  %add12 = add nsw i32 %19, %20
  %call13 = call i32 @gimp_layer_set_offsets(i32 %16, i32 %add, i32 %add12)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width, align 4
  %call14 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %22, %call14
  %add15 = add i32 %div, 1
  %mul = mul i32 2, %add15
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %24 = load i32, i32* @true_sel_width, align 4
  %25 = load i32, i32* @true_sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %23, i32 0, i32 0, i32 %24, i32 %25, i32 1, i32 1)
  %26 = load i32, i32* @sel_width, align 4
  %sub = sub nsw i32 0, %26
  %conv16 = sitofp i32 %sub to double
  %27 = load i32, i32* @sel_height, align 4
  %sub17 = sub nsw i32 0, %27
  %conv18 = sitofp i32 %sub17 to double
  call void @gimp_vector2_set(%struct._GimpVector2* %dl, double %conv16, double %conv18)
  %call19 = call double @gimp_vector2_length(%struct._GimpVector2* %dl)
  store double %call19, double* %dl_mag, align 8
  %28 = load i32, i32* @sel_width, align 4
  %conv20 = sitofp i32 %28 to double
  %29 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 0), align 8
  %sub21 = fsub double %conv20, %29
  %sub22 = fsub double -0.000000e+00, %sub21
  %30 = load i32, i32* @sel_height, align 4
  %conv23 = sitofp i32 %30 to double
  %31 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 1), align 8
  %sub24 = fsub double %conv23, %31
  %sub25 = fsub double -0.000000e+00, %sub24
  call void @gimp_vector2_set(%struct._GimpVector2* %dr, double %sub22, double %sub25)
  %call26 = call double @gimp_vector2_length(%struct._GimpVector2* %dr)
  store double %call26, double* %dr_mag, align 8
  %call27 = call double @gimp_vector2_inner_product(%struct._GimpVector2* %dl, %struct._GimpVector2* %dr)
  %32 = load double, double* %dl_mag, align 8
  %33 = load double, double* %dr_mag, align 8
  %mul28 = fmul double %32, %33
  %div29 = fdiv double %call27, %mul28
  %call30 = call double @acos(double %div29) #6
  store double %call30, double* %alpha, align 8
  %34 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 0), align 1
  %conv31 = zext i8 %34 to i32
  %conv32 = sitofp i32 %conv31 to double
  %mul33 = fmul double %conv32, 2.126000e-01
  %35 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 1), align 1
  %conv34 = zext i8 %35 to i32
  %conv35 = sitofp i32 %conv34 to double
  %mul36 = fmul double %conv35, 7.152000e-01
  %add37 = fadd double %mul33, %mul36
  %36 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 2), align 1
  %conv38 = zext i8 %36 to i32
  %conv39 = sitofp i32 %conv38 to double
  %mul40 = fmul double %conv39, 7.220000e-02
  %add41 = fadd double %add37, %mul40
  %add42 = fadd double %add41, 5.000000e-01
  %conv43 = fptoui double %add42 to i8
  store i8 %conv43, i8* %fore_grayval, align 1
  %37 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 0), align 1
  %conv44 = zext i8 %37 to i32
  %conv45 = sitofp i32 %conv44 to double
  %mul46 = fmul double %conv45, 2.126000e-01
  %38 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 1), align 1
  %conv47 = zext i8 %38 to i32
  %conv48 = sitofp i32 %conv47 to double
  %mul49 = fmul double %conv48, 7.152000e-01
  %add50 = fadd double %mul46, %mul49
  %39 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 2), align 1
  %conv51 = zext i8 %39 to i32
  %conv52 = sitofp i32 %conv51 to double
  %mul53 = fmul double %conv52, 7.220000e-02
  %add54 = fadd double %add50, %mul53
  %add55 = fadd double %add54, 5.000000e-01
  %conv56 = fptoui double %add55 to i8
  store i8 %conv56, i8* %back_grayval, align 1
  %40 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 0), align 4
  switch i32 %40, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.57
    i32 2, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id58 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 0
  %42 = load i32, i32* %drawable_id58, align 4
  %call59 = call i8* @get_gradient_samples(i32 %42, i32 0)
  store i8* %call59, i8** %grad_samples, align 8
  br label %sw.epilog

sw.bb.60:                                         ; preds = %entry
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 0
  %44 = load i32, i32* %drawable_id61, align 4
  %call62 = call i8* @get_gradient_samples(i32 %44, i32 1)
  store i8* %call62, i8** %grad_samples, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.60, %sw.bb.57, %sw.bb
  %45 = load i32, i32* @sel_width, align 4
  %mul63 = mul nsw i32 2, %45
  %46 = load i32, i32* @sel_height, align 4
  %mul64 = mul nsw i32 %mul63, %46
  store i32 %mul64, i32* %max_progress, align 4
  store i32 0, i32* %progress, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %47 = load i32, i32* %bpp, align 4
  %sub65 = sub nsw i32 %47, 1
  store i32 %sub65, i32* %alpha_pos, align 4
  %call66 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call66, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.331, %sw.epilog
  %48 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %48, null
  br i1 %cmp, label %for.body, label %for.end.333

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %49 = load i8*, i8** %data, align 8
  store i8* %49, i8** %dest, align 8
  %y68 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %50 = load i32, i32* %y68, align 4
  store i32 %50, i32* %y1, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.320, %for.body
  %51 = load i32, i32* %y1, align 4
  %y70 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %52 = load i32, i32* %y70, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %53 = load i32, i32* %h, align 4
  %add71 = add nsw i32 %52, %53
  %cmp72 = icmp slt i32 %51, %add71
  br i1 %cmp72, label %for.body.74, label %for.end.322

for.body.74:                                      ; preds = %for.cond.69
  %54 = load i8*, i8** %dest, align 8
  store i8* %54, i8** %pp, align 8
  %x75 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %55 = load i32, i32* %x75, align 4
  store i32 %55, i32* %x1, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.315, %for.body.74
  %56 = load i32, i32* %x1, align 4
  %x77 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %57 = load i32, i32* %x77, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %58 = load i32, i32* %w, align 4
  %add78 = add nsw i32 %57, %58
  %cmp79 = icmp slt i32 %56, %add78
  br i1 %cmp79, label %for.body.81, label %for.end.317

for.body.81:                                      ; preds = %for.cond.76
  %59 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4), align 4
  switch i32 %59, label %sw.epilog.124 [
    i32 0, label %sw.bb.82
    i32 1, label %sw.bb.101
  ]

sw.bb.82:                                         ; preds = %for.body.81
  %60 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp83 = icmp eq i32 %60, 1
  br i1 %cmp83, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.82
  %61 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp85 = icmp eq i32 %61, 4
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %sw.bb.82
  %62 = load i32, i32* %x1, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %63 = load i32, i32* @sel_width, align 4
  %sub87 = sub nsw i32 %63, 1
  %64 = load i32, i32* %x1, align 4
  %sub88 = sub nsw i32 %sub87, %64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond89 = phi i32 [ %62, %cond.true ], [ %sub88, %cond.false ]
  store i32 %cond89, i32* %x, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp90 = icmp eq i32 %65, 3
  br i1 %cmp90, label %cond.true.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %cond.end
  %66 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp93 = icmp eq i32 %66, 4
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %lor.lhs.false.92, %cond.end
  %67 = load i32, i32* %y1, align 4
  br label %cond.end.99

cond.false.96:                                    ; preds = %lor.lhs.false.92
  %68 = load i32, i32* @sel_height, align 4
  %sub97 = sub nsw i32 %68, 1
  %69 = load i32, i32* %y1, align 4
  %sub98 = sub nsw i32 %sub97, %69
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %cond.true.95
  %cond100 = phi i32 [ %67, %cond.true.95 ], [ %sub98, %cond.false.96 ]
  store i32 %cond100, i32* %y, align 4
  br label %sw.epilog.124

sw.bb.101:                                        ; preds = %for.body.81
  %70 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp102 = icmp eq i32 %70, 1
  br i1 %cmp102, label %cond.true.107, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %sw.bb.101
  %71 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp105 = icmp eq i32 %71, 2
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %lor.lhs.false.104, %sw.bb.101
  %72 = load i32, i32* %y1, align 4
  br label %cond.end.111

cond.false.108:                                   ; preds = %lor.lhs.false.104
  %73 = load i32, i32* @sel_width, align 4
  %sub109 = sub nsw i32 %73, 1
  %74 = load i32, i32* %y1, align 4
  %sub110 = sub nsw i32 %sub109, %74
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.108, %cond.true.107
  %cond112 = phi i32 [ %72, %cond.true.107 ], [ %sub110, %cond.false.108 ]
  store i32 %cond112, i32* %x, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp113 = icmp eq i32 %75, 2
  br i1 %cmp113, label %cond.true.118, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %cond.end.111
  %76 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp116 = icmp eq i32 %76, 3
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %lor.lhs.false.115, %cond.end.111
  %77 = load i32, i32* %x1, align 4
  br label %cond.end.122

cond.false.119:                                   ; preds = %lor.lhs.false.115
  %78 = load i32, i32* @sel_height, align 4
  %sub120 = sub nsw i32 %78, 1
  %79 = load i32, i32* %x1, align 4
  %sub121 = sub nsw i32 %sub120, %79
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.119, %cond.true.118
  %cond123 = phi i32 [ %77, %cond.true.118 ], [ %sub121, %cond.false.119 ]
  store i32 %cond123, i32* %y, align 4
  br label %sw.epilog.124

sw.epilog.124:                                    ; preds = %for.body.81, %cond.end.122, %cond.end.99
  %80 = load i32, i32* %x, align 4
  %conv125 = sitofp i32 %80 to double
  %81 = load i32, i32* %y, align 4
  %conv126 = sitofp i32 %81 to double
  %call127 = call i32 @left_of_diagl(double %conv125, double %conv126)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog.124
  store i32 0, i32* %k, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc, %if.then
  %82 = load i32, i32* %k, align 4
  %83 = load i32, i32* %alpha_pos, align 4
  %cmp130 = icmp ule i32 %82, %83
  br i1 %cmp130, label %for.body.132, label %for.end

for.body.132:                                     ; preds = %for.cond.129
  %84 = load i32, i32* %k, align 4
  %idxprom = sext i32 %84 to i64
  %85 = load i8*, i8** %pp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %85, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.132
  %86 = load i32, i32* %k, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.129

for.end:                                          ; preds = %for.cond.129
  br label %if.end.311

if.else:                                          ; preds = %sw.epilog.124
  %87 = load i32, i32* %x, align 4
  %conv133 = sitofp i32 %87 to double
  %88 = load i32, i32* %y, align 4
  %conv134 = sitofp i32 %88 to double
  %call135 = call i32 @right_of_diagr(double %conv133, double %conv134)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.151, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %if.else
  %89 = load i32, i32* %x, align 4
  %conv138 = sitofp i32 %89 to double
  %90 = load i32, i32* %y, align 4
  %conv139 = sitofp i32 %90 to double
  %call140 = call i32 @right_of_diagm(double %conv138, double %conv139)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %land.lhs.true, label %if.else.161

land.lhs.true:                                    ; preds = %lor.lhs.false.137
  %91 = load i32, i32* %x, align 4
  %conv142 = sitofp i32 %91 to double
  %92 = load i32, i32* %y, align 4
  %conv143 = sitofp i32 %92 to double
  %call144 = call i32 @below_diagb(double %conv142, double %conv143)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.else.161

land.lhs.true.146:                                ; preds = %land.lhs.true
  %93 = load i32, i32* %x, align 4
  %conv147 = sitofp i32 %93 to double
  %94 = load i32, i32* %y, align 4
  %conv148 = sitofp i32 %94 to double
  %call149 = call i32 @inside_circle(double %conv147, double %conv148)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.else.161, label %if.then.151

if.then.151:                                      ; preds = %land.lhs.true.146, %if.else
  store i32 0, i32* %k, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.158, %if.then.151
  %95 = load i32, i32* %k, align 4
  %96 = load i32, i32* %alpha_pos, align 4
  %cmp153 = icmp ule i32 %95, %96
  br i1 %cmp153, label %for.body.155, label %for.end.160

for.body.155:                                     ; preds = %for.cond.152
  %97 = load i32, i32* %k, align 4
  %idxprom156 = sext i32 %97 to i64
  %98 = load i8*, i8** %pp, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %98, i64 %idxprom156
  store i8 0, i8* %arrayidx157, align 1
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.155
  %99 = load i32, i32* %k, align 4
  %inc159 = add nsw i32 %99, 1
  store i32 %inc159, i32* %k, align 4
  br label %for.cond.152

for.end.160:                                      ; preds = %for.cond.152
  br label %if.end.310

if.else.161:                                      ; preds = %land.lhs.true.146, %land.lhs.true, %lor.lhs.false.137
  %100 = load i32, i32* @sel_width, align 4
  %101 = load i32, i32* %x, align 4
  %sub162 = sub nsw i32 %100, %101
  %sub163 = sub nsw i32 0, %sub162
  %conv164 = sitofp i32 %sub163 to double
  %x165 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 0
  store double %conv164, double* %x165, align 8
  %102 = load i32, i32* @sel_height, align 4
  %103 = load i32, i32* %y, align 4
  %sub166 = sub nsw i32 %102, %103
  %sub167 = sub nsw i32 0, %sub166
  %conv168 = sitofp i32 %sub167 to double
  %y169 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 1
  store double %conv168, double* %y169, align 8
  %call170 = call double @gimp_vector2_inner_product(%struct._GimpVector2* %v, %struct._GimpVector2* %dl)
  %call171 = call double @gimp_vector2_length(%struct._GimpVector2* %v)
  %104 = load double, double* %dl_mag, align 8
  %mul172 = fmul double %call171, %104
  %div173 = fdiv double %call170, %mul172
  %call174 = call double @acos(double %div173) #6
  store double %call174, double* %angle, align 8
  %105 = load i32, i32* %x, align 4
  %conv175 = sitofp i32 %105 to double
  %106 = load i32, i32* %y, align 4
  %conv176 = sitofp i32 %106 to double
  %call177 = call i32 @inside_circle(double %conv175, double %conv176)
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then.184, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %if.else.161
  %107 = load i32, i32* %x, align 4
  %conv180 = sitofp i32 %107 to double
  %108 = load i32, i32* %y, align 4
  %conv181 = sitofp i32 %108 to double
  %call182 = call i32 @below_diagb(double %conv180, double %conv181)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.else.207

if.then.184:                                      ; preds = %lor.lhs.false.179, %if.else.161
  %109 = load double, double* %angle, align 8
  %110 = load double, double* %alpha, align 8
  %div185 = fdiv double %109, %110
  store double %div185, double* %factor, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.192, %if.then.184
  %111 = load i32, i32* %k, align 4
  %112 = load i32, i32* %alpha_pos, align 4
  %cmp187 = icmp ult i32 %111, %112
  br i1 %cmp187, label %for.body.189, label %for.end.194

for.body.189:                                     ; preds = %for.cond.186
  %113 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %113 to i64
  %114 = load i8*, i8** %pp, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %114, i64 %idxprom190
  store i8 0, i8* %arrayidx191, align 1
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.189
  %115 = load i32, i32* %k, align 4
  %inc193 = add nsw i32 %115, 1
  store i32 %inc193, i32* %k, align 4
  br label %for.cond.186

for.end.194:                                      ; preds = %for.cond.186
  %116 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 2), align 4
  %tobool195 = icmp ne i32 %116, 0
  br i1 %tobool195, label %cond.true.196, label %cond.false.201

cond.true.196:                                    ; preds = %for.end.194
  %117 = load double, double* %factor, align 8
  %conv197 = fptrunc double %117 to float
  %mul198 = fmul float 2.550000e+02, %conv197
  %conv199 = fptoui float %mul198 to i8
  %conv200 = zext i8 %conv199 to i32
  br label %cond.end.202

cond.false.201:                                   ; preds = %for.end.194
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.196
  %cond203 = phi i32 [ %conv200, %cond.true.196 ], [ 0, %cond.false.201 ]
  %conv204 = trunc i32 %cond203 to i8
  %118 = load i32, i32* %alpha_pos, align 4
  %idxprom205 = zext i32 %118 to i64
  %119 = load i8*, i8** %pp, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %119, i64 %idxprom205
  store i8 %conv204, i8* %arrayidx206, align 1
  br label %if.end.309

if.else.207:                                      ; preds = %lor.lhs.false.179
  %120 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 0), align 4
  switch i32 %120, label %sw.epilog.308 [
    i32 0, label %sw.bb.208
    i32 1, label %sw.bb.263
    i32 2, label %sw.bb.263
  ]

sw.bb.208:                                        ; preds = %if.else.207
  %121 = load double, double* %angle, align 8
  %mul209 = fmul double 0x400921FB54442D18, %121
  %122 = load double, double* %alpha, align 8
  %div210 = fdiv double %mul209, %122
  %call211 = call double @sin(double %div210) #6
  %call212 = call double @pow(double %call211, double 1.500000e+00) #6
  store double %call212, double* %intensity, align 8
  %123 = load i32, i32* %color_image, align 4
  %tobool213 = icmp ne i32 %123, 0
  br i1 %tobool213, label %if.then.214, label %if.else.245

if.then.214:                                      ; preds = %sw.bb.208
  %124 = load double, double* %intensity, align 8
  %125 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 0), align 1
  %conv215 = zext i8 %125 to i32
  %conv216 = sitofp i32 %conv215 to double
  %mul217 = fmul double %124, %conv216
  %126 = load double, double* %intensity, align 8
  %sub218 = fsub double 1.000000e+00, %126
  %127 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 0), align 1
  %conv219 = zext i8 %127 to i32
  %conv220 = sitofp i32 %conv219 to double
  %mul221 = fmul double %sub218, %conv220
  %add222 = fadd double %mul217, %mul221
  %conv223 = fptoui double %add222 to i8
  %128 = load i8*, i8** %pp, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 %conv223, i8* %arrayidx224, align 1
  %129 = load double, double* %intensity, align 8
  %130 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 1), align 1
  %conv225 = zext i8 %130 to i32
  %conv226 = sitofp i32 %conv225 to double
  %mul227 = fmul double %129, %conv226
  %131 = load double, double* %intensity, align 8
  %sub228 = fsub double 1.000000e+00, %131
  %132 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 1), align 1
  %conv229 = zext i8 %132 to i32
  %conv230 = sitofp i32 %conv229 to double
  %mul231 = fmul double %sub228, %conv230
  %add232 = fadd double %mul227, %mul231
  %conv233 = fptoui double %add232 to i8
  %133 = load i8*, i8** %pp, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %133, i64 1
  store i8 %conv233, i8* %arrayidx234, align 1
  %134 = load double, double* %intensity, align 8
  %135 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @back_color, i32 0, i64 2), align 1
  %conv235 = zext i8 %135 to i32
  %conv236 = sitofp i32 %conv235 to double
  %mul237 = fmul double %134, %conv236
  %136 = load double, double* %intensity, align 8
  %sub238 = fsub double 1.000000e+00, %136
  %137 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fore_color, i32 0, i64 2), align 1
  %conv239 = zext i8 %137 to i32
  %conv240 = sitofp i32 %conv239 to double
  %mul241 = fmul double %sub238, %conv240
  %add242 = fadd double %mul237, %mul241
  %conv243 = fptoui double %add242 to i8
  %138 = load i8*, i8** %pp, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %138, i64 2
  store i8 %conv243, i8* %arrayidx244, align 1
  br label %if.end

if.else.245:                                      ; preds = %sw.bb.208
  %139 = load double, double* %intensity, align 8
  %140 = load i8, i8* %back_grayval, align 1
  %conv246 = zext i8 %140 to i32
  %conv247 = sitofp i32 %conv246 to double
  %mul248 = fmul double %139, %conv247
  %141 = load double, double* %intensity, align 8
  %sub249 = fsub double 1.000000e+00, %141
  %142 = load i8, i8* %fore_grayval, align 1
  %conv250 = zext i8 %142 to i32
  %conv251 = sitofp i32 %conv250 to double
  %mul252 = fmul double %sub249, %conv251
  %add253 = fadd double %mul248, %mul252
  %conv254 = fptoui double %add253 to i8
  %143 = load i8*, i8** %pp, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %143, i64 0
  store i8 %conv254, i8* %arrayidx255, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.245, %if.then.214
  %144 = load double, double* %intensity, align 8
  %145 = load double, double* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 1), align 8
  %sub256 = fsub double 1.000000e+00, %145
  %mul257 = fmul double %144, %sub256
  %sub258 = fsub double 1.000000e+00, %mul257
  %mul259 = fmul double 2.559900e+02, %sub258
  %conv260 = fptoui double %mul259 to i8
  %146 = load i32, i32* %alpha_pos, align 4
  %idxprom261 = zext i32 %146 to i64
  %147 = load i8*, i8** %pp, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %147, i64 %idxprom261
  store i8 %conv260, i8* %arrayidx262, align 1
  br label %sw.epilog.308

sw.bb.263:                                        ; preds = %if.else.207, %if.else.207
  %148 = load double, double* %angle, align 8
  %149 = load double, double* %alpha, align 8
  %div264 = fdiv double %148, %149
  %150 = load double, double* %angle, align 8
  %mul265 = fmul double 0x401921FB54442D18, %150
  %151 = load double, double* %alpha, align 8
  %div266 = fdiv double %mul265, %151
  %call267 = call double @sin(double %div266) #6
  %mul268 = fmul double %call267, 7.500000e-02
  %add269 = fadd double %div264, %mul268
  store double %add269, double* %intensity, align 8
  %152 = load double, double* %intensity, align 8
  %cmp270 = fcmp ogt double %152, 1.000000e+00
  br i1 %cmp270, label %cond.true.272, label %cond.false.273

cond.true.272:                                    ; preds = %sw.bb.263
  br label %cond.end.280

cond.false.273:                                   ; preds = %sw.bb.263
  %153 = load double, double* %intensity, align 8
  %cmp274 = fcmp olt double %153, 0.000000e+00
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %cond.false.273
  br label %cond.end.278

cond.false.277:                                   ; preds = %cond.false.273
  %154 = load double, double* %intensity, align 8
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.277, %cond.true.276
  %cond279 = phi double [ 0.000000e+00, %cond.true.276 ], [ %154, %cond.false.277 ]
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.end.278, %cond.true.272
  %cond281 = phi double [ 1.000000e+00, %cond.true.272 ], [ %cond279, %cond.end.278 ]
  store double %cond281, double* %intensity, align 8
  %155 = load i8*, i8** %grad_samples, align 8
  %156 = load double, double* %intensity, align 8
  %mul282 = fmul double %156, 2.560000e+02
  %conv283 = fptoui double %mul282 to i32
  %bpp284 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %157 = load i32, i32* %bpp284, align 4
  %mul285 = mul i32 %conv283, %157
  %idx.ext = zext i32 %mul285 to i64
  %add.ptr = getelementptr inbounds i8, i8* %155, i64 %idx.ext
  store i8* %add.ptr, i8** %gradsamp, align 8
  %158 = load i32, i32* %color_image, align 4
  %tobool286 = icmp ne i32 %158, 0
  br i1 %tobool286, label %if.then.287, label %if.else.294

if.then.287:                                      ; preds = %cond.end.280
  %159 = load i8*, i8** %gradsamp, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %159, i64 0
  %160 = load i8, i8* %arrayidx288, align 1
  %161 = load i8*, i8** %pp, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 %160, i8* %arrayidx289, align 1
  %162 = load i8*, i8** %gradsamp, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %162, i64 1
  %163 = load i8, i8* %arrayidx290, align 1
  %164 = load i8*, i8** %pp, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %164, i64 1
  store i8 %163, i8* %arrayidx291, align 1
  %165 = load i8*, i8** %gradsamp, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %165, i64 2
  %166 = load i8, i8* %arrayidx292, align 1
  %167 = load i8*, i8** %pp, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %167, i64 2
  store i8 %166, i8* %arrayidx293, align 1
  br label %if.end.297

if.else.294:                                      ; preds = %cond.end.280
  %168 = load i8*, i8** %gradsamp, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx295, align 1
  %170 = load i8*, i8** %pp, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 %169, i8* %arrayidx296, align 1
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.294, %if.then.287
  %171 = load i32, i32* %alpha_pos, align 4
  %idxprom298 = zext i32 %171 to i64
  %172 = load i8*, i8** %gradsamp, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %172, i64 %idxprom298
  %173 = load i8, i8* %arrayidx299, align 1
  %conv300 = uitofp i8 %173 to double
  %174 = load double, double* %intensity, align 8
  %175 = load double, double* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 1), align 8
  %sub301 = fsub double 1.000000e+00, %175
  %mul302 = fmul double %174, %sub301
  %sub303 = fsub double 1.000000e+00, %mul302
  %mul304 = fmul double %conv300, %sub303
  %conv305 = fptoui double %mul304 to i8
  %176 = load i32, i32* %alpha_pos, align 4
  %idxprom306 = zext i32 %176 to i64
  %177 = load i8*, i8** %pp, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %177, i64 %idxprom306
  store i8 %conv305, i8* %arrayidx307, align 1
  br label %sw.epilog.308

sw.epilog.308:                                    ; preds = %if.else.207, %if.end.297, %if.end
  br label %if.end.309

if.end.309:                                       ; preds = %sw.epilog.308, %cond.end.202
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %for.end.160
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %for.end
  %bpp312 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %178 = load i32, i32* %bpp312, align 4
  %179 = load i8*, i8** %pp, align 8
  %idx.ext313 = sext i32 %178 to i64
  %add.ptr314 = getelementptr inbounds i8, i8* %179, i64 %idx.ext313
  store i8* %add.ptr314, i8** %pp, align 8
  br label %for.inc.315

for.inc.315:                                      ; preds = %if.end.311
  %180 = load i32, i32* %x1, align 4
  %inc316 = add nsw i32 %180, 1
  store i32 %inc316, i32* %x1, align 4
  br label %for.cond.76

for.end.317:                                      ; preds = %for.cond.76
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %181 = load i32, i32* %rowstride, align 4
  %182 = load i8*, i8** %dest, align 8
  %idx.ext318 = sext i32 %181 to i64
  %add.ptr319 = getelementptr inbounds i8, i8* %182, i64 %idx.ext318
  store i8* %add.ptr319, i8** %dest, align 8
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.end.317
  %183 = load i32, i32* %y1, align 4
  %inc321 = add nsw i32 %183, 1
  store i32 %inc321, i32* %y1, align 4
  br label %for.cond.69

for.end.322:                                      ; preds = %for.cond.69
  %w323 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %184 = load i32, i32* %w323, align 4
  %h324 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %185 = load i32, i32* %h324, align 4
  %mul325 = mul nsw i32 %184, %185
  %186 = load i32, i32* %progress, align 4
  %add326 = add i32 %186, %mul325
  store i32 %add326, i32* %progress, align 4
  %187 = load i32, i32* %progress, align 4
  %conv327 = uitofp i32 %187 to double
  %188 = load i32, i32* %max_progress, align 4
  %conv328 = uitofp i32 %188 to double
  %div329 = fdiv double %conv327, %conv328
  %call330 = call i32 @gimp_progress_update(double %div329)
  br label %for.inc.331

for.inc.331:                                      ; preds = %for.end.322
  %189 = load i8*, i8** %pr, align 8
  %call332 = call i8* @gimp_pixel_rgns_process(i8* %189)
  store i8* %call332, i8** %pr, align 8
  br label %for.cond

for.end.333:                                      ; preds = %for.cond
  %call334 = call i32 @gimp_progress_update(double 1.000000e+00)
  %190 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %190)
  %191 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id335 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %191, i32 0, i32 0
  %192 = load i32, i32* %drawable_id335, align 4
  %call336 = call i32 @gimp_drawable_merge_shadow(i32 %192, i32 0)
  %193 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %drawable_id337 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %193, i32 0, i32 0
  %194 = load i32, i32* %drawable_id337, align 4
  %195 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %width338 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %195, i32 0, i32 1
  %196 = load i32, i32* %width338, align 4
  %197 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %197, i32 0, i32 2
  %198 = load i32, i32* %height, align 4
  %call339 = call i32 @gimp_drawable_update(i32 %194, i32 0, i32 0, i32 %196, i32 %198)
  %199 = load %struct._GimpDrawable*, %struct._GimpDrawable** @curl_layer, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %199)
  %200 = load i8*, i8** %grad_samples, align 8
  call void @g_free(i8* %200)
  %201 = load i32, i32* %curl_layer_id, align 4
  ret i32 %201
}

; Function Attrs: nounwind uwtable
define internal void @clear_curled_region(i32 %drawable_id) #0 {
entry:
  %drawable_id.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %i = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %pp = alloca i8*, align 8
  %sp = alloca i8*, align 8
  %alpha_pos = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %0 = load i32, i32* @sel_width, align 4
  %mul = mul nsw i32 2, %0
  %1 = load i32, i32* @sel_height, align 4
  %mul1 = mul nsw i32 %mul, %1
  store i32 %mul1, i32* %max_progress, align 4
  %2 = load i32, i32* %max_progress, align 4
  %div = udiv i32 %2, 2
  store i32 %div, i32* %progress, align 4
  %3 = load i32, i32* %drawable_id.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %call2 = call i32 @gimp_tile_width() #5
  %div3 = udiv i32 %5, %call2
  %add = add i32 %div3, 1
  %mul4 = mul i32 2, %add
  %conv = zext i32 %mul4 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* @sel_x, align 4
  %8 = load i32, i32* @sel_y, align 4
  %9 = load i32, i32* @true_sel_width, align 4
  %10 = load i32, i32* @true_sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = load i32, i32* @sel_x, align 4
  %13 = load i32, i32* @sel_y, align 4
  %14 = load i32, i32* @true_sel_width, align 4
  %15 = load i32, i32* @true_sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 1, i32 1)
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %16 = load i32, i32* %bpp, align 4
  %sub = sub nsw i32 %16, 1
  store i32 %sub, i32* %alpha_pos, align 4
  %call5 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn* %src_rgn)
  store i8* %call5, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %entry
  %17 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %17, null
  br i1 %cmp, label %for.body, label %for.end.124

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  store i8* %18, i8** %dest, align 8
  %data7 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %19 = load i8*, i8** %data7, align 8
  store i8* %19, i8** %src, align 8
  %y8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %20 = load i32, i32* %y8, align 4
  store i32 %20, i32* %y1, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.111, %for.body
  %21 = load i32, i32* %y1, align 4
  %y10 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %22 = load i32, i32* %y10, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %23 = load i32, i32* %h, align 4
  %add11 = add nsw i32 %22, %23
  %cmp12 = icmp ult i32 %21, %add11
  br i1 %cmp12, label %for.body.14, label %for.end.113

for.body.14:                                      ; preds = %for.cond.9
  %24 = load i8*, i8** %src, align 8
  store i8* %24, i8** %sp, align 8
  %25 = load i8*, i8** %dest, align 8
  store i8* %25, i8** %pp, align 8
  %x15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %26 = load i32, i32* %x15, align 4
  store i32 %26, i32* %x1, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.103, %for.body.14
  %27 = load i32, i32* %x1, align 4
  %x17 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %28 = load i32, i32* %x17, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %29 = load i32, i32* %w, align 4
  %add18 = add nsw i32 %28, %29
  %cmp19 = icmp ult i32 %27, %add18
  br i1 %cmp19, label %for.body.21, label %for.end.105

for.body.21:                                      ; preds = %for.cond.16
  %30 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 4), align 4
  switch i32 %30, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %for.body.21
  %31 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp22 = icmp eq i32 %31, 1
  br i1 %cmp22, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %32 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp24 = icmp eq i32 %32, 4
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %sw.bb
  %33 = load i32, i32* %x1, align 4
  %34 = load i32, i32* @sel_x, align 4
  %sub26 = sub i32 %33, %34
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %35 = load i32, i32* @sel_width, align 4
  %sub27 = sub nsw i32 %35, 1
  %36 = load i32, i32* %x1, align 4
  %37 = load i32, i32* @sel_x, align 4
  %sub28 = sub i32 %36, %37
  %sub29 = sub i32 %sub27, %sub28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub26, %cond.true ], [ %sub29, %cond.false ]
  store i32 %cond, i32* %x, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp30 = icmp eq i32 %38, 3
  br i1 %cmp30, label %cond.true.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %cond.end
  %39 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp33 = icmp eq i32 %39, 4
  br i1 %cmp33, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %lor.lhs.false.32, %cond.end
  %40 = load i32, i32* %y1, align 4
  %41 = load i32, i32* @sel_y, align 4
  %sub36 = sub i32 %40, %41
  br label %cond.end.41

cond.false.37:                                    ; preds = %lor.lhs.false.32
  %42 = load i32, i32* @sel_height, align 4
  %sub38 = sub nsw i32 %42, 1
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* @sel_y, align 4
  %sub39 = sub i32 %43, %44
  %sub40 = sub i32 %sub38, %sub39
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.37, %cond.true.35
  %cond42 = phi i32 [ %sub36, %cond.true.35 ], [ %sub40, %cond.false.37 ]
  store i32 %cond42, i32* %y, align 4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %for.body.21
  %45 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp44 = icmp eq i32 %45, 1
  br i1 %cmp44, label %cond.true.49, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %sw.bb.43
  %46 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp47 = icmp eq i32 %46, 2
  br i1 %cmp47, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %lor.lhs.false.46, %sw.bb.43
  %47 = load i32, i32* %y1, align 4
  %48 = load i32, i32* @sel_y, align 4
  %sub50 = sub i32 %47, %48
  br label %cond.end.55

cond.false.51:                                    ; preds = %lor.lhs.false.46
  %49 = load i32, i32* @sel_width, align 4
  %sub52 = sub nsw i32 %49, 1
  %50 = load i32, i32* %y1, align 4
  %51 = load i32, i32* @sel_y, align 4
  %sub53 = sub i32 %50, %51
  %sub54 = sub i32 %sub52, %sub53
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.51, %cond.true.49
  %cond56 = phi i32 [ %sub50, %cond.true.49 ], [ %sub54, %cond.false.51 ]
  store i32 %cond56, i32* %x, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp57 = icmp eq i32 %52, 2
  br i1 %cmp57, label %cond.true.62, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %cond.end.55
  %53 = load i32, i32* getelementptr inbounds (%struct.CurlParams, %struct.CurlParams* @curl, i32 0, i32 3), align 4
  %cmp60 = icmp eq i32 %53, 3
  br i1 %cmp60, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %lor.lhs.false.59, %cond.end.55
  %54 = load i32, i32* %x1, align 4
  %55 = load i32, i32* @sel_x, align 4
  %sub63 = sub i32 %54, %55
  br label %cond.end.68

cond.false.64:                                    ; preds = %lor.lhs.false.59
  %56 = load i32, i32* @sel_height, align 4
  %sub65 = sub nsw i32 %56, 1
  %57 = load i32, i32* %x1, align 4
  %58 = load i32, i32* @sel_x, align 4
  %sub66 = sub i32 %57, %58
  %sub67 = sub i32 %sub65, %sub66
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.64, %cond.true.62
  %cond69 = phi i32 [ %sub63, %cond.true.62 ], [ %sub67, %cond.false.64 ]
  store i32 %cond69, i32* %y, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.21, %cond.end.68, %cond.end.41
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %sw.epilog
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %alpha_pos, align 4
  %cmp71 = icmp ult i32 %59, %60
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %61 = load i32, i32* %i, align 4
  %idxprom = zext i32 %61 to i64
  %62 = load i8*, i8** %sp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %62, i64 %idxprom
  %63 = load i8, i8* %arrayidx, align 1
  %64 = load i32, i32* %i, align 4
  %idxprom74 = zext i32 %64 to i64
  %65 = load i8*, i8** %pp, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %65, i64 %idxprom74
  store i8 %63, i8* %arrayidx75, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %66 = load i32, i32* %i, align 4
  %inc = add i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %67 = load i32, i32* %x, align 4
  %conv76 = sitofp i32 %67 to double
  %68 = load i32, i32* %y, align 4
  %conv77 = sitofp i32 %68 to double
  %call78 = call i32 @right_of_diagr(double %conv76, double %conv77)
  %tobool = icmp ne i32 %call78, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %for.end
  %69 = load i32, i32* %x, align 4
  %conv80 = sitofp i32 %69 to double
  %70 = load i32, i32* %y, align 4
  %conv81 = sitofp i32 %70 to double
  %call82 = call i32 @right_of_diagm(double %conv80, double %conv81)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.79
  %71 = load i32, i32* %x, align 4
  %conv84 = sitofp i32 %71 to double
  %72 = load i32, i32* %y, align 4
  %conv85 = sitofp i32 %72 to double
  %call86 = call i32 @below_diagb(double %conv84, double %conv85)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.else

land.lhs.true.88:                                 ; preds = %land.lhs.true
  %73 = load i32, i32* %x, align 4
  %conv89 = sitofp i32 %73 to double
  %74 = load i32, i32* %y, align 4
  %conv90 = sitofp i32 %74 to double
  %call91 = call i32 @inside_circle(double %conv89, double %conv90)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.88, %for.end
  %75 = load i32, i32* %alpha_pos, align 4
  %idxprom93 = zext i32 %75 to i64
  %76 = load i8*, i8** %pp, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %76, i64 %idxprom93
  store i8 0, i8* %arrayidx94, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.88, %land.lhs.true, %lor.lhs.false.79
  %77 = load i32, i32* %alpha_pos, align 4
  %idxprom95 = zext i32 %77 to i64
  %78 = load i8*, i8** %sp, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %78, i64 %idxprom95
  %79 = load i8, i8* %arrayidx96, align 1
  %80 = load i32, i32* %alpha_pos, align 4
  %idxprom97 = zext i32 %80 to i64
  %81 = load i8*, i8** %pp, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %81, i64 %idxprom97
  store i8 %79, i8* %arrayidx98, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bpp99 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %82 = load i32, i32* %bpp99, align 4
  %83 = load i8*, i8** %pp, align 8
  %idx.ext = sext i32 %82 to i64
  %add.ptr = getelementptr inbounds i8, i8* %83, i64 %idx.ext
  store i8* %add.ptr, i8** %pp, align 8
  %bpp100 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %84 = load i32, i32* %bpp100, align 4
  %85 = load i8*, i8** %sp, align 8
  %idx.ext101 = sext i32 %84 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %85, i64 %idx.ext101
  store i8* %add.ptr102, i8** %sp, align 8
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end
  %86 = load i32, i32* %x1, align 4
  %inc104 = add i32 %86, 1
  store i32 %inc104, i32* %x1, align 4
  br label %for.cond.16

for.end.105:                                      ; preds = %for.cond.16
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %87 = load i32, i32* %rowstride, align 4
  %88 = load i8*, i8** %src, align 8
  %idx.ext106 = sext i32 %87 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %88, i64 %idx.ext106
  store i8* %add.ptr107, i8** %src, align 8
  %rowstride108 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %89 = load i32, i32* %rowstride108, align 4
  %90 = load i8*, i8** %dest, align 8
  %idx.ext109 = sext i32 %89 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %90, i64 %idx.ext109
  store i8* %add.ptr110, i8** %dest, align 8
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.105
  %91 = load i32, i32* %y1, align 4
  %inc112 = add i32 %91, 1
  store i32 %inc112, i32* %y1, align 4
  br label %for.cond.9

for.end.113:                                      ; preds = %for.cond.9
  %w114 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %92 = load i32, i32* %w114, align 4
  %h115 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %93 = load i32, i32* %h115, align 4
  %mul116 = mul nsw i32 %92, %93
  %94 = load i32, i32* %progress, align 4
  %add117 = add i32 %94, %mul116
  store i32 %add117, i32* %progress, align 4
  %95 = load i32, i32* %progress, align 4
  %conv118 = uitofp i32 %95 to double
  %96 = load i32, i32* %max_progress, align 4
  %conv119 = uitofp i32 %96 to double
  %div120 = fdiv double %conv118, %conv119
  %call121 = call i32 @gimp_progress_update(double %div120)
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end.113
  %97 = load i8*, i8** %pr, align 8
  %call123 = call i8* @gimp_pixel_rgns_process(i8* %97)
  store i8* %call123, i8** %pr, align 8
  br label %for.cond

for.end.124:                                      ; preds = %for.cond
  %call125 = call i32 @gimp_progress_update(double 1.000000e+00)
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %98)
  %99 = load i32, i32* %drawable_id.addr, align 4
  %call126 = call i32 @gimp_drawable_merge_shadow(i32 %99, i32 1)
  %100 = load i32, i32* %drawable_id.addr, align 4
  %101 = load i32, i32* @sel_x, align 4
  %102 = load i32, i32* @sel_y, align 4
  %103 = load i32, i32* @true_sel_width, align 4
  %104 = load i32, i32* @true_sel_height, align 4
  %call127 = call i32 @gimp_drawable_update(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %105)
  ret void
}

declare i32 @gimp_image_undo_group_end(i32) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

declare void @gimp_vector2_set(%struct._GimpVector2*, double, double) #1

declare void @gimp_vector2_add(%struct._GimpVector2*, %struct._GimpVector2*, %struct._GimpVector2*) #1

declare void @gimp_vector2_sub(%struct._GimpVector2*, %struct._GimpVector2*, %struct._GimpVector2*) #1

; Function Attrs: nounwind
declare double @acos(double) #2

declare double @gimp_vector2_inner_product(%struct._GimpVector2*, %struct._GimpVector2*) #1

declare double @gimp_vector2_length(%struct._GimpVector2*) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_item_get_parent(i32) #1

declare i32 @gimp_drawable_fill(i32, i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_gradient_samples(i32 %drawable_id, i32 %reverse) #0 {
entry:
  %drawable_id.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %gradient_name = alloca i8*, align 8
  %n_f_samples = alloca i32, align 4
  %f_samples = alloca double*, align 8
  %f_samp = alloca double*, align 8
  %b_samples = alloca i8*, align 8
  %b_samp = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %color = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %alpha = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  %call = call i8* @gimp_context_get_gradient()
  store i8* %call, i8** %gradient_name, align 8
  %0 = load i8*, i8** %gradient_name, align 8
  %1 = load i32, i32* %reverse.addr, align 4
  %call1 = call i32 @gimp_gradient_get_uniform_samples(i8* %0, i32 256, i32 %1, i32* %n_f_samples, double** %f_samples)
  %2 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %2)
  %3 = load i32, i32* %drawable_id.addr, align 4
  %call2 = call i32 @gimp_drawable_bpp(i32 %3)
  store i32 %call2, i32* %bpp, align 4
  %4 = load i32, i32* %drawable_id.addr, align 4
  %call3 = call i32 @gimp_drawable_is_rgb(i32 %4)
  store i32 %call3, i32* %color, align 4
  %5 = load i32, i32* %drawable_id.addr, align 4
  %call4 = call i32 @gimp_drawable_has_alpha(i32 %5)
  store i32 %call4, i32* %has_alpha, align 4
  %6 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %bpp, align 4
  %sub = sub nsw i32 %7, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %alpha, align 4
  %9 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 256, %9
  %conv = sext i32 %mul to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %b_samples, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %cond.end
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 256
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %bpp, align 4
  %mul7 = mul nsw i32 %11, %12
  %idxprom = sext i32 %mul7 to i64
  %13 = load i8*, i8** %b_samples, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8* %arrayidx, i8** %b_samp, align 8
  %14 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %14, 4
  %idxprom9 = sext i32 %mul8 to i64
  %15 = load double*, double** %f_samples, align 8
  %arrayidx10 = getelementptr inbounds double, double* %15, i64 %idxprom9
  store double* %arrayidx10, double** %f_samp, align 8
  %16 = load i32, i32* %color, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then
  %17 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %17, 3
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load double*, double** %f_samp, align 8
  %arrayidx17 = getelementptr inbounds double, double* %19, i64 %idxprom16
  %20 = load double, double* %arrayidx17, align 8
  %mul18 = fmul double %20, 2.550000e+02
  %conv19 = fptoui double %mul18 to i8
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i8*, i8** %b_samp, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 %idxprom20
  store i8 %conv19, i8* %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load double*, double** %f_samp, align 8
  %arrayidx22 = getelementptr inbounds double, double* %24, i64 0
  %25 = load double, double* %arrayidx22, align 8
  %mul23 = fmul double %25, 2.126000e-01
  %26 = load double*, double** %f_samp, align 8
  %arrayidx24 = getelementptr inbounds double, double* %26, i64 1
  %27 = load double, double* %arrayidx24, align 8
  %mul25 = fmul double %27, 7.152000e-01
  %add = fadd double %mul23, %mul25
  %28 = load double*, double** %f_samp, align 8
  %arrayidx26 = getelementptr inbounds double, double* %28, i64 2
  %29 = load double, double* %arrayidx26, align 8
  %mul27 = fmul double %29, 7.220000e-02
  %add28 = fadd double %add, %mul27
  %mul29 = fmul double %add28, 2.550000e+02
  %conv30 = fptoui double %mul29 to i8
  %30 = load i8*, i8** %b_samp, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %conv30, i8* %arrayidx31, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %31 = load i32, i32* %has_alpha, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end
  %32 = load double*, double** %f_samp, align 8
  %arrayidx34 = getelementptr inbounds double, double* %32, i64 3
  %33 = load double, double* %arrayidx34, align 8
  %mul35 = fmul double %33, 2.550000e+02
  %conv36 = fptoui double %mul35 to i8
  %34 = load i32, i32* %alpha, align 4
  %idxprom37 = sext i32 %34 to i64
  %35 = load i8*, i8** %b_samp, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %35, i64 %idxprom37
  store i8 %conv36, i8* %arrayidx38, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %if.end
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %36 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %36, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %37 = load double*, double** %f_samples, align 8
  %38 = bitcast double* %37 to i8*
  call void @g_free(i8* %38)
  %39 = load i8*, i8** %b_samples, align 8
  ret i8* %39
}

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @left_of_diagl(double %x, double %y) #4 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* @sel_width, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* %y.addr, align 8
  %3 = load i32, i32* @sel_height, align 4
  %conv1 = sitofp i32 %3 to double
  %sub = fsub double %2, %conv1
  %4 = load double, double* @diagl_slope, align 8
  %mul = fmul double %sub, %4
  %add = fadd double %conv, %mul
  %cmp = fcmp olt double %0, %add
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @right_of_diagr(double %x, double %y) #4 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* @sel_width, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* %y.addr, align 8
  %3 = load i32, i32* @sel_height, align 4
  %conv1 = sitofp i32 %3 to double
  %sub = fsub double %2, %conv1
  %4 = load double, double* @diagr_slope, align 8
  %mul = fmul double %sub, %4
  %add = fadd double %conv, %mul
  %cmp = fcmp ogt double %0, %add
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @right_of_diagm(double %x, double %y) #4 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* @sel_width, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* %y.addr, align 8
  %3 = load i32, i32* @sel_height, align 4
  %conv1 = sitofp i32 %3 to double
  %sub = fsub double %2, %conv1
  %4 = load double, double* @diagm_slope, align 8
  %mul = fmul double %sub, %4
  %add = fadd double %conv, %mul
  %cmp = fcmp ogt double %0, %add
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @below_diagb(double %x, double %y) #4 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %y.addr, align 8
  %1 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 1), align 8
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @right_tangent, i32 0, i32 0), align 8
  %sub = fsub double %2, %3
  %4 = load double, double* @diagb_slope, align 8
  %mul = fmul double %sub, %4
  %add = fadd double %1, %mul
  %cmp = fcmp olt double %0, %add
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @inside_circle(double %x, double %y) #4 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @center, i32 0, i32 0), align 8
  %1 = load double, double* %x.addr, align 8
  %sub = fsub double %1, %0
  store double %sub, double* %x.addr, align 8
  %2 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @center, i32 0, i32 1), align 8
  %3 = load double, double* %y.addr, align 8
  %sub1 = fsub double %3, %2
  store double %sub1, double* %y.addr, align 8
  %4 = load double, double* %x.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %mul = fmul double %4, %5
  %6 = load double, double* %y.addr, align 8
  %7 = load double, double* %y.addr, align 8
  %mul2 = fmul double %6, %7
  %add = fadd double %mul, %mul2
  %8 = load double, double* @radius, align 8
  %9 = load double, double* @radius, align 8
  %mul3 = fmul double %8, %9
  %cmp = fcmp ole double %add, %mul3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_free(i8*) #1

declare i8* @gimp_context_get_gradient() #1

declare i32 @gimp_gradient_get_uniform_samples(i8*, i32, i32, i32*, double**) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
