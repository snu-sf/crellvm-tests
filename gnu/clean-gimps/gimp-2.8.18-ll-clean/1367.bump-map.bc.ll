; ModuleID = './plug-ins/common/bump-map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.bumpmap_vals_t = type { i32, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bumpmap_interface_t = type { i32, i32, i32, %struct._GtkObject*, %struct._GtkObject*, i8**, i8**, %struct._GimpDrawable*, i32, i32, i32, i32, %struct._GimpPixelRgn, %struct._GimpPixelRgn, %struct.bumpmap_params_t }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.bumpmap_params_t = type { i32, i32, i32, i32, i32, double, [256 x i8] }
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
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [14 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"bumpmap\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Bump map drawable\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"azimuth\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Azimuth\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"elevation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Elevation\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"xofs\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"X offset\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"yofs\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Y offset\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"waterlevel\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Level that full transparency should represent\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Ambient lighting factor\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"compensate\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Compensate for darkening { TRUE, FALSE }\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Invert bumpmap { TRUE, FALSE }\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"Type of map { LINEAR (0), SPHERICAL (1), SINUSOIDAL (2) }\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"plug-in-bump-map\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"Create an embossing effect using a bump map\00", align 1
@.str.30 = private unnamed_addr constant [249 x i8] c"This plug-in uses the algorithm described by John Schlag, \22Fast Embossing Effects on Raster Image Data\22 in Graphics GEMS IV (ISBN 0-12-336155-9). It takes a drawable to be applied as a bump map to another image and produces a nice embossing effect.\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"Federico Mena Quintero, Jens Lautenbacher & Sven Neumann\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"April 2000, 3.0-pre1-ac2\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"_Bump Map...\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"plug-in-bump-map-tiled\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"Create an embossing effect using a tiled image as a bump map\00", align 1
@.str.38 = private unnamed_addr constant [259 x i8] c"This plug-in uses the algorithm described by John Schlag, \22Fast Embossing Effects on Raster Image Data\22 in Graphics GEMS IV (ISBN 0-12-336155-9). It takes a drawable to be tiled and applied as a bump map to another image and produces a nice embossing effect.\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@drawable = internal global %struct._GimpDrawable* null, align 8
@sel_x1 = internal global i32 0, align 4
@sel_y1 = internal global i32 0, align 4
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@sel_x2 = internal global i32 0, align 4
@sel_y2 = internal global i32 0, align 4
@img_bpp = internal global i32 0, align 4
@img_has_alpha = internal global i32 0, align 4
@bmvals = internal global %struct.bumpmap_vals_t { i32 -1, double 1.350000e+02, double 4.500000e+01, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }, align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"Bump Map\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"gimp-bumpmap\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"_Bump map:\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Spherical\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Sinusoidal\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"_Map type:\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"Co_mpensate for darkening\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"I_nvert bumpmap\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"_Tile bumpmap\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"_Azimuth:\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"_Elevation:\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"_Depth:\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"_X offset:\00", align 1
@.str.61 = private unnamed_addr constant [82 x i8] c"The offset can be adjusted by dragging the preview using the middle mouse button.\00", align 1
@bmint = internal global %struct.bumpmap_interface_t zeroinitializer, align 8
@.str.62 = private unnamed_addr constant [11 x i8] c"_Y offset:\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"_Waterlevel:\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"A_mbient:\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"Bump-mapping\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 1, i32 14, i32 0, %struct._GimpParamDef* getelementptr inbounds ([14 x %struct._GimpParamDef], [14 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 1, i32 14, i32 0, %struct._GimpParamDef* getelementptr inbounds ([14 x %struct._GimpParamDef], [14 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 3, i32* %status, align 4
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
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* @sel_x1, i32* @sel_y1, i32* @sel_width, i32* @sel_height)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %9 = load i32, i32* @sel_width, align 4
  %10 = load i32, i32* @sel_x1, align 4
  %add = add nsw i32 %9, %10
  store i32 %add, i32* @sel_x2, align 4
  %11 = load i32, i32* @sel_height, align 4
  %12 = load i32, i32* @sel_y1, align 4
  %add8 = add nsw i32 %11, %12
  store i32 %add8, i32* @sel_y2, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_drawable_bpp(i32 %14)
  store i32 %call10, i32* @img_bpp, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id11, align 4
  %call12 = call i32 @gimp_drawable_has_alpha(i32 %16)
  store i32 %call12, i32* @img_has_alpha, align 4
  %17 = load i32, i32* %run_mode, align 4
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.end
  %18 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @gimp_procedural_db_get_data(i8* %18, i8* bitcast (%struct.bumpmap_vals_t* @bmvals to i8*))
  %call14 = call i32 @bumpmap_dialog()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %sw.bb
  br label %return

if.end.17:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %19 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %19, 14
  br i1 %cmp, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %sw.bb.18
  store i32 1, i32* %status, align 4
  br label %if.end.54

if.else:                                          ; preds = %sw.bb.18
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 3
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_drawable22 = bitcast %union._GimpParamData* %data21 to i32*
  %21 = load i32, i32* %d_drawable22, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 4
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data24 to double*
  %23 = load double, double* %d_float, align 8
  store double %23, double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 1), align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 5
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %25 = load double, double* %d_float27, align 8
  store double %25, double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 2), align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 6
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_int3230 = bitcast %union._GimpParamData* %data29 to i32*
  %27 = load i32, i32* %d_int3230, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 3), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 7
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int3233 = bitcast %union._GimpParamData* %data32 to i32*
  %29 = load i32, i32* %d_int3233, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 8
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_int3236 = bitcast %union._GimpParamData* %data35 to i32*
  %31 = load i32, i32* %d_int3236, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 9
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int3239 = bitcast %union._GimpParamData* %data38 to i32*
  %33 = load i32, i32* %d_int3239, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 6), align 4
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 10
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_int3242 = bitcast %union._GimpParamData* %data41 to i32*
  %35 = load i32, i32* %d_int3242, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 7), align 4
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 11
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_int3245 = bitcast %union._GimpParamData* %data44 to i32*
  %37 = load i32, i32* %d_int3245, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 8), align 4
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 12
  %data47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx46, i32 0, i32 1
  %d_int3248 = bitcast %union._GimpParamData* %data47 to i32*
  %39 = load i32, i32* %d_int3248, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 9), align 4
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 13
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %41 = load i32, i32* %d_int3251, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 10), align 4
  %42 = load i8*, i8** %name.addr, align 8
  %call52 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0)) #7
  %cmp53 = icmp eq i32 %call52, 0
  %conv = zext i1 %cmp53 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.19
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end
  %43 = load i8*, i8** %name.addr, align 8
  %call56 = call i32 @gimp_procedural_db_get_data(i8* %43, i8* bitcast (%struct.bumpmap_vals_t* @bmvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.55, %if.end.54, %if.end.17
  %44 = load i32, i32* %status, align 4
  %cmp57 = icmp eq i32 %44, 3
  br i1 %cmp57, label %if.then.59, label %if.else.78

if.then.59:                                       ; preds = %sw.epilog
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id60 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 0
  %46 = load i32, i32* %drawable_id60, align 4
  %call61 = call i32 @gimp_drawable_is_rgb(i32 %46)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.59
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id63 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 0
  %48 = load i32, i32* %drawable_id63, align 4
  %call64 = call i32 @gimp_drawable_is_gray(i32 %48)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.77

if.then.66:                                       ; preds = %lor.lhs.false, %if.then.59
  call void @bumpmap()
  %49 = load i32, i32* %run_mode, align 4
  %cmp67 = icmp ne i32 %49, 1
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.66
  %call70 = call i32 @gimp_displays_flush()
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.66
  %50 = load i32, i32* %run_mode, align 4
  %cmp72 = icmp eq i32 %50, 0
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.71
  %51 = load i8*, i8** %name.addr, align 8
  %call75 = call i32 @gimp_procedural_db_set_data(i8* %51, i8* bitcast (%struct.bumpmap_vals_t* @bmvals to i8*), i32 64)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.71
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %lor.lhs.false
  br label %if.end.79

if.else.78:                                       ; preds = %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.end.77
  %52 = load i32, i32* %status, align 4
  store i32 %52, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %53)
  br label %return

return:                                           ; preds = %if.end.79, %if.then.16, %if.then
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

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @bumpmap_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %paned = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  %row = alloca i32, align 4
  store i32 0, i32* %row, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 -5, i8* null)
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
  %call6 = call %struct._GtkWidget* @gtk_paned_new(i32 0)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %paned, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %hbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_paned_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkPaned*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %18, %struct._GtkWidget* %19, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %vbox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %23, i32 4)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %call22 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %29, i32* null)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %preview, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 1, i32 1, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @dialog_update_preview to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_preview_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %39, i32 0, i32 2
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpPreview*)* @dialog_preview_events to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 0)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %hbox, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_paned_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call30)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkPaned*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %46, %struct._GtkWidget* %47, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %call32 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %vbox, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call33)
  %51 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %51, i32 4)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call35)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %54, %struct._GtkWidget* %55, i32 0, i32 0, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %call37 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %vbox, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 1, i32 1, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call40 = call %struct._GtkWidget* @gtk_table_new(i32 12, i32 3, i32 0)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %table, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call41)
  %64 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %64, i32 6)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call43)
  %67 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %67, i32 6)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call45)
  %70 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 0, i32 0, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %call47 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @dialog_constrain, i8* null)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %combo, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_int_combo_box_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call48)
  %75 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpIntComboBox*
  %76 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %78 = bitcast %struct._GtkWidget* %77 to i8*
  %call50 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %75, i32 %76, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPreview*)* @dialog_bumpmap_callback to void ()*), i8* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call51)
  %81 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %82 = load i32, i32* %row, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %row, align 4
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #6
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call54 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %81, i32 0, i32 %82, i8* %call53, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %83, i32 2, i32 0)
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)) #6
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0)) #6
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0)) #6
  %call58 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call55, i32 0, i8* %call56, i32 1, i8* %call57, i32 2, i8* null)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %combo, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_int_combo_box_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call59)
  %86 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpIntComboBox*
  %87 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 10), align 4
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call61 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %86, i32 %87, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPreview*)* @dialog_maptype_callback to void ()*), i8* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_table_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call62)
  %92 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkTable*
  %93 = load i32, i32* %row, align 4
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #6
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call65 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %92, i32 0, i32 %93, i8* %call64, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %94, i32 2, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call66)
  %97 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %98 = load i32, i32* %row, align 4
  %inc68 = add nsw i32 %98, 1
  store i32 %inc68, i32* %row, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %97, i32 %98, i32 12)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0)) #6
  %call70 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call69)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %button, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call71)
  %101 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %103 = load i32, i32* %row, align 4
  %104 = load i32, i32* %row, align 4
  %add = add nsw i32 %104, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %101, %struct._GtkWidget* %102, i32 0, i32 3, i32 %103, i32 %add)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load i32, i32* %row, align 4
  %inc73 = add nsw i32 %106, 1
  store i32 %inc73, i32* %row, align 4
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_toggle_button_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call74)
  %109 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkToggleButton*
  %110 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 8), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %109, i32 %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %112 = bitcast %struct._GtkWidget* %111 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %114 = bitcast %struct._GtkWidget* %113 to i8*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %116 = bitcast %struct._GtkWidget* %115 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 2)
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0)) #6
  %call79 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call78)
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %button, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call80)
  %119 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %121 = load i32, i32* %row, align 4
  %122 = load i32, i32* %row, align 4
  %add82 = add nsw i32 %122, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %119, %struct._GtkWidget* %120, i32 0, i32 3, i32 %121, i32 %add82)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %123)
  %124 = load i32, i32* %row, align 4
  %inc83 = add nsw i32 %124, 1
  store i32 %inc83, i32* %row, align 4
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_toggle_button_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call84)
  %127 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkToggleButton*
  %128 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 9), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %127, i32 %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %130 = bitcast %struct._GtkWidget* %129 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %132 = bitcast %struct._GtkWidget* %131 to i8*
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %134 = bitcast %struct._GtkWidget* %133 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 2)
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0)) #6
  %call89 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call88)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %button, align 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call90)
  %137 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %139 = load i32, i32* %row, align 4
  %140 = load i32, i32* %row, align 4
  %add92 = add nsw i32 %140, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %137, %struct._GtkWidget* %138, i32 0, i32 3, i32 %139, i32 %add92)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call93)
  %144 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %145 = load i32, i32* %row, align 4
  %inc95 = add nsw i32 %145, 1
  store i32 %inc95, i32* %row, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %144, i32 %145, i32 12)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_toggle_button_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call96)
  %148 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkToggleButton*
  %149 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %148, i32 %149)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %151 = bitcast %struct._GtkWidget* %150 to i8*
  %call98 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %153 = bitcast %struct._GtkWidget* %152 to i8*
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %155 = bitcast %struct._GtkWidget* %154 to i8*
  %call99 = call i64 @g_signal_connect_data(i8* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %155, void (i8*, %struct._GClosure*)* null, i32 2)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_table_get_type() #5
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call100)
  %158 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkTable*
  %159 = load i32, i32* %row, align 4
  %inc102 = add nsw i32 %159, 1
  store i32 %inc102, i32* %row, align 4
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0)) #6
  %160 = load double, double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 1), align 8
  %call104 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %158, i32 0, i32 %159, i8* %call103, i32 100, i32 6, double %160, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call104, %struct._GtkObject** %adj, align 8
  %161 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %162 = bitcast %struct._GtkObject* %161 to i8*
  %call105 = call i64 @g_signal_connect_data(i8* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %163 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %164 = bitcast %struct._GtkObject* %163 to i8*
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %166 = bitcast %struct._GtkWidget* %165 to i8*
  %call106 = call i64 @g_signal_connect_data(i8* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %166, void (i8*, %struct._GClosure*)* null, i32 2)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_table_get_type() #5
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call107)
  %169 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkTable*
  %170 = load i32, i32* %row, align 4
  %inc109 = add nsw i32 %170, 1
  store i32 %inc109, i32* %row, align 4
  %call110 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0)) #6
  %171 = load double, double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 2), align 8
  %call111 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %169, i32 0, i32 %170, i8* %call110, i32 100, i32 6, double %171, double 5.000000e-01, double 9.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call111, %struct._GtkObject** %adj, align 8
  %172 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %173 = bitcast %struct._GtkObject* %172 to i8*
  %call112 = call i64 @g_signal_connect_data(i8* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %174 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %175 = bitcast %struct._GtkObject* %174 to i8*
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %177 = bitcast %struct._GtkWidget* %176 to i8*
  %call113 = call i64 @g_signal_connect_data(i8* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %177, void (i8*, %struct._GClosure*)* null, i32 2)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %179 = bitcast %struct._GtkWidget* %178 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_table_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call114)
  %180 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkTable*
  %181 = load i32, i32* %row, align 4
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #6
  %182 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 3), align 4
  %conv = sitofp i32 %182 to double
  %call117 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %180, i32 0, i32 %181, i8* %call116, i32 100, i32 6, double %conv, double 1.000000e+00, double 6.500000e+01, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call117, %struct._GtkObject** %adj, align 8
  %183 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %184 = bitcast %struct._GtkObject* %183 to i8*
  %call118 = call i64 @g_signal_connect_data(i8* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %185 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %186 = bitcast %struct._GtkObject* %185 to i8*
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %188 = bitcast %struct._GtkWidget* %187 to i8*
  %call119 = call i64 @g_signal_connect_data(i8* %186, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %188, void (i8*, %struct._GClosure*)* null, i32 2)
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_table_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call120)
  %191 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkTable*
  %192 = load i32, i32* %row, align 4
  %inc122 = add nsw i32 %192, 1
  store i32 %inc122, i32* %row, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %191, i32 %192, i32 12)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %194 = bitcast %struct._GtkWidget* %193 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_table_get_type() #5
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call123)
  %195 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkTable*
  %196 = load i32, i32* %row, align 4
  %inc125 = add nsw i32 %196, 1
  store i32 %inc125, i32* %row, align 4
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0)) #6
  %197 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %conv127 = sitofp i32 %197 to double
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.61, i32 0, i32 0)) #6
  %call129 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %195, i32 0, i32 %196, i8* %call126, i32 100, i32 6, double %conv127, double -1.000000e+03, double 1.001000e+03, double 1.000000e+00, double 1.000000e+01, i32 0, i32 0, double -1.000000e+04, double 1.000100e+04, i8* %call128, i8* null)
  store %struct._GtkObject* %call129, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call129, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 3), align 8
  %198 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %199 = bitcast %struct._GtkObject* %198 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %200 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %201 = bitcast %struct._GtkObject* %200 to i8*
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %203 = bitcast %struct._GtkWidget* %202 to i8*
  %call131 = call i64 @g_signal_connect_data(i8* %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %203, void (i8*, %struct._GClosure*)* null, i32 2)
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %205 = bitcast %struct._GtkWidget* %204 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #5
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call132)
  %206 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  %207 = load i32, i32* %row, align 4
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #6
  %208 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %conv135 = sitofp i32 %208 to double
  %call136 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.61, i32 0, i32 0)) #6
  %call137 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %206, i32 0, i32 %207, i8* %call134, i32 100, i32 6, double %conv135, double -1.000000e+03, double 1.001000e+03, double 1.000000e+00, double 1.000000e+01, i32 0, i32 0, double -1.000000e+04, double 1.000100e+04, i8* %call136, i8* null)
  store %struct._GtkObject* %call137, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call137, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 4), align 8
  %209 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %210 = bitcast %struct._GtkObject* %209 to i8*
  %call138 = call i64 @g_signal_connect_data(i8* %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %211 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %212 = bitcast %struct._GtkObject* %211 to i8*
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %214 = bitcast %struct._GtkWidget* %213 to i8*
  %call139 = call i64 @g_signal_connect_data(i8* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %214, void (i8*, %struct._GClosure*)* null, i32 2)
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %216 = bitcast %struct._GtkWidget* %215 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call140)
  %217 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  %218 = load i32, i32* %row, align 4
  %inc142 = add nsw i32 %218, 1
  store i32 %inc142, i32* %row, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %217, i32 %218, i32 12)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %220 = bitcast %struct._GtkWidget* %219 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_table_get_type() #5
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %220, i64 %call143)
  %221 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkTable*
  %222 = load i32, i32* %row, align 4
  %inc145 = add nsw i32 %222, 1
  store i32 %inc145, i32* %row, align 4
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0)) #6
  %223 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 6), align 4
  %conv147 = sitofp i32 %223 to double
  %call148 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %221, i32 0, i32 %222, i8* %call146, i32 100, i32 6, double %conv147, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call148, %struct._GtkObject** %adj, align 8
  %224 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %225 = bitcast %struct._GtkObject* %224 to i8*
  %call149 = call i64 @g_signal_connect_data(i8* %225, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %226 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %227 = bitcast %struct._GtkObject* %226 to i8*
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %229 = bitcast %struct._GtkWidget* %228 to i8*
  %call150 = call i64 @g_signal_connect_data(i8* %227, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %229, void (i8*, %struct._GClosure*)* null, i32 2)
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_table_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call151)
  %232 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkTable*
  %233 = load i32, i32* %row, align 4
  %inc153 = add nsw i32 %233, 1
  store i32 %inc153, i32* %row, align 4
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0)) #6
  %234 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 7), align 4
  %conv155 = sitofp i32 %234 to double
  %call156 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %232, i32 0, i32 %233, i8* %call154, i32 100, i32 6, double %conv155, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call156, %struct._GtkObject** %adj, align 8
  %235 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %236 = bitcast %struct._GtkObject* %235 to i8*
  %call157 = call i64 @g_signal_connect_data(i8* %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %237 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %238 = bitcast %struct._GtkObject* %237 to i8*
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %240 = bitcast %struct._GtkWidget* %239 to i8*
  %call158 = call i64 @g_signal_connect_data(i8* %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %240, void (i8*, %struct._GClosure*)* null, i32 2)
  %241 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %241, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @dialog_new_bumpmap(i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @dialog_new_bumpmap(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %242)
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %244 = bitcast %struct._GtkWidget* %243 to %struct._GTypeInstance*
  %call160 = call i64 @gimp_dialog_get_type() #5
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %244, i64 %call160)
  %245 = bitcast %struct._GTypeInstance* %call161 to %struct._GimpDialog*
  %call162 = call i32 @gimp_dialog_run(%struct._GimpDialog* %245)
  %cmp163 = icmp eq i32 %call162, -5
  %conv164 = zext i1 %cmp163 to i32
  store i32 %conv164, i32* %run, align 4
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %246)
  %247 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %248 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %cmp165 = icmp ne %struct._GimpDrawable* %247, %248
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end
  %249 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %249)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.end
  %250 = load i32, i32* %run, align 4
  ret i32 %250
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal void @bumpmap() #0 {
entry:
  %params = alloca %struct.bumpmap_params_t, align 8
  %bm_drawable = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bm_rgn = alloca %struct._GimpPixelRgn, align 8
  %bm_width = alloca i32, align 4
  %bm_height = alloca i32, align 4
  %bm_bpp = alloca i32, align 4
  %bm_has_alpha = alloca i32, align 4
  %yofs1 = alloca i32, align 4
  %yofs2 = alloca i32, align 4
  %yofs3 = alloca i32, align 4
  %row_in_bumpmap = alloca i32, align 4
  %bm_row1 = alloca i8*, align 8
  %bm_row2 = alloca i8*, align 8
  %bm_row3 = alloca i8*, align 8
  %bm_tmprow = alloca i8*, align 8
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %y = alloca i32, align 4
  %progress = alloca i32, align 4
  %drawable_tiles_per_row = alloca i32, align 4
  %bm_tiles_per_row = alloca i32, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0)) #6
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %0 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %call2 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %bm_drawable, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %bm_drawable, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call5 = call i32 @gimp_drawable_width(i32 %5)
  store i32 %call5, i32* %bm_width, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_height(i32 %7)
  store i32 %call7, i32* %bm_height, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_bpp(i32 %9)
  store i32 %call9, i32* %bm_bpp, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_has_alpha(i32 %11)
  store i32 %call11, i32* %bm_has_alpha, align 4
  %12 = load i32, i32* @sel_x2, align 4
  %call12 = call i32 @gimp_tile_width() #5
  %add = add i32 %12, %call12
  %sub = sub i32 %add, 1
  %call13 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %sub, %call13
  %add14 = add i32 1, %div
  %13 = load i32, i32* @sel_x1, align 4
  %call15 = call i32 @gimp_tile_width() #5
  %div16 = udiv i32 %13, %call15
  %sub17 = sub i32 %add14, %div16
  store i32 %sub17, i32* %drawable_tiles_per_row, align 4
  %14 = load i32, i32* %bm_width, align 4
  %call18 = call i32 @gimp_tile_width() #5
  %add19 = add i32 %14, %call18
  %sub20 = sub i32 %add19, 1
  %call21 = call i32 @gimp_tile_width() #5
  %div22 = udiv i32 %sub20, %call21
  store i32 %div22, i32* %bm_tiles_per_row, align 4
  %15 = load i32, i32* %bm_tiles_per_row, align 4
  %16 = load i32, i32* %drawable_tiles_per_row, align 4
  %mul = mul nsw i32 2, %16
  %add23 = add nsw i32 %15, %mul
  %conv = sext i32 %add23 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %17 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  %tobool24 = icmp ne i32 %17, 0
  br i1 %tobool24, label %if.then.25, label %if.else.66

if.then.25:                                       ; preds = %if.end.4
  %18 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %19 = load i32, i32* @sel_y1, align 4
  %add26 = add nsw i32 %18, %19
  %cmp27 = icmp slt i32 %add26, 0
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %20 = load i32, i32* %bm_height, align 4
  %sub29 = sub nsw i32 %20, 1
  %21 = load i32, i32* %bm_height, align 4
  %sub30 = sub nsw i32 %21, 1
  %22 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %23 = load i32, i32* @sel_y1, align 4
  %add31 = add nsw i32 %22, %23
  %sub32 = sub nsw i32 %sub30, %add31
  %24 = load i32, i32* %bm_height, align 4
  %rem = srem i32 %sub32, %24
  %sub33 = sub nsw i32 %sub29, %rem
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  %25 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %26 = load i32, i32* @sel_y1, align 4
  %add34 = add nsw i32 %25, %26
  %27 = load i32, i32* %bm_height, align 4
  %rem35 = srem i32 %add34, %27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub33, %cond.true ], [ %rem35, %cond.false ]
  store i32 %cond, i32* %yofs2, align 4
  %28 = load i32, i32* %yofs2, align 4
  %sub36 = sub nsw i32 %28, 1
  %cmp37 = icmp slt i32 %sub36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.46

cond.true.39:                                     ; preds = %cond.end
  %29 = load i32, i32* %bm_height, align 4
  %sub40 = sub nsw i32 %29, 1
  %30 = load i32, i32* %bm_height, align 4
  %sub41 = sub nsw i32 %30, 1
  %31 = load i32, i32* %yofs2, align 4
  %sub42 = sub nsw i32 %31, 1
  %sub43 = sub nsw i32 %sub41, %sub42
  %32 = load i32, i32* %bm_height, align 4
  %rem44 = srem i32 %sub43, %32
  %sub45 = sub nsw i32 %sub40, %rem44
  br label %cond.end.49

cond.false.46:                                    ; preds = %cond.end
  %33 = load i32, i32* %yofs2, align 4
  %sub47 = sub nsw i32 %33, 1
  %34 = load i32, i32* %bm_height, align 4
  %rem48 = srem i32 %sub47, %34
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.39
  %cond50 = phi i32 [ %sub45, %cond.true.39 ], [ %rem48, %cond.false.46 ]
  store i32 %cond50, i32* %yofs1, align 4
  %35 = load i32, i32* %yofs2, align 4
  %add51 = add nsw i32 %35, 1
  %cmp52 = icmp slt i32 %add51, 0
  br i1 %cmp52, label %cond.true.54, label %cond.false.61

cond.true.54:                                     ; preds = %cond.end.49
  %36 = load i32, i32* %bm_height, align 4
  %sub55 = sub nsw i32 %36, 1
  %37 = load i32, i32* %bm_height, align 4
  %sub56 = sub nsw i32 %37, 1
  %38 = load i32, i32* %yofs2, align 4
  %add57 = add nsw i32 %38, 1
  %sub58 = sub nsw i32 %sub56, %add57
  %39 = load i32, i32* %bm_height, align 4
  %rem59 = srem i32 %sub58, %39
  %sub60 = sub nsw i32 %sub55, %rem59
  br label %cond.end.64

cond.false.61:                                    ; preds = %cond.end.49
  %40 = load i32, i32* %yofs2, align 4
  %add62 = add nsw i32 %40, 1
  %41 = load i32, i32* %bm_height, align 4
  %rem63 = srem i32 %add62, %41
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.54
  %cond65 = phi i32 [ %sub60, %cond.true.54 ], [ %rem63, %cond.false.61 ]
  store i32 %cond65, i32* %yofs3, align 4
  br label %if.end.101

if.else.66:                                       ; preds = %if.end.4
  %42 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %43 = load i32, i32* @sel_y1, align 4
  %add67 = add nsw i32 %42, %43
  %44 = load i32, i32* %bm_height, align 4
  %sub68 = sub nsw i32 %44, 1
  %cmp69 = icmp sgt i32 %add67, %sub68
  br i1 %cmp69, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %if.else.66
  %45 = load i32, i32* %bm_height, align 4
  %sub72 = sub nsw i32 %45, 1
  br label %cond.end.82

cond.false.73:                                    ; preds = %if.else.66
  %46 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %47 = load i32, i32* @sel_y1, align 4
  %add74 = add nsw i32 %46, %47
  %cmp75 = icmp slt i32 %add74, 0
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.false.73
  br label %cond.end.80

cond.false.78:                                    ; preds = %cond.false.73
  %48 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %49 = load i32, i32* @sel_y1, align 4
  %add79 = add nsw i32 %48, %49
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.77
  %cond81 = phi i32 [ 0, %cond.true.77 ], [ %add79, %cond.false.78 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.71
  %cond83 = phi i32 [ %sub72, %cond.true.71 ], [ %cond81, %cond.end.80 ]
  store i32 %cond83, i32* %yofs2, align 4
  %50 = load i32, i32* %yofs2, align 4
  store i32 %50, i32* %yofs1, align 4
  %51 = load i32, i32* %yofs2, align 4
  %add84 = add nsw i32 %51, 1
  %52 = load i32, i32* %bm_height, align 4
  %sub85 = sub nsw i32 %52, 1
  %cmp86 = icmp sgt i32 %add84, %sub85
  br i1 %cmp86, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %cond.end.82
  %53 = load i32, i32* %bm_height, align 4
  %sub89 = sub nsw i32 %53, 1
  br label %cond.end.99

cond.false.90:                                    ; preds = %cond.end.82
  %54 = load i32, i32* %yofs2, align 4
  %add91 = add nsw i32 %54, 1
  %cmp92 = icmp slt i32 %add91, 0
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.false.90
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.false.90
  %55 = load i32, i32* %yofs2, align 4
  %add96 = add nsw i32 %55, 1
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.94
  %cond98 = phi i32 [ 0, %cond.true.94 ], [ %add96, %cond.false.95 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.88
  %cond100 = phi i32 [ %sub89, %cond.true.88 ], [ %cond98, %cond.end.97 ]
  store i32 %cond100, i32* %yofs3, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %cond.end.99, %cond.end.64
  %56 = load i32, i32* %bm_width, align 4
  %57 = load i32, i32* %bm_bpp, align 4
  %mul102 = mul nsw i32 %56, %57
  %conv103 = sext i32 %mul102 to i64
  %call104 = call noalias i8* @g_malloc_n(i64 %conv103, i64 1)
  store i8* %call104, i8** %bm_row1, align 8
  %58 = load i32, i32* %bm_width, align 4
  %59 = load i32, i32* %bm_bpp, align 4
  %mul105 = mul nsw i32 %58, %59
  %conv106 = sext i32 %mul105 to i64
  %call107 = call noalias i8* @g_malloc_n(i64 %conv106, i64 1)
  store i8* %call107, i8** %bm_row2, align 8
  %60 = load i32, i32* %bm_width, align 4
  %61 = load i32, i32* %bm_bpp, align 4
  %mul108 = mul nsw i32 %60, %61
  %conv109 = sext i32 %mul108 to i64
  %call110 = call noalias i8* @g_malloc_n(i64 %conv109, i64 1)
  store i8* %call110, i8** %bm_row3, align 8
  %62 = load i32, i32* @sel_width, align 4
  %63 = load i32, i32* @img_bpp, align 4
  %mul111 = mul nsw i32 %62, %63
  %conv112 = sext i32 %mul111 to i64
  %call113 = call noalias i8* @g_malloc_n(i64 %conv112, i64 1)
  store i8* %call113, i8** %src_row, align 8
  %64 = load i32, i32* @sel_width, align 4
  %65 = load i32, i32* @img_bpp, align 4
  %mul114 = mul nsw i32 %64, %65
  %conv115 = sext i32 %mul114 to i64
  %call116 = call noalias i8* @g_malloc_n(i64 %conv115, i64 1)
  store i8* %call116, i8** %dest_row, align 8
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %67 = load i32, i32* @sel_x1, align 4
  %68 = load i32, i32* @sel_y1, align 4
  %69 = load i32, i32* @sel_width, align 4
  %70 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 0, i32 0)
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %72 = load i32, i32* @sel_x1, align 4
  %73 = load i32, i32* @sel_y1, align 4
  %74 = load i32, i32* @sel_width, align 4
  %75 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 1, i32 1)
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  %77 = load i32, i32* %bm_width, align 4
  %78 = load i32, i32* %bm_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %bm_rgn, %struct._GimpDrawable* %76, i32 0, i32 0, i32 %77, i32 %78, i32 0, i32 0)
  call void @bumpmap_init_params(%struct.bumpmap_params_t* %params)
  %79 = load i8*, i8** %bm_row1, align 8
  %80 = load i32, i32* %yofs1, align 4
  %81 = load i32, i32* %bm_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %bm_rgn, i8* %79, i32 0, i32 %80, i32 %81)
  %82 = load i8*, i8** %bm_row2, align 8
  %83 = load i32, i32* %yofs2, align 4
  %84 = load i32, i32* %bm_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %bm_rgn, i8* %82, i32 0, i32 %83, i32 %84)
  %85 = load i8*, i8** %bm_row3, align 8
  %86 = load i32, i32* %yofs3, align 4
  %87 = load i32, i32* %bm_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %bm_rgn, i8* %85, i32 0, i32 %86, i32 %87)
  %88 = load i8*, i8** %bm_row1, align 8
  %89 = load i32, i32* %bm_width, align 4
  %90 = load i32, i32* %bm_bpp, align 4
  %91 = load i32, i32* %bm_has_alpha, align 4
  %lut = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %params, i32 0, i32 6
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %lut, i32 0, i32 0
  call void @bumpmap_convert_row(i8* %88, i32 %89, i32 %90, i32 %91, i8* %arraydecay)
  %92 = load i8*, i8** %bm_row2, align 8
  %93 = load i32, i32* %bm_width, align 4
  %94 = load i32, i32* %bm_bpp, align 4
  %95 = load i32, i32* %bm_has_alpha, align 4
  %lut117 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %params, i32 0, i32 6
  %arraydecay118 = getelementptr inbounds [256 x i8], [256 x i8]* %lut117, i32 0, i32 0
  call void @bumpmap_convert_row(i8* %92, i32 %93, i32 %94, i32 %95, i8* %arraydecay118)
  %96 = load i8*, i8** %bm_row3, align 8
  %97 = load i32, i32* %bm_width, align 4
  %98 = load i32, i32* %bm_bpp, align 4
  %99 = load i32, i32* %bm_has_alpha, align 4
  %lut119 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %params, i32 0, i32 6
  %arraydecay120 = getelementptr inbounds [256 x i8], [256 x i8]* %lut119, i32 0, i32 0
  call void @bumpmap_convert_row(i8* %96, i32 %97, i32 %98, i32 %99, i8* %arraydecay120)
  %100 = load i32, i32* @sel_y1, align 4
  store i32 %100, i32* %y, align 4
  store i32 0, i32* %progress, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.101
  %101 = load i32, i32* %y, align 4
  %102 = load i32, i32* @sel_y2, align 4
  %cmp121 = icmp slt i32 %101, %102
  br i1 %cmp121, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %103 = load i32, i32* %y, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %sub123 = sub nsw i32 0, %104
  %cmp124 = icmp sge i32 %103, %sub123
  br i1 %cmp124, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %105 = load i32, i32* %y, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %sub126 = sub nsw i32 0, %106
  %107 = load i32, i32* %bm_height, align 4
  %add127 = add nsw i32 %sub126, %107
  %cmp128 = icmp slt i32 %105, %add127
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %108 = phi i1 [ false, %for.body ], [ %cmp128, %land.rhs ]
  %land.ext = zext i1 %108 to i32
  store i32 %land.ext, i32* %row_in_bumpmap, align 4
  %109 = load i8*, i8** %src_row, align 8
  %110 = load i32, i32* @sel_x1, align 4
  %111 = load i32, i32* %y, align 4
  %112 = load i32, i32* @sel_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %109, i32 %110, i32 %111, i32 %112)
  %113 = load i8*, i8** %src_row, align 8
  %114 = load i8*, i8** %dest_row, align 8
  %115 = load i32, i32* @sel_width, align 4
  %116 = load i32, i32* @img_bpp, align 4
  %117 = load i32, i32* @img_has_alpha, align 4
  %118 = load i8*, i8** %bm_row1, align 8
  %119 = load i8*, i8** %bm_row2, align 8
  %120 = load i8*, i8** %bm_row3, align 8
  %121 = load i32, i32* %bm_width, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  %124 = load i32, i32* %row_in_bumpmap, align 4
  call void @bumpmap_row(i8* %113, i8* %114, i32 %115, i32 %116, i32 %117, i8* %118, i8* %119, i8* %120, i32 %121, i32 %122, i32 %123, i32 %124, %struct.bumpmap_params_t* %params)
  %125 = load i8*, i8** %dest_row, align 8
  %126 = load i32, i32* @sel_x1, align 4
  %127 = load i32, i32* %y, align 4
  %128 = load i32, i32* @sel_width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_rgn, i8* %125, i32 %126, i32 %127, i32 %128)
  %129 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  %tobool130 = icmp ne i32 %129, 0
  br i1 %tobool130, label %if.then.132, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %130 = load i32, i32* %row_in_bumpmap, align 4
  %tobool131 = icmp ne i32 %130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.175

if.then.132:                                      ; preds = %lor.lhs.false, %land.end
  %131 = load i8*, i8** %bm_row1, align 8
  store i8* %131, i8** %bm_tmprow, align 8
  %132 = load i8*, i8** %bm_row2, align 8
  store i8* %132, i8** %bm_row1, align 8
  %133 = load i8*, i8** %bm_row3, align 8
  store i8* %133, i8** %bm_row2, align 8
  %134 = load i8*, i8** %bm_tmprow, align 8
  store i8* %134, i8** %bm_row3, align 8
  %135 = load i32, i32* %yofs2, align 4
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %yofs2, align 4
  %136 = load i32, i32* %bm_height, align 4
  %cmp133 = icmp eq i32 %inc, %136
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.132
  store i32 0, i32* %yofs2, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.then.132
  %137 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  %tobool137 = icmp ne i32 %137, 0
  br i1 %tobool137, label %if.then.138, label %if.else.154

if.then.138:                                      ; preds = %if.end.136
  %138 = load i32, i32* %yofs2, align 4
  %add139 = add nsw i32 %138, 1
  %cmp140 = icmp slt i32 %add139, 0
  br i1 %cmp140, label %cond.true.142, label %cond.false.149

cond.true.142:                                    ; preds = %if.then.138
  %139 = load i32, i32* %bm_height, align 4
  %sub143 = sub nsw i32 %139, 1
  %140 = load i32, i32* %bm_height, align 4
  %sub144 = sub nsw i32 %140, 1
  %141 = load i32, i32* %yofs2, align 4
  %add145 = add nsw i32 %141, 1
  %sub146 = sub nsw i32 %sub144, %add145
  %142 = load i32, i32* %bm_height, align 4
  %rem147 = srem i32 %sub146, %142
  %sub148 = sub nsw i32 %sub143, %rem147
  br label %cond.end.152

cond.false.149:                                   ; preds = %if.then.138
  %143 = load i32, i32* %yofs2, align 4
  %add150 = add nsw i32 %143, 1
  %144 = load i32, i32* %bm_height, align 4
  %rem151 = srem i32 %add150, %144
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.149, %cond.true.142
  %cond153 = phi i32 [ %sub148, %cond.true.142 ], [ %rem151, %cond.false.149 ]
  store i32 %cond153, i32* %yofs3, align 4
  br label %if.end.172

if.else.154:                                      ; preds = %if.end.136
  %145 = load i32, i32* %yofs2, align 4
  %add155 = add nsw i32 %145, 1
  %146 = load i32, i32* %bm_height, align 4
  %sub156 = sub nsw i32 %146, 1
  %cmp157 = icmp sgt i32 %add155, %sub156
  br i1 %cmp157, label %cond.true.159, label %cond.false.161

cond.true.159:                                    ; preds = %if.else.154
  %147 = load i32, i32* %bm_height, align 4
  %sub160 = sub nsw i32 %147, 1
  br label %cond.end.170

cond.false.161:                                   ; preds = %if.else.154
  %148 = load i32, i32* %yofs2, align 4
  %add162 = add nsw i32 %148, 1
  %cmp163 = icmp slt i32 %add162, 0
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.false.161
  br label %cond.end.168

cond.false.166:                                   ; preds = %cond.false.161
  %149 = load i32, i32* %yofs2, align 4
  %add167 = add nsw i32 %149, 1
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.165
  %cond169 = phi i32 [ 0, %cond.true.165 ], [ %add167, %cond.false.166 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %cond.true.159
  %cond171 = phi i32 [ %sub160, %cond.true.159 ], [ %cond169, %cond.end.168 ]
  store i32 %cond171, i32* %yofs3, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %cond.end.170, %cond.end.152
  %150 = load i8*, i8** %bm_row3, align 8
  %151 = load i32, i32* %yofs3, align 4
  %152 = load i32, i32* %bm_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %bm_rgn, i8* %150, i32 0, i32 %151, i32 %152)
  %153 = load i8*, i8** %bm_row3, align 8
  %154 = load i32, i32* %bm_width, align 4
  %155 = load i32, i32* %bm_bpp, align 4
  %156 = load i32, i32* %bm_has_alpha, align 4
  %lut173 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %params, i32 0, i32 6
  %arraydecay174 = getelementptr inbounds [256 x i8], [256 x i8]* %lut173, i32 0, i32 0
  call void @bumpmap_convert_row(i8* %153, i32 %154, i32 %155, i32 %156, i8* %arraydecay174)
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.172, %lor.lhs.false
  %157 = load i32, i32* %progress, align 4
  %rem176 = srem i32 %157, 16
  %cmp177 = icmp eq i32 %rem176, 0
  br i1 %cmp177, label %if.then.179, label %if.end.184

if.then.179:                                      ; preds = %if.end.175
  %158 = load i32, i32* %progress, align 4
  %conv180 = sitofp i32 %158 to double
  %159 = load i32, i32* @sel_height, align 4
  %conv181 = sitofp i32 %159 to double
  %div182 = fdiv double %conv180, %conv181
  %call183 = call i32 @gimp_progress_update(double %div182)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.179, %if.end.175
  br label %for.inc

for.inc:                                          ; preds = %if.end.184
  %160 = load i32, i32* %y, align 4
  %inc185 = add nsw i32 %160, 1
  store i32 %inc185, i32* %y, align 4
  %161 = load i32, i32* %progress, align 4
  %inc186 = add nsw i32 %161, 1
  store i32 %inc186, i32* %progress, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call187 = call i32 @gimp_progress_update(double 1.000000e+00)
  %162 = load i8*, i8** %bm_row1, align 8
  call void @g_free(i8* %162)
  %163 = load i8*, i8** %bm_row2, align 8
  call void @g_free(i8* %163)
  %164 = load i8*, i8** %bm_row3, align 8
  call void @g_free(i8* %164)
  %165 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %165)
  %166 = load i8*, i8** %dest_row, align 8
  call void @g_free(i8* %166)
  %167 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  %168 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %cmp188 = icmp ne %struct._GimpDrawable* %167, %168
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %for.end
  %169 = load %struct._GimpDrawable*, %struct._GimpDrawable** %bm_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %169)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %for.end
  %170 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %170)
  %171 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id192 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %171, i32 0, i32 0
  %172 = load i32, i32* %drawable_id192, align 4
  %call193 = call i32 @gimp_drawable_merge_shadow(i32 %172, i32 1)
  %173 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id194 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %173, i32 0, i32 0
  %174 = load i32, i32* %drawable_id194, align 4
  %175 = load i32, i32* @sel_x1, align 4
  %176 = load i32, i32* @sel_y1, align 4
  %177 = load i32, i32* @sel_width, align 4
  %178 = load i32, i32* @sel_height, align 4
  %call195 = call i32 @gimp_drawable_update(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  br label %return

return:                                           ; preds = %if.end.191, %if.then.3
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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

declare %struct._GtkWidget* @gtk_paned_new(i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_paned_pack1(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_preview(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %dest_row = alloca i8*, align 8
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %isfirst = alloca i32, align 4
  %islast = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %0, i32* %x1, i32* %y1)
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %1, i32* %width, i32* %height)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %3 = load i32, i32* @sel_x1, align 4
  %4 = load i32, i32* @sel_y1, align 4
  %5 = load i32, i32* @sel_width, align 4
  %6 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 12), %struct._GimpDrawable* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 0, i32 0)
  %7 = load i32, i32* %height, align 4
  %conv = sext i32 %7 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %8 = bitcast i8* %call to i8**
  store i8** %8, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* @sel_width, align 4
  %mul = mul nsw i32 %11, 4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv2, i64 1)
  %12 = load i32, i32* %y, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  store i8* %call3, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %y, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %height, align 4
  %16 = load i32, i32* %y1, align 4
  call void @dialog_fill_src_rows(i32 0, i32 %15, i32 %16)
  %17 = load i32, i32* %height, align 4
  %add = add nsw i32 %17, 2
  %conv4 = sext i32 %add to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 8)
  %18 = bitcast i8* %call5 to i8**
  store i8** %18, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %for.end
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %height, align 4
  %add7 = add nsw i32 %20, 2
  %cmp8 = icmp slt i32 %19, %add7
  br i1 %cmp8, label %for.body.10, label %for.end.18

for.body.10:                                      ; preds = %for.cond.6
  %21 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 8), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 10), align 4
  %mul11 = mul nsw i32 %21, %22
  %conv12 = sext i32 %mul11 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  %23 = load i32, i32* %y, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %24, i64 %idxprom14
  store i8* %call13, i8** %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.10
  %25 = load i32, i32* %y, align 4
  %inc17 = add nsw i32 %25, 1
  store i32 %inc17, i32* %y, align 4
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  call void @bumpmap_init_params(%struct.bumpmap_params_t* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 14))
  %26 = load i32, i32* %height, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %28 = load i32, i32* %y1, align 4
  %add19 = add nsw i32 %27, %28
  call void @dialog_fill_bumpmap_rows(i32 0, i32 %26, i32 %add19)
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  %mul20 = mul nsw i32 %29, %30
  %mul21 = mul nsw i32 %mul20, 4
  %conv22 = sext i32 %mul21 to i64
  %call23 = call noalias i8* @g_malloc_n(i64 %conv22, i64 1)
  store i8* %call23, i8** %dest_row, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.71, %for.end.18
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %height, align 4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body.27, label %for.end.73

for.body.27:                                      ; preds = %for.cond.24
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %sub = sub nsw i32 0, %34
  %35 = load i32, i32* %y1, align 4
  %sub28 = sub nsw i32 %sub, %35
  %cmp29 = icmp eq i32 %33, %sub28
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body.27
  %36 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %36, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.27
  %37 = phi i1 [ false, %for.body.27 ], [ %lnot, %land.rhs ]
  %cond = select i1 %37, i32 1, i32 0
  store i32 %cond, i32* %isfirst, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %sub31 = sub nsw i32 0, %39
  %40 = load i32, i32* %y1, align 4
  %sub32 = sub nsw i32 %sub31, %40
  %41 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %add33 = add nsw i32 %sub32, %41
  %sub34 = sub nsw i32 %add33, 1
  %cmp35 = icmp eq i32 %38, %sub34
  br i1 %cmp35, label %land.rhs.37, label %land.end.40

land.rhs.37:                                      ; preds = %land.end
  %42 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  %tobool38 = icmp ne i32 %42, 0
  %lnot39 = xor i1 %tobool38, true
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.37, %land.end
  %43 = phi i1 [ false, %land.end ], [ %lnot39, %land.rhs.37 ]
  %cond41 = select i1 %43, i32 1, i32 0
  store i32 %cond41, i32* %islast, align 4
  %44 = load i32, i32* %y, align 4
  %idxprom42 = sext i32 %44 to i64
  %45 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %45, i64 %idxprom42
  %46 = load i8*, i8** %arrayidx43, align 8
  %47 = load i32, i32* %x1, align 4
  %mul44 = mul nsw i32 4, %47
  %idx.ext = sext i32 %mul44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  %48 = load i8*, i8** %dest_row, align 8
  %49 = load i32, i32* %width, align 4
  %mul45 = mul nsw i32 4, %49
  %50 = load i32, i32* %y, align 4
  %mul46 = mul nsw i32 %mul45, %50
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %48, i64 %idx.ext47
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %isfirst, align 4
  %add49 = add nsw i32 %52, %53
  %idxprom50 = sext i32 %add49 to i64
  %54 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %54, i64 %idxprom50
  %55 = load i8*, i8** %arrayidx51, align 8
  %56 = load i32, i32* %y, align 4
  %add52 = add nsw i32 %56, 1
  %idxprom53 = sext i32 %add52 to i64
  %57 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %57, i64 %idxprom53
  %58 = load i8*, i8** %arrayidx54, align 8
  %59 = load i32, i32* %y, align 4
  %add55 = add nsw i32 %59, 2
  %60 = load i32, i32* %islast, align 4
  %sub56 = sub nsw i32 %add55, %60
  %idxprom57 = sext i32 %sub56 to i64
  %61 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %61, i64 %idxprom57
  %62 = load i8*, i8** %arrayidx58, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 8), align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %65 = load i32, i32* %x1, align 4
  %add59 = add nsw i32 %64, %65
  %66 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 11), align 4
  %67 = load i32, i32* %y, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %sub60 = sub nsw i32 0, %68
  %69 = load i32, i32* %y1, align 4
  %sub61 = sub nsw i32 %sub60, %69
  %cmp62 = icmp sge i32 %67, %sub61
  br i1 %cmp62, label %land.rhs.64, label %land.end.70

land.rhs.64:                                      ; preds = %land.end.40
  %70 = load i32, i32* %y, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %sub65 = sub nsw i32 0, %71
  %72 = load i32, i32* %y1, align 4
  %sub66 = sub nsw i32 %sub65, %72
  %73 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %add67 = add nsw i32 %sub66, %73
  %cmp68 = icmp slt i32 %70, %add67
  br label %land.end.70

land.end.70:                                      ; preds = %land.rhs.64, %land.end.40
  %74 = phi i1 [ false, %land.end.40 ], [ %cmp68, %land.rhs.64 ]
  %land.ext = zext i1 %74 to i32
  call void @bumpmap_row(i8* %add.ptr, i8* %add.ptr48, i32 %51, i32 4, i32 1, i8* %55, i8* %58, i8* %62, i32 %63, i32 %add59, i32 %66, i32 %land.ext, %struct.bumpmap_params_t* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 14))
  br label %for.inc.71

for.inc.71:                                       ; preds = %land.end.70
  %75 = load i32, i32* %y, align 4
  %inc72 = add nsw i32 %75, 1
  store i32 %inc72, i32* %y, align 4
  br label %for.cond.24

for.end.73:                                       ; preds = %for.cond.24
  %76 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %76, i32 0, i32 2
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_preview_area_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call74)
  %79 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpPreviewArea*
  %80 = load i32, i32* %width, align 4
  %81 = load i32, i32* %height, align 4
  %82 = load i8*, i8** %dest_row, align 8
  %83 = load i32, i32* %width, align 4
  %mul76 = mul nsw i32 4, %83
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %79, i32 0, i32 0, i32 %80, i32 %81, i32 1, i8* %82, i32 %mul76)
  %84 = load i8*, i8** %dest_row, align 8
  call void @g_free(i8* %84)
  store i32 0, i32* %y, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.84, %for.end.73
  %85 = load i32, i32* %y, align 4
  %86 = load i32, i32* %height, align 4
  %add78 = add nsw i32 %86, 2
  %cmp79 = icmp slt i32 %85, %add78
  br i1 %cmp79, label %for.body.81, label %for.end.86

for.body.81:                                      ; preds = %for.cond.77
  %87 = load i32, i32* %y, align 4
  %idxprom82 = sext i32 %87 to i64
  %88 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %88, i64 %idxprom82
  %89 = load i8*, i8** %arrayidx83, align 8
  call void @g_free(i8* %89)
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.81
  %90 = load i32, i32* %y, align 4
  %inc85 = add nsw i32 %90, 1
  store i32 %inc85, i32* %y, align 4
  br label %for.cond.77

for.end.86:                                       ; preds = %for.cond.77
  %91 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %92 = bitcast i8** %91 to i8*
  call void @g_free(i8* %92)
  store i32 0, i32* %y, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.93, %for.end.86
  %93 = load i32, i32* %y, align 4
  %94 = load i32, i32* %height, align 4
  %cmp88 = icmp slt i32 %93, %94
  br i1 %cmp88, label %for.body.90, label %for.end.95

for.body.90:                                      ; preds = %for.cond.87
  %95 = load i32, i32* %y, align 4
  %idxprom91 = sext i32 %95 to i64
  %96 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %96, i64 %idxprom91
  %97 = load i8*, i8** %arrayidx92, align 8
  call void @g_free(i8* %97)
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.90
  %98 = load i32, i32* %y, align 4
  %inc94 = add nsw i32 %98, 1
  store i32 %inc94, i32* %y, align 4
  br label %for.cond.87

for.end.95:                                       ; preds = %for.cond.87
  %99 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  %100 = bitcast i8** %99 to i8*
  call void @g_free(i8* %100)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

; Function Attrs: nounwind uwtable
define internal i32 @dialog_preview_events(%struct._GtkWidget* %area, %union._GdkEvent* %event, %struct._GimpPreview* %preview) #0 {
entry:
  %retval = alloca i32, align 4
  %area.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default.61 [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 8
  %5 = load i32, i32* %button, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.bb
  store i32 1, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 2), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 4
  %7 = load double, double* %x, align 8
  %conv = fptosi double %7 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 0), align 4
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 5
  %9 = load double, double* %y, align 8
  %conv2 = fptosi double %9 to i32
  store i32 %conv2, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 1), align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %10)
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %11 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 2), align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %12)
  store i32 0, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 2), align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %13)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  br label %sw.epilog.62

sw.bb.5:                                          ; preds = %entry
  %14 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %15 = bitcast %union._GdkEvent* %14 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %15, %struct._GdkEventMotion** %mevent, align 8
  %16 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x6 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %16, i32 0, i32 4
  %17 = load double, double* %x6, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 0), align 4
  %conv7 = sitofp i32 %18 to double
  %sub = fsub double %17, %conv7
  %conv8 = fptosi double %sub to i32
  store i32 %conv8, i32* %dx, align 4
  %19 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y9 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %19, i32 0, i32 5
  %20 = load double, double* %y9, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 1), align 4
  %conv10 = sitofp i32 %21 to double
  %sub11 = fsub double %20, %conv10
  %conv12 = fptosi double %sub11 to i32
  store i32 %conv12, i32* %dy, align 4
  %22 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x13 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %22, i32 0, i32 4
  %23 = load double, double* %x13, align 8
  %conv14 = fptosi double %23 to i32
  store i32 %conv14, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 0), align 4
  %24 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y15 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %24, i32 0, i32 5
  %25 = load double, double* %y15, align 8
  %conv16 = fptosi double %25 to i32
  store i32 %conv16, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 1), align 4
  %26 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %26)
  %27 = load i32, i32* %dx, align 4
  %cmp17 = icmp eq i32 %27, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %sw.bb.5
  %28 = load i32, i32* %dy, align 4
  %cmp19 = icmp eq i32 %28, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  br label %sw.epilog.62

if.end.22:                                        ; preds = %land.lhs.true, %sw.bb.5
  %29 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 2), align 4
  switch i32 %29, label %sw.default.59 [
    i32 1, label %sw.bb.23
  ]

sw.bb.23:                                         ; preds = %if.end.22
  %30 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %31 = load i32, i32* %dx, align 4
  %sub24 = sub nsw i32 %30, %31
  %cmp25 = icmp sgt i32 %sub24, 10000
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.23
  br label %cond.end.33

cond.false:                                       ; preds = %sw.bb.23
  %32 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %33 = load i32, i32* %dx, align 4
  %sub27 = sub nsw i32 %32, %33
  %cmp28 = icmp slt i32 %sub27, -10000
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %34 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %35 = load i32, i32* %dx, align 4
  %sub32 = sub nsw i32 %34, %35
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond = phi i32 [ -10000, %cond.true.30 ], [ %sub32, %cond.false.31 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi i32 [ 10000, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond34, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %36 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 3), align 8
  %37 = bitcast %struct._GtkObject* %36 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %37, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4) to i8*))
  %38 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 3), align 8
  %39 = bitcast %struct._GtkObject* %38 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_adjustment_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call35)
  %40 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkAdjustment*
  %41 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %conv37 = sitofp i32 %41 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %40, double %conv37)
  %42 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 3), align 8
  %43 = bitcast %struct._GtkObject* %42 to i8*
  %call38 = call i32 @g_signal_handlers_unblock_matched(i8* %43, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4) to i8*))
  %44 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %45 = load i32, i32* %dy, align 4
  %sub39 = sub nsw i32 %44, %45
  %cmp40 = icmp sgt i32 %sub39, 10000
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.33
  br label %cond.end.52

cond.false.43:                                    ; preds = %cond.end.33
  %46 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %47 = load i32, i32* %dy, align 4
  %sub44 = sub nsw i32 %46, %47
  %cmp45 = icmp slt i32 %sub44, -10000
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.43
  br label %cond.end.50

cond.false.48:                                    ; preds = %cond.false.43
  %48 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %49 = load i32, i32* %dy, align 4
  %sub49 = sub nsw i32 %48, %49
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.47
  %cond51 = phi i32 [ -10000, %cond.true.47 ], [ %sub49, %cond.false.48 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.42
  %cond53 = phi i32 [ 10000, %cond.true.42 ], [ %cond51, %cond.end.50 ]
  store i32 %cond53, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %50 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 4), align 8
  %51 = bitcast %struct._GtkObject* %50 to i8*
  %call54 = call i32 @g_signal_handlers_block_matched(i8* %51, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5) to i8*))
  %52 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 4), align 8
  %53 = bitcast %struct._GtkObject* %52 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_adjustment_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call55)
  %54 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkAdjustment*
  %55 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %conv57 = sitofp i32 %55 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %54, double %conv57)
  %56 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 4), align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %call58 = call i32 @g_signal_handlers_unblock_matched(i8* %57, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5) to i8*))
  br label %sw.epilog.60

sw.default.59:                                    ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

sw.epilog.60:                                     ; preds = %cond.end.52
  %58 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %58)
  store i32 1, i32* %retval
  br label %return

sw.default.61:                                    ; preds = %entry
  br label %sw.epilog.62

sw.epilog.62:                                     ; preds = %sw.default.61, %if.then.21, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.62, %sw.epilog.60, %sw.default.59, %if.then, %sw.epilog, %sw.default
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare void @gtk_paned_pack2(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialog_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %drawable_id.addr, align 4
  %call1 = call i32 @gimp_drawable_is_gray(i32 %1)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @dialog_bumpmap_callback(%struct._GtkWidget* %widget, %struct._GimpPreview* %preview) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable_id = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %drawable_id)
  %3 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %4 = load i32, i32* %drawable_id, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %drawable_id, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  call void @dialog_new_bumpmap(i32 1)
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_maptype_callback(%struct._GtkWidget* %widget, %struct._GimpPreview* %preview) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %maptype = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %maptype)
  %3 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 10), align 4
  %4 = load i32, i32* %maptype, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %maptype, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 10), align 4
  call void @bumpmap_init_params(%struct.bumpmap_params_t* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 14))
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_new_bumpmap(i32 %init_offsets) #0 {
entry:
  %init_offsets.addr = alloca i32, align 4
  %adj = alloca %struct._GtkAdjustment*, align 8
  %bump_offset_x = alloca i32, align 4
  %bump_offset_y = alloca i32, align 4
  %draw_offset_y = alloca i32, align 4
  %draw_offset_x = alloca i32, align 4
  store i32 %init_offsets, i32* %init_offsets.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %tobool = icmp ne %struct._GimpDrawable* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %cmp = icmp ne %struct._GimpDrawable* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %cmp1 = icmp ne i32 %4, -1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 0), align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %5)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  store %struct._GimpDrawable* %6, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %tobool4 = icmp ne %struct._GimpDrawable* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_width(i32 %9)
  store i32 %call7, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 8), align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_height(i32 %11)
  store i32 %call9, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_bpp(i32 %13)
  store i32 %call11, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 10), align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_has_alpha(i32 %15)
  store i32 %call13, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 11), align 4
  %16 = load i32, i32* %init_offsets.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then.15, label %if.end.32

if.then.15:                                       ; preds = %if.end.6
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id16, align 4
  %call17 = call i32 @gimp_drawable_offsets(i32 %18, i32* %bump_offset_x, i32* %bump_offset_y)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id18, align 4
  %call19 = call i32 @gimp_drawable_offsets(i32 %20, i32* %draw_offset_x, i32* %draw_offset_y)
  %21 = load i32, i32* %draw_offset_x, align 4
  %22 = load i32, i32* %bump_offset_x, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %23 = load i32, i32* %draw_offset_y, align 4
  %24 = load i32, i32* %bump_offset_y, align 4
  %sub20 = sub nsw i32 %23, %24
  store i32 %sub20, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %25 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 3), align 8
  %26 = bitcast %struct._GtkObject* %25 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %26, %struct._GtkAdjustment** %adj, align 8
  %27 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %tobool21 = icmp ne %struct._GtkAdjustment* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.15
  %28 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %29 = bitcast %struct._GtkAdjustment* %28 to i8*
  %call23 = call i32 @g_signal_handlers_block_matched(i8* %29, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4) to i8*))
  %30 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4), align 4
  %conv = sitofp i32 %31 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %30, double %conv)
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %33 = bitcast %struct._GtkAdjustment* %32 to i8*
  %call24 = call i32 @g_signal_handlers_unblock_matched(i8* %33, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 4) to i8*))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.15
  %34 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 4), align 8
  %35 = bitcast %struct._GtkObject* %34 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %35, %struct._GtkAdjustment** %adj, align 8
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %tobool26 = icmp ne %struct._GtkAdjustment* %36, null
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.25
  %37 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %38 = bitcast %struct._GtkAdjustment* %37 to i8*
  %call28 = call i32 @g_signal_handlers_block_matched(i8* %38, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5) to i8*))
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5), align 4
  %conv29 = sitofp i32 %40 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %39, double %conv29)
  %41 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %42 = bitcast %struct._GtkAdjustment* %41 to i8*
  %call30 = call i32 @g_signal_handlers_unblock_matched(i8* %42, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 5) to i8*))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.6
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 7), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 8), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 13), %struct._GimpDrawable* %43, i32 0, i32 0, i32 %44, i32 %45, i32 0, i32 0)
  br label %return

return:                                           ; preds = %if.end.32, %if.then.5
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_fill_src_rows(i32 %start, i32 %how_many, i32 %yofs) #0 {
entry:
  %start.addr = alloca i32, align 4
  %how_many.addr = alloca i32, align 4
  %yofs.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sp = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %how_many, i32* %how_many.addr, align 4
  store i32 %yofs, i32* %yofs.addr, align 4
  %0 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  %1 = load i32, i32* %start.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %0, i64 %idx.ext
  %2 = load i32, i32* %yofs.addr, align 4
  %3 = load i32, i32* @sel_width, align 4
  %4 = load i32, i32* %how_many.addr, align 4
  call void @dialog_get_rows(%struct._GimpPixelRgn* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 12), i8** %add.ptr, i32 0, i32 %2, i32 %3, i32 %4)
  %5 = load i32, i32* %start.addr, align 4
  store i32 %5, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %start.addr, align 4
  %8 = load i32, i32* %how_many.addr, align 4
  %add = add nsw i32 %7, %8
  %cmp = icmp slt i32 %6, %add
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %y, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %12 = load i32, i32* @img_bpp, align 4
  %13 = load i32, i32* @sel_width, align 4
  %mul = mul nsw i32 %12, %13
  %idx.ext1 = sext i32 %mul to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %11, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 -1
  store i8* %add.ptr3, i8** %sp, align 8
  %14 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 5), align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %15, i64 %idxprom4
  %16 = load i8*, i8** %arrayidx5, align 8
  %17 = load i32, i32* @sel_width, align 4
  %mul6 = mul nsw i32 4, %17
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 -1
  store i8* %add.ptr9, i8** %p, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* @sel_width, align 4
  %cmp11 = icmp slt i32 %18, %19
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %20 = load i32, i32* @img_has_alpha, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.12
  %21 = load i8*, i8** %sp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr, i8** %sp, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr13, i8** %p, align 8
  store i8 %22, i8* %23, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.12
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %incdec.ptr14, i8** %p, align 8
  store i8 -1, i8* %24, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i32, i32* @img_bpp, align 4
  %cmp15 = icmp slt i32 %25, 3
  br i1 %cmp15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.end
  %26 = load i8*, i8** %sp, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %incdec.ptr17, i8** %p, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %sp, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %sp, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr19, i8** %sp, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 %33, i8* %34, align 1
  br label %if.end.28

if.else.21:                                       ; preds = %if.end
  %35 = load i8*, i8** %sp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %incdec.ptr22, i8** %sp, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr23, i8** %p, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i8*, i8** %sp, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr24, i8** %sp, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %incdec.ptr25, i8** %p, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i8*, i8** %sp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %incdec.ptr26, i8** %sp, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %incdec.ptr27, i8** %p, align 8
  store i8 %42, i8* %43, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.21, %if.then.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %44 = load i32, i32* %x, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %45 = load i32, i32* %y, align 4
  %inc30 = add nsw i32 %45, 1
  store i32 %inc30, i32* %y, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bumpmap_init_params(%struct.bumpmap_params_t* %params) #0 {
entry:
  %params.addr = alloca %struct.bumpmap_params_t*, align 8
  %azimuth = alloca double, align 8
  %elevation = alloca double, align 8
  %lz = alloca i32, align 4
  %nz = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca double, align 8
  store %struct.bumpmap_params_t* %params, %struct.bumpmap_params_t** %params.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 1), align 8
  %mul = fmul double 0x400921FB54442D18, %0
  %div = fdiv double %mul, 1.800000e+02
  store double %div, double* %azimuth, align 8
  %1 = load double, double* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 2), align 8
  %mul1 = fmul double 0x400921FB54442D18, %1
  %div2 = fdiv double %mul1, 1.800000e+02
  store double %div2, double* %elevation, align 8
  %2 = load double, double* %azimuth, align 8
  %call = call double @cos(double %2) #6
  %3 = load double, double* %elevation, align 8
  %call3 = call double @cos(double %3) #6
  %mul4 = fmul double %call, %call3
  %mul5 = fmul double %mul4, 2.550000e+02
  %conv = fptosi double %mul5 to i32
  %4 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %lx = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %4, i32 0, i32 0
  store i32 %conv, i32* %lx, align 4
  %5 = load double, double* %azimuth, align 8
  %call6 = call double @sin(double %5) #6
  %6 = load double, double* %elevation, align 8
  %call7 = call double @cos(double %6) #6
  %mul8 = fmul double %call6, %call7
  %mul9 = fmul double %mul8, 2.550000e+02
  %conv10 = fptosi double %mul9 to i32
  %7 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %ly = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %7, i32 0, i32 1
  store i32 %conv10, i32* %ly, align 4
  %8 = load double, double* %elevation, align 8
  %call11 = call double @sin(double %8) #6
  %mul12 = fmul double %call11, 2.550000e+02
  %conv13 = fptosi double %mul12 to i32
  store i32 %conv13, i32* %lz, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 3), align 4
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 3), align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 1, %cond.false ]
  %div15 = sdiv i32 1530, %cond
  store i32 %div15, i32* %nz, align 4
  %11 = load i32, i32* %nz, align 4
  %12 = load i32, i32* %nz, align 4
  %mul16 = mul nsw i32 %11, %12
  %13 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %nz2 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %13, i32 0, i32 2
  store i32 %mul16, i32* %nz2, align 4
  %14 = load i32, i32* %nz, align 4
  %15 = load i32, i32* %lz, align 4
  %mul17 = mul nsw i32 %14, %15
  %16 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %nzlz = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %16, i32 0, i32 3
  store i32 %mul17, i32* %nzlz, align 4
  %17 = load i32, i32* %lz, align 4
  %18 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %background = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %18, i32 0, i32 4
  store i32 %17, i32* %background, align 4
  %19 = load double, double* %elevation, align 8
  %call18 = call double @sin(double %19) #6
  %20 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %compensation = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %20, i32 0, i32 5
  store double %call18, double* %compensation, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %21, 256
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 10), align 4
  switch i32 %22, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.29
    i32 0, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %conv21 = sitofp i32 %23 to double
  %div22 = fdiv double %conv21, 2.550000e+02
  %sub = fsub double %div22, 1.000000e+00
  store double %sub, double* %n, align 8
  %24 = load double, double* %n, align 8
  %25 = load double, double* %n, align 8
  %mul23 = fmul double %24, %25
  %sub24 = fsub double 1.000000e+00, %mul23
  %call25 = call double @sqrt(double %sub24) #6
  %mul26 = fmul double 2.550000e+02, %call25
  %add = fadd double %mul26, 5.000000e-01
  %conv27 = fptosi double %add to i32
  %conv28 = trunc i32 %conv27 to i8
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %lut = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %27, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lut, i32 0, i64 %idxprom
  store i8 %conv28, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %conv30 = sitofp i32 %28 to double
  %div31 = fdiv double %conv30, 2.550000e+02
  store double %div31, double* %n, align 8
  %29 = load double, double* %n, align 8
  %mul32 = fmul double 0x400921FB54442D18, %29
  %add33 = fadd double 0xBFF921FB54442D18, %mul32
  %call34 = call double @sin(double %add33) #6
  %add35 = fadd double %call34, 1.000000e+00
  %mul36 = fmul double 2.550000e+02, %add35
  %div37 = fdiv double %mul36, 2.000000e+00
  %add38 = fadd double %div37, 5.000000e-01
  %conv39 = fptosi double %add38 to i32
  %conv40 = trunc i32 %conv39 to i8
  %30 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %30 to i64
  %31 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %lut42 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %31, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* %lut42, i32 0, i64 %idxprom41
  store i8 %conv40, i8* %arrayidx43, align 1
  br label %sw.epilog

sw.bb.44:                                         ; preds = %for.body
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb.44
  %32 = load i32, i32* %i, align 4
  %conv45 = trunc i32 %32 to i8
  %33 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %33 to i64
  %34 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %lut47 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %34, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds [256 x i8], [256 x i8]* %lut47, i32 0, i64 %idxprom46
  store i8 %conv45, i8* %arrayidx48, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.29, %sw.bb
  %35 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 9), align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %36 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %lut50 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %37, i32 0, i32 6
  %arrayidx51 = getelementptr inbounds [256 x i8], [256 x i8]* %lut50, i32 0, i64 %idxprom49
  %38 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %38 to i32
  %sub53 = sub nsw i32 255, %conv52
  %conv54 = trunc i32 %sub53 to i8
  %39 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %lut56 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %40, i32 0, i32 6
  %arrayidx57 = getelementptr inbounds [256 x i8], [256 x i8]* %lut56, i32 0, i64 %idxprom55
  store i8 %conv54, i8* %arrayidx57, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_fill_bumpmap_rows(i32 %start, i32 %how_many, i32 %yofs) #0 {
entry:
  %start.addr = alloca i32, align 4
  %how_many.addr = alloca i32, align 4
  %yofs.addr = alloca i32, align 4
  %buf_row_ofs = alloca i32, align 4
  %remaining = alloca i32, align 4
  %this_pass = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %how_many, i32* %how_many.addr, align 4
  store i32 %yofs, i32* %yofs.addr, align 4
  %0 = load i32, i32* %yofs.addr, align 4
  %1 = load i32, i32* @sel_y1, align 4
  %add = add nsw i32 %0, %1
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %sub1 = sub nsw i32 %3, 1
  %4 = load i32, i32* %yofs.addr, align 4
  %5 = load i32, i32* @sel_y1, align 4
  %add2 = add nsw i32 %4, %5
  %sub3 = sub nsw i32 %sub1, %add2
  %6 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %rem = srem i32 %sub3, %6
  %sub4 = sub nsw i32 %sub, %rem
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %yofs.addr, align 4
  %8 = load i32, i32* @sel_y1, align 4
  %add5 = add nsw i32 %7, %8
  %9 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %rem6 = srem i32 %add5, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ %rem6, %cond.false ]
  store i32 %cond, i32* %yofs.addr, align 4
  %10 = load i32, i32* %start.addr, align 4
  store i32 %10, i32* %buf_row_ofs, align 4
  %11 = load i32, i32* %how_many.addr, align 4
  store i32 %11, i32* %remaining, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.13, %cond.end
  %12 = load i32, i32* %remaining, align 4
  %cmp7 = icmp sgt i32 %12, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %remaining, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %15 = load i32, i32* %yofs.addr, align 4
  %sub8 = sub nsw i32 %14, %15
  %cmp9 = icmp slt i32 %13, %sub8
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %while.body
  %16 = load i32, i32* %remaining, align 4
  br label %cond.end.13

cond.false.11:                                    ; preds = %while.body
  %17 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %18 = load i32, i32* %yofs.addr, align 4
  %sub12 = sub nsw i32 %17, %18
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.10
  %cond14 = phi i32 [ %16, %cond.true.10 ], [ %sub12, %cond.false.11 ]
  store i32 %cond14, i32* %this_pass, align 4
  %19 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %20 = load i32, i32* %buf_row_ofs, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %19, i64 %idx.ext
  %21 = load i32, i32* %yofs.addr, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 8), align 4
  %23 = load i32, i32* %this_pass, align 4
  call void @dialog_get_rows(%struct._GimpPixelRgn* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 13), i8** %add.ptr, i32 0, i32 %21, i32 %22, i32 %23)
  %24 = load i32, i32* %yofs.addr, align 4
  %25 = load i32, i32* %this_pass, align 4
  %add15 = add nsw i32 %24, %25
  %26 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 9), align 4
  %rem16 = srem i32 %add15, %26
  store i32 %rem16, i32* %yofs.addr, align 4
  %27 = load i32, i32* %this_pass, align 4
  %28 = load i32, i32* %remaining, align 4
  %sub17 = sub nsw i32 %28, %27
  store i32 %sub17, i32* %remaining, align 4
  %29 = load i32, i32* %this_pass, align 4
  %30 = load i32, i32* %buf_row_ofs, align 4
  %add18 = add nsw i32 %30, %29
  store i32 %add18, i32* %buf_row_ofs, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %31 = load i32, i32* %how_many.addr, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %start.addr, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load i8**, i8*** getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 6), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %33, i64 %idxprom
  %34 = load i8*, i8** %arrayidx, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 8), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 10), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 11), align 4
  call void @bumpmap_convert_row(i8* %34, i32 %35, i32 %36, i32 %37, i8* getelementptr inbounds (%struct.bumpmap_interface_t, %struct.bumpmap_interface_t* @bmint, i32 0, i32 14, i32 6, i32 0))
  %38 = load i32, i32* %start.addr, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %start.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %how_many.addr, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %how_many.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bumpmap_row(i8* %src, i8* %dest, i32 %width, i32 %bpp, i32 %has_alpha, i8* %bm_row1, i8* %bm_row2, i8* %bm_row3, i32 %bm_width, i32 %bm_xofs, i32 %tiled, i32 %row_in_bumpmap, %struct.bumpmap_params_t* %params) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %bm_row1.addr = alloca i8*, align 8
  %bm_row2.addr = alloca i8*, align 8
  %bm_row3.addr = alloca i8*, align 8
  %bm_width.addr = alloca i32, align 4
  %bm_xofs.addr = alloca i32, align 4
  %tiled.addr = alloca i32, align 4
  %row_in_bumpmap.addr = alloca i32, align 4
  %params.addr = alloca %struct.bumpmap_params_t*, align 8
  %xofs1 = alloca i32, align 4
  %xofs2 = alloca i32, align 4
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  %pbpp = alloca i32, align 4
  %result = alloca i32, align 4
  %tmp = alloca i32, align 4
  %xofs3 = alloca i32, align 4
  %shade = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %ndotl = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i8* %bm_row1, i8** %bm_row1.addr, align 8
  store i8* %bm_row2, i8** %bm_row2.addr, align 8
  store i8* %bm_row3, i8** %bm_row3.addr, align 8
  store i32 %bm_width, i32* %bm_width.addr, align 4
  store i32 %bm_xofs, i32* %bm_xofs.addr, align 4
  store i32 %tiled, i32* %tiled.addr, align 4
  store i32 %row_in_bumpmap, i32* %row_in_bumpmap.addr, align 4
  store %struct.bumpmap_params_t* %params, %struct.bumpmap_params_t** %params.addr, align 8
  %0 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %pbpp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %bpp.addr, align 4
  store i32 %2, i32* %pbpp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %bm_xofs.addr, align 4
  %4 = load i32, i32* @sel_x1, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %tmp, align 4
  %5 = load i32, i32* %tmp, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %bm_width.addr, align 4
  %sub1 = sub nsw i32 %6, 1
  %7 = load i32, i32* %bm_width.addr, align 4
  %sub2 = sub nsw i32 %7, 1
  %8 = load i32, i32* %tmp, align 4
  %sub3 = sub nsw i32 %sub2, %8
  %9 = load i32, i32* %bm_width.addr, align 4
  %rem = srem i32 %sub3, %9
  %sub4 = sub nsw i32 %sub1, %rem
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i32, i32* %tmp, align 4
  %11 = load i32, i32* %bm_width.addr, align 4
  %rem5 = srem i32 %10, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ %rem5, %cond.false ]
  store i32 %cond, i32* %xofs2, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.217, %cond.end
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %width.addr, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body, label %for.end.219

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %tiled.addr, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, i32* %row_in_bumpmap.addr, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %land.lhs.true, label %if.else.125

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %tmp, align 4
  %sub13 = sub nsw i32 0, %17
  %cmp14 = icmp sge i32 %16, %sub13
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.125

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %tmp, align 4
  %sub16 = sub nsw i32 0, %19
  %20 = load i32, i32* %bm_width.addr, align 4
  %add17 = add nsw i32 %sub16, %20
  %cmp18 = icmp slt i32 %18, %add17
  br i1 %cmp18, label %if.then.19, label %if.else.125

if.then.19:                                       ; preds = %land.lhs.true.15, %for.body
  %21 = load i32, i32* %tiled.addr, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %if.then.21, label %if.else.50

if.then.21:                                       ; preds = %if.then.19
  %22 = load i32, i32* %xofs2, align 4
  %sub22 = sub nsw i32 %22, 1
  %cmp23 = icmp slt i32 %sub22, 0
  br i1 %cmp23, label %cond.true.24, label %cond.false.31

cond.true.24:                                     ; preds = %if.then.21
  %23 = load i32, i32* %bm_width.addr, align 4
  %sub25 = sub nsw i32 %23, 1
  %24 = load i32, i32* %bm_width.addr, align 4
  %sub26 = sub nsw i32 %24, 1
  %25 = load i32, i32* %xofs2, align 4
  %sub27 = sub nsw i32 %25, 1
  %sub28 = sub nsw i32 %sub26, %sub27
  %26 = load i32, i32* %bm_width.addr, align 4
  %rem29 = srem i32 %sub28, %26
  %sub30 = sub nsw i32 %sub25, %rem29
  br label %cond.end.34

cond.false.31:                                    ; preds = %if.then.21
  %27 = load i32, i32* %xofs2, align 4
  %sub32 = sub nsw i32 %27, 1
  %28 = load i32, i32* %bm_width.addr, align 4
  %rem33 = srem i32 %sub32, %28
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.31, %cond.true.24
  %cond35 = phi i32 [ %sub30, %cond.true.24 ], [ %rem33, %cond.false.31 ]
  store i32 %cond35, i32* %xofs1, align 4
  %29 = load i32, i32* %xofs2, align 4
  %add36 = add nsw i32 %29, 1
  %cmp37 = icmp slt i32 %add36, 0
  br i1 %cmp37, label %cond.true.38, label %cond.false.45

cond.true.38:                                     ; preds = %cond.end.34
  %30 = load i32, i32* %bm_width.addr, align 4
  %sub39 = sub nsw i32 %30, 1
  %31 = load i32, i32* %bm_width.addr, align 4
  %sub40 = sub nsw i32 %31, 1
  %32 = load i32, i32* %xofs2, align 4
  %add41 = add nsw i32 %32, 1
  %sub42 = sub nsw i32 %sub40, %add41
  %33 = load i32, i32* %bm_width.addr, align 4
  %rem43 = srem i32 %sub42, %33
  %sub44 = sub nsw i32 %sub39, %rem43
  br label %cond.end.48

cond.false.45:                                    ; preds = %cond.end.34
  %34 = load i32, i32* %xofs2, align 4
  %add46 = add nsw i32 %34, 1
  %35 = load i32, i32* %bm_width.addr, align 4
  %rem47 = srem i32 %add46, %35
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.38
  %cond49 = phi i32 [ %sub44, %cond.true.38 ], [ %rem47, %cond.false.45 ]
  store i32 %cond49, i32* %xofs3, align 4
  br label %if.end.81

if.else.50:                                       ; preds = %if.then.19
  %36 = load i32, i32* %xofs2, align 4
  %sub51 = sub nsw i32 %36, 1
  %37 = load i32, i32* %bm_width.addr, align 4
  %sub52 = sub nsw i32 %37, 1
  %cmp53 = icmp sgt i32 %sub51, %sub52
  br i1 %cmp53, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %if.else.50
  %38 = load i32, i32* %bm_width.addr, align 4
  %sub55 = sub nsw i32 %38, 1
  br label %cond.end.64

cond.false.56:                                    ; preds = %if.else.50
  %39 = load i32, i32* %xofs2, align 4
  %sub57 = sub nsw i32 %39, 1
  %cmp58 = icmp slt i32 %sub57, 0
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.56
  br label %cond.end.62

cond.false.60:                                    ; preds = %cond.false.56
  %40 = load i32, i32* %xofs2, align 4
  %sub61 = sub nsw i32 %40, 1
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  %cond63 = phi i32 [ 0, %cond.true.59 ], [ %sub61, %cond.false.60 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.62, %cond.true.54
  %cond65 = phi i32 [ %sub55, %cond.true.54 ], [ %cond63, %cond.end.62 ]
  store i32 %cond65, i32* %xofs1, align 4
  %41 = load i32, i32* %xofs2, align 4
  %add66 = add nsw i32 %41, 1
  %42 = load i32, i32* %bm_width.addr, align 4
  %sub67 = sub nsw i32 %42, 1
  %cmp68 = icmp sgt i32 %add66, %sub67
  br i1 %cmp68, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.end.64
  %43 = load i32, i32* %bm_width.addr, align 4
  %sub70 = sub nsw i32 %43, 1
  br label %cond.end.79

cond.false.71:                                    ; preds = %cond.end.64
  %44 = load i32, i32* %xofs2, align 4
  %add72 = add nsw i32 %44, 1
  %cmp73 = icmp slt i32 %add72, 0
  br i1 %cmp73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.false.71
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.false.71
  %45 = load i32, i32* %xofs2, align 4
  %add76 = add nsw i32 %45, 1
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.74
  %cond78 = phi i32 [ 0, %cond.true.74 ], [ %add76, %cond.false.75 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.true.69
  %cond80 = phi i32 [ %sub70, %cond.true.69 ], [ %cond78, %cond.end.77 ]
  store i32 %cond80, i32* %xofs3, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.79, %cond.end.48
  %46 = load i32, i32* %xofs1, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load i8*, i8** %bm_row1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 %idxprom
  %48 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %48 to i32
  %49 = load i32, i32* %xofs1, align 4
  %idxprom82 = sext i32 %49 to i64
  %50 = load i8*, i8** %bm_row2.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %50, i64 %idxprom82
  %51 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %51 to i32
  %add85 = add nsw i32 %conv, %conv84
  %52 = load i32, i32* %xofs1, align 4
  %idxprom86 = sext i32 %52 to i64
  %53 = load i8*, i8** %bm_row3.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %53, i64 %idxprom86
  %54 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %54 to i32
  %add89 = add nsw i32 %add85, %conv88
  %55 = load i32, i32* %xofs3, align 4
  %idxprom90 = sext i32 %55 to i64
  %56 = load i8*, i8** %bm_row1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %56, i64 %idxprom90
  %57 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %57 to i32
  %sub93 = sub nsw i32 %add89, %conv92
  %58 = load i32, i32* %xofs3, align 4
  %idxprom94 = sext i32 %58 to i64
  %59 = load i8*, i8** %bm_row2.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %59, i64 %idxprom94
  %60 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %60 to i32
  %sub97 = sub nsw i32 %sub93, %conv96
  %61 = load i32, i32* %xofs3, align 4
  %idxprom98 = sext i32 %61 to i64
  %62 = load i8*, i8** %bm_row3.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %62, i64 %idxprom98
  %63 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %63 to i32
  %sub101 = sub nsw i32 %sub97, %conv100
  store i32 %sub101, i32* %nx, align 4
  %64 = load i32, i32* %xofs1, align 4
  %idxprom102 = sext i32 %64 to i64
  %65 = load i8*, i8** %bm_row3.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %65, i64 %idxprom102
  %66 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %66 to i32
  %67 = load i32, i32* %xofs2, align 4
  %idxprom105 = sext i32 %67 to i64
  %68 = load i8*, i8** %bm_row3.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %68, i64 %idxprom105
  %69 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %69 to i32
  %add108 = add nsw i32 %conv104, %conv107
  %70 = load i32, i32* %xofs3, align 4
  %idxprom109 = sext i32 %70 to i64
  %71 = load i8*, i8** %bm_row3.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %71, i64 %idxprom109
  %72 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %72 to i32
  %add112 = add nsw i32 %add108, %conv111
  %73 = load i32, i32* %xofs1, align 4
  %idxprom113 = sext i32 %73 to i64
  %74 = load i8*, i8** %bm_row1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %74, i64 %idxprom113
  %75 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %75 to i32
  %sub116 = sub nsw i32 %add112, %conv115
  %76 = load i32, i32* %xofs2, align 4
  %idxprom117 = sext i32 %76 to i64
  %77 = load i8*, i8** %bm_row1.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %77, i64 %idxprom117
  %78 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %78 to i32
  %sub120 = sub nsw i32 %sub116, %conv119
  %79 = load i32, i32* %xofs3, align 4
  %idxprom121 = sext i32 %79 to i64
  %80 = load i8*, i8** %bm_row1.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %80, i64 %idxprom121
  %81 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %81 to i32
  %sub124 = sub nsw i32 %sub120, %conv123
  store i32 %sub124, i32* %ny, align 4
  br label %if.end.126

if.else.125:                                      ; preds = %land.lhs.true.15, %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %ny, align 4
  store i32 0, i32* %nx, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.125, %if.end.81
  %82 = load i32, i32* %nx, align 4
  %cmp127 = icmp eq i32 %82, 0
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.133

land.lhs.true.129:                                ; preds = %if.end.126
  %83 = load i32, i32* %ny, align 4
  %cmp130 = icmp eq i32 %83, 0
  br i1 %cmp130, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %land.lhs.true.129
  %84 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %background = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %84, i32 0, i32 4
  %85 = load i32, i32* %background, align 4
  store i32 %85, i32* %shade, align 4
  br label %if.end.173

if.else.133:                                      ; preds = %land.lhs.true.129, %if.end.126
  %86 = load i32, i32* %nx, align 4
  %87 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %lx = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %87, i32 0, i32 0
  %88 = load i32, i32* %lx, align 4
  %mul = mul nsw i32 %86, %88
  %89 = load i32, i32* %ny, align 4
  %90 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %ly = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %90, i32 0, i32 1
  %91 = load i32, i32* %ly, align 4
  %mul135 = mul nsw i32 %89, %91
  %add136 = add nsw i32 %mul, %mul135
  %92 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %nzlz = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %92, i32 0, i32 3
  %93 = load i32, i32* %nzlz, align 4
  %add137 = add nsw i32 %add136, %93
  store i32 %add137, i32* %ndotl, align 4
  %94 = load i32, i32* %ndotl, align 4
  %cmp138 = icmp slt i32 %94, 0
  br i1 %cmp138, label %if.then.140, label %if.else.144

if.then.140:                                      ; preds = %if.else.133
  %95 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %compensation = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %95, i32 0, i32 5
  %96 = load double, double* %compensation, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 7), align 4
  %conv141 = sitofp i32 %97 to double
  %mul142 = fmul double %96, %conv141
  %conv143 = fptosi double %mul142 to i32
  store i32 %conv143, i32* %shade, align 4
  br label %if.end.172

if.else.144:                                      ; preds = %if.else.133
  %98 = load i32, i32* %ndotl, align 4
  %conv145 = sitofp i32 %98 to double
  %99 = load i32, i32* %nx, align 4
  %100 = load i32, i32* %nx, align 4
  %mul146 = mul nsw i32 %99, %100
  %101 = load i32, i32* %ny, align 4
  %102 = load i32, i32* %ny, align 4
  %mul147 = mul nsw i32 %101, %102
  %add148 = add nsw i32 %mul146, %mul147
  %103 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %nz2 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %103, i32 0, i32 2
  %104 = load i32, i32* %nz2, align 4
  %add149 = add nsw i32 %add148, %104
  %conv150 = sitofp i32 %add149 to double
  %call = call double @sqrt(double %conv150) #6
  %div = fdiv double %conv145, %call
  %conv151 = fptosi double %div to i32
  store i32 %conv151, i32* %shade, align 4
  %105 = load i32, i32* %shade, align 4
  %conv152 = sitofp i32 %105 to double
  %106 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %compensation153 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %106, i32 0, i32 5
  %107 = load double, double* %compensation153, align 8
  %mul154 = fmul double 2.550000e+02, %107
  %108 = load i32, i32* %shade, align 4
  %conv155 = sitofp i32 %108 to double
  %sub156 = fsub double %mul154, %conv155
  %cmp157 = fcmp ogt double 0.000000e+00, %sub156
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %if.else.144
  br label %cond.end.165

cond.false.160:                                   ; preds = %if.else.144
  %109 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %compensation161 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %109, i32 0, i32 5
  %110 = load double, double* %compensation161, align 8
  %mul162 = fmul double 2.550000e+02, %110
  %111 = load i32, i32* %shade, align 4
  %conv163 = sitofp i32 %111 to double
  %sub164 = fsub double %mul162, %conv163
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.160, %cond.true.159
  %cond166 = phi double [ 0.000000e+00, %cond.true.159 ], [ %sub164, %cond.false.160 ]
  %112 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 7), align 4
  %conv167 = sitofp i32 %112 to double
  %mul168 = fmul double %cond166, %conv167
  %div169 = fdiv double %mul168, 2.550000e+02
  %add170 = fadd double %conv152, %div169
  %conv171 = fptosi double %add170 to i32
  store i32 %conv171, i32* %shade, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %cond.end.165, %if.then.140
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.132
  %113 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 8), align 4
  %tobool174 = icmp ne i32 %113, 0
  br i1 %tobool174, label %if.then.175, label %if.else.194

if.then.175:                                      ; preds = %if.end.173
  %114 = load i32, i32* %pbpp, align 4
  store i32 %114, i32* %k, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc, %if.then.175
  %115 = load i32, i32* %k, align 4
  %tobool177 = icmp ne i32 %115, 0
  br i1 %tobool177, label %for.body.178, label %for.end

for.body.178:                                     ; preds = %for.cond.176
  %116 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %117 = load i8, i8* %116, align 1
  %conv179 = zext i8 %117 to i32
  %118 = load i32, i32* %shade, align 4
  %mul180 = mul nsw i32 %conv179, %118
  %conv181 = sitofp i32 %mul180 to double
  %119 = load %struct.bumpmap_params_t*, %struct.bumpmap_params_t** %params.addr, align 8
  %compensation182 = getelementptr inbounds %struct.bumpmap_params_t, %struct.bumpmap_params_t* %119, i32 0, i32 5
  %120 = load double, double* %compensation182, align 8
  %mul183 = fmul double %120, 2.550000e+02
  %div184 = fdiv double %conv181, %mul183
  %conv185 = fptosi double %div184 to i32
  store i32 %conv185, i32* %result, align 4
  %121 = load i32, i32* %result, align 4
  %cmp186 = icmp slt i32 255, %121
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %for.body.178
  br label %cond.end.190

cond.false.189:                                   ; preds = %for.body.178
  %122 = load i32, i32* %result, align 4
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.188
  %cond191 = phi i32 [ 255, %cond.true.188 ], [ %122, %cond.false.189 ]
  %conv192 = trunc i32 %cond191 to i8
  %123 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr193, i8** %dest.addr, align 8
  store i8 %conv192, i8* %123, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.190
  %124 = load i32, i32* %k, align 4
  %dec = add nsw i32 %124, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.176

for.end:                                          ; preds = %for.cond.176
  br label %if.end.207

if.else.194:                                      ; preds = %if.end.173
  %125 = load i32, i32* %pbpp, align 4
  store i32 %125, i32* %k, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.204, %if.else.194
  %126 = load i32, i32* %k, align 4
  %tobool196 = icmp ne i32 %126, 0
  br i1 %tobool196, label %for.body.197, label %for.end.206

for.body.197:                                     ; preds = %for.cond.195
  %127 = load i8*, i8** %src.addr, align 8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr198, i8** %src.addr, align 8
  %128 = load i8, i8* %127, align 1
  %conv199 = zext i8 %128 to i32
  %129 = load i32, i32* %shade, align 4
  %mul200 = mul nsw i32 %conv199, %129
  %div201 = sdiv i32 %mul200, 255
  %conv202 = trunc i32 %div201 to i8
  %130 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr203 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr203, i8** %dest.addr, align 8
  store i8 %conv202, i8* %130, align 1
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.body.197
  %131 = load i32, i32* %k, align 4
  %dec205 = add nsw i32 %131, -1
  store i32 %dec205, i32* %k, align 4
  br label %for.cond.195

for.end.206:                                      ; preds = %for.cond.195
  br label %if.end.207

if.end.207:                                       ; preds = %for.end.206, %for.end
  %132 = load i32, i32* %has_alpha.addr, align 4
  %tobool208 = icmp ne i32 %132, 0
  br i1 %tobool208, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %if.end.207
  %133 = load i8*, i8** %src.addr, align 8
  %incdec.ptr210 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr210, i8** %src.addr, align 8
  %134 = load i8, i8* %133, align 1
  %135 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr211 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr211, i8** %dest.addr, align 8
  store i8 %134, i8* %135, align 1
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.209, %if.end.207
  %136 = load i32, i32* %xofs2, align 4
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %xofs2, align 4
  %137 = load i32, i32* %bm_width.addr, align 4
  %cmp213 = icmp eq i32 %inc, %137
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.end.212
  store i32 0, i32* %xofs2, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %if.end.212
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %138 = load i32, i32* %x, align 4
  %inc218 = add nsw i32 %138, 1
  store i32 %inc218, i32* %x, align 4
  br label %for.cond

for.end.219:                                      ; preds = %for.cond
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_get_rows(%struct._GimpPixelRgn* %pr, i8** %rows, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %rows.addr = alloca i8**, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %xstart = alloca i32, align 4
  %ystart = alloca i32, align 4
  %xend = alloca i32, align 4
  %yend = alloca i32, align 4
  %xboundary = alloca i32, align 4
  %yboundary = alloca i32, align 4
  %xstep = alloca i32, align 4
  %ystep = alloca i32, align 4
  %b = alloca i32, align 4
  %bpp = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8** %rows, i8*** %rows.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %call = call i32 @gimp_tile_width() #5
  store i32 %call, i32* %tile_width, align 4
  %call1 = call i32 @gimp_tile_height() #5
  store i32 %call1, i32* %tile_height, align 4
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %bpp2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 2
  %1 = load i32, i32* %bpp2, align 4
  store i32 %1, i32* %bpp, align 4
  %2 = load i32, i32* %x.addr, align 4
  store i32 %2, i32* %xstart, align 4
  %3 = load i32, i32* %y.addr, align 4
  store i32 %3, i32* %ystart, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %xend, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %height.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %yend, align 4
  store i32 0, i32* %ystep, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %yend, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end.43

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %xstart, align 4
  store i32 %10, i32* %x.addr, align 4
  br label %while.cond.4

while.cond.4:                                     ; preds = %for.end.40, %while.body
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %xend, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.cond.4
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %15, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %call7 = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %14, i32 %bf.cast, i32 %16, i32 %17)
  store %struct._GimpTile* %call7, %struct._GimpTile** %tile, align 8
  %18 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %18)
  %19 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %19, i32 0, i32 0
  %20 = load i32, i32* %ewidth, align 4
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %tile_width, align 4
  %rem = srem i32 %21, %22
  %sub = sub i32 %20, %rem
  store i32 %sub, i32* %xstep, align 4
  %23 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %23, i32 0, i32 1
  %24 = load i32, i32* %eheight, align 4
  %25 = load i32, i32* %y.addr, align 4
  %26 = load i32, i32* %tile_height, align 4
  %rem8 = srem i32 %25, %26
  %sub9 = sub i32 %24, %rem8
  store i32 %sub9, i32* %ystep, align 4
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %xstep, align 4
  %add10 = add nsw i32 %27, %28
  store i32 %add10, i32* %xboundary, align 4
  %29 = load i32, i32* %y.addr, align 4
  %30 = load i32, i32* %ystep, align 4
  %add11 = add nsw i32 %29, %30
  store i32 %add11, i32* %yboundary, align 4
  %31 = load i32, i32* %xboundary, align 4
  %32 = load i32, i32* %xend, align 4
  %cmp12 = icmp slt i32 %31, %32
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.6
  %33 = load i32, i32* %xboundary, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body.6
  %34 = load i32, i32* %xend, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, i32* %xboundary, align 4
  %35 = load i32, i32* %yboundary, align 4
  %36 = load i32, i32* %yend, align 4
  %cmp13 = icmp slt i32 %35, %36
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  %37 = load i32, i32* %yboundary, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %38 = load i32, i32* %yend, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %37, %cond.true.14 ], [ %38, %cond.false.15 ]
  store i32 %cond17, i32* %yboundary, align 4
  %39 = load i32, i32* %y.addr, align 4
  store i32 %39, i32* %ty, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %cond.end.16
  %40 = load i32, i32* %ty, align 4
  %41 = load i32, i32* %yboundary, align 4
  %cmp18 = icmp slt i32 %40, %41
  br i1 %cmp18, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %42, i32 0, i32 6
  %43 = load i8*, i8** %data, align 8
  %44 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp19 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %44, i32 0, i32 2
  %45 = load i32, i32* %bpp19, align 4
  %46 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth20 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %46, i32 0, i32 0
  %47 = load i32, i32* %ewidth20, align 4
  %48 = load i32, i32* %ty, align 4
  %49 = load i32, i32* %tile_height, align 4
  %rem21 = srem i32 %48, %49
  %mul = mul i32 %47, %rem21
  %50 = load i32, i32* %x.addr, align 4
  %51 = load i32, i32* %tile_width, align 4
  %rem22 = srem i32 %50, %51
  %add23 = add i32 %mul, %rem22
  %mul24 = mul i32 %45, %add23
  %idx.ext = zext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %52 = load i32, i32* %ty, align 4
  %53 = load i32, i32* %ystart, align 4
  %sub25 = sub nsw i32 %52, %53
  %idxprom = sext i32 %sub25 to i64
  %54 = load i8**, i8*** %rows.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %54, i64 %idxprom
  %55 = load i8*, i8** %arrayidx, align 8
  %56 = load i32, i32* %bpp, align 4
  %57 = load i32, i32* %x.addr, align 4
  %58 = load i32, i32* %xstart, align 4
  %sub26 = sub nsw i32 %57, %58
  %mul27 = mul nsw i32 %56, %sub26
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %55, i64 %idx.ext28
  store i8* %add.ptr29, i8** %dest, align 8
  %59 = load i32, i32* %x.addr, align 4
  store i32 %59, i32* %tx, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.36, %for.body
  %60 = load i32, i32* %tx, align 4
  %61 = load i32, i32* %xboundary, align 4
  %cmp31 = icmp slt i32 %60, %61
  br i1 %cmp31, label %for.body.32, label %for.end.37

for.body.32:                                      ; preds = %for.cond.30
  %62 = load i32, i32* %bpp, align 4
  store i32 %62, i32* %b, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body.32
  %63 = load i32, i32* %b, align 4
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.33
  %64 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %dest, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr35, i8** %dest, align 8
  store i8 %65, i8* %66, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %67 = load i32, i32* %b, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %b, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %68 = load i32, i32* %tx, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %tx, align 4
  br label %for.cond.30

for.end.37:                                       ; preds = %for.cond.30
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %69 = load i32, i32* %ty, align 4
  %inc39 = add nsw i32 %69, 1
  store i32 %inc39, i32* %ty, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %70 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %70, i32 0)
  %71 = load i32, i32* %xstep, align 4
  %72 = load i32, i32* %x.addr, align 4
  %add41 = add nsw i32 %72, %71
  store i32 %add41, i32* %x.addr, align 4
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  %73 = load i32, i32* %ystep, align 4
  %74 = load i32, i32* %y.addr, align 4
  %add42 = add nsw i32 %74, %73
  store i32 %add42, i32* %y.addr, align 4
  br label %while.cond

while.end.43:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable*, i32, i32, i32) #1

declare void @gimp_tile_ref(%struct._GimpTile*) #1

declare void @gimp_tile_unref(%struct._GimpTile*, i32) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal void @bumpmap_convert_row(i8* %row, i32 %width, i32 %bpp, i32 %has_alpha, i8* %lut) #0 {
entry:
  %row.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %lut.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %row, i8** %row.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i8* %lut, i8** %lut.addr, align 8
  %0 = load i8*, i8** %row.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %has_alpha.addr, align 4
  %2 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp sge i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else.44

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %width.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %has_alpha.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %5 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 6), align 4
  %conv = sitofp i32 %5 to double
  %6 = load i8*, i8** %row.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %7 to i32
  %conv5 = sitofp i32 %conv4 to double
  %mul = fmul double %conv5, 2.126000e-01
  %8 = load i8*, i8** %row.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %conv8 = sitofp i32 %conv7 to double
  %mul9 = fmul double %conv8, 7.152000e-01
  %add = fadd double %mul, %mul9
  %10 = load i8*, i8** %row.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %conv12 = sitofp i32 %conv11 to double
  %mul13 = fmul double %conv12, 7.220000e-02
  %add14 = fadd double %add, %mul13
  %add15 = fadd double %add14, 5.000000e-01
  %conv16 = fptosi double %add15 to i32
  %12 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 6), align 4
  %sub = sub nsw i32 %conv16, %12
  %13 = load i8*, i8** %row.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %mul19 = mul nsw i32 %sub, %conv18
  %conv20 = sitofp i32 %mul19 to double
  %div = fdiv double %conv20, 2.550000e+02
  %add21 = fadd double %conv, %div
  %conv22 = fptosi double %add21 to i32
  %idxprom = sext i32 %conv22 to i64
  %15 = load i8*, i8** %lut.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx23, align 1
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %16, i8* %17, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load i8*, i8** %row.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %19 to i32
  %conv26 = sitofp i32 %conv25 to double
  %mul27 = fmul double %conv26, 2.126000e-01
  %20 = load i8*, i8** %row.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %21 to i32
  %conv30 = sitofp i32 %conv29 to double
  %mul31 = fmul double %conv30, 7.152000e-01
  %add32 = fadd double %mul27, %mul31
  %22 = load i8*, i8** %row.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %conv35 = sitofp i32 %conv34 to double
  %mul36 = fmul double %conv35, 7.220000e-02
  %add37 = fadd double %add32, %mul36
  %add38 = fadd double %add37, 5.000000e-01
  %conv39 = fptosi double %add38 to i32
  %idxprom40 = sext i32 %conv39 to i64
  %24 = load i8*, i8** %lut.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %24, i64 %idxprom40
  %25 = load i8, i8* %arrayidx41, align 1
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr42, i8** %p, align 8
  store i8 %25, i8* %26, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %27 = load i32, i32* %has_alpha.addr, align 4
  %add43 = add nsw i32 3, %27
  %28 = load i8*, i8** %row.addr, align 8
  %idx.ext = sext i32 %add43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %row.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %width.addr, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %width.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.72

if.else.44:                                       ; preds = %entry
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.69, %if.else.44
  %30 = load i32, i32* %width.addr, align 4
  %tobool46 = icmp ne i32 %30, 0
  br i1 %tobool46, label %for.body.47, label %for.end.71

for.body.47:                                      ; preds = %for.cond.45
  %31 = load i32, i32* %has_alpha.addr, align 4
  %tobool48 = icmp ne i32 %31, 0
  br i1 %tobool48, label %if.then.49, label %if.else.61

if.then.49:                                       ; preds = %for.body.47
  %32 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 6), align 4
  %33 = load i8*, i8** %row.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %34 to i32
  %35 = load i32, i32* getelementptr inbounds (%struct.bumpmap_vals_t, %struct.bumpmap_vals_t* @bmvals, i32 0, i32 6), align 4
  %sub52 = sub nsw i32 %conv51, %35
  %36 = load i8*, i8** %row.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %37 to i32
  %mul55 = mul nsw i32 %sub52, %conv54
  %div56 = sdiv i32 %mul55, 255
  %add57 = add nsw i32 %32, %div56
  %idxprom58 = sext i32 %add57 to i64
  %38 = load i8*, i8** %lut.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %38, i64 %idxprom58
  %39 = load i8, i8* %arrayidx59, align 1
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8
  store i8 %39, i8* %40, align 1
  br label %if.end.65

if.else.61:                                       ; preds = %for.body.47
  %41 = load i8*, i8** %row.addr, align 8
  %42 = load i8, i8* %41, align 1
  %idxprom62 = zext i8 %42 to i64
  %43 = load i8*, i8** %lut.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %43, i64 %idxprom62
  %44 = load i8, i8* %arrayidx63, align 1
  %45 = load i8*, i8** %p, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr64, i8** %p, align 8
  store i8 %44, i8* %45, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.61, %if.then.49
  %46 = load i32, i32* %has_alpha.addr, align 4
  %add66 = add nsw i32 1, %46
  %47 = load i8*, i8** %row.addr, align 8
  %idx.ext67 = sext i32 %add66 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %47, i64 %idx.ext67
  store i8* %add.ptr68, i8** %row.addr, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.65
  %48 = load i32, i32* %width.addr, align 4
  %dec70 = add nsw i32 %48, -1
  store i32 %dec70, i32* %width.addr, align 4
  br label %for.cond.45

for.end.71:                                       ; preds = %for.cond.45
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %for.end
  ret void
}

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
